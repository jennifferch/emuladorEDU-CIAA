const express = require('express');
const ips = require('./get_ips')();
const bodyParser = require('body-parser');
const net = require('net');
const dgram = require('dgram');
const hbs = require('hbs');
const Path = require('path');
const fs = require('fs');
const compile = require('./compile');
const { exists } = require('../tools/util');
const promisify = require('es6-promisify').promisify;
const udp = require('dgram');
const timesyncServer = require('timesync/server');
const version = JSON.parse(fs.readFileSync(Path.join(__dirname, '..', 'package.json'), 'utf-8')).version;
const compression = require('compression');

const NSAPI_ERROR_OK                  =  0;        /*!< no error */
const NSAPI_ERROR_NO_SOCKET           = -3005;     /*!< socket not available for use */
const NSAPI_ERROR_IN_PROGRESS         = -3013;     /*!< operation (eg connect) in progress */
const NSAPI_ERROR_ALREADY             = -3014;     /*!< operation (eg connect) already in progress */
const NSAPI_ERROR_CONNECTION_LOST     = -3016;     /*!< connection lost */

/**
 * Start a web server to run simulated applications
 *
 * @param outFolder Location of the build folder with the WASM files
 * @param port Port to run the web server on
 * @param staticMaxAge Max-age cache header to set for static files
 * @param runtimeLogs Whether to enable runtime logs (from e.g. LoRa server)
 * @param callback Callback to invoke when the server is started (or failed to start)
 */
module.exports = function(outFolder, port, staticMaxAge, runtimeLogs, callback) {
    const app = express();
    const server = require('http').Server(app);
    const io = require('socket.io')(server);

    const consoleLog = runtimeLogs ? console.log.bind(console) : function() {};

    app.set('view engine', 'html');
    app.set('views', Path.join(__dirname, '..', 'webapp'));
    app.engine('html', hbs.__express);
    app.use(compression({
        filter: () => true,
        level: 6
    }));

    express.static.mime.define({'application/wasm': ['wasm']});
    app.use('/outUser', express.static(outFolder, { maxAge: staticMaxAge }));

    app.use('/examples', express.static(Path.join(__dirname, '..', 'examples'), { maxAge: staticMaxAge }));
    app.use('/peripherals', express.static(Path.join(__dirname, '..', 'ciaa-hal', 'peripherals'), { maxAge: staticMaxAge }));
    app.use('/timesync', timesyncServer.requestHandler);

    app.use(express.static(Path.join(__dirname, '..', 'webapp'), { maxAge: staticMaxAge }));
    app.use(bodyParser.json());

    app.post('/api/network/connect', (req, res, next) => {
        if (!ips.length) {
            return res.json({
                address: '127.0.0.1',
                mac: '00:00:00:00:00:00',
                netmask: '255.255.255.0'
            });
        }

        return res.json({
            address: ips[0].iface.address,
            mac: ips[0].iface.mac,
            netmask: ips[0].iface.netmask
        });
    });

    let sockets = {};

    app.post('/api/network/socket_close', (req, res, next) => {
        consoleLog('Closing socket', req.body.id);

        if (!sockets[req.body.id]) {
            return res.send('' + NSAPI_ERROR_NO_SOCKET);
        }

        let s = sockets[req.body.id];

        if (s instanceof net.Socket) {
            s.destroy();
        }
        else {
            s.close();
        }

        delete sockets[req.body.id];

        res.send('0');
    });

    app.post('/api/network/socket_send', (req, res, next) => {
        consoleLog('Sending socket', req.body.id, req.body.data.length, 'bytes');

        if (!sockets[req.body.id]) {
            return res.send('' + NSAPI_ERROR_NO_SOCKET); // NSAPI_ERROR_NO_SOCKET
        }

        let s = sockets[req.body.id];

        if (s instanceof net.Socket) {
            s.write(Buffer.from(req.body.data));
        }
        else {
            s.send(Buffer.from(req.body.data), s.port, s.hostname);
        }

        res.send(req.body.data.length + '');
    });

    app.post('/api/network/socket_connect', (req, res, next) => {
        consoleLog('Connecting socket', req.body.id, req.body.hostname, req.body.port);

        if (!sockets[req.body.id]) {
            return res.send('' + NSAPI_ERROR_NO_SOCKET);
        }

        let s = sockets[req.body.id];

        // connectionState is used whenever someone calls this function again...
        if (s.connectionState) {
            return s.connectionState;
        }

        if (s instanceof net.Socket) {
            s.connect(req.body.port, req.body.hostname);

            s.connectionState = NSAPI_ERROR_IN_PROGRESS;

            let erH = () => {
                s.connectionState = NSAPI_ERROR_CONNECTION_LOST;

                res.send('' + NSAPI_ERROR_CONNECTION_LOST);
            };

            s.on('connect', () => {
                s.connectionState = NSAPI_ERROR_ALREADY;
                s.removeListener('error', erH);

                res.send('' + NSAPI_ERROR_OK);
            });

            s.on('error', erH);
        }
        else {
            s.port = req.body.port;
            s.hostname = req.body.hostname;
            s.connectionState = NSAPI_ERROR_ALREADY;

            res.send('0');
        }
    });

    io.on('connection', ws => {
        ws.on('socket-subscribe', id => {
            if (!sockets[id]) return;

            consoleLog('socket-subscribe on', id);

            sockets[id].subscribers.push(ws);
        });

        ws.on('disconnect', () => {
            for (let sk of Object.keys(sockets)) {
                let s = sockets[sk];

                let subIx = s.subscribers.indexOf(ws);
                if (subIx === -1) return;

                s.subscribers.splice(subIx, 1);
            }
        });
    });

    io.on('socket-subscribe', id => {

    })

    app.get('/view/:script', (req, res, next) => {
        let maxAge = 0;
        if (req.params.script.indexOf('user_') === 0) {
            maxAge = staticMaxAge;
        }

        if (/\.js\.mem$/.test(req.params.script)) {
            return res.sendFile(Path.join(outFolder, req.params.script), { maxAge: maxAge });
        }

        if (/\.js\.map$/.test(req.params.script)) {
            return res.sendFile(Path.join(outFolder, req.params.script), { maxAge: maxAge });
        }

        if (/\.data$/.test(req.params.script)) {
            return res.sendFile(Path.join(outFolder, req.params.script), { maxAge: maxAge });
        }

        (async function() {
            let jshal = [];
            let jsui = [];
            let peripherals = [];

            let componentsPath = Path.join(outFolder, req.params.script + '.js.components');
            if (await exists(componentsPath)) {
                let components = JSON.parse(await promisify(fs.readFile)(componentsPath, 'utf-8'));

                jshal = jshal.concat(components.jshal);
                jsui = jsui.concat(components.jsui);
                peripherals = peripherals.concat(components.peripherals);
            }

            function normalize(a) {
                return a.map(f => {
                    if (Path.sep === '\\') {
                        f = f.replace(/\\/g, '/'); // use Unix paths for the browser
                    }
                    if (f.indexOf('ciaa-hal/peripherals/') === 0) {
                        return f.replace(/^ciaa-hal/, '');
                    }
                    return '/outUser/' + f;
                }).map(f => { return { script: f } });
            }

            // map to proper route
            jshal = normalize(jshal);
            jsui = normalize(jsui);

            res.render('viewer.html', {
                script: req.params.script,
                jshal: jshal,
                jsui: jsui,
                peripherals: JSON.stringify(peripherals),
                version: version
            });
        })().catch(err => {
            return next(err);
        });
    });

    app.get('/', (req, res, next) => {
        res.render('editor.html', { version: version });
    });

    let compilationId = 0;
    app.post('/compile', (req, res, next) => {
        let id = compilationId++;

        console.time('compile' + id);
        compile(req.body.code, outFolder).then(name => {
            console.timeEnd('compile' + id);

            consoleLog('Compilación exitosa', id);
            res.send(name);
        }).catch(err => {
            console.timeEnd('compile' + id);

            consoleLog('Fallo la compilación', id, err);
            res.status(500).send(err);
        });
    });

    console.log('EDU-CIAA-NXP v' + version);

    server.listen(port, process.env.HOST || '0.0.0.0', function () {
        console.log('Web server listening on port %s!', port);

        callback();
    });
};

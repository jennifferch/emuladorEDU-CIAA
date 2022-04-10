(function() {

    var activeComponents = [];
    var activeComponentModel = [];
    
    window.removeComponent = function(instance) {
        var ix = activeComponents.indexOf(instance);
        activeComponentModel.splice(ix, 1);
        sessionStorage.setItem('model', JSON.stringify(activeComponentModel));
        sessionStorage.setItem('model-dirty', true);
    };
    
    var components = [
        { component: 'LedRed', name: 'Red LED', pins: [ 'LED' ] },
        { component: 'LedBlue', name: 'Blue LED', pins: [ 'LED' ] },
        { component: 'LedYellow', name: 'Yellow LED', pins: [ 'LED' ] },
        { component: 'LedWhite', name: 'White LED', pins: [ 'LED' ] },
        {
            component: 'Dht11',
            name: 'Dht11 temperature / humidity sensor',
            pins: [ { name: 'SDA/SDI', value: [ 'GND', '19' , '20'] }, 
            { name: 'SIGNAL', value: [ 'GPIO1', '30' , '31']  } ,
             { name: 'VCC', value: [ '3V3', '5V3']  } ]
        },
        {
            component: 'Lcd',
            name: 'LCD display',
            pins: [
                { name: 'MOSI', value: [ 'p5', 'p11' ] },
                { name: 'MISO', value: [ 'p6', 'p12' ] },
                { name: 'SCK',  value: [ 'p7', 'p13' ] }
            ]
        }
    ];
    
    Module.preRun.push(function() {
        var peripherals = window.peripheralsToLoad;
        console.log("peripherals ",peripherals);
    
        // dirty model? in that case load that instead of our peripherals mentioned here...
        if (sessionStorage.getItem('model-dirty')) {
            try {
                peripherals = JSON.parse(sessionStorage.getItem('model'));
            }
            catch (ex) {}
        }
    
        if (peripherals) {
            peripherals.forEach(function(m) {
                var args = m.args;
                Object.keys(args).forEach(function(k) {
                    if (typeof args[k] === 'string' && args[k].indexOf('PinNames.') === 0) {
                        args[k] = MbedJSHal.PinNames[args[k].replace('PinNames.', '')];
                    }
                });
    
                var component = new window.MbedJSUI[m.component](args);
                component.init();
                activeComponents.push(component);
                activeComponentModel.push(m);
            });
    
            sessionStorage.setItem('model', JSON.stringify(activeComponentModel));
            sessionStorage.setItem('model-dirty', true);
        }
    });
    
    document.querySelector('#add-component').onclick = function() {
        document.querySelector('#overlay').style.display = 'flex';
    };
    
    document.querySelector('#overlay').onclick = function(e) {
        if (e.target === e.currentTarget) {
            this.style.display = 'none';
        }
    };
    
    components.forEach(function(c, ix) {
        var opt = document.createElement('option');
        opt.textContent = c.name;
        document.querySelector('#select-component').appendChild(opt);
    });
    
    document.querySelector('#select-component').onchange = function(e) {
        var obj = components[document.querySelector('#select-component').options.selectedIndex];
    
        var pinsEl = document.querySelector('#pins');
        pinsEl.innerHTML = '';
    
        obj.pins.forEach(function(pin) {
            var label = document.createElement('label');
            label.textContent = typeof pin === 'object' ? pin.name : pin;
            var select = document.createElement('select');
    
            if (typeof pin === 'object') {
                select.dataset.pin = pin.name;
    
                pin.value.forEach(function(p) {
                    var opt = document.createElement('option');
                    opt.textContent = p;
                    opt.value = MbedJSHal.PinNames[p];
                    select.appendChild(opt);
                });
            }
            else {
                select.dataset.pin = pin;
    
                Object.keys(MbedJSHal.PinNames).map(function(p) {
                    var opt = document.createElement('option');
                    opt.textContent = p;
                    opt.value = MbedJSHal.PinNames[p];
                    select.appendChild(opt);
                });
            }
            pinsEl.appendChild(label);
            pinsEl.appendChild(select);
        });
    
        document.querySelector('#add-component-btn').onclick = function() {
            var args = [].reduce.call(pinsEl.querySelectorAll('#pins select'), function(curr, select) {
                var s = select.options[select.options.selectedIndex];
                curr[select.dataset.pin] = Number(s.value);
                return curr;
            }, {});
            console.log('args', args);
            var component = new window.MbedJSUI[obj.component](args);
            component.init();
            activeComponents.push(component);
            activeComponentModel.push({ component: obj.component, args: args });
            sessionStorage.setItem('model', JSON.stringify(activeComponentModel));
            sessionStorage.setItem('model-dirty', true);
    
            document.querySelector('#overlay').style.display = 'none';
        };
    };
    
    document.querySelector('#select-component').onchange();
    
    })();
    
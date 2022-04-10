(function(exports) {

    function Dht11(pins) {

        //Get api datos humedad temperatura
        const request = new XMLHttpRequest();
        request.open('GET', 'https://api.openweathermap.org/data/2.5/weather?q=Lima&appid=16df248820826ba8bd599c2ce8648dd2&units=metric', true);
                      
        request.onload = function () {
                // Acciones a realizar
                const data = JSON.parse(this.response);
                console.log( "data Temperatura" + data.main.temp);
                console.log( "data Humedad" + data.main.humidity);
                this.temp = data.main.temp *100;
                this.humidity = data.main.humidity + "00" ;

            //    this.temp = 2328;
           //     this.humidity = 6600  ;

               this.pins = pins;
            MbedJSHal.dht11.update_temperature('10', '11', this.temp);
            MbedJSHal.dht11.update_humidity('10', '11', this.humidity);         
                
        }
                          
        request.send();
        exports.BaseComponent.call(this);
        this.componentsEl = document.querySelector('#components');
   
    }

    Dht11.prototype = Object.create(exports.BaseComponent.prototype);

    Dht11.prototype.init = function() {
        var el = this._el = document.createElement('div');
        el.classList.add('component');
        var p = document.createElement('p');
        p.classList.add('description');

        p.textContent = 'DHT11';

        p.appendChild(this.createDestroyEl());
        el.appendChild(p);

        var img = document.createElement('img');
        img.src = "/img/Dht11.png";

        el.appendChild(img);
        this.componentsEl.appendChild(el);
    };

    Dht11.prototype.destroy = function() {
        window.removeComponent(this);

        this.componentsEl.removeChild(this._el);
    };

    Dht11.prototype.renderTemperature = function() {
    };

    Dht11.prototype.renderHumidity = function() {

    };

    Dht11.prototype.change = function(ev) {
        // this reflows... but I don't feel like fixing it
        var y = ev.pageY - ev.currentTarget.offsetTop;
        if (y < 10) y = 10;
        y -= 10;
        if (ev.currentTarget === this.tempEl) {
            this.temp = (1 - (y / 155)) * 5000 | 0;
            if (this.temp < 0) this.temp = 0;
            this.renderTemperature();
        }
        else if (ev.currentTarget === this.humiEl) {
            this.humidity = (1 - (y / 155)) * 10000 | 0;
            if (this.humidity < 0) this.humidity = 0;
            this.renderHumidity();
        }
    };

    Dht11.prototype.on_update_display = function(mosi, miso, sck, buffer) {
        if (this.pins.MOSI !== mosi || this.pins.MISO !== miso || this.pins.SCK !== sck) return;

        // so... we're getting 4096 bytes...
        var x = 0;
        var y = 0;

        var ctx = this.cnvs.getContext('2d');

        for (var ix = 0; ix < buffer.length; ix++) {
            ctx.fillStyle = buffer[ix] === 1 ? '#000' : '#767c69';
            ctx.fillRect(x, y, PIXEL_SIZE, PIXEL_SIZE);

            x += PIXEL_SIZE;
            if (x === (128 * PIXEL_SIZE)) {
                x = 0;
                y += PIXEL_SIZE;
            }

        }
    };

    exports.Dht11 = Dht11;

})(window.MbedJSUI);

(function() {

    var svg = document.querySelector('#board-svg');

    if (svg.contentDocument && svg.contentDocument.rootElement) {
        attachHandlers(svg.contentDocument);
    }
    else {
        svg.addEventListener('load', function() {
            attachHandlers(this.contentDocument);
        });
    }

    function attachHandlers(board) {
        MbedJSHal.gpio.init_out(null, MbedJSHal.PinNames.LED1, 0);
        MbedJSHal.gpio.init_out(null, MbedJSHal.PinNames.LED2, 0);
        MbedJSHal.gpio.init_out(null, MbedJSHal.PinNames.LED3, 0);
        MbedJSHal.gpio.init_out(null, MbedJSHal.PinNames.LEDR, 0);
        MbedJSHal.gpio.init_out(null, MbedJSHal.PinNames.LEDG, 0);
        MbedJSHal.gpio.init_out(null, MbedJSHal.PinNames.LEDB, 0);

        MbedJSHal.gpio.init_in(null, MbedJSHal.PinNames.TEC1, 0);
        MbedJSHal.gpio.init_in(null, MbedJSHal.PinNames.TEC2, 0);
        MbedJSHal.gpio.init_in(null, MbedJSHal.PinNames.TEC3, 0);
        MbedJSHal.gpio.init_in(null, MbedJSHal.PinNames.TEC4, 0);
        MbedJSHal.gpio.init_in(null, MbedJSHal.PinNames.BUTTON1, 0);

        var builtInLeds = {};
        builtInLeds[MbedJSHal.PinNames.LED1] = board.querySelector('#led_yellow');
        builtInLeds[MbedJSHal.PinNames.LED2] = board.querySelector('#led_red');
        builtInLeds[MbedJSHal.PinNames.LED3] = board.querySelector('#led_green');
        builtInLeds[MbedJSHal.PinNames.LEDB] = board.querySelector('#led_rgb');
        builtInLeds[MbedJSHal.PinNames.LEDG] = board.querySelector('#led_rgb');
        builtInLeds[MbedJSHal.PinNames.LEDR] = board.querySelector('#led_rgb');

        var builtInLeds_light = {};
        builtInLeds_light[MbedJSHal.PinNames.LED1] = board.querySelector('#led_yellow_light');
        builtInLeds_light[MbedJSHal.PinNames.LED2] = board.querySelector('#led_red_light');
        builtInLeds_light[MbedJSHal.PinNames.LED3] = board.querySelector('#led_green_light');
        builtInLeds_light[MbedJSHal.PinNames.LEDR] = board.querySelector('#led_red_light_rgb');
        builtInLeds_light[MbedJSHal.PinNames.LEDG] = board.querySelector('#led_green_light_rgb');
        builtInLeds_light[MbedJSHal.PinNames.LEDB] = board.querySelector('#led_blue_light_rgb');

        var builtInButtons_release = {};
        builtInButtons_release[MbedJSHal.PinNames.TEC1] = board.querySelector('#tec1_release');
        builtInButtons_release[MbedJSHal.PinNames.TEC2] = board.querySelector('#tec2_release');
        builtInButtons_release[MbedJSHal.PinNames.TEC3] = board.querySelector('#tec3_release');
        builtInButtons_release[MbedJSHal.PinNames.TEC4] = board.querySelector('#tec4_release');
        builtInButtons_release[MbedJSHal.PinNames.BUTTON1] = board.querySelector('#tec_reset_release');

        var builtInButtons_push = {};
        builtInButtons_push[MbedJSHal.PinNames.TEC1] = board.querySelector('#tec1_push');
        builtInButtons_push[MbedJSHal.PinNames.TEC2] = board.querySelector('#tec2_push');
        builtInButtons_push[MbedJSHal.PinNames.TEC3] = board.querySelector('#tec3_push');
        builtInButtons_push[MbedJSHal.PinNames.TEC4] = board.querySelector('#tec4_push');
        builtInButtons_push[MbedJSHal.PinNames.BUTTON1] = board.querySelector('#tec_reset_push');


        function setBuiltInLed(pin, value, type) {
            if (type !== MbedJSHal.gpio.TYPE.DIGITAL) {
                return console.error('PwmOut not supported on built-in LEDs');
            }

            if (value === 1) {
                builtInLeds_light[pin].setAttribute('display', 'block');
                builtInLeds[pin].setAttribute('display', 'none');
            }else {
                builtInLeds_light[pin].setAttribute('display', 'none');
                builtInLeds[pin].setAttribute('display', 'block');
                
            }
        }

        window.MbedJSHal.gpio.on('pin_write', function(pin, value, type) {
            if (pin in builtInLeds) {
                setBuiltInLed(pin, value, type);
            }
        });

        Object.keys(builtInLeds).forEach(function(pin) {
            var v = window.MbedJSHal.gpio.read(pin);
            if (v !== -1) {
                setBuiltInLed(pin, v, MbedJSHal.gpio.TYPE.DIGITAL);
            }
        });

        Object.keys(builtInButtons_release).forEach(function(pin) {
            var el = builtInButtons_release[pin];

            el.onmousedown = function() {
                console.log("button onmousedown");                
                window.MbedJSHal.gpio.write(pin, 1);
                
                builtInButtons_push[pin].setAttribute('fill', '#ccc');
               builtInButtons_release[pin].setAttribute('fill', '#1a1a1a');
               
            };

            el.onmouseup = function() {
                console.log("button onmouseup");
                window.MbedJSHal.gpio.write(pin, 0);
                
            builtInButtons_release[pin].setAttribute('fill', '#4d4d4d');
            builtInButtons_push[pin].setAttribute('fill', '#e7e8e9');
               
            };

          
        });
    }

})();

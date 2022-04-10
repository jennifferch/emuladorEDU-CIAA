## Emulador para la placa EDU-CIAA-NXP

### Prerequisites

1. Install [Mbed CLI](https://github.com/ARMmbed/mbed-cli).
1. Install [Python 2.7](https://www.python.org/downloads/windows/).
1. Install [Node.js](https://nodejs.org/en/) v8 or higher.
1. Install [Emscripten](https://github.com/emscripten-core/emsdk.git) versión 1.38.21.


### Instalación

1. Install the simulator through git:

    ```
    $ npm install
    $ node cli.js -i examples/blinky -o outUser --launch
    ```

### Atribuciones

* Biblioteca sAPI (http://www.proyecto-ciaa.com.ar/devwiki/doku.php?id=desarrollo:firmware:v3).
* Mbed Os simulador (https://github.com/ARMmbed/mbed-os).

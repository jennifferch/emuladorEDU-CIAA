#include "sapi.h"

int main(void) {
  
    /* Inicializar la placa */
    boardConfig();

    while (1) {

      /* Prendo el led azul */
      gpioWrite( LEDB, ON );

      delay(500);

      /* Apago el led azul */
      gpioWrite( LEDB, OFF );

      delay(500);
      
    }
}

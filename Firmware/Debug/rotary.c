#include <avr/io.h>
#include "../Macros.h"
#include "../USBDSO.h"
#include <util/delay.h>

int main(void)
{

// Outputs
SET(DDRA,_BV(PA6),IN); // input
SET(PORTA,_BV(PA6),OUT); // pullup

LED_DDR(OUT);

    while(1){
        if( GET(PINA,PA6) ){
            LED(ON);
            _delay_ms(10);
        }
      else{ 
            LED(OFF);
            _delay_ms(10);
        }
    }
return 0;
}

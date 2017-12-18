#include <avr/io.h>
#include "../Macros.h"
#include "../USBDSO.h"
#include <util/delay.h>

int main(void)
{

    LED_DDR(OUT);
    ADC_DATA_DDR(IN);

    while(1){
        if( ADC_DATA_IN & 0xff ){
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

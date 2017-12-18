#include <avr/io.h>
#include "../Macros.h"
#include "../USBDSO.h"
#include <util/delay.h>

#define ADC_DATA_DDR(DIR) SET(DDRA,0x0f,DIR), SET(DDRB, 0x1B,DIR)

int main(void)
{

// Outputs
LED_DDR(OUT);
RAM_READ_DDR(OUT);
SCS_DDR(OUT);

SLOW_CLK_DDR(OUT);
EDGE_SWITCH_DDR(OUT);
ENABLE_DDR(OUT);
PLL_S0_DDR(OUT);
PLL_S1_DDR(OUT);
IN_CLK_DDR(OUT);

// Inputs
// ADC_DATA_DDR(IN);
FILL_COMP_DDR(IN);
ADC_DATA_DDR(IN);

    while(1){
        // if( GET(PINA,_BV(PA3)) == _BV(PA3) ||
        //     GET(PINA,_BV(PA2)) == _BV(PA2) ||
        //     GET(PINA,_BV(PA1)) == _BV(PA1) ||
        //     GET(PINA,_BV(PA0)) == _BV(PA0) ||
        //     GET(PINB,_BV(PB0)) == _BV(PB0) ||
        //     GET(PINB,_BV(PB1)) == _BV(PB1) ||
        //     GET(PINB,_BV(PB3)) == _BV(PB3) ||
        //     GET(PINB,_BV(PB4)) == _BV(PB4)){
        //     LED(ON);
        //     _delay_ms(10);
        // }
        if( PINA & (1<<PA3) ){
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
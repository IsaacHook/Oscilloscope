#include <avr/io.h>
#include "../../Macros.h"
#include <util/delay.h>

// updated
#define IN_CLK(STATE) SET(PORTD,_BV(PD4),STATE) // PLL Clock outc setup
#define IN_CLK_DDR(DIR) SET(DDRD,_BV(PD4),DIR)

#define RAM_READ(STATE) SET(PORTA,_BV(PA7),STATE)
#define RAM_READ_DDR(DIR) SET(DDRA,_BV(PA7),DIR)

int main(void)
{
   RAM_READ_DDR(OUT);
   IN_CLK_DDR(OUT);
   IN_CLK(LOW);
    while(1){
      RAM_READ(HIGH);
       _delay_ms(1000);
       RAM_READ(LOW);
       _delay_ms(1000);
    }
    return 0;
}

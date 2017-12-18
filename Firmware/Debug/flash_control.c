#include <avr/io.h>
#include "../Macros.h"
#include "../USBDSO.h"
#include <util/delay.h>

int main(void)
{
LED_DDR(OUT);
RAM_READ_DDR(OUT);
SCS_DDR(OUT);

SLOW_CLK_DDR(OUT);
EDGE_SWITCH_DDR(OUT);
ENABLE_DDR(OUT);
PLL_S0_DDR(OUT);
PLL_S1_DDR(OUT);
IN_CLK_DDR(OUT);

    while(1){
      LED(ON);
      RAM_READ(ON);
      SCS(ON);

      SLOW_CLK(ON);
      EDGE_SWITCH(ON);
      ENABLE(ON);
      PLL_S0(ON);
      PLL_S1(ON);
      IN_CLK(ON);

       _delay_ms(1000);

      LED(OFF);
      RAM_READ(OFF);
      SCS(OFF);

      SLOW_CLK(OFF);
      EDGE_SWITCH(OFF);
      ENABLE(OFF);
      PLL_S0(OFF);
      PLL_S1(OFF);
      IN_CLK(OFF);

       _delay_ms(1000);
    }
    return 0;
}

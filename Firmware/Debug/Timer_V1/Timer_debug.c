#include <avr/io.h>
#include "../../Macros.h"
#include <util/delay.h>

#define IN_CLK(STATE) SET(PORTD,_BV(PD4),STATE) // PLL Clock outc setup
#define IN_CLK_DDR(DIR) SET(DDRD,_BV(PD4),DIR)
#define IN_CLK_IN GET(PIND,_BV(PD4))

#define TIMER_SETUP SET(TCCR1A,_BV(COM1B0),ON); SET(TCCR1B,(_BV(WGM12)|_BV(CS10)),ON)
#define CLOCK_DIVIDER(VALUE) OCR1A=VALUE;

int main(void)
{
    IN_CLK_DDR(OUT);
    CLOCK_DIVIDER(0);
    TIMER_SETUP;
    //while(1){
    //}
    return 0;
}

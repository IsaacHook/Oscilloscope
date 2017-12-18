// /*
//  * UoM_DSO_Firmware_2014.c
//  *
//  * Created: 23-10-2014
//  *  Author: M J Adams
//  */ 


#include <avr/io.h>
#include "../USBDSO.h"
#include "../Macros.h"

int main(void){

//Initalise IO direction and state
// RAM_READ_DDR(OUT);
//Initalise IO direction and state
RAM_READ_DDR(OUT);
ADC_DATA_DDR(IN);       // data direction state corrected
ENABLE_DDR(OUT);
LED_DDR(OUT);
SDO_DDR(OUT);
SCS_DDR(OUT);
SCS(HIGH);
SCK_DDR(OUT);
PLLx2;
IN_CLK_DDR(OUT);
SLOW_CLK_DDR(OUT);
FILL_COMP_DDR(IN);
RX_DDR(IN);
TX_DDR(OUT);

    ENABLE(HIGH); 
    RAM_READ(HIGH);
    LED(ON);

return (0);
}

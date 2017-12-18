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
RAM_READ_DDR(OUT);
LED_DDR(OUT);
ENABLE_DDR(OUT);
FILL_COMP_DDR(IN);

 while(1){
    RAM_READ(HIGH); 
	LED(ON);
    _delay_ms(2000);
    RAM_READ(LOW); 
	LED(OFF);
    _delay_ms(2000);
 }

return (0);
}

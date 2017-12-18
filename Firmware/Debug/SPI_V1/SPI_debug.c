#include <avr/io.h>
#include "../../USBDSO.h"
#include "../../Macros.h"
#include <util/delay.h>

void SetupRegisters_SPI(void) {
    SDO_DDR(OUT);
    SCS_DDR(OUT);
    SCK_DDR(OUT);

    SCS(HIGH);
    SCK(LOW);
}

void wait(byte delay_outside)
{
    unsigned int delay_counter = DELAY_CONST;

    while(delay_outside > 0)
    {
        delay_counter = DELAY_CONST;
        while(delay_counter>0)
        {
            delay_counter--;
        }
        delay_outside--;
    }
    return;
}

void spi_put(byte value)
{
    int spi_counter = 0;
    SCS(LOW);
    SCK(LOW);
    for(spi_counter = 15; spi_counter >= 0; spi_counter--)
    {
        SCK(LOW);
        if(spi_counter == 15)
            SDO(LOW);   //Run this command
        if(spi_counter == 14)
            SDO(HIGH);   //Don't care (4901 buffered)
        if(spi_counter == 13)
            SDO(LOW);  //Gain
        if(spi_counter == 12)
            SDO(HIGH);  //Active mode

        if(spi_counter < 12)
        {
            if((value & 0x80)==0x80)
                SDO(HIGH);
            else
                SDO(LOW);
            value <<= 1;
        }
        wait(10);
        SCK(HIGH);
        wait(10);   
    }
    wait(10);
    SCS(HIGH);
    
    return;
}

int dac_input_code(int voltage_times_ten){
    // return (256 * voltage) / (2.0 * 2.048);
    return (256 * voltage_times_ten) / 41;
}

int main(void)
{
    SetupRegisters_SPI();
    spi_put(dac_input_code(25));
    return 0;
}

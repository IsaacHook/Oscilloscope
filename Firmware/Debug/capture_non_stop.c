// /*
//  * UoM_DSO_Firmware_2014.c
//  *
//  * Created: 23-10-2014
//  *  Author: M J Adams
//  */ 


#include <avr/io.h>
#include "../USBDSO.h"
#include "../Macros.h"

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

byte USART_Receive(void) {
    //volatile uint16_t counter=0;
    LED(ON);
    while ( !(UCSRA & (1<<RXC)) );
    LED(OFF);
    return UDR;
}

void put(byte value)
{
    TX_CLEAR;
    TX_BYTE = value;
    WAIT_FOR_TX;
    return;
}

void SetupRegisters_SPI(void) {
    SDO_DDR(OUT);
    SCS_DDR(OUT);
    SCK_DDR(OUT);

    SCS(HIGH);
    SCK(LOW);
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

unsigned char reverse_bit8(unsigned char x)
{
    x = ((x & 0x55) << 1) | ((x & 0xAA) >> 1);
    x = ((x & 0x33) << 2) | ((x & 0xCC) >> 2);
    return (x << 4) | (x >> 4);
}

void UU_PutNumber(uint32_t x)
{
  unsigned char value[10]; //a temp array to hold results of conversion
  int i = 0; //loop index
  
  do
  {
    value[i++] = (char)(x % 10) + '0'; //convert integer to character
    x /= 10;
  } while(x);
  
  while(i) //send data
  {
    put(value[--i]); 
  }
}

int main(void){

//Initalise variable and set defaults
byte received = 0;
byte ch1_trig_thresh = 127;
byte ch2_trig_thresh = 127;
byte trig_source = 'r';
byte offset_value = 0;
byte sample_rate = 1;
byte volts_per_div_ch1 = 1;
byte volts_per_div_ch2 = 1;
byte send_every_nth_sample = 1;
byte sample_start_offset = 0;
byte sample_length = 255;
byte baud_rate = 1;
byte sample_out;
byte capture_start = FALSE;
unsigned int sample_count = 0;
unsigned int sample_address = 0;
unsigned int sample_total_length = 0;


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
// FORCE_DDR(OUT);
// FORCE(OFF);
// TRIGGER_BTN_DDR(IN);
// TRIGGER_BTN(ON);
EDGE_SWITCH_DDR(OUT);
EDGE_SWITCH(OFF);

//Initialise serial port

UART_CONFIG1;
UART_CONFIG2;
SERIAL_SET_BAUD_RATE1(BAUDRATE);
SERIAL_SET_BAUD_RATE2(BAUDRATE);

//Initialise counter
TIMER_SETUP;

// Initialise SPI
SetupRegisters_SPI();

 while(1){
    switch(received)
    case'C':
        spi_put(ch1_trig_thresh);
        LED(ON);
        //set up trigger 
        RAM_READ(OFF);
        // Enable toggle
        ENABLE(LOW);
        ENABLE(HIGH);
        capture_start = FALSE;
        //check if user wants to exit wait
        while(received != 'n')
        {
            received = RX_BYTE;
            //make sure the capture begins
            if (!capture_start && !CAPTURE_COMPLETE)
                capture_start = TRUE;
            if (CAPTURE_COMPLETE && capture_start)
            {
                put ('C');
            }
        }
        LED(OFF);
        break;

 }

return (0);
}

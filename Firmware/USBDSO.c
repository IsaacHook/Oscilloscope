/*
 * UoM_DSO_Firmware_2014.c
 *
 * Created: 23-10-2014
 *  Author: M J Adams
 */ 


#include <avr/io.h>
#include "USBDSO.h"
#include "Macros.h"

void put(byte value)
{
    TX_CLEAR;
    TX_BYTE = value;
    WAIT_FOR_TX;
    return;
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
 //wait till a new char arrives for new char
 
       while(!RX_FULL){
         if(!TRIGGER_BTN_IN){
                //set up trigger
                RAM_READ(OFF);
                // Enable toggle
                ENABLE(LOW);
                _delay_ms(1);
                ENABLE(HIGH);
                _delay_ms(1);
                ENABLE(LOW);
                LED(ON);
                capture_start = FALSE;

                //check if user wants to exit wait
                while(received != 'n') {
                    received = RX_BYTE;
                    //make sure the capture begins
                    if (!capture_start && !CAPTURE_COMPLETE) capture_start = TRUE;
                    if (CAPTURE_COMPLETE && capture_start){
                        put ('C');
                        received = 'n';
                    }
                }
                LED(OFF);
            }
     }
 
 received = RX_BYTE;

  switch(received)
  {
    //version number
    case'v':
        put ('D');
        put ('S');
        put ('O');
        put (' ');
        put ('V');
        put ('e');
        put ('r');
        put ('s');
        put ('i');
        put ('o');
        put ('n');
        put (' ');
        put ('1');
        put ('.');
        put ('0');
        put ('\n');
        put ('\r');
        break;
    
    //baud rate
    case'b':
        put (baud_rate);
        break;
    
    //channel 1 trigger threshold
    
    case't':
        WAIT_FOR_RX;
        put ('t');
        ch1_trig_thresh = RX_BYTE;
        spi_put(ch1_trig_thresh);
        put ('\n');
        UU_PutNumber(1);
        put ('\n');
        UU_PutNumber(2);
        put ('\n');
        UU_PutNumber(3);
        put ('\n');
        UU_PutNumber(ch1_trig_thresh);
        break;

    //channel 2 trigger threshold
    
    case'T':
        WAIT_FOR_RX;
        ch2_trig_thresh = RX_BYTE;
        spi_put(ch2_trig_thresh);
        break;

    //trigger source
    
    case'i':
        WAIT_FOR_RX;
        received = RX_BYTE;
        //trigger source channel 1 rising edge
        if(received == 'r')
        {
            trig_source = 'r';
        }
        //trigger source channel 1 falling edge
        if(received == 'f')
        {
            trig_source = 'f';
        }
        //trigger source channel 2 rising edge
        if(received == 'R')
        {
            trig_source = 'R';
        }
        //trigger source channel 2 falling edge
        if(received == 'F')
        {
            trig_source = 'F';
        }
        //trigger source ext rising edge
        if(received == 'e')
        {
            trig_source = 'e';
        }
        //trigger source ext falling edge
        if(received == 'E')
        {
            trig_source = 'E';
        }
        else
        {
            //value not valid;
        }
        break;
    
    //force a trigger
    
    case'g':
        break;
            
    //set the offset value of the 
    
    case'o':
        WAIT_FOR_RX;
        received = RX_BYTE;
        offset_value = received;
        break;

    //set sampling rate
    
    case'r':
        WAIT_FOR_RX;
        received = RX_BYTE;
        if(received == '1')
        {
            //set PLL to 25ns sample time
            CLOCK_DIVIDER(0);
            sample_rate = '1';
            PLLx8;          
        }
        if(received == '2')
        {
            //set PLL to 50ns sample time
            sample_rate = '2';
            CLOCK_DIVIDER(0);
            PLLx4;
        }
        if(received == '3')
        {
            //set PLL to 100ns sample time
            sample_rate = '3';
            CLOCK_DIVIDER(0);
            PLLx2;
        }
        if(received == '4')
        {
            //set PLL to 1us sample time
            PLLx2;
            CLOCK_DIVIDER(10);
            sample_rate = '4';
        }
        if(received == '5')
        {
            //set PLL to 1ms sample time
            PLLx2;
            CLOCK_DIVIDER(10000);
            sample_rate = '5';
        }
        else
        {
            //extended sample range or not valid
        }
        break;
    
    //scaling for channel 1
    
    case'a':
        WAIT_FOR_RX;
        received = RX_BYTE;
        if(received == '1')
        {
            //set div mux to 3.9mv/bit
            volts_per_div_ch1 = '1';
        }
        if(received == '2')
        {
            //set div mux to 7.8mv/bit
            volts_per_div_ch1 = '2';
        }
        if(received == '3')
        {
            //set div mux to 19.5mv/bit
            volts_per_div_ch1 = '3';
        }
        if(received == '4')
        {
            //set div mux to 39mv/bit
            volts_per_div_ch1 = '4';
        }
        if(received == '5')
        {
            //set div mux to 390mv/bit
            volts_per_div_ch1 = '5';
        }
        else
        {
            //not valid
        }
        break;

    //scaling for channel 1
    
    case'A':
        WAIT_FOR_RX;
        received = RX_BYTE;
        if(received == '1')
        {
            //set div mux to 3.9mv/bit
            volts_per_div_ch2 = '1';
        }
        if(received == '2')
        {
            //set div mux to 7.8mv/bit
            volts_per_div_ch2 = '2';
        }
        if(received == '3')
        {
            //set div mux to 19.5mv/bit
            volts_per_div_ch2 = '3';
        }
        if(received == '4')
        {
            //set div mux to 39mv/bit
            volts_per_div_ch2 = '4';
        }
        if(received == '5')
        {
            //set div mux to 390mv/bit
            volts_per_div_ch2 = '5';
        }
        else
        {
            //not valid
        }
        break;

    //send every nth sample when wanting to zoom out
    
    case'm':
        WAIT_FOR_RX;
        received = RX_BYTE;
        send_every_nth_sample = received;
        break;

    //skip samples at the start to zoom in on something interesting
    
    case'z':
        WAIT_FOR_RX;
        received = RX_BYTE;
        sample_start_offset = received;
        break;

    //set the number of samples you want to transmit
    
    case'Z':
        WAIT_FOR_RX;
        received = RX_BYTE;
        sample_length = received;
        break;      

    //send back config data
    
    case'c':
        put ('t');
        put (ch1_trig_thresh);
        put (' ');
        put ('T');
        put (ch2_trig_thresh);
        put (' ');
        put ('s');
        put (trig_source);
        put (' ');
        put ('o');
        put (offset_value);
        put (' ');
        put ('r');
        put (sample_rate);
        put (' ');
        put ('a');
        put (volts_per_div_ch1);
        put (' ');
        put ('A');
        put (volts_per_div_ch2);
        put (' ');
        put ('m');
        put (send_every_nth_sample);
        put (' ');
        put ('z');
        put (sample_start_offset);
        put (' ');
        put ('Z');
        put (sample_length);
        put (' ');
        put ('b');
        put (baud_rate);
        put ('\n');
        put ('\r');
        break;

    //start trigger
    case'C':
        LED(ON);
        //set up trigger 
        RAM_READ(OFF);
        // Enable toggle
        ENABLE(LOW);
        _delay_ms(1);
        ENABLE(HIGH);
        _delay_ms(1);
        ENABLE(LOW);
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
                received = 'n';
            }
        }
        LED(OFF);
        break;

    //send samples from channel 1
    case's':
        sample_count = 0;
        sample_address = 0;
        RAM_READ(ON);
        //check if user wants to exit send
        while(received != 'n')
        {
            received = RX_BYTE;
            //move to the valid sample
            while (sample_address < (sample_start_offset * 0xFF))
            {
                //increment physical counter
                SLOW_CLK(HIGH);
                SLOW_CLK(LOW);
                sample_address++;
            }
            
            // read sample byte NORMAL ORDER
            sample_out = CHANNEL_1_SAMPLE;
            
            // read sample byte REVERSE ORDER
            //sample_out = reverse_bit8(CHANNEL_1_SAMPLE);
            
            //write sample byte
            //put (sample_out);
            //UU_PutNumber (sample_address);
            //put(', ');
            //UU_PutNumber (sample_out);
			put(sample_out);
            //put('\n');
            sample_count++;
            //increment whilst skipping samples reused sample_out variable
            for(sample_out = send_every_nth_sample; sample_out > 0; sample_out--)
            { 
                //increment physical counter
                SLOW_CLK(LOW);
                SLOW_CLK(HIGH);
                _delay_ms(1);
                SLOW_CLK(LOW);
                _delay_ms(1);
                sample_address++;
            }
            //check if we have sent all the samples
            sample_total_length = (sample_length * 0xFF);
            if (sample_count >= sample_total_length)
                received = 'n';
        }
        //while(received != 'f'){
          //  received = RX_BYTE;
        //}
        RAM_READ(OFF);
        break;

    //send samples from channel 2
    case'S':
        sample_count = 0;
        sample_address = 0;
        RAM_READ(ON);
        //check if user wants to exit send
        while(received != 'n')
        {
            received = RX_BYTE;
            //move to the valid sample
            while (sample_address < (sample_start_offset * 0xFF))
            {
                //increment physical counter
                SLOW_CLK(HIGH);
                SLOW_CLK(LOW);
                sample_address++;
            }
            sample_out = CHANNEL_2_SAMPLE;
            put (sample_out);
            sample_count++;
            //increment whilst skipping samples reused sample_out variable
            for(sample_out = send_every_nth_sample; sample_out > 0; sample_out--)
            { 
                //increment physical counter
                SLOW_CLK(HIGH);
                SLOW_CLK(LOW);
                sample_address++;
            }
            //check if we have sent all the samples
            sample_total_length = (sample_length * 0xFF);
            if (sample_count >= sample_total_length)
                received = 'n';
        }
        RAM_READ(OFF);
        break;
    
  }
 }

return (0);
}

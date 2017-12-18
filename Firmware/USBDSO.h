/*************************************************************************
Title:    USB DSO Header
Author:   Matthew Adams
Modified: 23-10-2014
Software: AVR-GCC 
Hardware: ATMEGA16 @ 10Mhz 

DESCRIPTION:
	Header file for USB DSO assignment for ESD


ADC ports: PA0-3, PB0-1, PB3-4
    DDRA: 0000 1111 >> 0x0f
    DDRB: 0001 1011 >> 0x1B

RAM_READ = PA7
T_CS        = PC7x
LED         = PA4
*************************************************************************/
#include <util/delay.h>

#define BAUDRATE 38400UL

#define DELAY_CONST 100

#define ADC_DATA(STATE) SET(PORTA,0x0f,STATE), SET(PORTB, 0x1B,STATE)
#define ADC_DATA_DDR(DIR) SET(DDRA,0x0f,DIR), SET(DDRB, 0x1B,DIR)
#define ADC_B(PORT,PIN,POS) (PORT & (1<<PIN) ? 1 : 0) << POS
#define ADC_DATA_IN (   ADC_B(PINA,PA3,7)|\
                        ADC_B(PINA,PA2,6)|\
                        ADC_B(PINA,PA1,5)|\
                        ADC_B(PINA,PA0,4)|\
                        ADC_B(PINB,PB0,3)|\
                        ADC_B(PINB,PB1,2)|\
                        ADC_B(PINB,PB3,1)|\
                        ADC_B(PINB,PB4,0)\
                    )

#define RAM_READ(STATE) SET(PORTA,_BV(PA7),STATE)
#define RAM_READ_DDR(DIR) SET(DDRA,_BV(PA7),DIR)

// updated
// No trigger button added
// #define TRIGGER_BTN(STATE) SET(PORTB,_BV(PB4),STATE)
// #define TRIGGER_BTN_DDR(DIR) SET(DDRB,_BV(PB4),DIR)
// #define TRIGGER_BTN_IN GET(PINB,_BV(PB4))
#define TRIGGER_BTN_IN 1

#define ENABLE(STATE) SET(PORTD,_BV(PD7),STATE)
#define ENABLE_DDR(DIR) SET(DDRD,_BV(PD7),DIR)
#define ENABLE_IN GET(PIND,_BV(PD7))

#define EDGE_SWITCH(STATE) SET(PORTC,_BV(PC0),STATE)
#define EDGE_SWITCH_DDR(DIR) SET(DDRC,_BV(PC0),DIR)
#define EDGE_SWITCH_IN GET(PINC,_BV(PC0))

#define LED(STATE) SET(PORTA,_BV(PA4),STATE) // Optional LED GPIO
#define LED_DDR(DIR) SET(DDRA,_BV(PA4),DIR)

#define SDO(STATE) SET(PORTB,_BV(PB5),STATE)
#define SDO_DDR(DIR) SET(DDRB,_BV(PB5),DIR)
#define SDO_IN GET(PINB,_BV(PB5))

#define SCS(STATE) SET(PORTC,_BV(PC7),STATE)
#define SCS_DDR(DIR) SET(DDRC,_BV(PC7),DIR)
#define SCS_IN GET(PINC,_BV(PC7))

#define SCK(STATE) SET(PORTB,_BV(PB7),STATE)
#define SCK_DDR(DIR) SET(DDRB,_BV(PB7),DIR)
#define SCK_IN GET(PINB,_BV(PB7))	

#define PLL_S0(STATE) SET(PORTD,_BV(PD6),STATE) // PLL control line setup S0
#define PLL_S0_DDR(DIR) SET(DDRD,_BV(PD6),DIR)
#define PLL_S0_IN GET(PIND,_BV(PD6))	

#define PLL_S1(STATE) SET(PORTD,_BV(PD5),STATE) // PLL control line setup S1
#define PLL_S1_DDR(DIR) SET(DDRD,_BV(PD5),DIR)
#define PLL_S1_IN GET(PIND,_BV(PD5))

#define IN_CLK(STATE) SET(PORTD,_BV(PD4),STATE) // PLL Clock outc setup
#define IN_CLK_DDR(DIR) SET(DDRD,_BV(PD4),DIR)
#define IN_CLK_IN GET(PIND,_BV(PD4))

#define SLOW_CLK(STATE) SET(PORTC,_BV(PC1),STATE) // Databuffer read clocking signal
#define SLOW_CLK_DDR(DIR) SET(DDRC,_BV(PC1),DIR)
#define SLOW_CLK_IN GET(PINC,_BV(PC1))

#define FILL_COMP_DDR(DIR) SET(DDRD,_BV(PD2),DIR)
#define FILL_COMP_IN GET(PIND,_BV(PD2))	

#define RX(STATE) SET(PORTD,_BV(PD0),STATE)
#define RX_DDR(DIR) SET(DDRD,_BV(PD0),DIR)
#define RX_IN GET(PIND,_BV(PD0))	

#define TX(STATE) SET(PORTD,_BV(PD1),STATE)
#define TX_DDR(DIR) SET(DDRD,_BV(PD1),DIR)
#define TX_IN GET(PIND,_BV(PD1))	

#define SERIAL_BAUD_RATE(baud_rate) ((F_CPU)/((baud_rate)*16l)-1)
#define SERIAL_SET_BAUD_RATE1(baud_rate) UBRRH=(byte)(SERIAL_BAUD_RATE(baud_rate)>>8)
#define SERIAL_SET_BAUD_RATE2(baud_rate) UBRRL=(byte)(SERIAL_BAUD_RATE(baud_rate))
#define UART_DATA_REGISTER UDR
#define UART_CONFIG1 SET(UCSRB,(_BV(RXEN)|_BV(TXEN)),ON)
#define UART_CONFIG2 SET(UCSRC,(_BV(URSEL)|_BV(UCSZ1)|_BV(UCSZ0)),ON)
#define TX_EMPTY (GET(UCSRA,_BV(TXC)))
#define TX_CLEAR SET(UCSRA,_BV(TXC),ON)
#define RX_FULL GET(UCSRA,_BV(RXC))

#define TIMER_SETUP SET(TCCR1A,_BV(COM1B0),ON); SET(TCCR1B,(_BV(WGM12)|_BV(CS10)),ON)
#define CLOCK_DIVIDER(VALUE) OCR1A=VALUE;

#define WAIT_FOR_RX while(!RX_FULL)
#define RX_BYTE UART_DATA_REGISTER 
#define ENABLE_TRIGGER ENABLE(LOW);_delay_ms(1);ENABLE(HIGH);_delay_ms(1);ENABLE(LOW)
#define TX_BYTE UART_DATA_REGISTER
#define WAIT_FOR_TX while(!TX_EMPTY)
#define CAPTURE_COMPLETE FILL_COMP_IN
#define CHANNEL_1_SAMPLE ADC_DATA_IN
#define CHANNEL_2_SAMPLE ADC_DATA_IN

#define PLL_S1_1 PLL_S1(HIGH); PLL_S1_DDR(OUT)
#define PLL_S1_0 PLL_S1(LOW); PLL_S1_DDR(OUT)
#define PLL_S1_M PLL_S1(LOW); PLL_S1_DDR(IN)
#define PLL_S0_1 PLL_S0(HIGH); PLL_S0_DDR(OUT)
#define PLL_S0_0 PLL_S0(LOW); PLL_S0_DDR(OUT)
#define PLL_S0_M PLL_S0(LOW); PLL_S0_DDR(IN)

#define PLLx4 PLL_S1_0;PLL_S0_0
#define PLLx16n3 PLL_S1_0;PLL_S0_M
#define PLLx5 PLL_S1_0;PLL_S0_1
#define PLLx5n2 PLL_S1_M;PLL_S0_0
#define PLLx2 PLL_S1_M;PLL_S0_M
#define PLLx10n3 PLL_S1_M;PLL_S0_1
#define PLLx6 PLL_S1_1;PLL_S0_0
#define PLLx3 PLL_S1_1;PLL_S0_M
#define PLLx8 PLL_S1_1;PLL_S0_1


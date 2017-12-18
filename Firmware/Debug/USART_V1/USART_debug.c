#include <avr/io.h>
#include "USBDSO.h"
#include "Macros.h"
#include <util/delay.h>

// void put(byte value)
// {
// 	TX_CLEAR;
// 	TX_BYTE = value;
// 	WAIT_FOR_TX;
// 	return;
// }

void flash_LED(void){
 // Check clock frequency is setup correctly
 SET(DDRA,_BV(PA4), 0xff);
 for (int i=0; i <= 3; i++){
     SET(PORTA,_BV(PA4), 0xff);
     _delay_ms(1000);
     SET(PORTA,_BV(PA4), 0x00);
     _delay_ms(1000);
 }
}

// working
// int main_v1 (void)
// {

//     // Check clock frequency is setup correctly
// 	SET(DDRA,_BV(PA4), 0xff);
// 	for (int i=0; i <= 3; i++){
// 		SET(PORTA,_BV(PA4), 0xff);
// 		_delay_ms(1000);
// 		SET(PORTA,_BV(PA4), 0x00);
// 		_delay_ms(1000);
// 	}

//     byte ReceivedByte='h';

// 	UART_CONFIG1;
// 	UART_CONFIG2;
// 	SERIAL_SET_BAUD_RATE1(BAUDRATE);
// 	SERIAL_SET_BAUD_RATE2(BAUDRATE);

//     for (;;) // Loop forever
//     {
//         put (ReceivedByte);
//     }  
// }

// ---------
void USART_Init(void) {
    UART_CONFIG1;
    UART_CONFIG2;
    SERIAL_SET_BAUD_RATE1(BAUDRATE);
    SERIAL_SET_BAUD_RATE2(BAUDRATE);
}

void USART_Transmit(byte data) {
    while ( !( UCSRA & (1<<UDRE)) );
    UDR = data;
}

int main(void)
{
    flash_LED();
    USART_Init();
    USART_Transmit('f');
    return 0;
}

#include <avr/io.h>
#include "../../USBDSO.h"
#include "../../Macros.h"
#include <util/delay.h>

void LED_flash(void){
    // Check clock frequency is setup correctly
    SET(DDRA,_BV(PA4), 0xff);
    for (int i=0; i <= 3; i++){
        SET(PORTA,_BV(PA4), 0xff);
        _delay_ms(1000);
        SET(PORTA,_BV(PA4), 0x00);
        _delay_ms(1000);
    }
}

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

byte USART_Receive(void) {
    //volatile uint16_t counter=0;
    LED(ON);
    while ( !(UCSRA & (1<<RXC)) );
    LED(OFF);
    return UDR;
}

int main(void)
{
    byte data;
    LED_DDR(OUT);
    //flash_LED();
    USART_Init();
    USART_Transmit('>');
    _delay_ms(500);
    data = USART_Receive();
    if (data == 'r'){
        USART_Transmit('>');
        USART_Transmit(data);
        USART_Transmit('<');
    }
    return 0;
}

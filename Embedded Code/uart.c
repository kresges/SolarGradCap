/*******************************
Program: uart.c
Target Device: atmega32u4
Author: Spencer Kresge
Reference:
Date: 8/18/2015
*******************************/
#include <avr/io.h>

#define F_OSC 8000000
#define UART_BAUDRATE 9600
#define BAUDVALUE  ((F_OSC/(UART_BAUDRATE * 16UL)) - 1 )

void uart_init(void)
{
  DDRD = 0b01001000;
	// set baud rate
	unsigned int baud = BAUDVALUE;

  //UBBR is a 12 bit value so splits across two registers.
	UBRR1H = (unsigned char) (baud >> 8 );
	UBRR1L = (unsigned char)baud;

	UCSR1A = (0<<U2X1); //normal speed

	// enable receiver and transmitter
	UCSR1B = ( 1 << RXEN1 ) | ( 1 << TXEN1 );

	// Asynchronous, NO parity, 8 bit data, 1 stop bit
	UCSR1C = (0<< UMSEL11) | (0<<UMSEL10) | (0<<UPM11) | (0<<UPM10) | (1<<UCSZ11) | (1<<UCSZ10);
}

void uart_putc( uint8_t data )
{
	// wait for empty transmit buffer
	while ( ! ( UCSR1A & ( 1 << UDRE1 ) ) )
	;

	// put data into buffer, sends data
	UDR1 = data;
}

void uart_puts(char* input){
	int i =0;
	while(input[i] != '\0'){
		uart_putc(input[i]); //send one character at a time until string is done.
		i++;
	}
}

uint8_t uart_getc(void){
    //wait for unread data to show up in receive buffer
    while(!(UCSR1A & (1<<RXC1)));
    //return the data in receive buffer.
    return UDR1;
}

void uart_gets(char* buffer){
  uint8_t i=0;
  char temp = 's'; //put a dummy char in just to start the loop.
  while((temp != '\n') && (temp != '\r')){
    temp = uart_getc();
    buffer[i] = temp;
    i++;
  }
  buffer[i] = '\0'; //practice safe strings.
}

/*******************************
Program: uart.c
Target Device: atmega32u4
Author: Spencer Kresge
Reference:
Date: 8/18/2015
*******************************/
#ifndef UART_H_
#define UART_H_

void uart_init(void);

//POLLING
void uart_putc( uint8_t data );
void uart_puts(char* input);
uint8_t uart_getc(void);
void uart_gets(char* buffer);

//INTERUPT



#endif /* UART_H_ */

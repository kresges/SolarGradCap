#include <avr/io.h>
#include <util/delay.h>
#include "uart.h"

#define CPU_PRESCALE(n) (CLKPR = 0x80, CLKPR = (n))
#define CPU_8MHz        0x01

int main(void){
  char buffer[100];
  CPU_PRESCALE(CPU_8MHz);

  DDRD |= (1<<6); //set bit 6 of dynamic data register D to output.
  PORTD |= (1<<6);
  uart_init();
  uart_puts("THE FIRST OF ITS KIND!");
  uart_gets(buffer);
  uart_puts(buffer);
  while(1){
    //if(uart_getc() == 't'){
    PORTD |= (1<<6); //set bit 6 of register D to logic 1.
   // _delay_ms(500);
  //}
  //PORTD &= (1<<6);
  }

  return 0;
}

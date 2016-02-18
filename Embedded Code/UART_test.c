#include <avr/io.h>
#include <util/delay.h>
#include "uart.h"

#define CPU_PRESCALE(n) (CLKPR = 0x80, CLKPR = (n))
#define CPU_8MHz        0x01

int main(void){
  //char buffer[100];
  CPU_PRESCALE(CPU_8MHz);

  uart_init();


  while(1){

    uart_putc(uart_getc());


  }

  return 0;
}

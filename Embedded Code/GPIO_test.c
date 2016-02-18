#include <avr/io.h>
#include <util/delay.h>
#include "uart.h"

#define CPU_PRESCALE(n) (CLKPR = 0x80, CLKPR = (n))
#define CPU_8MHz        0x01

int main(void){
  CPU_PRESCALE(CPU_8MHz);

  DDRD |= (1<<6); //set bit 6 of dynamic data register D to output.

  while(1){
    
    PORTD |= (1<<6);

  }

  return 0;
}

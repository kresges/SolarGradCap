#include <avr/io.h>
#include <util/delay.h>
#include "spi.h"

#define CPU_PRESCALE(n) (CLKPR = 0x80, CLKPR = (n))
#define CPU_8MHz        0x01

int main(void){
  CPU_PRESCALE(CPU_8MHz);

  while(1){
    
      SPI_masterInit();
      SPI_masterTransmit('f');
      

  }

  return 0;
}

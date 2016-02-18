#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include "usb_serial.h"
#include "uart.h"
#include "I2C.h"

#define CPU_PRESCALE(n) (CLKPR = 0x80, CLKPR = (n))
#define CPU_8MHz        0x01

#define GYRO_ADDR 0x6B
#define GYRO_ID_REG 0x0F

volatile uint8_t gyro_wr_buf[50];
volatile uint8_t gyro_rd_buf[50];

int main(void){
  CPU_PRESCALE(CPU_8MHz);

  char ERROR[] = "I2C ID INCORRECT\n";
  char SUCCESS[] = "I2C ID IS CORRECT\n";
  
  usb_init();

  i2c_init();
  //if(i2c_start(GYRO_ADDR+I2C_READ)){
  //	perror("I2C: NOT CONNECTED\n");
  //}

  //gyro_init(); // L3GD20H
  //accel_init(); // LSM303
  //mag_init(); // LSM303

  //LED
  DDRD |= 0xFF; //set bit 6 of dynamic data register D to output.

  while(1){

	//i2c_write(0x28);
	//gyro_rd_buf[0] = ((uint8_t)i2c_read_ack())<<8;
	//gyro_rd_buf[0] |= i2c_read_ack();

	i2c_readReg(GYRO_ADDR+I2C_READ,GYRO_ID_REG,gyro_rd_buf,1);
  	usb_serial_write(gyro_rd_buf,1);



  	//if(gyro_rd_buf[0] != 0b11010111){
  	//	usb_serial_write(ERROR,sizeof(ERROR)-1);
  	//} else {
	//	usb_serial_write(SUCCESS,sizeof(SUCCESS)-1);
  	//}
    PORTD |= (1<<6);
    _delay_ms(500);
    PORTD &= ~(1<<6);
    _delay_ms(500);
  }

  return 0;
}

void perror(char *error){
	usb_serial_write(error,sizeof(*error)-1);
}
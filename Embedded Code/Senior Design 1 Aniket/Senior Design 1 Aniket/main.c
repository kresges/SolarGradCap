/*
 * Senior Design 1 Aniket.c
 *
 * Created: 3/8/2016 9:54:10 AM
 * Author : TekBots 1
 */ 

#include <avr/io.h>
#include <stdlib.h>
#include "uart.h"
#include "spi.h"
#define CPU_PRESCALE(n) (CLKPR = 0x80, CLKPR = (n))
#define CPU_8MHz 0x01


int main(void)
{
	CPU_PRESCALE(CPU_8MHz);
	uart_init(115200);
	SPI_masterInit();
	DDRD |= (1<<6);
	DDRD |= (1<<7);
	PORTD |= (1<<6);
	PORTD |= (1<<7);

	int lightsOn = 0;
	//LED Pattern None
	int i = 0;
	for (i = 0; i < 4; i++) {
		SPI_masterTransmit(0x00); //Start frame
	}
	for (i = 0; i < 30; i++) {
		SPI_masterTransmit(0xFF); //Full brightness
		SPI_masterTransmit(0x00); //Blue
		SPI_masterTransmit(0x00); //No green
		SPI_masterTransmit(0x00); //No red
	}
	for (i = 0; i < 4; i++) {
		SPI_masterTransmit(0xFF); //End frame
	}
	
    while (1) 
    {
		uint8_t rx =  0;
		uint8_t i = 0;
		uint8_t count = 0;
		if (uart_available() != 0) {
			//UART DATA AVAILABLE
			//GET UART DATA
			rx = uart_getchar();
		}
		if (rx != 0) {
			//	IF CHARACTER RECEIVED, SEE WHAT IT IS
			switch(rx) {
				case 'A':
				if (lightsOn) { //Turn lights off
					for (i = 0; i < 4; i++) {
					SPI_masterTransmit(0x00); //Start frame
					}
					for (i = 0; i < 30; i++) {
						SPI_masterTransmit(0xFF); //No brightness
						SPI_masterTransmit(0x00); //No Blue
						SPI_masterTransmit(0x00); //No green
						SPI_masterTransmit(0x00); //No red
					}
					for (i = 0; i < 4; i++) {
						SPI_masterTransmit(0xFF); //End frame
					}
					lightsOn = 0;
					break;
				} else {
					//LED Pattern A
					for (i = 0; i < 4; i++) {
						SPI_masterTransmit(0x00); //Start frame
					}
					for (i = 0; i < 29; i++) {
						count++;
						if (count == 2) count = 0;
						if (count == 0) {
							SPI_masterTransmit(0xFF); //Full brightness
							SPI_masterTransmit(0xFF); //Blue
							SPI_masterTransmit(0x00); //No green
							SPI_masterTransmit(0x00); //No red
						}
						else {
							SPI_masterTransmit(0xFF); //Full brightness
							SPI_masterTransmit(0x00); //No Blue
							SPI_masterTransmit(0x00); //No green
							SPI_masterTransmit(0x00); //No red
						}
					}
					count = 0;
					for (i = 0; i < 4; i++) {
						SPI_masterTransmit(0xFF); //End frame
					}
					lightsOn = 1;
				}
				break;
				case 'B':
				if (lightsOn) { //Turn lights off
					for (i = 0; i < 4; i++) {
					SPI_masterTransmit(0x00); //Start frame
					}
					for (i = 0; i < 30; i++) {
						SPI_masterTransmit(0xFF); //No brightness
						SPI_masterTransmit(0x00); //No Blue
						SPI_masterTransmit(0x00); //No green
						SPI_masterTransmit(0x00); //No red
					}
					for (i = 0; i < 4; i++) {
						SPI_masterTransmit(0xFF); //End frame
					}
					lightsOn = 0;
					break;
				} else {
					//LED Pattern B
					for (i = 0; i < 4; i++) {
						SPI_masterTransmit(0x00); //Start frame
					}
					for (i = 0; i < 29; i++) {
						count++;
						if (count == 2) count = 0;
						if (count == 0) {
							SPI_masterTransmit(0xFF); //Full brightness
							SPI_masterTransmit(0x00); //Blue
							SPI_masterTransmit(0xFF); //No green
							SPI_masterTransmit(0x00); //No red
						}
						else {
							SPI_masterTransmit(0xFF); //Full brightness
							SPI_masterTransmit(0x00); //No Blue
							SPI_masterTransmit(0x00); //No green
							SPI_masterTransmit(0x00); //No red
						}
					}
					count = 0;
					for (i = 0; i < 4; i++) {
						SPI_masterTransmit(0xFF); //End frame
					}
					lightsOn = 1;
				}
				break;
				case 'C':
				if (lightsOn) { //Turn lights off
					for (i = 0; i < 4; i++) {
					SPI_masterTransmit(0x00); //Start frame
					}
					for (i = 0; i < 30; i++) {
						SPI_masterTransmit(0xFF); //No brightness
						SPI_masterTransmit(0x00); //No Blue
						SPI_masterTransmit(0x00); //Green
						SPI_masterTransmit(0x00); //No red
					}
					for (i = 0; i < 4; i++) {
						SPI_masterTransmit(0xFF); //End frame
					}
					lightsOn = 0;
					break;
				} else {
					//LED Pattern C
					for (i = 0; i < 4; i++) {
						SPI_masterTransmit(0x00); //Start frame
					}
					for (i = 0; i < 29; i++) {
						count++;
						if (count == 2) count = 0;
						if (count == 0) {
							SPI_masterTransmit(0xFF); //Full brightness
							SPI_masterTransmit(0x00); //No Blue
							SPI_masterTransmit(0x00); //No green
							SPI_masterTransmit(0xFF); //Red
						}
						else {
							SPI_masterTransmit(0xFF); //Full brightness
							SPI_masterTransmit(0x00); //No Blue
							SPI_masterTransmit(0x00); //No green
							SPI_masterTransmit(0x00); //No red
						}
					}
					count = 0;
					for (i = 0; i < 4; i++) {
						SPI_masterTransmit(0xFF); //End frame
					}
					lightsOn = 1;
				}
				break;
					
				case 'P':
				//Phone charging
				PORTD ^= (1<<7);

				break;
				case 'F':
				//Fan control
				PORTD ^= (1<<6);

				break;
			}
		}

    }
}


// Intel Collab
// Kyle Dillon
// 2/28/14

#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include "helper.h"
#include "twi_master.h"
#include "uart_functions.h"
#include "adc.h"
#include "bluetooth.h"

extern uint8_t TWI_READ_COMPLETE;
uint8_t READ_SENSORS;
int8_t BEFORE_CRASH = 1;
uint16_t AFTER_CRASH_REPORT = 0;

volatile uint8_t gyro_wr_buf[50];
volatile uint8_t gyro_rd_buf[50];
struct gyro_data {
	uint16_t x;
	uint16_t y;
	uint16_t z;
} gyro;

volatile uint8_t accel_wr_buf[50];
volatile uint8_t accel_rd_buf[50];
struct accel_data {
	uint16_t x;
	uint16_t y;
	uint16_t z;
} accel, avg_accel, acceladc, avg_acceladc;

volatile uint8_t mag_wr_buf[50];
volatile uint8_t mag_rd_buf[50];
struct mag_data {
	uint16_t x;
	uint16_t y;
	uint16_t z;
} mag;

uint64_t timestamp = 0;

uint16_t force[5] = {0, 0, 0, 0, 0};

uint16_t BUFFER_SIZE = 5;
struct imu_data {
	struct gyro_data gyro;
	struct accel_data accel;
	struct accel_data acceladc;
	struct mag_data mag;
	uint16_t force[5];
} imu, imu_buffer[5], imu_after_crash_buffer[5];
uint64_t time = 0;
uint16_t slow_clock = 0;
uint16_t save_clock = 0;
uint8_t buffer_idx = 0;
uint8_t buffer_after_idx = 0;

ISR(USART1_RX_vect) {
	char bt_data;
	bt_data = uart_getc();
	if(bt_data == 'R') {
		//send_saved_data();
	}
}

ISR(TIMER0_COMPA_vect){
	READ_SENSORS = 1;
	//timestamp++;
	slow_clock++;
	save_clock++;

	if(AFTER_CRASH_REPORT) AFTER_CRASH_REPORT--;

	if(save_clock > 50) {
		save_clock = 0;
		//save_data();
	}
}

void init_timer() {
	TIMSK0 |= (1<<OCIE0A); //enable interrupts for output compare match 0
	TCCR0A |= (1<<WGM01); //CTC mode
	TCCR0B |= (1<<CS02) | (1<<CS00); // Prescale by 1024
	OCR0A = 2; // Trigger interrupt
}

void send_saved_data() {
	int i = buffer_idx;
	int j = 2;
	int target = BUFFER_SIZE;	
	char temp[100];
	uart_puts("BEFORE_CRASH_START\n");
	for(j = 0; j < 2; j++) {
		while(i < target) {
			sprintf(temp, "g %d %d %d\n", imu_buffer[i].gyro.x, imu_buffer[i].gyro.y, imu_buffer[i].gyro.z);
			uart_puts(temp);
			sprintf(temp, "a %d %d %d\n", imu_buffer[i].accel.x, imu_buffer[i].accel.y, imu_buffer[i].accel.z);
			uart_puts(temp);
			sprintf(temp, "m %d %d %d\n", imu_buffer[i].mag.x, imu_buffer[i].mag.y, imu_buffer[i].mag.z);
			uart_puts(temp);
			sprintf(temp, "A %d %d %d\n", imu_buffer[i].acceladc.x, imu_buffer[i].acceladc.y, imu_buffer[i].acceladc.z);
			uart_puts(temp);
			sprintf(temp, "f %d %d %d %d %d\n", imu_buffer[i].force[0], imu_buffer[i].force[1], imu_buffer[i].force[2], imu_buffer[i].force[3], imu_buffer[i].force[4]);
			uart_puts(temp);	
			i++;
		}
	}

	i = 0;
	target = buffer_idx - 1;
	uart_puts("BEFORE_CRASH_END\n");

	uart_puts("AFTER_CRASH_START\n");
	for(i = 0; i < BUFFER_SIZE; i++) {	
		sprintf(temp, "g %d %d %d\n", imu_after_crash_buffer[i].gyro.x, imu_after_crash_buffer[i].gyro.y, imu_after_crash_buffer[i].gyro.z);
		uart_puts(temp);
		sprintf(temp, "a %d %d %d\n", imu_after_crash_buffer[i].accel.x, imu_after_crash_buffer[i].accel.y, imu_after_crash_buffer[i].accel.z);
		uart_puts(temp);
		sprintf(temp, "m %d %d %d\n", imu_after_crash_buffer[i].mag.x, imu_after_crash_buffer[i].mag.y, imu_after_crash_buffer[i].mag.z);
		uart_puts(temp);
		sprintf(temp, "A %d %d %d\n", imu_after_crash_buffer[i].acceladc.x, imu_after_crash_buffer[i].acceladc.y, imu_after_crash_buffer[i].acceladc.z);
		uart_puts(temp);
		sprintf(temp, "f %d %d %d %d %d\n", imu_after_crash_buffer[i].force[0], imu_after_crash_buffer[i].force[1], imu_after_crash_buffer[i].force[2], imu_after_crash_buffer[i].force[3], imu_after_crash_buffer[i].force[4]);
		uart_puts(temp);
	}
	uart_puts("AFTER_CRASH_END\n");

	BEFORE_CRASH = 1;
}

void save_data() {
	imu.gyro = gyro;
	imu.accel = accel;
	imu.acceladc = acceladc;
	imu.mag = mag;
	imu.force[0] = force[0]; imu.force[1] = force[1];  imu.force[2] = force[2]; imu.force[3] = force[3]; imu.force[4] = force[4]; 
	if(BEFORE_CRASH == 1) {
		imu_buffer[buffer_idx].gyro.x = gyro.x;
		imu_buffer[buffer_idx].gyro.y = gyro.y;
		imu_buffer[buffer_idx].gyro.z = gyro.z;
		imu_buffer[buffer_idx].accel = accel;
		imu_buffer[buffer_idx].acceladc = acceladc;
		imu_buffer[buffer_idx].mag = mag;
		imu_buffer[buffer_idx].force[0] = force[0]; 
		imu_buffer[buffer_idx].force[1] = force[1];
		imu_buffer[buffer_idx].force[2] = force[2];
		imu_buffer[buffer_idx].force[3] = force[3];
		imu_buffer[buffer_idx].force[4] = force[4];

		buffer_idx++;
		if(buffer_idx >= BUFFER_SIZE) {
			buffer_idx = 0;
		}
	}
	else if(BEFORE_CRASH == 0) {
		imu_after_crash_buffer[buffer_idx] = imu;
		buffer_after_idx++;
		if(buffer_after_idx >= BUFFER_SIZE) {
			buffer_after_idx = 0;
			BEFORE_CRASH = -1;
		}
	}
}

void update_imu_data() {
	// Update gyro data with any new data that may have arrived.
	gyro.x = gyro.y = gyro.z = 0;
	gyro.x = gyro_rd_buf[0] << 8;
	gyro.x |= gyro_rd_buf[1];
	gyro.y = gyro_rd_buf[2] << 8;
	gyro.y |= gyro_rd_buf[3];
	gyro.z = gyro_rd_buf[4] << 8;
	gyro.z |= gyro_rd_buf[5];

	// Update accel data with any new data that may have arrived.
	accel.x = accel.y = accel.z = 0;
	accel.x = accel_rd_buf[1] << 8;
	accel.x |= accel_rd_buf[0];
	accel.x = (~accel.x) + 1;
	accel.y  = accel_rd_buf[3] << 8;
	accel.y |= accel_rd_buf[2];
	accel.y  = (~accel.y) + 1;
	accel.z  = accel_rd_buf[5] << 8;
	accel.z |= accel_rd_buf[4];
	accel.z = (~accel.z) + 1;

	// Update mag data with any new data that may have arrived.
	mag.x = mag.y = mag.z = 0;
	mag.x = mag_rd_buf[0] << 8;
	mag.x |= mag_rd_buf[1];
	mag.y = mag_rd_buf[2] << 8;
	mag.y |= mag_rd_buf[3];
	mag.z = mag_rd_buf[4] << 8;
	mag.z |= mag_rd_buf[5];

	// Detect a crash
	detect_crash();
}

#define SMOOTH_FACTOR 0.0
#define ACCEL_THRESH 600
#define ACCELADC_THRESH 800
void detect_crash() {
	BEFORE_CRASH = 0;

	// Exponential moving average of accel data.
	avg_accel.x = (avg_accel.x*SMOOTH_FACTOR) + (accel.x*(1 - SMOOTH_FACTOR));
	avg_accel.y = (avg_accel.y*SMOOTH_FACTOR) + (accel.y*(1 - SMOOTH_FACTOR));
	avg_accel.z = (avg_accel.z*SMOOTH_FACTOR) + (accel.z*(1 - SMOOTH_FACTOR));
	avg_acceladc.x = (avg_acceladc.x*SMOOTH_FACTOR) + (acceladc.x*(1 - SMOOTH_FACTOR));
	avg_acceladc.y = (avg_acceladc.y*SMOOTH_FACTOR) + (acceladc.y*(1 - SMOOTH_FACTOR));
	avg_acceladc.z = (avg_acceladc.z*SMOOTH_FACTOR) + (acceladc.z*(1 - SMOOTH_FACTOR));

	// Crash detection
	if(abs(avg_accel.x) > ACCEL_THRESH ||
	abs(avg_accel.y) > ACCEL_THRESH ||
	abs(avg_accel.z) > ACCEL_THRESH ||
	abs(avg_acceladc.x) > ACCELADC_THRESH ||
	abs(avg_acceladc.y) > ACCELADC_THRESH ||
	abs(avg_acceladc.z) > ACCELADC_THRESH) {
		// CRASH DETECTED, TELL PHONE.
		send_crash_report();
		AFTER_CRASH_REPORT = 8000; // Report quickly for about 4 seconds.
	}
}

void send_crash_report() {
	uart_puts("START_CRASH\n");
	send_imu_data();
	uart_puts("STOP_CRASH\n");
}

#define GYRO 0xD0 
#define GYRO_DATA 0x1D 
#define GYRO_DPS 0x16	
void gyro_init() {
	gyro_wr_buf[0] = GYRO_DPS; 
	gyro_wr_buf[1] = 0b00011000; // Set Degrees Per Second.
	twi_start_wr(GYRO, gyro_wr_buf, 1);
	_delay_ms(1);
}
void read_gyro() {
	// Request new data from gyro.
	gyro_wr_buf[0] = GYRO_DATA;

	twi_start_wr(GYRO, gyro_wr_buf, 1);
	twi_start_rd(GYRO, gyro_rd_buf, 6);
}
void send_gyro_data() {
	char gyro_str[50];

	// Update gyro data with any new data that may have arrived.
	gyro.x = gyro.y = gyro.z = 0;
	gyro.x = gyro_rd_buf[0] << 8;
	gyro.x |= gyro_rd_buf[1];
	gyro.y = gyro_rd_buf[2] << 8;
	gyro.y |= gyro_rd_buf[3];
	gyro.z = gyro_rd_buf[4] << 8;
	gyro.z |= gyro_rd_buf[5];

	// Translate data into string and send it.
	sprintf(gyro_str, "g %d %d %d\n", gyro.x, gyro.y, gyro.z);
	uart_puts(gyro_str);
}

#define ACCEL 0xA6
#define ACCEL_DATA 0x32 
#define ACCEL_PWRCTRL 0x2D
#define ACCEL_DATAFORMAT 0x31
void accel_init() {
	accel_wr_buf[0] = ACCEL_DATAFORMAT;
	accel_wr_buf[1] = 0b00001011; // Set into 16g read mode.
	twi_start_wr(ACCEL, accel_wr_buf, 2);
	_delay_ms(1);

	accel_wr_buf[0] = ACCEL_PWRCTRL;
	accel_wr_buf[1] = 0x08; // Set into measure mode.
	twi_start_wr(ACCEL, accel_wr_buf, 2);
	_delay_ms(1);

}
void read_accel() {
	// Request new data from accel.
	accel_wr_buf[0] = ACCEL_DATA;
	twi_start_wr(ACCEL, accel_wr_buf, 1);
	twi_start_rd(ACCEL, accel_rd_buf, 6);
}
void send_accel_data() {
	char accel_str[50];

	// Update accel data with any new data that may have arrived.
	accel.x = accel.y = accel.z = 0;
	accel.x = accel_rd_buf[1] << 8;
	accel.x |= accel_rd_buf[0];
	accel.y  = accel_rd_buf[3] << 8;
	accel.y |= accel_rd_buf[2];
	accel.z  = accel_rd_buf[5] << 8;
	accel.z |= accel_rd_buf[4];

	// Translate data into string and send it.
	sprintf(accel_str, "a %d %d %d\n", accel.x, accel.y, accel.z);
	uart_puts(accel_str);
}

#define MAG 0x3C
#define MAG_MODE 0x02
#define MAG_DATA 0x03
void mag_init() {
	mag_wr_buf[0] = MAG_MODE;
	mag_wr_buf[1] = 0x00; // Set to continuous measurement mode.
	twi_start_wr(MAG, mag_wr_buf, 2);
	_delay_ms(1);
}
void read_mag() {
	// Request new data from mag.
	mag_wr_buf[0] = MAG_DATA;
	twi_start_wr(MAG, mag_wr_buf, 1);
	twi_start_rd(MAG, mag_rd_buf, 6);
}
void send_mag_data() {
	char mag_str[50];

	// Update mag data with any new data that may have arrived.
	mag.x = mag.y = mag.z = 0;
	mag.x = mag_rd_buf[0] << 8;
	mag.x |= mag_rd_buf[1];
	mag.y = mag_rd_buf[2] << 8;
	mag.y |= mag_rd_buf[3];
	mag.z = mag_rd_buf[4] << 8;
	mag.z |= mag_rd_buf[5];

	// Translate data into string and send it.
	sprintf(mag_str, "m %d %d %d\n", mag.x, mag.y, mag.z);
	uart_puts(mag_str);
}

void read_acceladc() {
	// Read ADC accel, update globals.
	acceladc.x = acceladc.y = acceladc.z = 0;
	acceladc.x = read_adc(0);
	acceladc.y = read_adc(1);
	acceladc.z = read_adc(2);
}
void send_acceladc_data() {
	char acceladc_str[50];

	// Translate the data into string and send it.
	sprintf(acceladc_str, "A %d %d %d\n", acceladc.x, acceladc.y, acceladc.z);
	uart_puts(acceladc_str);
}

void read_force() {
	force[0] = read_adc(3);
	force[1] = read_adc(4);
	force[2] = read_adc(5);
	force[3] = read_adc(6);
	force[4] = read_adc(7);
}
void send_force_data() {
	char force_str[50];

	// Tranlate force data into string and send it.	
	sprintf(force_str, "f %d %d %d %d %d\n", force[0], force[1], force[2], force[3], force[4]);
	uart_puts(force_str);
}

void init_led() {
	DDRC |= (1<<PC1);
	clear_bit(1, &PORTC);
}

void blink_led() {
	toggle_bit(1, &PORTC);
}

void read_sensors() {
	read_gyro();	
	read_accel();
	read_mag();
	read_force();
	read_acceladc();
}

void send_imu_data() {
	// Update app with most secent global imu data
	send_gyro_data();
	send_accel_data();
	send_mag_data();
	send_acceladc_data();
	send_force_data();
}

int main()
{
	sei();
	init_led();
	init_twi();
	uart_init();
	gyro_init(); // ITG-3200
	accel_init(); // ADXL345
	mag_init(); // HMC5883L
	init_adc();
	init_timer();	
	bt_init();

	while(1) {
		read_sensors();
		update_imu_data();
		if((slow_clock > 500) || AFTER_CRASH_REPORT) {
			send_imu_data();
			slow_clock = 0;
		}
	}
}

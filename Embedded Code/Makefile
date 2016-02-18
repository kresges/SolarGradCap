#Program: AVR MAKEFILE
#Author: Spencer Kresge
#Reference: WinAVR Makefile Template
#Date: 8/18/2015

#AVR TOOLS
CC = avr-gcc
OBJCOPY = avr-objcopy
OBJDUMP = avr-objdump
SIZE = avr-size

#MICROCONTROLLER AND SETTINGS
#MCU = at90usb162       # Teensy 1.0
MCU = atmega32u4        # Teensy 2.0
#MCU = at90usb646       # Teensy++ 1.0
#MCU = at90usb1286      # Teensy++ 2.0

#NOTE: A Teensy regulated for 3.3v cannot run faster than 8Mhz, else you overclock.
F_CPU = 16000000

#BUILD DEPENDENCIES
TARGET = TOPLEVEL
SRC = GPIO_test.c uart.c spi.c usb_serial.c I2C.c

FORMAT = ihex

#DO NOT leave this blank.
#A "." implies current directory
OBJDIR = .

# Optimization level, can be [0, 1, 2, 3, s].
#     0 = turn off optimization. s = optimize for size.
#     (Note: 3 is not always the best optimization level. See avr-libc FAQ.)
OPT = s

# Debugging format.
#     Native formats for AVR-GCC's -g are dwarf-2 [default] or stabs.
DEBUG = dwarf-2

# Compiler flag to set the C Standard level.
#     c89   = "ANSI" C
#     gnu89 = c89 plus GCC extensions
#     c99   = ISO C99 standard (not yet fully implemented)
#     gnu99 = c99 plus GCC extensions
CSTANDARD = -std=gnu99

# Place -D or -U options here for C sources
CDEFS = -DF_CPU=$(F_CPU)UL

#Compiler flags
CFLAGS = -g$(DEBUG)
CFLAGS += $(CDEFS)
CFLAGS += -O$(OPT)
CFLAGS += $(CSTANDARD)

#Define Objects
OBJ = $(SRC:%.c=$(OBJDIR)/%.o) #This is a inference based rule
#Any time % is involved make will try to infer a relationship.
#Above swaps the NAME.c with ./NAME.o for every file listed in SRC.
#note that $(OBJDIR) = . in this example.

#Combine all FLAGS
ALL_CFLAGS = -mmcu=$(MCU) $(CFLAGS)

MSG_SIZE_ELF = Size of ELF:
MSG_SIZE_HEX = Size of HEX:

all: build
	@echo BUILDING: $(TARGET)

# Display size of file.
HEXSIZE = $(SIZE) --target=$(FORMAT) $(TARGET).hex
#ELFSIZE = $(SIZE) --mcu=$(MCU) --format=avr $(TARGET).elf
ELFSIZE = $(SIZE) $(TARGET).elf

elf_size:
	@if test -f $(TARGET).elf; then echo; echo $(MSG_SIZE_ELF); $(ELFSIZE); \
	2>/dev/null; echo; fi

hex_size:
	@if test -f $(TARGET).hex; then echo; echo $(MSG_SIZE_HEX); $(HEXSIZE); \
	2>/dev/null; echo; fi

build: elf hex

#ELF: Executable and Linking Format. ELF is the standard output of the c-compiler
#The ELF file must then be stripped down into a HEX file that can be flashed to
#the MICROCONTROLLER.

elf: $(TARGET).elf
hex: $(TARGET).hex

#Create Object Files
# $< takes the first dependency of the target as a substitution
# $@ takes the target name as a substitution
$(OBJDIR)/%.o : %.c #operate on all .c files in the object directory
	$(CC) -c $(ALL_CFLAGS) $< -o $@


# $^ takes every dependency listed for the given target as a substitution
%.elf : $(OBJ)
	$(CC) $(ALL_CFLAGS) $^ --output $@


%.hex : %.elf
	$(OBJCOPY) -O $(FORMAT) -R .eeprom -R .fuse -R .lock -R .signature $< $@

#This will flash the taget hex onto the specified MICROCONTROLLER
load:
	./teensy_loader_cli -mmcu=$(MCU) -w $(TARGET).hex

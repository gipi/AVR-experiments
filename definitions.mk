# http://stackoverflow.com/questions/322936/common-gnu-makefile-directory-path
# This must be the first this in Makefile.common
TOP := $(dir $(lastword $(MAKEFILE_LIST)))

LIBRARY_INCLUDE = $(TOP)libraries/

ifndef PROGRAMMER

AVRDUDE_ARD_PROGRAMMER = buspirate
AVRDUDE_ARD_BAUDRATE   = 115200
AVRDUDE_ARD_PORT       = /dev/ttyUSB0

else

ifeq ($(PROGRAMMER), arduino)

AVRDUDE_ARD_PROGRAMMER = arduino
AVRDUDE_ARD_BAUDRATE   = 115200
AVRDUDE_ARD_PORT       = /dev/ttyACM0

MCU          = atmega328p
F_CPU        = 16000000UL


endif

endif
AVRDUDE_OPTS           = -c $(AVRDUDE_ARD_PROGRAMMER) -p $(MCU) -P $(AVRDUDE_ARD_PORT) -b $(AVRDUDE_ARD_BAUDRATE)

CC         = avr-gcc
OBJCOPY    = avr-objcopy
AVRSIZE    = avr-size
DUDE       = avrdude
CPPFLAGS   = -Os -DF_CPU=$(F_CPU) -mmcu=$(MCU) -Wall -Werror -I$(LIBRARY_INCLUDE)


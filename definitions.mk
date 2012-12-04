
MCU          = atmega328p

F_CPU        = 1000000
ARDUINO_PORT = /dev/ttyUSB0

AVRDUDE_ARD_PROGRAMMER = buspirate
AVRDUDE_ARD_BAUDRATE   = 115200
AVRDUDE_ARD_PORT       = /dev/ttyUSB0
AVRDUDE_OPTS           = -c $(AVRDUDE_ARD_PROGRAMMER) -p $(MCU) -P $(AVRDUDE_ARD_PORT) -b $(AVRDUDE_ARD_BAUDRATE)

CC         = avr-gcc
OBJCOPY    = avr-objcopy
AVRSIZE    = avr-size
DUDE       = avrdude
CPPFLAGS   = -Os -DF_CPU=$(F_CPU) -mmcu=$(MCU) -Wall


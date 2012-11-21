MCU          = atmega328p
F_CPU        = 16000000
ARDUINO_PORT = /dev/ttyUSB0

AVRDUDE_ARD_PROGRAMMER = buspirate
AVRDUDE_ARD_BAUDRATE   = 115200
#ARD_PORT=/dev/ttyUSB0


TARGET = $(shell basename $(PWD))

include /usr/share/arduino/Arduino.mk

check:
	avrdude -c buspirate -p m328p -v -P /dev/ttyUSB0

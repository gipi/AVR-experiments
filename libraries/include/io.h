#ifndef __INCLUDE_IO_H__
#define __INCLUDE_IO_H__
#include <avr/io.h>
/*
 * Simple utility functions and definitions to make more
 * Arduino-like the programming of microcontroller, avoiding
 * statements like 'DDRB != _BV(2)'
 */


#define LOW  0
#define HIGH 1

#define INPUT 0
#define OUTPUT 1

#if MCU == attiny85

#define pinMode(n, mode) (DDRB |= (mode << n))
#define digitalRead(n) ((PINB & (1 << n)) != 0)

void digitalWrite(uint8_t pin, uint8_t state) {
    if (state == LOW) {
        PORTB &= ~(1 << pin);
    } else {
        PORTB |= (1 << pin);
    }
}

#else
#error "microcontroller not supported"
#endif

#endif

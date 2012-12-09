/*
 * Example of software UART communication in attiny85.
 *
 *
 * To make this compile use
 *
 *   make -f ../Makefile.pristine  MCU=attiny85 F_CPU=8000000UL upload
 *
 */
#include <avr/io.h>
#include <util/delay.h>

#define LOW  0
#define HIGH 1

#define INPUT 0
#define OUPUT 1

#define pinMode(n, mode) (DDRB |= (mode << n))
#define digitalRead(n) ((PINB & (1 << n)) != 0)


void digitalWrite(uint8_t pin, uint8_t state) {
    if (state == LOW) {
        PORTB &= ~(1 << pin);
    } else {
        PORTB |= (1 << pin);
    }
}


#define TX_PIN 2
#define RX_PIN 3
#define debugLed 0

#include <software_uart/uart.h>


int main() {
    // see pg33 on datasheet
    // To avoid to reprogram fuses, we use
    // the CLKPR (Clock Prescale) Register
    CLKPR = 0x80;
    CLKPR = 0x00;

    // setup serial pins
    pinMode(RX_PIN, INPUT);
    pinMode(TX_PIN, OUPUT);
    digitalWrite(TX_PIN, HIGH);

    // we need to debug my love
    pinMode(debugLed, OUPUT);

    while (1) {

        serial_write(serial_read());

        digitalWrite(debugLed, HIGH);
        _delay_ms(100);
        digitalWrite(debugLed, LOW);
        _delay_ms(100);
    }

    return 0;
}
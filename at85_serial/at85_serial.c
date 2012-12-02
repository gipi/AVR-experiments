/*
 * Example of software UART communication in attiny85.
 *
 * The serial communication code is a modified version of
 * the one from the Arduino site
 *
 * http://arduino.cc/en/Tutorial/SoftwareSerial
 *
 * In order to work you have to make negligible the time
 * spent on executing instruction, i.e. use like 8MHz clock.
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

#if F_CPU == 1000000UL
#error "1MHz not supported (not reliable communication)"
#endif

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


#define BAUD              9600
#define bit9600Delay      100
#define halfBit9600Delay  bit9600Delay/2

void serial_write(uint8_t data) {
    uint8_t mask;
    //startbit
    digitalWrite(TX_PIN, LOW);
    _delay_us(bit9600Delay);
    for (mask = 0x01 ; mask > 0 ; mask <<= 1) {
        if (data & mask){ // choose bit
            digitalWrite(TX_PIN, HIGH); // send 1
        } else {
            digitalWrite(TX_PIN, LOW); // send 0
        }
        _delay_us(bit9600Delay);
    }
    //stop bit
    digitalWrite(TX_PIN, HIGH);
    _delay_us(bit9600Delay);
}

unsigned char serial_read() {
    unsigned char val = 0;
    int offset;

    while (digitalRead(RX_PIN));
    //wait for start bit
    if (digitalRead(RX_PIN) == LOW) {
        _delay_us(halfBit9600Delay);
        for (offset = 0; offset < 8; offset++) {
            _delay_us(bit9600Delay);
            val |= digitalRead(RX_PIN) << offset;
        }

        //wait for stop bit + extra
        _delay_us(bit9600Delay); 
        _delay_us(bit9600Delay);

        return val;
    }
}

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

    unsigned char c = 0;

    while (1) {

        serial_write(c++);

        digitalWrite(debugLed, HIGH);
        _delay_ms(100);
        digitalWrite(debugLed, LOW);
        _delay_ms(100);
    }

    return 0;
}

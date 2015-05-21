/**
 * ADC
 * ---
 * Example program to read an analogic voltage value and
 * convert it to digital one.
 *
 * The reading is done on the 0th channel (pin PC0).
 *
 * The plan is to show a binary representation of the
 * read value using various leds on digital pins.
 *
 * For now works only on ATMega328p on Arduino.
 *
 *  Author: Gianluca Pacchiella <gp@ktln2.org>
 */
#include <avr/io.h>
#include <util/delay.h>

#define ADC_PIN PORTB2

void adc_select_channel(uint8_t channel) {
    ADMUX &= 0xf0;
    ADMUX |= channel;
}

void adc_start_conversion() {
    ADCSRA |= (1 << ADSC);
}

void adc_wait_conversion() {
    while(ADCSRA & (1<<ADSC));
}

uint16_t adc_return_value() {
    return (ADC);
}

uint16_t adc_read_from_channel(uint8_t channel) {
    adc_select_channel(channel);
    adc_start_conversion();
    adc_wait_conversion();

    return adc_return_value();
}

// http://www.embedds.com/adc-on-atmega328-part-1/
// https://gist.github.com/Wollw/2396604
int main() {
    // PB2 as led
    DDRB |= _BV(DDB5);
    DDRB |= _BV(PB4);
    // Select Vref=AVcc (on Arduino they are connected physically)
    ADMUX |= (1 << REFS0);
    //set prescaller to 128 and enable ADC 
    ADCSRA |= (1 << ADPS2) | (1 << ADPS1) | (1 << ADPS0) | (1 << ADEN);

    uint16_t adc_value;

    while (1) {
        adc_value = adc_read_from_channel(0);

        if (adc_value == 0) {
            PORTB |= _BV(PORTB5);
        } else if (adc_value > 255) {
            PORTB |= _BV(PORTB4);
        }
        _delay_ms(100);
        PORTB &= ~_BV(PORTB5);
        PORTB &= ~_BV(PORTB4);
        _delay_ms(100);
    }
}

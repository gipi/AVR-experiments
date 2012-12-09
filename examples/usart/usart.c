/*
 * https://sites.google.com/site/qeewiki/books/avr-guide/usart
 *
 * For more info look at the ATMega328p datasheet
 *
 *  <http://www.atmel.com/Images/doc8161.pdf> pg 176
 *
 *  Using the Arduino seems that with 9600bps the baud value to use
 *  in order to reading from it is 19200.
 */
// This code waits for a character and transmits the character back (No interrupts)
 

#include <avr/io.h>
#include <util/delay.h>


//#define FOSC 16000000                   // Clock Speed
#define BAUD 9600                
#define MYUBRR F_CPU/16/BAUD-1


unsigned char ReceivedChar;

enum {
 BLINK_DELAY_MS = 10,
};

void blink_setup() {
 /* set pin 5 of PORTB for output*/
 DDRB |= _BV(DDB5);
}

void blink_on() {
    PORTB |= _BV(PORTB5);
}

void blink_off() {
    PORTB &= ~_BV(PORTB5);
}

void usart_setup() {
    /*Set baud rate */
    UBRR0H = (MYUBRR >> 8);
    UBRR0L = MYUBRR;
    
    UCSR0B = (1 << RXEN0) | (1 << TXEN0);      // Enable receiver and transmitter
    UCSR0C = (1 << UCSZ00) | (1 << UCSZ01);    // Set frame: 8data, 1 stp
}

void usart_transmit(unsigned char data) {
    while ( !(UCSR0A & (1 << UDRE0)) )
        ; // Wait until buffer is empty
    UDR0 = data;                    // Send the data to the TX buffer
}

unsigned char usart_receive() {
    /* wait for data */
    while ( !(UCSR0A & (1<<RXC0)) )
        ;

    return UDR0;
} 

int main( void ) {
    unsigned char c = 0;
    usart_setup();
    blink_setup();

    while(1) {
        c = usart_receive();
        blink_on();
        usart_transmit(c);
        _delay_ms(BLINK_DELAY_MS);
        blink_off();
    }
}

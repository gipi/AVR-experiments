/**
 * Example of usage of SPI with an Atmel chip configurated as master.
 *
 * This protocol is named also 4-wire 'cause uses that number of wires.
 *
 * Original documentation from atmel: USI at page 108
 *  <http://www.atmel.com/Images/Atmel-2586-AVR-8-bit-Microcontroller-ATtiny25-ATtiny45-ATtiny85_Datasheet.pdf>
 *  <http://www.atmel.com/images/doc2582.pdf>
 *
 * In this code we use the 7 segments display from sparkfun, described here <https://learn.sparkfun.com/tutorials/using-the-serial-7-segment-display/all>
 * and reads the fuse bits and displays it.
 */
#ifndef __AVR_ATtiny85__
#error "This code works only on ATTiny85"
#endif


#include <avr/io.h>
#include <stdio.h>
#include <avr/boot.h>
#include <util/delay.h>


#define SS_PIN    PB4
#define DD_SS_PIN DDB4

#define DO_PIN    PB1
#define DD_DO_PIN DDB1

#define DI_PIN    PB0
#define DD_DI_PIN DDB0

#define CLK_PIN    PB2
#define DD_CLK_PIN DDB2



// https://github.com/JChristensen/tinySPI/blob/master/tinySPI.cpp
// https://www.youtube.com/watch?v=wkejSZcJGvo
void spi_init() {
    // set output pins
    DDRB |= _BV(DD_DO_PIN) | _BV(DD_SS_PIN) | _BV(DD_CLK_PIN);
    // set input pins
    DDRB &= ~_BV(DD_DI_PIN);

    // SPI config
    USICR = _BV(USIWM0);

    PORTB |= _BV(SS_PIN) | _BV(DI_PIN);
}

void spi_enable_slave() {
    PORTB &= ~_BV(SS_PIN);
}

void spi_disable_slave() {
    PORTB |= _BV(SS_PIN);
}

void spi_write(uint8_t data) {
    USIDR = data;

    unsigned short cycle;
    for (cycle = 0 ; cycle < 8 ; cycle++) {
        USICR = _BV(USIWM0) | _BV(USITC);
        USICR = _BV(USIWM0) | _BV(USICLK) | _BV(USITC);
    }
}

void clear_display() {
    spi_enable_slave();

    spi_write(0x76);

    spi_disable_slave();
}

void show_char(char c) {
    spi_enable_slave();
    spi_write(c);
    spi_disable_slave();
}

void show_four_chars(char* msg) {
    spi_enable_slave();

    unsigned short c;
    unsigned short extra = 0;

    for (c = 0 ; (c - extra) < 4 ; c++) {
            spi_write(msg[c]);
    }
    spi_disable_slave();
}

struct fuse_t {
    char label[3];
    unsigned short id;
};

struct fuse_t fuses[3] = {
    {.label = "LO", .id = GET_LOW_FUSE_BITS},
    {.label = "HI", .id = GET_HIGH_FUSE_BITS},
    {.label = "ES", .id = GET_EXTENDED_FUSE_BITS}
};

void display_fuse(struct fuse_t fuse) {
    char tmp[15];
    uint8_t fuse_value = boot_lock_fuse_bits_get(fuse.id);
    sprintf(tmp, "%s%2x", fuse.label, fuse_value);

    clear_display();
    show_four_chars(tmp);
}

void display_next() {
    static unsigned short state = 0;

    display_fuse(fuses[state++ % 3]);
}

int main() {

    spi_init();

    // this pin reads  from the button
    DDRB &= ~_BV(PORTB3);

    unsigned int c;

    _delay_ms(100);// wo this doesn't work (seems out of sync)

    clear_display();

    for (c = 0 ; c < 4; c++) {
        clear_display();
        show_char('0' + c);
        _delay_ms(50);
    }

    display_next();

    while (1) {
        if (PINB & _BV(PB3)) {
            display_next();
            _delay_ms(50);
        }
    }

    return 0;
}

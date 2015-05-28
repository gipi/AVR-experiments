/**
 * Example of usage of SPI with an Atmel chip configurated as master.
 *
 * This protocol is named also 4-wire 'cause uses that number of wires.
 *
 * Original documentation from atmel: USI at page 108
 *  <http://www.atmel.com/Images/Atmel-2586-AVR-8-bit-Microcontroller-ATtiny25-ATtiny45-ATtiny85_Datasheet.pdf>
 *  <http://www.atmel.com/images/doc2582.pdf>
 */
# include <avr/io.h>
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
    for (c = 0 ; c < 4 ; c++) {
        spi_write(msg[c]);
    }
    spi_disable_slave();
    
}

int main() {
    spi_init();

    unsigned int c;

    _delay_ms(100);// wo this doesn't work (seems out of sync)

    clear_display();

    for (c = 0 ; c < 8 ; c++) {
        show_char('A' + c);
  _delay_ms(100);
    }

    show_four_chars("-HI-");

    return 0;
}

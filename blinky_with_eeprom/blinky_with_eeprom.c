/*
 * This program tries to produce a better understanding of the memory
 * layout used from an AVR application.
 *
 * http://www.nongnu.org/avr-libc/user-manual/mem_sections.html
 * http://www.makestuff.eu/wordpress/avr-memories/
 */
#include <avr/io.h>
#include <util/delay.h>
#include <util/delay_basic.h>
#include <avr/eeprom.h>
#include <avr/pgmspace.h>

/*
 * Define our own delay function with variable argument to
 * avoid the error
 *
 *  error: __builtin_avr_delay_cycles expects a compile time integer constant.
 *
 * Hint found at
 *  http://www.avrfreaks.net/index.php?name=PNphpBB2&file=viewtopic&t=105891
 */
void my_delay_ms(double ms) {
    double counter = 0;
    for (counter = 0 ; counter < ms ; counter++) {
        _delay_ms(1);
    }
}

#define BLINK_DELAY_MS 100
#define SIZE 10

/*
 * This variable will be placed in the .data section and will be copied
 * from FLASH into SRAM at reset time (TODO: add datasheet reference).
 */
uint8_t bss_data[SIZE] = {
    9, 8, 7, 6, 5, 4, 3, 2, 1, 0
};

const uint8_t PROGMEM flash_data[SIZE] = {
    2,1,3,4,9
};

/*
 * The EEMEM variable modifier make the array to be
 * put into the .eeprom section. If we want to visualize
 * the content of this section is possible to use the
 * avr-objdump command in this way
 *
 *  $ avr-objdump -j .eeprom -s blinky_with_eeprom
 *  blinky_with_eeprom:     file format elf32-avr
 *
 *  Contents of section .eeprom:
 *   810000 01020304 05060708 090a
 */
uint8_t EEMEM data[SIZE] = {
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10
};

int main (void) {
    /* set pin 5 of PORTB for output*/
    DDRB |= _BV(DDB0);

    int counter = 0;

    while(1) {
        counter = counter % SIZE;
        /* set pin 5 high to turn led on */
        PORTB |= _BV(PORTB0);
        my_delay_ms(bss_data[counter] * BLINK_DELAY_MS);

        /* set pin 5 low to turn led off */
        PORTB &= ~_BV(PORTB0);
        my_delay_ms(bss_data[counter] * BLINK_DELAY_MS);

        counter++;
    }

    return 0;
}

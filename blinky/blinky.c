// code from <http://www.ladyada.net/learn/proj1/blinky.html>
// this is the header file that tells the compiler what pins and ports, etc.
// are available on this chip.
//   /usr/lib/avr/include/avr/iom328p.h
#include <avr/io.h>
#include <util/delay.h>

// http://balau82.wordpress.com/2011/03/29/programming-arduino-uno-in-pure-c/
/*
 * My advice is to test that actually this code result in a
 * blinking led with delay of 1 second. Otherwise your F_CPU
 * setting is wrong.
 */
enum {
 BLINK_DELAY_MS = 1000,
};


int main (void) {
 /* set pin 5 of PORTB for output*/
 DDRB |= _BV(DDB5);

 while(1) {
  /* set pin 5 high to turn led on */
  PORTB |= _BV(PORTB5);
  _delay_ms(BLINK_DELAY_MS);

  /* set pin 5 low to turn led off */
  PORTB &= ~_BV(PORTB5);
  _delay_ms(BLINK_DELAY_MS);
 }

 return 0;
}

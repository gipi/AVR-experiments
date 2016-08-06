/**
 * http://playground.arduino.cc/Code/Timer1
 * https://github.com/avishorp
 */
// http://www.nongnu.org/avr-libc/user-manual/group__avr__power.html
#include <avr/power.h>
#include <Arduino.h>
#include <TM1637Display.h>

// Module connection pins (Digital Pins)
#define CLK 2
#define DIO 3

#define PLAY 4
#define INCREASE 5
#define DECREASE 6

#define ALARM 8

#define START 300
#define DELTA 30

TM1637Display display(CLK, DIO);

// this is in seconds
unsigned int counter = START;
int timer1_counter;

struct digits {
  unsigned int minutes;
  unsigned int seconds;
};

unsigned int seconds2timer(int s) {
  int minutes_digits = s / 60;
  int seconds_digits = s - (minutes_digits * 60);

  return minutes_digits * 100 + seconds_digits;
}

void showTimer(unsigned int s) {
  display.showNumberDec(seconds2timer(s), true, 4, 0);
}

void updateTimer() {
  showTimer(counter);
}

void handle_button(int button, void (*cb)(void)) {
  int button_state = digitalRead(button);
  if(button_state == HIGH) {
      display.setBrightness(0x00);
      cb();
      updateTimer();

      delay(10);

      display.setBrightness(0x0a);

      while(digitalRead(button) == HIGH) {
          delay(10);
      }
  }
}

/**
 * This is buzzer dependent: each buzzer has a specific resonant frequency
 * that result the most loud.
 * 
 * See here <http://www.instructables.com/id/How-to-make-an-Arduino-driven-Piezo-LOUD/>
 */
#define SOUND_PARAMETER 300

void sound() {
  for (int i = 0 ; i < SOUND_PARAMETER; i++) {
    analogWrite(ALARM, 255);
    delayMicroseconds(200);
  
    analogWrite(ALARM, 0);
    delayMicroseconds(200);
  }

  delay(SOUND_PARAMETER);
}

volatile unsigned int play = LOW;
int play_button_state = LOW;
int increase_button_state = LOW;

unsigned int unleash_hell = 0;

void setup() {
  clock_prescale_set(clock_div_1);
  pinMode(PLAY, INPUT);
  pinMode(INCREASE, INPUT);
  pinMode(DECREASE, INPUT);
  display.setBrightness(0x0a);

  /*
   * PG 122 datasheet ATMega328p <http://www.atmel.com/images/Atmel-8271-8-bit-AVR-Microcontroller-ATmega48A-48PA-88A-88PA-168A-168PA-328-328P_datasheet_Complete.pdf>
   * 
   * The simplest mode of operation is the Normal mode (WGM13:0 = 0).
   * In this mode the counting direction is always up (incrementing),
   * and no counter clear is performed. The counter simply overruns when it passes its
   * maximum 16-bit value (MAX = 0xFFFF) and then restarts from the BOTTOM (0x0000).
   * In normal operation the Timer/Counter Overflow Flag (TOV1) will be set in the
   * same timer clock cycle as the TCNT1 becomes zero. The TOV1 Flag in this case
   * behaves like a 17th bit, except that it is only set, not cleared. However,
   * combined with the timer overflow interrupt that automatically clears the TOV1
   * Flag, the timer resolution can be increased by software. There are no special
   * cases to consider in the Normal mode, a new counter value can be written
   * anytime.  The Input Capture unit is easy to use in Normal mode. However,
   * observe that the maximum interval between the external events must not exceed
   * the resolution of the counter. If the interval between events are too long, the
   * timer overflow interrupt or the prescaler must be used to extend the resolution
   * for the capture unit.  The Output Compare units can be used to generate
   * interrupts at some given time. Using the Output Compare to generate waveforms
   * in Normal mode is not recommended, since this will occupy too much of the CPU time.
   * 
   */
  // initialize timer1 
  noInterrupts();           // disable all interrupts
  TCCR1A = 0;
  TCCR1B = 0;

  // Set timer1_counter to the correct value for our interrupt interval
  // the calculation is 1/16M*(65535-3035)*256 = 1
  // timer1_counter = 3035; For 16MHz
  timer1_counter = 34285; // For 8MHz

  TCNT1 = timer1_counter;   // preload timer
  TCCR1B |= (1 << CS12);    // 256 prescaler 
  TIMSK1 |= (1 << TOIE1);   // enable timer overflow interrupt
  interrupts();

  display.showNumberDec(0, true, 4, 0);
}

void cb_play() {
  if (play == LOW && unleash_hell == 1) {
    unleash_hell = 0;
  } else {
    play = play == HIGH ? LOW : HIGH;
  }
}

void cb_increase() {
  counter += DELTA;
}

void cb_decrease() {
  counter -= DELTA;

  if (counter < 0) {
    counter = 0;
  }
}

void loop() {
  /*
   * In the routine when we read an HIGH (i.e. the button is pressed) we are looping tightly
   * until we read LOW.
   */
  handle_button(PLAY, cb_play);

  handle_button(INCREASE, cb_increase); 
  handle_button(DECREASE, cb_decrease);

  delay(100);

  updateTimer();

  if (unleash_hell) {
    sound();
  }
}

ISR(TIMER1_OVF_vect) {
  TCNT1 = timer1_counter;
  if (counter == 0 && play == HIGH) {
    unleash_hell = 1;
    play = LOW;
  }
    
  if (play == HIGH)
    counter--;
}


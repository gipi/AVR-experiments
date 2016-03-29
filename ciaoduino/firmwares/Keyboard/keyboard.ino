/* 
 Keyboard Message test
 
 Sends a text string when the BOOT button is pressed.

 (Remember that in the ciaoduino board the BOOT button
 is pullup to VCC)

 created 24 Oct 2011
 modified 27 Mar 2012
 by Tom Igoe
 modified 11 Nov 2013
 by Scott Fitzgerald
 modified 28 Mar 2016
 by Gianluca Pacchiella
 
 This example code is in the public domain.
 
 Original code: <http://www.arduino.cc/en/Tutorial/KeyboardMessage>
 */

int previousButtonState = HIGH;   // for checking the state of a pushButton
int counter = 0;                  // button push counter

void setup() {
  // make the BOOT button pin an input:
  DDRE &= ~(_BV(2));

  // initialize control over the keyboard:
  Keyboard.begin();
}

void loop() {
  // read the BOOT pushbutton:
  int buttonState = bit_is_set(PINE, 2);
  // if the button state has changed,
  if ((buttonState != previousButtonState)
      // and it's currently pressed:
      && (buttonState == LOW)) {
    // increment the button counter
    counter++;
    // type out a message
    Keyboard.print("You pressed the button ");
    Keyboard.print(counter);
    Keyboard.println(" times.");
  }
  // save the current button state for comparison next time:
  previousButtonState = buttonState;
}

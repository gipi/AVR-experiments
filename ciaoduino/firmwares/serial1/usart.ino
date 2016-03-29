/*
 * Very simple example of USART communication with the ciaoduino board.
 *
 * You have to connect to the TX pin of the board the RX cable of
 * your serial cable.
 */
static long baud = 57600;

void setup() {
    Serial1.begin(baud);
  // initialize digital pin 13 as an output.
  pinMode(13, OUTPUT);
}

void loop() {
    
  digitalWrite(13, HIGH);   // turn the LED on (HIGH is the voltage level)
  Serial1.write("A");
  delay(1000);              // wait for a second
  digitalWrite(13, LOW);    // turn the LED off by making the voltage LOW
  Serial1.write("B");
  delay(1000);              // wait for a second
}

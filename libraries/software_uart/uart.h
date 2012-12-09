
 /*
 * The serial communication code is a modified version of
 * the one from the Arduino site
 *
 * http://arduino.cc/en/Tutorial/SoftwareSerial
 *
 * In order to work you have to make negligible the time
 * spent on executing instruction, i.e. use like 8MHz clock.
 */
#if F_CPU == 1000000UL
#error "1MHz not supported (not reliable communication)"
#endif

#ifndef TX_PIN
#error "YOU MUST DEFINE TX_PIN"
#endif

#ifndef RX_PIN
#error "YOU MUST DEFINE RX_PIN"
#endif

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

// http://saeedsolutions.blogspot.it/2012/07/pic12f675-software-uart-bit-banging.html
unsigned char serial_read() {
    unsigned char val = 0;
    int offset;

    // wait until a start bit (LOW) is read
    while (digitalRead(RX_PIN));

    // start bit
    _delay_us(bit9600Delay);
    // wait for half an interval
    _delay_us(halfBit9600Delay);
    for (offset = 0; offset < 8; offset++) {
        val |= digitalRead(RX_PIN) << offset;
        _delay_us(bit9600Delay);
    }

    //wait for stop bit + extra
    _delay_us(bit9600Delay);
    _delay_us(halfBit9600Delay);

    return val;
}

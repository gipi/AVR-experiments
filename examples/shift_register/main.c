/*
 * Simple example that uses a shift register to show binary counter.
 */
#include <util/delay.h>
#include <include/io.h>
#include <shift_register/sr.h>

// http://bildr.org/2011/02/74hc595/
int SER_Pin = 2;   //pin 14 on the 75HC595
int RCLK_Pin = 1;  //pin 12 on the 75HC595
int SRCLK_Pin = 0; //pin 11 on the 75HC595

#define SR_MAX 8
#define DELAY_MS 1000

void display_bit_pattern(int cycle) {
        clearRegisters();
        int index;
        for (index = 0 ; index < SR_MAX ; index++) {
            setRegisterPin(index, (cycle & (1 << index)) > 0 ? HIGH : LOW);
        }
        writeRegisters();
}

int main() {
    sr_init(SER_Pin, RCLK_Pin, SRCLK_Pin);

    int cycle = 0;

    while (1) {
        if (cycle > (1 << 8))
            cycle = 0;

        display_bit_pattern(cycle);
        _delay_ms(DELAY_MS);

        cycle++;
    }

    return 0;
}

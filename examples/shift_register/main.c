#include <include/io.h>
#include <shift_register/sr.h>

// http://bildr.org/2011/02/74hc595/
int SER_Pin = 2;   //pin 14 on the 75HC595
int RCLK_Pin = 1;  //pin 12 on the 75HC595
int SRCLK_Pin = 0; //pin 11 on the 75HC595

int main() {
    sr_init(SER_Pin, RCLK_Pin, SRCLK_Pin);

    return 0;
}

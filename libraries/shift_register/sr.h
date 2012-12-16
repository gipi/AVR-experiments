/*
 * Simple library to interact with a shift register
 *
 */

#ifndef __SHIFT_REGISTER_H__
#define __SHIFT_REGISTER_H__
#include <include/io.h>

static uint8_t g_ser_pin = 0, g_rclk_pin = 0, g_srclk_pin = 0;

// TODO: make dynamic the number of shift registers
//How many of the shift registers - change this
#define number_of_74hc595s 1

//do not touch
#define numOfRegisterPins number_of_74hc595s * 8

static uint8_t registers[numOfRegisterPins];

//set all register pins to LOW
void clearRegisters(){
  int i;
  for(i = numOfRegisterPins - 1; i >=  0; i--){
     registers[i] = LOW;
  }
}

//Set and display registers
//Only call AFTER all values are set how you would like (slow otherwise)
void writeRegisters(){

  digitalWrite(g_rclk_pin, LOW);

  int i;
  for(i = numOfRegisterPins - 1; i >=  0; i--){
    digitalWrite(g_srclk_pin, LOW);

    int val = registers[i];

    digitalWrite(g_ser_pin, val);
    digitalWrite(g_srclk_pin, HIGH);

  }
  digitalWrite(g_rclk_pin, HIGH);

}

//set an individual pin HIGH or LOW
void setRegisterPin(int index, int value){
  registers[index] = value;
}

/*
 * Initialize the pins in order to comunicate with the shift register.
 */
void sr_init(uint8_t ser_pin, uint8_t rclk_pin, uint8_t srclk) {
    g_ser_pin   = ser_pin;
    g_rclk_pin  = rclk_pin;
    g_srclk_pin = srclk;

    pinMode(g_ser_pin, OUTPUT);
    pinMode(g_rclk_pin, OUTPUT);
    pinMode(g_srclk_pin, OUTPUT);

    //reset all register pins
    clearRegisters();
    writeRegisters();
}

#endif

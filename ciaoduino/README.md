# CIAODUINO

Custom board [atmega32u4](https://www.pjrc.com/teensy/atmega32u4.pdf) based that resembles the Arduino Leonardo board.

This directory contains some example of compiling code
using the Arduino's build system.

Uploading using an ISP is simple as

    $ make -C <dir with ino files> -f ../Makefile.ciaoduino ispload

We want to reorganize pins by protocols/functionality

 - USART (maybe connect RST to the right line OPTIONALLY like in the arduino nano)
 - SPI
 - I2C
 - PWN (PB6, PB5, PC7, PC6, PD7, PD6)
 - ADC
 - Interrupts

## Power management

We want to use USB and LiPo battery

 - http://blog.zakkemble.co.uk/a-lithium-battery-charger-with-load-sharing/
 - http://ww1.microchip.com/downloads/en/AppNotes/01149c.pdf

## Kicad files

The new version will come with a redesign in ``Kicad`` (look at the directory [design/](design)).

 - Voltage regulator
 - LiPo battery with recharge circuitry
 - Mini USB
 - pinout grouped by protocols
 - some pretty graphics

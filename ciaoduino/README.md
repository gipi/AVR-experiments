# CIAODUINO

Custom board atmega32u4 based that resembles the Arduino Leonardo board.

This directory contains some example of compiling code
using the Arduino's build system.

Uploading using an ISP is simple as

    $ make -C <dir with ino files> -f ../Makefile.ciaoduino ispload

## Eagle files

The board come from this project: [pov project](https://github.com/gipi/pov-project/tree/ciaoduino/v2/eagle).


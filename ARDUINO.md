This is a simple view of the internals of the Arduino's build system,
and it's mainly comments from the ``Arduino.mk`` file.

If you want to see an example see the ``ciaoduino/`` directory, you can
upload using ``bus pirate`` issuing

    $ make -C ciaoduino -f Makefile.ciaoduino ispload

# STANDARD ARDUINO WORKFLOW

Given a normal sketch directory, all you need to do is to create
a small Makefile which defines a few things, and then includes
the ``Arduino.mk`` file.

For example:

```make
ARDUINO_LIBS = Ethernet SPI
BOARD_TAG    = uno
MONITOR_PORT = /dev/cu.usb*

include /usr/share/arduino/Arduino.mk
```

Hopefully these will be self-explanatory but in case they're not:

 - ``ARDUINO_LIBS``: A list of any libraries used by the sketch (we assume these are in ``$(ARDUINO_DIR)/hardware/libraries`` or your sketchbook's libraries directory)

 - ``MONITOR_PORT``:- The port where the Arduino can be found (only needed when uploading)

 - ``BOARD_TAG``: The tag for the board e.g. uno or mega ``make show_boards`` shows a list

If you have your additional libraries relative to your source, rather
than in your "sketchbook", also set ``USER_LIB_PATH``, like this example:

    USER_LIB_PATH := $(realpath ../../libraries)

If you've added the Arduino-Makefile repository to your git repo as a
submodule (or other similar arrangement), you might have lines like this
in your Makefile:

```make
ARDMK_DIR := $(realpath ../../tools/Arduino-Makefile)
include $(ARDMK_DIR)/Arduino.mk
```

In any case, once this file has been created the typical workflow is just

    $ make upload

All of the object files are created in the build-{BOARD_TAG} subdirectory
All sources should be in the current directory and can include:

 - at most one .pde or ``.ino`` file which will be treated as C++ after
   the standard Arduino header and footer have been affixed.
 - any number of ``.c``, ``.cpp``, ``.s`` and ``.h`` files

Included libraries are built in the ``build-{BOARD_TAG}/libs`` subdirectory.

Remember that in order to use Arduino native library I think you should
use ``cpp`` files.

Besides make upload, there are a couple of other targets that are available.
Do make help to get the complete list of targets and their description

In general there are some things that you have to consider when using
Arduino's libraries, like the ``delay()`` function uses ``Timer0``.

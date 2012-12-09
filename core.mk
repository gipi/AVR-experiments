# Core makefile used to compile AVR related C files.
#
# This is intended to be include-d from an external makefile that
# must define at least the TARGET, OBJ_FILES and TARGETS variables.
#
# First target is the default
all: $(TARGETS)

%.o: %.c
	$(CC) $(CPPFLAGS) -c -o $@ $<

$(TARGET).elf: $(OBJ_FILES)
	$(CC) $(CPPFLAGS) $< -o $@

%.hex: %.elf
	$(OBJCOPY) -O ihex -R .eeprom $< $@

%.eep: %.elf
	$(OBJCOPY) -O ihex -j .eeprom --set-section-flags=.eeprom="alloc,load" --change-section-lma .eeprom=0 $< $@

upload: $(TARGET).hex
	$(DUDE) $(AVRDUDE_OPTS) -F -U flash:w:$<

upload_eep: $(TARGET).eep
	$(DUDE) $(AVRDUDE_OPTS) -F -U eeprom:w:$<

check:
	$(DUDE) $(AVRDUDE_OPTS)

size: $(TARGET).elf
	$(AVRSIZE) --mcu=$(MCU) --format=avr $<

clean:
	rm -vfr *.o *.hex *.elf *.eep $(TARGET)

.PHONY: all upload_eep upload

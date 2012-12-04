
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

clean:
	rm -vfr *.o *.hex *.elf *.eep

all: $(TARGET)

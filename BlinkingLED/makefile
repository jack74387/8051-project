CC = sdcc
PACKIHX = packihx
TARGET = BlinkingLED
SRC = $(TARGET).c
OBJ = $(TARGET).ihx
HEX = $(TARGET).hex

all: $(HEX)

$(OBJ): $(SRC)
	$(CC) $(SRC)

$(HEX): $(OBJ)
	$(PACKIHX) $(OBJ) > $(HEX)

clean:
	del /Q *.ihx *.hex *.asm *.lst *.rst *.sym *.adb *.rel *.map *.mem *.lk 2>NULL

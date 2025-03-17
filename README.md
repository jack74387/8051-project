# 8051-projects
## LED Blinker

### Description

This project demonstrates a simple LED blinking program for the 8051 microcontroller using the SDCC (Small Device C Compiler).

The program toggles all pins of port P2 between 0xFF (all high) and 0x00 (all low) in an infinite loop, creating a blinking effect for LEDs connected to port P2.
---
## Senven Segment LED Display

### Description

This project uses an 8051 microcontroller to control a 4-digit 7-segment LED display with a push button (INT0) connected to P3.2.

- A short press increments the displayed number when the button is released.
- Holding the button for more than 2 seconds resets the display to zero.
- Leading zeros are not displayed (e.g., numbers <10 show only the rightmost digit).
- Includes debounce handling for stable button input.
---
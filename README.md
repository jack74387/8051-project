# 8051-projects
## 🔴 LED Blinker 

### Description

This project demonstrates a simple LED blinking program for the 8051 microcontroller using the **SDCC (Small Device C Compiler)**.  

The program toggles all pins of **port P2** between `0xFF` (all high) and `0x00` (all low) in an infinite loop, creating a blinking effect for LEDs connected to **port P2**. 

---
## 🔢 Senven Segment LED Display

### Description

This project uses an 8051 microcontroller to control a **4-digit 7-segment LED display** with a **push button (INT0)** connected to **P3.2**.  

✅ **Features:**  
- 🟢 **Short Press:** Increments the displayed number when the button is released.  
- ⏳ **Long Press (>2s):** Resets the display to zero.  
- 🔍 **No Leading Zeros:** Only displays significant digits (e.g., numbers <10 show only the rightmost digit).  
- 🎯 **Debounce Handling:** Ensures stable button input.  
---
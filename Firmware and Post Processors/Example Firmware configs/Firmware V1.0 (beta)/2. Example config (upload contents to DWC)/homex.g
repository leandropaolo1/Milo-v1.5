; homex.g
; called to home the X axis
;
; generated by RepRapFirmware Configuration Tool v3.4.0-LPC-STM32+4 on Fri Dec 09 2022 14:47:45 GMT+0100 (Mitteleuropäische Normalzeit)
G90				  ; absolute positioning
G1 H1 Z125		  ; move Z to top
G91               ; relative positioning
G1 H1 X-330 F1800 ; move quickly to X axis endstop and stop there (first pass)
G1 H2 X5 F6000    ; go back a few mm
G1 H1 X-330 F360  ; move slowly to X axis endstop once more (second pass)
G90               ; absolute positioning


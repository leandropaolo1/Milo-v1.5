; homeall.g
; called to home all axes
;
; generated by RepRapFirmware Configuration Tool v3.4.0-LPC-STM32+4 on Fri Dec 09 2022 14:47:45 GMT+0100 (Mitteleuropäische Normalzeit)
G91                     ; relative positioning
G1 H1 Z225 F500         ; move Z up stopping at the endstop
G1 H1 X-330 Y225 F3000 ; move quickly to X and Y axis endstops and stop there (first pass)
G1 H2 X5 Y-5 F6000       ; go back a few mm
G1 H1 X-330 Y225 F500  ; move slowly to X and Y axis endstops once more (second pass)
G90                     ; absolute positioning
G92 Z220                ; set Z position to axis maximum (you may want to adjust this)

; Uncomment the following lines to lift Z after probing
;G91                    ; relative positioning
;G1 Z20 F100            ; lift Z relative to current position
;G90                    ; absolute positioning


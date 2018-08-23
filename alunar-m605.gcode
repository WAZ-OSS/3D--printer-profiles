; Default start code
G21 ;metric values
M107 ; Turn off fan
G90 ; Absolute positioning
G28 X0 Y0 ; move X/Y to min endstops
G28 Z0 ; move Z to min endstops
G1 Z15.0 F{speed_travel} ; move the platform down 15mm
G92 E0 ; Reset extruder position
G1 F200 E3 ;extrude 3mm of feed stock
G92 E0 ;zero the extruded length again
G1 F{speed_travel}
M117 Imprimiendo...




; Default end code
M117 Print done;mensaje al LCD
M104 S0 ;extruder heater off
M140 S0 ;heated bed heater off (if you have it)
G91 ;relative positioning
G1 E-1 F300 ;retract the filament a bit
G1 Z+0.5 E-5 X-20 Y-20 F{speed_travel} ;move Z up a bit and retract filament even more
G28 X0 Y0 ;move X/Y to min endstops, so the head is out of the way
G90 ;absolute positioning
M84 ;steppers off
; Default start code
G28 ; Home extruder
G29
G1 Z15 F{Z_TRAVEL_SPEED}
M107 ; Turn off fan
G90 ; Absolute positioning
M82 ; Extruder in absolute mode
{IF_BED}M190 S{BED}
; Activate all used extruder
{IF_EXT0}M104 T0 S{TEMP0}
{IF_EXT1}M104 T1 S{TEMP1}
G92 E0 ; Reset extruder position
; Wait for all used extruders to reach temperature
{IF_EXT0}M109 T0 S{TEMP0}
{IF_EXT1}M109 T1 S{TEMP1}




; Default end code
G1 X0 Y0 Z130 ; Get extruder out of way
M107 ; Turn off fan
; Disable all extruder
G91 ; Relative positioning
{IF_EXT0}T0
{IF_EXT0}G1 E-1 ; Reduce filament pressure
M104 T0 S0
{IF_EXT1}T1
{IF_EXT1}G1 E-1 ; Reduce filament pressure
M104 T1 S0
G90 ; Absolute positioning
G92 E0 ; Reset extruder position
M140 S0 ; Disable heated bed
M84 ; Turn steppers off
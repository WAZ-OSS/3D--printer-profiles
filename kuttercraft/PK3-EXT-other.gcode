;Kuttercraft start code
G90 ; posicionamiento absoluto
M82 ; establecer el extrusor en modo absoluto
M107 ; Apaga el fan de capa
G28 ; lleva el eje al inicio
G1 X5 Y5 Z15 F3000 ; Se mueve a esa posición
G1 Z15.0 F9000
G92 E0 ; El eje E esta en cero
G1 F200 E10 ; extruye 10mm
G92 E0
G1 F9000 ; Guardad esa velocidad
M117 Imprimiendo... ; imprime en el LCD


;Kuttercraft end code
M104 S0 ; Apaga extrusor
M140 S0 ; Apaga cama caliente
G91 ; posicionamiento relativo
G1 E-1 F300  ; Retraer filamento
G1 Z+0.5 E-5 F9000
G90
G1 X0 Y200 F9000
M84 ; Apaga los motores
G90 ; posicionamiento absoluto

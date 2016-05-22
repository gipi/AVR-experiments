EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:kicad-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATMEGA328P-P IC1
U 1 1 57246F44
P 2500 4450
F 0 "IC1" H 1750 5700 50  0000 L BNN
F 1 "ATMEGA328P-P" H 2900 3050 50  0000 L BNN
F 2 "" H 2500 4450 50  0001 C CIN
F 3 "" H 2500 4450 50  0000 C CNN
	1    2500 4450
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 57246FE5
P 9450 2000
F 0 "SW1" H 9600 2110 50  0000 C CNN
F 1 "SW_PUSH" H 9450 1920 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_PUSH_SMALL" H 9450 2000 50  0001 C CNN
F 3 "" H 9450 2000 50  0000 C CNN
	1    9450 2000
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 57247138
P 10350 2350
F 0 "C1" H 10375 2450 50  0000 L CNN
F 1 "10uF" H 10375 2250 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 10388 2200 50  0001 C CNN
F 3 "" H 10350 2350 50  0000 C CNN
	1    10350 2350
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 57247196
P 10050 2000
F 0 "R3" V 10130 2000 50  0000 C CNN
F 1 "1K" V 10050 2000 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 9980 2000 50  0001 C CNN
F 3 "" H 10050 2000 50  0000 C CNN
	1    10050 2000
	0    1    1    0   
$EndComp
$Comp
L DISPLAY S1
U 1 1 57247209
P 3550 1400
F 0 "S1" H 2500 2150 50  0000 C CNN
F 1 "DISPLAY" H 3800 650 50  0000 C CNN
F 2 "" H 3550 1400 50  0001 C CNN
F 3 "" H 3550 1400 50  0000 C CNN
	1    3550 1400
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR01
U 1 1 5724731C
P 8850 1750
F 0 "#PWR01" H 8850 1600 50  0001 C CNN
F 1 "VCC" H 8850 1900 50  0000 C CNN
F 2 "" H 8850 1750 50  0000 C CNN
F 3 "" H 8850 1750 50  0000 C CNN
	1    8850 1750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5724733A
P 10350 2750
F 0 "#PWR02" H 10350 2500 50  0001 C CNN
F 1 "GND" H 10350 2600 50  0000 C CNN
F 2 "" H 10350 2750 50  0000 C CNN
F 3 "" H 10350 2750 50  0000 C CNN
	1    10350 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 1750 8850 2000
Wire Wire Line
	8850 2000 9150 2000
Wire Wire Line
	10350 2500 10350 2750
Wire Wire Line
	9750 2000 9900 2000
Connection ~ 10350 2700
Wire Wire Line
	10200 2000 10350 2000
Wire Wire Line
	3500 5150 3850 5150
Text GLabel 10350 1550 1    60   Input ~ 0
PLAY
Text GLabel 3850 5150 2    39   Input ~ 0
PLAY
Text Notes 9050 1200 0    197  ~ 39
Buttons
Wire Wire Line
	3500 4950 3850 4950
Wire Wire Line
	3500 5050 3850 5050
Text GLabel 3850 4950 2    39   Input ~ 8
DISPLAY_CLK
Text GLabel 3850 5050 2    39   Input ~ 0
DISPLAY_IO
Wire Wire Line
	10350 1550 10350 2200
$Comp
L R R1
U 1 1 57250C02
P 9750 2350
F 0 "R1" V 9830 2350 50  0000 C CNN
F 1 "10" V 9750 2350 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 9680 2350 50  0001 C CNN
F 3 "" H 9750 2350 50  0000 C CNN
	1    9750 2350
	-1   0    0    1   
$EndComp
Wire Wire Line
	9750 2500 9750 2700
Wire Wire Line
	9750 2700 10350 2700
Wire Wire Line
	9750 2200 9750 2000
Connection ~ 10350 2000
$Comp
L SW_PUSH SW2
U 1 1 5740411F
P 9450 4050
F 0 "SW2" H 9600 4160 50  0000 C CNN
F 1 "SW_PUSH" H 9450 3970 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_PUSH_SMALL" H 9450 4050 50  0001 C CNN
F 3 "" H 9450 4050 50  0000 C CNN
	1    9450 4050
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 57404125
P 10350 4400
F 0 "C2" H 10375 4500 50  0000 L CNN
F 1 "10uF" H 10375 4300 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 10388 4250 50  0001 C CNN
F 3 "" H 10350 4400 50  0000 C CNN
	1    10350 4400
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5740412B
P 10050 4050
F 0 "R4" V 10130 4050 50  0000 C CNN
F 1 "1K" V 10050 4050 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 9980 4050 50  0001 C CNN
F 3 "" H 10050 4050 50  0000 C CNN
	1    10050 4050
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR03
U 1 1 57404131
P 8850 3800
F 0 "#PWR03" H 8850 3650 50  0001 C CNN
F 1 "VCC" H 8850 3950 50  0000 C CNN
F 2 "" H 8850 3800 50  0000 C CNN
F 3 "" H 8850 3800 50  0000 C CNN
	1    8850 3800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 57404137
P 10350 4800
F 0 "#PWR04" H 10350 4550 50  0001 C CNN
F 1 "GND" H 10350 4650 50  0000 C CNN
F 2 "" H 10350 4800 50  0000 C CNN
F 3 "" H 10350 4800 50  0000 C CNN
	1    10350 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 3800 8850 4050
Wire Wire Line
	8850 4050 9150 4050
Wire Wire Line
	10350 4550 10350 4800
Wire Wire Line
	9750 4050 9900 4050
Connection ~ 10350 4750
Wire Wire Line
	10200 4050 10350 4050
Text GLabel 10350 3600 1    60   Input ~ 0
INCREASE
Wire Wire Line
	10350 3600 10350 4250
$Comp
L R R2
U 1 1 57404145
P 9750 4400
F 0 "R2" V 9830 4400 50  0000 C CNN
F 1 "10" V 9750 4400 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 9680 4400 50  0001 C CNN
F 3 "" H 9750 4400 50  0000 C CNN
	1    9750 4400
	-1   0    0    1   
$EndComp
Wire Wire Line
	9750 4550 9750 4750
Wire Wire Line
	9750 4750 10350 4750
Wire Wire Line
	9750 4250 9750 4050
Connection ~ 10350 4050
$EndSCHEMATC

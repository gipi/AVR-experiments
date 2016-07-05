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
LIBS:ATMegaProgrammer-cache
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
U 1 1 577B669F
P 2400 3000
F 0 "IC1" H 1650 4250 50  0000 L BNN
F 1 "ATMEGA328P-P" H 2800 1600 50  0000 L BNN
F 2 "Housings_DIP:DIP-28_W7.62mm" H 2400 3000 50  0000 C CIN
F 3 "" H 2400 3000 50  0000 C CNN
	1    2400 3000
	1    0    0    -1  
$EndComp
$Comp
L AVR-ISP-6 CON1
U 1 1 577B6737
P 5450 2050
F 0 "CON1" H 5345 2290 50  0000 C CNN
F 1 "AVR-ISP-6" H 5185 1820 50  0000 L BNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03" V 4930 2090 50  0001 C CNN
F 3 "" H 5425 2050 50  0000 C CNN
	1    5450 2050
	1    0    0    -1  
$EndComp
Text GLabel 3600 3350 2    39   Input ~ 0
PC6
Text GLabel 5100 2500 0    39   Input ~ 0
PC6
$Comp
L CONN_01X14 P1
U 1 1 577B6D36
P 5550 3150
F 0 "P1" H 5550 3900 50  0000 C CNN
F 1 "CONN_01X14" V 5650 3150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x14" H 5550 3150 50  0001 C CNN
F 3 "" H 5550 3150 50  0000 C CNN
	1    5550 3150
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X14 P2
U 1 1 577B6DB3
P 6500 3150
F 0 "P2" H 6500 3900 50  0000 C CNN
F 1 "CONN_01X14" V 6600 3150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x14" H 6500 3150 50  0001 C CNN
F 3 "" H 6500 3150 50  0000 C CNN
	1    6500 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3350 3600 3350
Wire Wire Line
	5350 2500 5100 2500
Wire Wire Line
	3400 3500 3600 3500
Wire Wire Line
	3400 3600 3600 3600
Wire Wire Line
	3400 3700 3600 3700
Wire Wire Line
	3400 3800 3600 3800
Wire Wire Line
	3400 3900 3600 3900
Wire Wire Line
	5350 2600 5100 2600
Wire Wire Line
	5350 2700 5100 2700
Wire Wire Line
	5350 2800 5100 2800
Wire Wire Line
	5350 2900 5100 2900
Wire Wire Line
	5350 3000 5100 3000
Text GLabel 5100 2600 0    39   Input ~ 0
PD0
Text GLabel 3600 3500 2    39   Input ~ 0
PD0
Text GLabel 3600 3600 2    39   Input ~ 0
PD1
Text GLabel 3600 3700 2    39   Input ~ 0
PD2
Text GLabel 5100 2700 0    39   Input ~ 0
PD1
Text GLabel 5100 2800 0    39   Input ~ 0
PD2
Text GLabel 3600 3800 2    39   Input ~ 0
PD3
Text GLabel 3600 3900 2    39   Input ~ 0
PD4
Text GLabel 5100 2900 0    39   Input ~ 0
PD3
Text GLabel 5100 3000 0    39   Input ~ 0
PD4
Wire Wire Line
	3400 2500 3550 2500
Wire Wire Line
	5350 3300 5100 3300
Wire Wire Line
	3400 2600 3550 2600
Wire Wire Line
	5350 3400 5100 3400
Wire Wire Line
	3400 4000 3600 4000
Wire Wire Line
	3400 4100 3600 4100
Wire Wire Line
	3400 4200 3600 4200
Wire Wire Line
	3400 1900 3550 1900
Text GLabel 3550 2500 2    39   Input ~ 0
PB6
Text GLabel 3550 2600 2    39   Input ~ 0
PB7
Text GLabel 3600 4000 2    39   Input ~ 0
PD5
Text GLabel 3600 4100 2    39   Input ~ 0
PD6
Text GLabel 3600 4200 2    39   Input ~ 0
PD7
Text GLabel 3550 1900 2    39   Input ~ 0
PB0
Wire Wire Line
	5350 3500 5100 3500
Wire Wire Line
	5350 3600 5100 3600
Wire Wire Line
	5350 3700 5100 3700
Wire Wire Line
	5350 3800 5100 3800
Text GLabel 5100 3300 0    39   Input ~ 0
PB6
Text GLabel 5100 3400 0    39   Input ~ 0
PB7
Text GLabel 5100 3500 0    39   Input ~ 0
PD5
Text GLabel 5100 3600 0    39   Input ~ 0
PD6
Text GLabel 5100 3700 0    39   Input ~ 0
PD7
Text GLabel 5100 3800 0    39   Input ~ 0
PB0
Wire Wire Line
	3400 3250 3600 3250
Wire Wire Line
	3400 3150 3600 3150
Wire Wire Line
	3400 3050 3600 3050
Wire Wire Line
	3400 2950 3600 2950
Wire Wire Line
	3400 2850 3600 2850
Wire Wire Line
	3400 2750 3600 2750
Text GLabel 3600 3250 2    39   Input ~ 0
PC5
Text GLabel 3600 3150 2    39   Input ~ 0
PC4
Text GLabel 3600 3050 2    39   Input ~ 0
PC3
Text GLabel 3600 2950 2    39   Input ~ 0
PC2
Text GLabel 3600 2850 2    39   Input ~ 0
PC1
Text GLabel 3600 2750 2    39   Input ~ 0
PC0
Wire Wire Line
	6300 2500 6150 2500
Wire Wire Line
	6300 2600 6150 2600
Wire Wire Line
	6300 2700 6150 2700
Wire Wire Line
	6300 2800 6150 2800
Wire Wire Line
	6300 2900 6150 2900
Text GLabel 6150 2500 0    39   Input ~ 0
PC5
Text GLabel 6150 2600 0    39   Input ~ 0
PC4
Text GLabel 6150 2700 0    39   Input ~ 0
PC3
Text GLabel 6150 2800 0    39   Input ~ 0
PC2
Text GLabel 6150 2900 0    39   Input ~ 0
PC1
Wire Wire Line
	6300 3000 6150 3000
Wire Wire Line
	6300 3100 6150 3100
Text GLabel 6150 3000 0    39   Input ~ 0
PC0
Wire Wire Line
	6300 3200 6150 3200
Wire Wire Line
	6300 3300 6150 3300
Wire Wire Line
	3400 2400 3550 2400
Wire Wire Line
	3400 2300 3550 2300
Wire Wire Line
	3400 2200 3550 2200
Wire Wire Line
	3400 2100 3550 2100
Wire Wire Line
	3400 2000 3550 2000
Text GLabel 3550 2000 2    39   Input ~ 0
PB1
Wire Wire Line
	6300 3400 6150 3400
Wire Wire Line
	6300 3500 6150 3500
Wire Wire Line
	6300 3600 6150 3600
Wire Wire Line
	6300 3700 6150 3700
Wire Wire Line
	6300 3800 6150 3800
Text GLabel 6150 3800 0    39   Input ~ 0
PB1
Text GLabel 3550 2100 2    39   Input ~ 0
PB2
Text GLabel 3550 2200 2    39   Input ~ 0
PB3
Text GLabel 3550 2300 2    39   Input ~ 0
PB4
Text GLabel 3550 2400 2    39   Input ~ 0
PB5
Text GLabel 6150 3700 0    39   Input ~ 0
PB2
Text GLabel 6150 3600 0    39   Input ~ 0
PB3
Text GLabel 6150 3500 0    39   Input ~ 0
PB4
Text GLabel 6150 3400 0    39   Input ~ 0
PB5
Wire Wire Line
	1500 4100 1400 4100
Wire Wire Line
	1400 4100 1400 4350
Wire Wire Line
	1500 4200 1400 4200
Connection ~ 1400 4200
$Comp
L GND #PWR01
U 1 1 577BBFB5
P 1400 4350
F 0 "#PWR01" H 1400 4100 50  0001 C CNN
F 1 "GND" H 1400 4200 50  0000 C CNN
F 2 "" H 1400 4350 50  0000 C CNN
F 3 "" H 1400 4350 50  0000 C CNN
	1    1400 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3200 5100 3200
Text GLabel 5100 3200 0    39   Input ~ 0
GND
Text GLabel 6150 3100 0    39   Input ~ 0
GND
Wire Wire Line
	5550 2150 5900 2150
Text GLabel 5900 2150 2    39   Input ~ 0
GND
Wire Wire Line
	5300 2150 4950 2150
Text GLabel 4950 2150 0    39   Input ~ 0
PC6
Wire Wire Line
	5550 2050 5900 2050
Wire Wire Line
	5300 1950 4950 1950
Text GLabel 5900 2050 2    39   Input ~ 0
PB3
Text GLabel 4950 1950 0    39   Input ~ 0
PB4
$Comp
L VCC #PWR02
U 1 1 577BCCBB
P 1350 1800
F 0 "#PWR02" H 1350 1650 50  0001 C CNN
F 1 "VCC" H 1350 1950 50  0000 C CNN
F 2 "" H 1350 1800 50  0000 C CNN
F 3 "" H 1350 1800 50  0000 C CNN
	1    1350 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 1800 1350 1900
Wire Wire Line
	1350 1900 1500 1900
Wire Wire Line
	5350 3100 5100 3100
Text GLabel 5100 3100 0    39   Input ~ 0
VCC
Wire Wire Line
	5550 1950 5900 1950
Wire Wire Line
	5900 1950 5900 1850
$Comp
L VCC #PWR03
U 1 1 577BCE4D
P 5900 1850
F 0 "#PWR03" H 5900 1700 50  0001 C CNN
F 1 "VCC" H 5900 2000 50  0000 C CNN
F 2 "" H 5900 1850 50  0000 C CNN
F 3 "" H 5900 1850 50  0000 C CNN
	1    5900 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2050 4950 2050
Text GLabel 4950 2050 0    39   Input ~ 0
PB5
Text GLabel 1500 2200 0    39   Input ~ 0
AVCC
Text GLabel 1500 2500 0    39   Input ~ 0
AREF
Text GLabel 6150 3300 0    39   Input ~ 0
AVCC
Text GLabel 6150 3200 0    39   Input ~ 0
AREF
$Comp
L CONN_01X02 P3
U 1 1 577BD029
P 5550 4200
F 0 "P3" H 5550 4350 50  0000 C CNN
F 1 "CONN_01X02" V 5650 4200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 5550 4200 50  0001 C CNN
F 3 "" H 5550 4200 50  0000 C CNN
	1    5550 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 4150 5200 4150
Wire Wire Line
	5350 4250 5200 4250
Text GLabel 5200 4150 0    39   Input ~ 0
VCC
Text GLabel 5200 4250 0    39   Input ~ 0
GND
$Comp
L CRYSTAL_SMD X1
U 1 1 577BD3A3
P 4700 3050
F 0 "X1" H 4700 3140 50  0000 C CNN
F 1 "CRYSTAL_SMD" H 4730 2940 50  0000 L CNN
F 2 "Crystals:crystal_FA238-TSX3225" H 4700 3050 50  0001 C CNN
F 3 "" H 4700 3050 50  0000 C CNN
	1    4700 3050
	0    1    1    0   
$EndComp
Text GLabel 4700 3250 0    39   Input ~ 0
PB7
Text GLabel 4700 2850 0    39   Input ~ 0
PB6
$EndSCHEMATC

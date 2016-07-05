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
Wire Wire Line
	3400 3350 3600 3350
Text GLabel 3600 3350 2    60   Input ~ 0
P1
Wire Wire Line
	5350 2500 5100 2500
Text GLabel 5100 2500 0    60   Input ~ 0
P1
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
$EndSCHEMATC

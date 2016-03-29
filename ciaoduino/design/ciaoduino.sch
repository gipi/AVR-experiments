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
Title "CiaoDuino"
Date ""
Rev "0.1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATMEGA32U4-A U1
U 1 1 56FAE1F2
P 3500 3150
F 0 "U1" H 2550 4850 50  0000 C CNN
F 1 "ATMEGA32U4-A" H 4200 1650 50  0000 C CNN
F 2 "TQFP44" H 3500 3150 50  0000 C CIN
F 3 "" H 4600 4250 50  0000 C CNN
	1    3500 3150
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW2
U 1 1 56FAE2EC
P 5600 3700
F 0 "SW2" H 5750 3810 50  0000 C CNN
F 1 "SW_PUSH" H 5600 3620 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SP3T_PCM13" H 5600 3700 50  0001 C CNN
F 3 "" H 5600 3700 50  0000 C CNN
	1    5600 3700
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 56FAE381
P 5150 3450
F 0 "R2" V 5230 3450 50  0000 C CNN
F 1 "R" V 5150 3450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5080 3450 50  0001 C CNN
F 3 "" H 5150 3450 50  0000 C CNN
	1    5150 3450
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR01
U 1 1 56FAE56A
P 5150 3150
F 0 "#PWR01" H 5150 3000 50  0001 C CNN
F 1 "VCC" H 5150 3300 50  0000 C CNN
F 2 "" H 5150 3150 50  0000 C CNN
F 3 "" H 5150 3150 50  0000 C CNN
	1    5150 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 3150 5150 3300
NoConn ~ 2150 2650
$Comp
L CRYSTAL_SMD X1
U 1 1 56FAE99D
P 1650 2100
F 0 "X1" H 1650 2190 50  0000 C CNN
F 1 "CRYSTAL_SMD" H 1680 1990 50  0000 L CNN
F 2 "Crystals:Crystal_SMD_0603_4Pads" H 1650 2100 50  0001 C CNN
F 3 "" H 1650 2100 50  0000 C CNN
	1    1650 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	2350 2000 2000 2000
Wire Wire Line
	2000 2000 2000 1900
Wire Wire Line
	2000 1900 1300 1900
Wire Wire Line
	2350 2200 2000 2200
Wire Wire Line
	2000 2200 2000 2300
Wire Wire Line
	2000 2300 1300 2300
$Comp
L C C1
U 1 1 56FAEAA7
P 1150 1900
F 0 "C1" H 1175 2000 50  0000 L CNN
F 1 "C" H 1175 1800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1188 1750 50  0001 C CNN
F 3 "" H 1150 1900 50  0000 C CNN
	1    1150 1900
	0    1    1    0   
$EndComp
$Comp
L C C2
U 1 1 56FAEB31
P 1150 2300
F 0 "C2" H 1175 2400 50  0000 L CNN
F 1 "C" H 1175 2200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1188 2150 50  0001 C CNN
F 3 "" H 1150 2300 50  0000 C CNN
	1    1150 2300
	0    1    1    0   
$EndComp
$Comp
L GND #PWR02
U 1 1 56FAEB5F
P 750 2300
F 0 "#PWR02" H 750 2050 50  0001 C CNN
F 1 "GND" H 750 2150 50  0000 C CNN
F 2 "" H 750 2300 50  0000 C CNN
F 3 "" H 750 2300 50  0000 C CNN
	1    750  2300
	1    0    0    -1  
$EndComp
Connection ~ 1650 1900
Connection ~ 1650 2300
Wire Wire Line
	1000 2300 750  2300
Wire Wire Line
	1000 1900 750  1900
Wire Wire Line
	750  1900 750  2300
$Comp
L CONN_02X03 P1
U 1 1 56FAF03D
P 5750 1700
F 0 "P1" H 5750 1900 50  0000 C CNN
F 1 "ICSP" H 5750 1500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03" H 5750 500 50  0001 C CNN
F 3 "" H 5750 500 50  0000 C CNN
	1    5750 1700
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 56FAF1DC
P 1750 1600
F 0 "SW1" H 1900 1710 50  0000 C CNN
F 1 "SW_PUSH" H 1750 1520 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SP3T_PCM13" H 1750 1600 50  0001 C CNN
F 3 "" H 1750 1600 50  0000 C CNN
	1    1750 1600
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 56FAF292
P 2200 1300
F 0 "R1" V 2280 1300 50  0000 C CNN
F 1 "R" V 2200 1300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2130 1300 50  0001 C CNN
F 3 "" H 2200 1300 50  0000 C CNN
	1    2200 1300
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR03
U 1 1 56FAF341
P 2200 950
F 0 "#PWR03" H 2200 800 50  0001 C CNN
F 1 "VCC" H 2200 1100 50  0000 C CNN
F 2 "" H 2200 950 50  0000 C CNN
F 3 "" H 2200 950 50  0000 C CNN
	1    2200 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 950  2200 1150
Wire Wire Line
	4600 3700 5300 3700
Wire Wire Line
	5150 3600 5150 3700
Connection ~ 5150 3700
$Comp
L GND #PWR04
U 1 1 56FAF60C
P 5950 3950
F 0 "#PWR04" H 5950 3700 50  0001 C CNN
F 1 "GND" H 5950 3800 50  0000 C CNN
F 2 "" H 5950 3950 50  0000 C CNN
F 3 "" H 5950 3950 50  0000 C CNN
	1    5950 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 3700 5950 3700
Wire Wire Line
	5950 3700 5950 3950
Wire Wire Line
	2350 1600 2050 1600
Wire Wire Line
	2200 1450 2200 1600
Connection ~ 2200 1600
$Comp
L GND #PWR05
U 1 1 56FAF82B
P 1450 1700
F 0 "#PWR05" H 1450 1450 50  0001 C CNN
F 1 "GND" H 1450 1550 50  0000 C CNN
F 2 "" H 1450 1700 50  0000 C CNN
F 3 "" H 1450 1700 50  0000 C CNN
	1    1450 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 1600 1450 1700
Wire Wire Line
	4600 1900 4800 1900
Text GLabel 4850 1900 2    39   Input ~ 0
MISO
Text GLabel 5500 1600 0    39   Input ~ 0
MISO
$EndSCHEMATC

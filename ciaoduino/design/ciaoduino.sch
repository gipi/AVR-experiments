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
LIBS:ciaoduino-cache
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
L SW_PUSH SW2
U 1 1 56FAE2EC
P 6950 5050
F 0 "SW2" H 7100 5160 50  0000 C CNN
F 1 "SW_PUSH" H 6950 4970 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_EVQP0" H 6950 5050 50  0001 C CNN
F 3 "" H 6950 5050 50  0000 C CNN
	1    6950 5050
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 56FAE381
P 6500 4800
F 0 "R2" V 6580 4800 50  0000 C CNN
F 1 "R" V 6500 4800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6430 4800 50  0001 C CNN
F 3 "" H 6500 4800 50  0000 C CNN
	1    6500 4800
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR01
U 1 1 56FAE56A
P 6500 4500
F 0 "#PWR01" H 6500 4350 50  0001 C CNN
F 1 "VCC" H 6500 4650 50  0000 C CNN
F 2 "" H 6500 4500 50  0000 C CNN
F 3 "" H 6500 4500 50  0000 C CNN
	1    6500 4500
	1    0    0    -1  
$EndComp
NoConn ~ 2150 2650
$Comp
L CRYSTAL_SMD X1
U 1 1 56FAE99D
P 2450 4950
F 0 "X1" H 2450 5040 50  0000 C CNN
F 1 "CRYSTAL_SMD" H 2480 4840 50  0000 L CNN
F 2 "Crystals:crystal_FA238-TSX3225" H 2450 4950 50  0001 C CNN
F 3 "" H 2450 4950 50  0000 C CNN
	1    2450 4950
	0    1    1    0   
$EndComp
$Comp
L C C1
U 1 1 56FAEAA7
P 1950 4750
F 0 "C1" H 1975 4850 50  0000 L CNN
F 1 "C" H 1975 4650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1988 4600 50  0001 C CNN
F 3 "" H 1950 4750 50  0000 C CNN
	1    1950 4750
	0    1    1    0   
$EndComp
$Comp
L C C2
U 1 1 56FAEB31
P 1950 5150
F 0 "C2" H 1975 5250 50  0000 L CNN
F 1 "C" H 1975 5050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1988 5000 50  0001 C CNN
F 3 "" H 1950 5150 50  0000 C CNN
	1    1950 5150
	0    1    1    0   
$EndComp
$Comp
L GND #PWR02
U 1 1 56FAEB5F
P 1550 5150
F 0 "#PWR02" H 1550 4900 50  0001 C CNN
F 1 "GND" H 1550 5000 50  0000 C CNN
F 2 "" H 1550 5150 50  0000 C CNN
F 3 "" H 1550 5150 50  0000 C CNN
	1    1550 5150
	1    0    0    -1  
$EndComp
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
P 2450 4350
F 0 "SW1" H 2600 4460 50  0000 C CNN
F 1 "SW_PUSH" H 2450 4270 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_KMR2" H 2450 4350 50  0001 C CNN
F 3 "" H 2450 4350 50  0000 C CNN
	1    2450 4350
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 56FAF292
P 2900 4050
F 0 "R1" V 2980 4050 50  0000 C CNN
F 1 "R" V 2900 4050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2830 4050 50  0001 C CNN
F 3 "" H 2900 4050 50  0000 C CNN
	1    2900 4050
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR03
U 1 1 56FAF341
P 2900 3700
F 0 "#PWR03" H 2900 3550 50  0001 C CNN
F 1 "VCC" H 2900 3850 50  0000 C CNN
F 2 "" H 2900 3700 50  0000 C CNN
F 3 "" H 2900 3700 50  0000 C CNN
	1    2900 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 56FAF60C
P 7300 5300
F 0 "#PWR04" H 7300 5050 50  0001 C CNN
F 1 "GND" H 7300 5150 50  0000 C CNN
F 2 "" H 7300 5300 50  0000 C CNN
F 3 "" H 7300 5300 50  0000 C CNN
	1    7300 5300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 56FAF82B
P 2150 4450
F 0 "#PWR05" H 2150 4200 50  0001 C CNN
F 1 "GND" H 2150 4300 50  0000 C CNN
F 2 "" H 2150 4450 50  0000 C CNN
F 3 "" H 2150 4450 50  0000 C CNN
	1    2150 4450
	1    0    0    -1  
$EndComp
Text GLabel 5450 1600 0    39   Input ~ 0
MISO
$Comp
L ATmega32U4-AU U2
U 1 1 57090823
P 4650 4500
F 0 "U2" H 3750 6200 50  0000 C CNN
F 1 "ATmega32U4-AU" H 4000 2950 50  0000 C CNN
F 2 "Housings_QFP:TQFP-44_10x10mm_Pitch0.8mm" H 5850 5600 50  0001 C CNN
F 3 "" H 5850 5600 50  0000 C CNN
	1    4650 4500
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR06
U 1 1 570914D8
P 3200 2600
F 0 "#PWR06" H 3200 2450 50  0001 C CNN
F 1 "VCC" H 3200 2750 50  0000 C CNN
F 2 "" H 3200 2600 50  0000 C CNN
F 3 "" H 3200 2600 50  0000 C CNN
	1    3200 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 5709164B
P 3200 6000
F 0 "#PWR07" H 3200 5750 50  0001 C CNN
F 1 "GND" H 3200 5850 50  0000 C CNN
F 2 "" H 3200 6000 50  0000 C CNN
F 3 "" H 3200 6000 50  0000 C CNN
	1    3200 6000
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P2
U 1 1 57093081
P 1100 2600
F 0 "P2" H 1100 2750 50  0000 C CNN
F 1 "CONN_01X02" V 1200 2600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x02" H 1100 2600 50  0001 C CNN
F 3 "" H 1100 2600 50  0000 C CNN
	1    1100 2600
	-1   0    0    1   
$EndComp
$Comp
L VCC #PWR08
U 1 1 57093194
P 1450 2400
F 0 "#PWR08" H 1450 2250 50  0001 C CNN
F 1 "VCC" H 1450 2550 50  0000 C CNN
F 2 "" H 1450 2400 50  0000 C CNN
F 3 "" H 1450 2400 50  0000 C CNN
	1    1450 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 570931BD
P 1450 2750
F 0 "#PWR09" H 1450 2500 50  0001 C CNN
F 1 "GND" H 1450 2600 50  0000 C CNN
F 2 "" H 1450 2750 50  0000 C CNN
F 3 "" H 1450 2750 50  0000 C CNN
	1    1450 2750
	1    0    0    -1  
$EndComp
$Comp
L USB_OTG P3
U 1 1 57094558
P 1000 3750
F 0 "P3" H 1325 3625 50  0000 C CNN
F 1 "USB_OTG" H 1000 3950 50  0000 C CNN
F 2 "Connect:USB_Mini-B" V 950 3650 50  0001 C CNN
F 3 "" V 950 3650 50  0000 C CNN
	1    1000 3750
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 57094910
P 2000 3750
F 0 "R3" V 2080 3750 50  0000 C CNN
F 1 "R" V 2000 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1930 3750 50  0001 C CNN
F 3 "" H 2000 3750 50  0000 C CNN
	1    2000 3750
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 5709497A
P 2000 3850
F 0 "R4" V 2080 3850 50  0000 C CNN
F 1 "R" V 2000 3850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1930 3850 50  0001 C CNN
F 3 "" H 2000 3850 50  0000 C CNN
	1    2000 3850
	0    1    1    0   
$EndComp
$Comp
L CONN_01X06 P4
U 1 1 57096811
P 8200 4300
F 0 "P4" H 8200 4650 50  0000 C CNN
F 1 "CONN_01X06" V 8300 4300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x06" H 8200 4300 50  0001 C CNN
F 3 "" H 8200 4300 50  0000 C CNN
	1    8200 4300
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR010
U 1 1 570969CE
P 7850 2600
F 0 "#PWR010" H 7850 2450 50  0001 C CNN
F 1 "VCC" H 7850 2750 50  0000 C CNN
F 2 "" H 7850 2600 50  0000 C CNN
F 3 "" H 7850 2600 50  0000 C CNN
	1    7850 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 57096AFF
P 7400 2700
F 0 "#PWR011" H 7400 2450 50  0001 C CNN
F 1 "GND" H 7400 2550 50  0000 C CNN
F 2 "" H 7400 2700 50  0000 C CNN
F 3 "" H 7400 2700 50  0000 C CNN
	1    7400 2700
	1    0    0    -1  
$EndComp
Text GLabel 7650 4250 0    60   Input ~ 0
usart_rx
Text GLabel 7650 4350 0    60   Input ~ 0
usart_tx
Text GLabel 7650 4450 0    60   Input ~ 0
usart_cts
Text GLabel 7650 4550 0    60   Input ~ 0
usart_rts
Text GLabel 6050 3650 2    60   Input ~ 0
usart_rts
Text GLabel 5900 4650 2    60   Input ~ 0
usart_cts
Text GLabel 5900 4350 2    60   Input ~ 0
usart_rx
Text GLabel 5900 4450 2    60   Input ~ 0
usart_tx
$Comp
L CONN_01X06 P5
U 1 1 570BE2BA
P 8200 3050
F 0 "P5" H 8200 3400 50  0000 C CNN
F 1 "CONN_01X06" V 8300 3050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06" H 8200 3050 50  0001 C CNN
F 3 "" H 8200 3050 50  0000 C CNN
	1    8200 3050
	1    0    0    -1  
$EndComp
Text GLabel 7850 3000 0    60   Input ~ 0
SCLK
Text GLabel 7850 3100 0    60   Input ~ 0
MOSI
Text GLabel 7850 3200 0    60   Input ~ 0
MISO
Text GLabel 7850 3300 0    60   Input ~ 0
SS
$Comp
L VCC #PWR012
U 1 1 570BE5B1
P 7850 3850
F 0 "#PWR012" H 7850 3700 50  0001 C CNN
F 1 "VCC" H 7850 4000 50  0000 C CNN
F 2 "" H 7850 3850 50  0000 C CNN
F 3 "" H 7850 3850 50  0000 C CNN
	1    7850 3850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 570BE5B7
P 7400 3950
F 0 "#PWR013" H 7400 3700 50  0001 C CNN
F 1 "GND" H 7400 3800 50  0000 C CNN
F 2 "" H 7400 3950 50  0000 C CNN
F 3 "" H 7400 3950 50  0000 C CNN
	1    7400 3950
	1    0    0    -1  
$EndComp
Text GLabel 6000 2950 2    60   Input ~ 0
SS
Text GLabel 6000 3050 2    60   Input ~ 0
SCLK
$Comp
L CONN_01X04 P6
U 1 1 570BEDEF
P 8150 1800
F 0 "P6" H 8150 2050 50  0000 C CNN
F 1 "CONN_01X04" V 8250 1800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04" H 8150 1800 50  0001 C CNN
F 3 "" H 8150 1800 50  0000 C CNN
	1    8150 1800
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR014
U 1 1 570BF036
P 7800 1450
F 0 "#PWR014" H 7800 1300 50  0001 C CNN
F 1 "VCC" H 7800 1600 50  0000 C CNN
F 2 "" H 7800 1450 50  0000 C CNN
F 3 "" H 7800 1450 50  0000 C CNN
	1    7800 1450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 570BF03C
P 7350 1550
F 0 "#PWR015" H 7350 1300 50  0001 C CNN
F 1 "GND" H 7350 1400 50  0000 C CNN
F 2 "" H 7350 1550 50  0000 C CNN
F 3 "" H 7350 1550 50  0000 C CNN
	1    7350 1550
	1    0    0    -1  
$EndComp
Text GLabel 7850 1950 0    60   Input ~ 0
SDA
Text GLabel 7850 1850 0    60   Input ~ 0
SCL
Text GLabel 5900 4250 2    60   Input ~ 0
SDA
Text GLabel 5900 4150 2    60   Input ~ 0
SCL
Text GLabel 6000 3150 2    60   Input ~ 0
MOSI
Text GLabel 6000 3250 2    60   Input ~ 0
MISO
$Comp
L VCC #PWR016
U 1 1 570C0497
P 6100 1500
F 0 "#PWR016" H 6100 1350 50  0001 C CNN
F 1 "VCC" H 6100 1650 50  0000 C CNN
F 2 "" H 6100 1500 50  0000 C CNN
F 3 "" H 6100 1500 50  0000 C CNN
	1    6100 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 570C04D2
P 6300 1800
F 0 "#PWR017" H 6300 1550 50  0001 C CNN
F 1 "GND" H 6300 1650 50  0000 C CNN
F 2 "" H 6300 1800 50  0000 C CNN
F 3 "" H 6300 1800 50  0000 C CNN
	1    6300 1800
	1    0    0    -1  
$EndComp
Text GLabel 5450 1800 0    60   Input ~ 0
RESET
Text GLabel 6100 1700 2    60   Input ~ 0
MOSI
Text GLabel 3200 4450 3    60   Input ~ 0
RESET
$Comp
L GND #PWR018
U 1 1 570C097B
P 1550 3550
F 0 "#PWR018" H 1550 3300 50  0001 C CNN
F 1 "GND" H 1550 3400 50  0000 C CNN
F 2 "" H 1550 3550 50  0000 C CNN
F 3 "" H 1550 3550 50  0000 C CNN
	1    1550 3550
	1    0    0    -1  
$EndComp
Text GLabel 5450 1700 0    60   Input ~ 0
SCLK
$Comp
L CONN_01X14 P7
U 1 1 570D5BA0
P 3550 1550
F 0 "P7" H 3550 2300 50  0000 C CNN
F 1 "CONN_01X14" V 3650 1550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x14" H 3550 1550 50  0001 C CNN
F 3 "" H 3550 1550 50  0000 C CNN
	1    3550 1550
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR019
U 1 1 570D5FF9
P 3200 700
F 0 "#PWR019" H 3200 550 50  0001 C CNN
F 1 "VCC" H 3200 850 50  0000 C CNN
F 2 "" H 3200 700 50  0000 C CNN
F 3 "" H 3200 700 50  0000 C CNN
	1    3200 700 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 570D5FFF
P 2750 800
F 0 "#PWR020" H 2750 550 50  0001 C CNN
F 1 "GND" H 2750 650 50  0000 C CNN
F 2 "" H 2750 800 50  0000 C CNN
F 3 "" H 2750 800 50  0000 C CNN
	1    2750 800 
	1    0    0    -1  
$EndComp
Text GLabel 5950 5350 2    60   Input ~ 0
ADC0
Text GLabel 5950 5450 2    60   Input ~ 0
ADC1
Text GLabel 5950 5550 2    60   Input ~ 0
ADC4
Text GLabel 5950 5650 2    60   Input ~ 0
ADC5
Text GLabel 5950 5750 2    60   Input ~ 0
ADC6
Text GLabel 5950 5850 2    60   Input ~ 0
ADC7
Text GLabel 5900 4550 2    60   Input ~ 0
ADC8
Text GLabel 5900 4750 2    60   Input ~ 0
ADC9
Text GLabel 5900 4850 2    60   Input ~ 0
ADC10
Text GLabel 5950 3350 2    60   Input ~ 0
ADC11
Text GLabel 5950 3450 2    60   Input ~ 0
ADC12
Text GLabel 5950 3550 2    60   Input ~ 0
ADC13
Text GLabel 3200 1100 0    60   Input ~ 0
ADC0
Text GLabel 3200 1200 0    60   Input ~ 0
ADC1
Text GLabel 3200 1300 0    60   Input ~ 0
ADC4
Text GLabel 3200 1400 0    60   Input ~ 0
ADC5
Text GLabel 3200 1500 0    60   Input ~ 0
ADC6
Text GLabel 3200 1600 0    60   Input ~ 0
ADC7
Text GLabel 3200 2200 0    60   Input ~ 0
ADC8
Text GLabel 3200 2100 0    60   Input ~ 0
ADC9
Text GLabel 3200 2000 0    60   Input ~ 0
ADC10
Text GLabel 3200 1900 0    60   Input ~ 0
ADC11
Text GLabel 3200 1800 0    60   Input ~ 0
ADC12
Text GLabel 3200 1700 0    60   Input ~ 0
ADC13
Wire Wire Line
	6500 4500 6500 4650
Wire Wire Line
	2800 4750 2100 4750
Wire Wire Line
	2800 5050 3400 5050
Wire Wire Line
	2800 5050 2800 5150
Wire Wire Line
	2800 5150 2100 5150
Connection ~ 2450 4750
Connection ~ 2450 5150
Wire Wire Line
	1800 5150 1550 5150
Wire Wire Line
	1800 4750 1550 4750
Wire Wire Line
	1550 4750 1550 5150
Wire Wire Line
	2900 3700 2900 3900
Wire Wire Line
	5850 5050 6650 5050
Wire Wire Line
	6500 4950 6500 5050
Connection ~ 6500 5050
Wire Wire Line
	7250 5050 7300 5050
Wire Wire Line
	7300 5050 7300 5300
Wire Wire Line
	2750 4350 3400 4350
Wire Wire Line
	2900 4200 2900 4350
Connection ~ 2900 4350
Wire Wire Line
	2150 4350 2150 4450
Wire Wire Line
	2800 4950 3400 4950
Wire Wire Line
	2800 4950 2800 4750
Wire Wire Line
	3200 2600 3200 3650
Wire Wire Line
	3200 3650 3400 3650
Wire Wire Line
	3400 3450 3200 3450
Connection ~ 3200 3450
Wire Wire Line
	3400 3350 3200 3350
Connection ~ 3200 3350
Wire Wire Line
	3400 3250 3200 3250
Connection ~ 3200 3250
Wire Wire Line
	3400 3150 3200 3150
Connection ~ 3200 3150
Wire Wire Line
	3400 3050 3200 3050
Connection ~ 3200 3050
Wire Wire Line
	3400 2950 3200 2950
Connection ~ 3200 2950
Wire Wire Line
	3200 6000 3200 5550
Wire Wire Line
	3200 5550 3400 5550
Wire Wire Line
	3400 5650 3200 5650
Connection ~ 3200 5650
Wire Wire Line
	3400 5750 3200 5750
Connection ~ 3200 5750
Wire Wire Line
	3400 5850 3200 5850
Connection ~ 3200 5850
Wire Wire Line
	1300 2550 1450 2550
Wire Wire Line
	1450 2550 1450 2400
Wire Wire Line
	1450 2750 1450 2650
Wire Wire Line
	1450 2650 1300 2650
Wire Wire Line
	3400 3750 2150 3750
Wire Wire Line
	1850 3750 1300 3750
Wire Wire Line
	1850 3850 1300 3850
Wire Wire Line
	2150 3850 3400 3850
Wire Wire Line
	7850 2600 7850 2800
Wire Wire Line
	7850 2800 8000 2800
Wire Wire Line
	7400 2700 7750 2700
Wire Wire Line
	7750 2700 7750 2900
Wire Wire Line
	7750 2900 8000 2900
Wire Wire Line
	8000 4250 7650 4250
Wire Wire Line
	8000 4350 7650 4350
Wire Wire Line
	8000 4450 7650 4450
Wire Wire Line
	8000 4550 7650 4550
Wire Wire Line
	5850 3650 6050 3650
Wire Wire Line
	5900 4350 5850 4350
Wire Wire Line
	5900 4450 5850 4450
Wire Wire Line
	5900 4650 5850 4650
Wire Wire Line
	7850 3850 7850 4050
Wire Wire Line
	7850 4050 8000 4050
Wire Wire Line
	7400 3950 7750 3950
Wire Wire Line
	7750 3950 7750 4150
Wire Wire Line
	7750 4150 8000 4150
Wire Wire Line
	7850 3000 8000 3000
Wire Wire Line
	7850 3100 8000 3100
Wire Wire Line
	7850 3200 8000 3200
Wire Wire Line
	7850 3300 8000 3300
Wire Wire Line
	5850 2950 6000 2950
Wire Wire Line
	6000 3050 5850 3050
Wire Wire Line
	7800 1450 7800 1650
Wire Wire Line
	7800 1650 7950 1650
Wire Wire Line
	7350 1550 7700 1550
Wire Wire Line
	7700 1550 7700 1750
Wire Wire Line
	7700 1750 7950 1750
Wire Wire Line
	5900 4150 5850 4150
Wire Wire Line
	5900 4250 5850 4250
Wire Wire Line
	6000 3150 5850 3150
Wire Wire Line
	6000 3250 5850 3250
Wire Wire Line
	5500 1600 5450 1600
Wire Wire Line
	6000 1800 6300 1800
Wire Wire Line
	6000 1600 6100 1600
Wire Wire Line
	6100 1600 6100 1500
Wire Wire Line
	5500 1700 5450 1700
Wire Wire Line
	5500 1800 5450 1800
Wire Wire Line
	6100 1700 6000 1700
Wire Wire Line
	3200 4450 3200 4350
Connection ~ 3200 4350
Wire Wire Line
	1550 3550 1300 3550
Wire Wire Line
	7850 1850 7950 1850
Wire Wire Line
	7950 1950 7850 1950
Wire Wire Line
	3200 700  3200 900 
Wire Wire Line
	3200 900  3350 900 
Wire Wire Line
	2750 800  3100 800 
Wire Wire Line
	3100 800  3100 1000
Wire Wire Line
	3100 1000 3350 1000
Wire Wire Line
	5850 5350 5950 5350
Wire Wire Line
	5850 5450 5950 5450
Wire Wire Line
	5850 5550 5950 5550
Wire Wire Line
	5850 5650 5950 5650
Wire Wire Line
	5850 5750 5950 5750
Wire Wire Line
	5850 5850 5950 5850
Wire Wire Line
	5950 3350 5850 3350
Wire Wire Line
	5950 3450 5850 3450
Wire Wire Line
	5950 3550 5850 3550
Wire Wire Line
	5900 4550 5850 4550
Wire Wire Line
	5900 4750 5850 4750
Wire Wire Line
	5900 4850 5850 4850
Wire Wire Line
	3200 1600 3350 1600
Wire Wire Line
	3200 1500 3350 1500
Wire Wire Line
	3200 1400 3350 1400
Wire Wire Line
	3200 1300 3350 1300
Wire Wire Line
	3200 1200 3350 1200
Wire Wire Line
	3200 1100 3350 1100
Wire Wire Line
	3200 1700 3350 1700
Wire Wire Line
	3200 1800 3350 1800
Wire Wire Line
	3200 1900 3350 1900
Wire Wire Line
	3200 2000 3350 2000
Wire Wire Line
	3200 2100 3350 2100
Wire Wire Line
	3200 2200 3350 2200
Wire Wire Line
	2350 4950 1550 4950
Connection ~ 1550 4950
$EndSCHEMATC

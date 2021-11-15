EESchema Schematic File Version 2
LIBS:carte_7816-rescue
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
LIBS:carte_7816-cache
LIBS:smart_card_lib
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
Wire Wire Line
	5900 1600 7200 1600
$Comp
L GND #PWR01
U 1 1 58DFC5C9
P 3100 5850
F 0 "#PWR01" H 3100 5600 50  0001 C CNN
F 1 "GND" H 3100 5700 50  0000 C CNN
F 2 "" H 3100 5850 50  0000 C CNN
F 3 "" H 3100 5850 50  0000 C CNN
	1    3100 5850
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR02
U 1 1 58DFC883
P 3400 3850
F 0 "#PWR02" H 3400 3700 50  0001 C CNN
F 1 "+5V" H 3400 3990 50  0000 C CNN
F 2 "" H 3400 3850 50  0000 C CNN
F 3 "" H 3400 3850 50  0000 C CNN
	1    3400 3850
	0    -1   -1   0   
$EndComp
$Comp
L ATMEGA328P-A IC1
U 1 1 59E89640
P 4650 4700
F 0 "IC1" H 3900 5950 50  0000 L BNN
F 1 "ATMEGA328P-A" H 5050 3300 50  0000 L BNN
F 2 "Housings_QFP:TQFP-32_7x7mm_Pitch0.8mm" H 4650 4700 50  0001 C CIN
F 3 "" H 4650 4700 50  0000 C CNN
	1    4650 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 1700 6000 1700
Wire Wire Line
	6000 1700 6000 5050
Wire Wire Line
	3750 5700 3450 5700
Wire Wire Line
	3450 5700 3450 6100
Wire Wire Line
	3450 5900 3750 5900
Wire Wire Line
	3750 5800 3450 5800
Connection ~ 3450 5800
Wire Wire Line
	3450 6100 8800 6100
Wire Wire Line
	8800 6100 8800 1600
Connection ~ 3450 5900
Wire Wire Line
	8800 1600 7800 1600
Wire Wire Line
	3500 3700 3750 3700
Wire Wire Line
	3500 3300 3500 3900
Wire Wire Line
	3500 3600 3750 3600
Wire Wire Line
	3500 3300 5900 3300
Wire Wire Line
	5900 3300 5900 1600
Connection ~ 3500 3600
Wire Wire Line
	3500 3900 3750 3900
Connection ~ 3500 3700
Wire Wire Line
	6850 3900 5650 3900
Wire Wire Line
	5650 4200 6600 4200
Wire Wire Line
	6500 1800 7200 1800
Wire Wire Line
	5650 4000 8500 4000
Wire Wire Line
	8500 4000 8500 1800
Wire Wire Line
	8500 1800 7800 1800
Wire Wire Line
	5650 4100 8350 4100
Wire Wire Line
	8350 4100 8350 1900
Wire Wire Line
	8350 1900 7800 1900
Wire Wire Line
	3450 5850 3100 5850
Connection ~ 3450 5850
Wire Wire Line
	3500 3850 3400 3850
Connection ~ 3500 3850
NoConn ~ 5650 3600
NoConn ~ 5650 3700
NoConn ~ 5650 3800
NoConn ~ 5650 4300
NoConn ~ 5650 4450
NoConn ~ 5650 4550
NoConn ~ 5650 4650
NoConn ~ 5650 4750
NoConn ~ 5650 4850
NoConn ~ 5650 4950
Wire Wire Line
	6000 5050 5650 5050
NoConn ~ 5650 5200
NoConn ~ 5650 5300
NoConn ~ 5650 5400
NoConn ~ 5650 5500
NoConn ~ 5650 5600
NoConn ~ 5650 5700
NoConn ~ 5650 5800
NoConn ~ 5650 5900
NoConn ~ 3750 5050
NoConn ~ 3750 4950
NoConn ~ 3750 4200
Wire Wire Line
	6500 1800 6500 4150
Wire Wire Line
	6500 4150 6600 4150
Wire Wire Line
	6600 4150 6600 4200
Wire Wire Line
	7200 1900 6850 1900
Wire Wire Line
	6850 1900 6850 3900
$Comp
L SC_7816-RESCUE-carte_7816 SC1
U 1 1 5AF2CD00
P 7500 1950
F 0 "SC1" H 7500 1900 60  0000 C CNN
F 1 "SC_7816-RESCUE-carte_7816" H 7500 2400 60  0000 C CNN
F 2 "smart_card:card_connector_iso7816" H 7450 1950 60  0001 C CNN
F 3 "" H 7450 1950 60  0001 C CNN
	1    7500 1950
	1    0    0    -1  
$EndComp
$EndSCHEMATC

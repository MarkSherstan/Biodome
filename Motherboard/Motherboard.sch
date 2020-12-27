EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title ""
Date "2020-12-26"
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Analog_ADC:MCP3008 U?
U 1 1 5FE86B2D
P 6450 2750
F 0 "U?" H 6450 3431 50  0000 C CNN
F 1 "MCP3008" H 6450 3340 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 6550 2850 50  0001 C CNN
F 3 "" H 6550 2850 50  0001 C CNN
F 4 "Microchip Technology" H 6450 2750 50  0001 C CNN "Manufacturer"
F 5 "MCP3008T-I/SL" H 6450 2750 50  0001 C CNN "Manufacturer #"
F 6 "MCP3008T-I/SLCT-ND" H 6450 2750 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/microchip-technology/MCP3008T-I-SL/319424" H 6450 2750 50  0001 C CNN "Digi-Key Link"
	1    6450 2750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J?
U 1 1 5FE88B4B
P 2700 2900
F 0 "J?" H 2750 4017 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 2750 3926 50  0000 C CNN
F 2 "" H 2700 2900 50  0001 C CNN
F 3 "~" H 2700 2900 50  0001 C CNN
	1    2700 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FE8B3EB
P 3650 2200
F 0 "#PWR?" H 3650 1950 50  0001 C CNN
F 1 "GND" H 3655 2027 50  0000 C CNN
F 2 "" H 3650 2200 50  0001 C CNN
F 3 "" H 3650 2200 50  0001 C CNN
	1    3650 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FE8B962
P 2050 2000
F 0 "#PWR?" H 2050 1850 50  0001 C CNN
F 1 "+3.3V" H 2065 2173 50  0000 C CNN
F 2 "" H 2050 2000 50  0001 C CNN
F 3 "" H 2050 2000 50  0001 C CNN
	1    2050 2000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FE8C9DE
P 3450 2000
F 0 "#PWR?" H 3450 1850 50  0001 C CNN
F 1 "+5V" H 3465 2173 50  0000 C CNN
F 2 "" H 3450 2000 50  0001 C CNN
F 3 "" H 3450 2000 50  0001 C CNN
	1    3450 2000
	1    0    0    -1  
$EndComp
Text GLabel 2250 2100 0    50   Input ~ 0
GPIO2-SDA
Text GLabel 2250 2200 0    50   Input ~ 0
GPIO3-SCL
Wire Wire Line
	2050 2000 2500 2000
Wire Wire Line
	2250 2100 2500 2100
Wire Wire Line
	2250 2200 2500 2200
Wire Wire Line
	3000 2000 3450 2000
Wire Wire Line
	3000 2100 3450 2100
Wire Wire Line
	3450 2000 3450 2100
Connection ~ 3450 2000
Wire Wire Line
	3000 2200 3650 2200
$EndSCHEMATC

EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Capacitance Moisture Sensor"
Date "2020-12-27"
Rev "A"
Comp "Mark Sherstan"
Comment1 "All capacitors should be ceramic X7R"
Comment2 "Manufactured PCB should be sealed in epoxy"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R R?
U 1 1 5FE8F3C9
P 1550 2350
F 0 "R?" V 1757 2350 50  0000 C CNN
F 1 "R" V 1666 2350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1480 2350 50  0001 C CNN
F 3 "~" H 1550 2350 50  0001 C CNN
	1    1550 2350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5FE8F924
P 2250 2350
F 0 "D?" H 2243 2095 50  0000 C CNN
F 1 "LED" H 2243 2186 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2250 2350 50  0001 C CNN
F 3 "~" H 2250 2350 50  0001 C CNN
	1    2250 2350
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FE8FE6D
P 1000 2350
F 0 "#PWR?" H 1000 2200 50  0001 C CNN
F 1 "+3.3V" H 1015 2523 50  0000 C CNN
F 2 "" H 1000 2350 50  0001 C CNN
F 3 "" H 1000 2350 50  0001 C CNN
	1    1000 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FE903CE
P 2800 2350
F 0 "#PWR?" H 2800 2100 50  0001 C CNN
F 1 "GND" H 2805 2177 50  0000 C CNN
F 2 "" H 2800 2350 50  0001 C CNN
F 3 "" H 2800 2350 50  0001 C CNN
	1    2800 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 2350 1400 2350
Wire Wire Line
	1700 2350 2100 2350
Wire Wire Line
	2400 2350 2800 2350
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 5FE95D2E
P 1650 1250
F 0 "J?" H 1568 925 50  0000 C CNN
F 1 "Input" H 1568 1016 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 1650 1250 50  0001 C CNN
F 3 "~" H 1650 1250 50  0001 C CNN
	1    1650 1250
	-1   0    0    1   
$EndComp
Text GLabel 2000 1150 2    50   Input ~ 0
Sig
$Comp
L power:GND #PWR?
U 1 1 5FE9738F
P 2000 1350
F 0 "#PWR?" H 2000 1100 50  0001 C CNN
F 1 "GND" H 2005 1177 50  0000 C CNN
F 2 "" H 2000 1350 50  0001 C CNN
F 3 "" H 2000 1350 50  0001 C CNN
	1    2000 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FE97B90
P 2300 1250
F 0 "#PWR?" H 2300 1100 50  0001 C CNN
F 1 "+3.3V" H 2315 1423 50  0000 C CNN
F 2 "" H 2300 1250 50  0001 C CNN
F 3 "" H 2300 1250 50  0001 C CNN
	1    2300 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1150 2000 1150
Wire Wire Line
	1850 1250 2300 1250
Wire Wire Line
	1850 1350 2000 1350
$Comp
L Timer:NE555 U?
U 1 1 5FEA5580
P 4900 2650
F 0 "U?" H 4900 3231 50  0000 C CNN
F 1 "NE555" H 4900 3140 50  0000 C CNN
F 2 "Package_SO:SOIC-8-1EP_3.9x4.9mm_P1.27mm_EP2.41x3.81mm" H 4900 2650 50  0001 C CNN
F 3 "" H 4900 2650 50  0001 C CNN
F 4 "Texas Instruments" H 4900 2650 50  0001 C CNN "Manufacturer"
F 5 "NE555DR" H 4900 2650 50  0001 C CNN "Manufacturer #"
F 6 "296-6501-1-ND" H 4900 2650 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/texas-instruments/NE555DR/372491" H 4900 2650 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    4900 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FEA618B
P 7300 2650
F 0 "C?" H 7415 2696 50  0000 L CNN
F 1 "0.1 uF" H 7415 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7338 2500 50  0001 C CNN
F 3 "~" H 7300 2650 50  0001 C CNN
	1    7300 2650
	1    0    0    -1  
$EndComp
Text Notes 4250 3850 0    50   ~ 0
Need higher input votlage than 3.3
$Comp
L Amplifier_Operational:LMV358 U?
U 1 1 5FEA7DEB
P 7000 4600
F 0 "U?" H 7000 4967 50  0000 C CNN
F 1 "LMV358" H 7000 4876 50  0000 C CNN
F 2 "" H 7000 4600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lmv324.pdf" H 7000 4600 50  0001 C CNN
	1    7000 4600
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LMV358 U?
U 3 1 5FEAA329
P 8200 4600
F 0 "U?" H 8158 4646 50  0000 L CNN
F 1 "LMV358" H 8158 4555 50  0000 L CNN
F 2 "" H 8200 4600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lmv324.pdf" H 8200 4600 50  0001 C CNN
	3    8200 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FEC3053
P 7050 1900
F 0 "R?" V 7257 1900 50  0000 C CNN
F 1 "R" V 7166 1900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6980 1900 50  0001 C CNN
F 3 "~" H 7050 1900 50  0001 C CNN
	1    7050 1900
	0    -1   -1   0   
$EndComp
$EndSCHEMATC

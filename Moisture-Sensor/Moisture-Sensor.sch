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
P 1650 5000
F 0 "R?" V 1857 5000 50  0000 C CNN
F 1 "R" V 1766 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1580 5000 50  0001 C CNN
F 3 "~" H 1650 5000 50  0001 C CNN
	1    1650 5000
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5FE8F924
P 2350 5000
F 0 "D?" H 2343 4745 50  0000 C CNN
F 1 "LED" H 2343 4836 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2350 5000 50  0001 C CNN
F 3 "~" H 2350 5000 50  0001 C CNN
	1    2350 5000
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FE8FE6D
P 1100 5000
F 0 "#PWR?" H 1100 4850 50  0001 C CNN
F 1 "+3.3V" H 1115 5173 50  0000 C CNN
F 2 "" H 1100 5000 50  0001 C CNN
F 3 "" H 1100 5000 50  0001 C CNN
	1    1100 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FE903CE
P 2900 5000
F 0 "#PWR?" H 2900 4750 50  0001 C CNN
F 1 "GND" H 2905 4827 50  0000 C CNN
F 2 "" H 2900 5000 50  0001 C CNN
F 3 "" H 2900 5000 50  0001 C CNN
	1    2900 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 5000 1500 5000
Wire Wire Line
	1800 5000 2200 5000
Wire Wire Line
	2500 5000 2900 5000
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 5FE95D2E
P 8950 1600
F 0 "J?" H 8868 1275 50  0000 C CNN
F 1 "Input" H 8868 1366 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 8950 1600 50  0001 C CNN
F 3 "~" H 8950 1600 50  0001 C CNN
	1    8950 1600
	-1   0    0    1   
$EndComp
Text GLabel 9300 1500 2    50   Input ~ 0
Sig
$Comp
L power:GND #PWR?
U 1 1 5FE9738F
P 9300 1700
F 0 "#PWR?" H 9300 1450 50  0001 C CNN
F 1 "GND" H 9305 1527 50  0000 C CNN
F 2 "" H 9300 1700 50  0001 C CNN
F 3 "" H 9300 1700 50  0001 C CNN
	1    9300 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 1500 9300 1500
Wire Wire Line
	9150 1600 9600 1600
Wire Wire Line
	9150 1700 9300 1700
$Comp
L Device:C C?
U 1 1 5FEA618B
P 5800 1800
F 0 "C?" H 5685 1754 50  0000 R CNN
F 1 "0.1 uF" H 5685 1845 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5838 1650 50  0001 C CNN
F 3 "~" H 5800 1800 50  0001 C CNN
	1    5800 1800
	1    0    0    1   
$EndComp
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
P 7850 4600
F 0 "U?" H 7808 4646 50  0000 L CNN
F 1 "LMV358" H 7808 4555 50  0000 L CNN
F 2 "" H 7850 4600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lmv324.pdf" H 7850 4600 50  0001 C CNN
	3    7850 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FEC3053
P 2950 1800
F 0 "R?" V 3157 1800 50  0000 C CNN
F 1 "1.5 kohm" V 3066 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2880 1800 50  0001 C CNN
F 3 "~" H 2950 1800 50  0001 C CNN
	1    2950 1800
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FEC44E3
P 9600 1600
F 0 "#PWR?" H 9600 1450 50  0001 C CNN
F 1 "+5V" H 9615 1773 50  0000 C CNN
F 2 "" H 9600 1600 50  0001 C CNN
F 3 "" H 9600 1600 50  0001 C CNN
	1    9600 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FEC4EF3
P 4900 3250
F 0 "#PWR?" H 4900 3000 50  0001 C CNN
F 1 "GND" H 4905 3077 50  0000 C CNN
F 2 "" H 4900 3250 50  0001 C CNN
F 3 "" H 4900 3250 50  0001 C CNN
	1    4900 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FEC5D9C
P 3650 1800
F 0 "R?" V 3857 1800 50  0000 C CNN
F 1 "2.4 kohm" V 3766 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3580 1800 50  0001 C CNN
F 3 "~" H 3650 1800 50  0001 C CNN
	1    3650 1800
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 5FEC703F
P 4350 1800
F 0 "C?" V 4098 1800 50  0000 C CNN
F 1 "470 pF" V 4189 1800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4388 1650 50  0001 C CNN
F 3 "~" H 4350 1800 50  0001 C CNN
	1    4350 1800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FEC9917
P 5800 2000
F 0 "#PWR?" H 5800 1750 50  0001 C CNN
F 1 "GND" H 5805 1827 50  0000 C CNN
F 2 "" H 5800 2000 50  0001 C CNN
F 3 "" H 5800 2000 50  0001 C CNN
	1    5800 2000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4900 2050 4900 2250
$Comp
L power:+5V #PWR?
U 1 1 5FECC821
P 5200 1300
F 0 "#PWR?" H 5200 1150 50  0001 C CNN
F 1 "+5V" H 5215 1473 50  0000 C CNN
F 2 "" H 5200 1300 50  0001 C CNN
F 3 "" H 5200 1300 50  0001 C CNN
	1    5200 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FECD032
P 5700 3050
F 0 "C?" H 5585 3004 50  0000 R CNN
F 1 "10 nF" H 5585 3095 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5738 2900 50  0001 C CNN
F 3 "~" H 5700 3050 50  0001 C CNN
	1    5700 3050
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FECD49F
P 2400 1800
F 0 "#PWR?" H 2400 1650 50  0001 C CNN
F 1 "+5V" H 2415 1973 50  0000 C CNN
F 2 "" H 2400 1800 50  0001 C CNN
F 3 "" H 2400 1800 50  0001 C CNN
	1    2400 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1800 3300 1800
Wire Wire Line
	3800 1800 4000 1800
Wire Wire Line
	2400 1800 2800 1800
$Comp
L power:GND #PWR?
U 1 1 5FED3386
P 4650 2000
F 0 "#PWR?" H 4650 1750 50  0001 C CNN
F 1 "GND" H 4655 1827 50  0000 C CNN
F 2 "" H 4650 2000 50  0001 C CNN
F 3 "" H 4650 2000 50  0001 C CNN
	1    4650 2000
	1    0    0    -1  
$EndComp
$Comp
L Custom:LM555 U?
U 1 1 5FEE36BF
P 4900 2650
F 0 "U?" H 5250 3100 50  0000 C CNN
F 1 "LM555" H 5250 3000 50  0000 C CNN
F 2 "" H 5250 3100 50  0001 C CNN
F 3 "" H 5250 3100 50  0001 C CNN
	1    4900 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2450 5500 2050
Wire Wire Line
	5500 2050 5200 2050
$Comp
L Device:R R?
U 1 1 5FEE7461
P 6050 2650
F 0 "R?" V 6257 2650 50  0000 C CNN
F 1 "10 kohm" V 6166 2650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5980 2650 50  0001 C CNN
F 3 "~" H 6050 2650 50  0001 C CNN
	1    6050 2650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5500 2650 5900 2650
Wire Wire Line
	5500 2850 5700 2850
$Comp
L power:GND #PWR?
U 1 1 5FEE9AAC
P 5700 3250
F 0 "#PWR?" H 5700 3000 50  0001 C CNN
F 1 "GND" H 5705 3077 50  0000 C CNN
F 2 "" H 5700 3250 50  0001 C CNN
F 3 "" H 5700 3250 50  0001 C CNN
	1    5700 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2900 5700 2850
Wire Wire Line
	5700 3250 5700 3200
Wire Wire Line
	4900 3250 4900 3050
Wire Wire Line
	5800 1950 5800 2000
Wire Wire Line
	5200 1300 5200 1650
Connection ~ 5200 2050
Wire Wire Line
	5200 2050 4900 2050
Wire Wire Line
	5800 1650 5200 1650
Connection ~ 5200 1650
Wire Wire Line
	5200 1650 5200 2050
Wire Wire Line
	4500 1800 4650 1800
Wire Wire Line
	4650 2000 4650 1800
Wire Wire Line
	4300 2450 4000 2450
Wire Wire Line
	4000 2450 4000 1800
Connection ~ 4000 1800
Wire Wire Line
	4000 1800 4200 1800
Wire Wire Line
	4300 2650 4000 2650
Wire Wire Line
	4000 2650 4000 2450
Connection ~ 4000 2450
Wire Wire Line
	4300 2850 3300 2850
Wire Wire Line
	3300 2850 3300 1800
Connection ~ 3300 1800
Wire Wire Line
	3300 1800 3500 1800
$EndSCHEMATC

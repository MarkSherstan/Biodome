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
P 3200 2050
F 0 "R?" V 3407 2050 50  0000 C CNN
F 1 "R" V 3316 2050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3130 2050 50  0001 C CNN
F 3 "~" H 3200 2050 50  0001 C CNN
	1    3200 2050
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5FE8F924
P 3900 2050
F 0 "D?" H 3893 1795 50  0000 C CNN
F 1 "LED" H 3893 1886 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3900 2050 50  0001 C CNN
F 3 "~" H 3900 2050 50  0001 C CNN
	1    3900 2050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FE903CE
P 4450 2050
F 0 "#PWR?" H 4450 1800 50  0001 C CNN
F 1 "GND" H 4455 1877 50  0000 C CNN
F 2 "" H 4450 2050 50  0001 C CNN
F 3 "" H 4450 2050 50  0001 C CNN
	1    4450 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 2050 3050 2050
Wire Wire Line
	3350 2050 3750 2050
Wire Wire Line
	4050 2050 4450 2050
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 5FE95D2E
P 7150 2000
F 0 "J?" H 7068 1675 50  0000 C CNN
F 1 "Input" H 7068 1766 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 7150 2000 50  0001 C CNN
F 3 "~" H 7150 2000 50  0001 C CNN
	1    7150 2000
	-1   0    0    1   
$EndComp
Text GLabel 7500 1900 2    50   Input ~ 0
Sig
$Comp
L power:GND #PWR?
U 1 1 5FE9738F
P 7500 2100
F 0 "#PWR?" H 7500 1850 50  0001 C CNN
F 1 "GND" H 7505 1927 50  0000 C CNN
F 2 "" H 7500 2100 50  0001 C CNN
F 3 "" H 7500 2100 50  0001 C CNN
	1    7500 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 1900 7500 1900
Wire Wire Line
	7350 2000 7800 2000
Wire Wire Line
	7350 2100 7500 2100
$Comp
L Device:C C?
U 1 1 5FEA618B
P 4450 4100
F 0 "C?" H 4335 4054 50  0000 R CNN
F 1 "0.1 uF" H 4335 4145 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4488 3950 50  0001 C CNN
F 3 "~" H 4450 4100 50  0001 C CNN
	1    4450 4100
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5FEC3053
P 1600 4100
F 0 "R?" V 1807 4100 50  0000 C CNN
F 1 "1.5 kohm" V 1716 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1530 4100 50  0001 C CNN
F 3 "~" H 1600 4100 50  0001 C CNN
	1    1600 4100
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FEC44E3
P 7800 2000
F 0 "#PWR?" H 7800 1850 50  0001 C CNN
F 1 "+5V" H 7815 2173 50  0000 C CNN
F 2 "" H 7800 2000 50  0001 C CNN
F 3 "" H 7800 2000 50  0001 C CNN
	1    7800 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FEC4EF3
P 3550 5550
F 0 "#PWR?" H 3550 5300 50  0001 C CNN
F 1 "GND" H 3555 5377 50  0000 C CNN
F 2 "" H 3550 5550 50  0001 C CNN
F 3 "" H 3550 5550 50  0001 C CNN
	1    3550 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FEC5D9C
P 2300 4100
F 0 "R?" V 2507 4100 50  0000 C CNN
F 1 "2.4 kohm" V 2416 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2230 4100 50  0001 C CNN
F 3 "~" H 2300 4100 50  0001 C CNN
	1    2300 4100
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 5FEC703F
P 3000 4100
F 0 "C?" V 2748 4100 50  0000 C CNN
F 1 "470 pF" V 2839 4100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3038 3950 50  0001 C CNN
F 3 "~" H 3000 4100 50  0001 C CNN
	1    3000 4100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FEC9917
P 4450 4300
F 0 "#PWR?" H 4450 4050 50  0001 C CNN
F 1 "GND" H 4455 4127 50  0000 C CNN
F 2 "" H 4450 4300 50  0001 C CNN
F 3 "" H 4450 4300 50  0001 C CNN
	1    4450 4300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3550 4350 3550 4550
$Comp
L power:+5V #PWR?
U 1 1 5FECC821
P 3850 3600
F 0 "#PWR?" H 3850 3450 50  0001 C CNN
F 1 "+5V" H 3865 3773 50  0000 C CNN
F 2 "" H 3850 3600 50  0001 C CNN
F 3 "" H 3850 3600 50  0001 C CNN
	1    3850 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FECD032
P 4350 5350
F 0 "C?" H 4235 5304 50  0000 R CNN
F 1 "10 nF" H 4235 5395 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4388 5200 50  0001 C CNN
F 3 "~" H 4350 5350 50  0001 C CNN
	1    4350 5350
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FECD49F
P 1050 4100
F 0 "#PWR?" H 1050 3950 50  0001 C CNN
F 1 "+5V" H 1065 4273 50  0000 C CNN
F 2 "" H 1050 4100 50  0001 C CNN
F 3 "" H 1050 4100 50  0001 C CNN
	1    1050 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 4100 1950 4100
Wire Wire Line
	2450 4100 2650 4100
Wire Wire Line
	1050 4100 1450 4100
$Comp
L power:GND #PWR?
U 1 1 5FED3386
P 3300 4300
F 0 "#PWR?" H 3300 4050 50  0001 C CNN
F 1 "GND" H 3305 4127 50  0000 C CNN
F 2 "" H 3300 4300 50  0001 C CNN
F 3 "" H 3300 4300 50  0001 C CNN
	1    3300 4300
	1    0    0    -1  
$EndComp
$Comp
L Custom:LM555 U?
U 1 1 5FEE36BF
P 3550 4950
F 0 "U?" H 3900 5400 50  0000 C CNN
F 1 "LM555" H 3900 5300 50  0000 C CNN
F 2 "" H 3900 5400 50  0001 C CNN
F 3 "" H 3900 5400 50  0001 C CNN
	1    3550 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 4750 4150 4350
Wire Wire Line
	4150 4350 3850 4350
Wire Wire Line
	4150 5150 4350 5150
$Comp
L power:GND #PWR?
U 1 1 5FEE9AAC
P 4350 5550
F 0 "#PWR?" H 4350 5300 50  0001 C CNN
F 1 "GND" H 4355 5377 50  0000 C CNN
F 2 "" H 4350 5550 50  0001 C CNN
F 3 "" H 4350 5550 50  0001 C CNN
	1    4350 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 5200 4350 5150
Wire Wire Line
	4350 5550 4350 5500
Wire Wire Line
	3550 5550 3550 5350
Wire Wire Line
	4450 4250 4450 4300
Wire Wire Line
	3850 3600 3850 3950
Connection ~ 3850 4350
Wire Wire Line
	3850 4350 3550 4350
Wire Wire Line
	4450 3950 3850 3950
Connection ~ 3850 3950
Wire Wire Line
	3850 3950 3850 4350
Wire Wire Line
	3150 4100 3300 4100
Wire Wire Line
	3300 4300 3300 4100
Wire Wire Line
	2950 4750 2650 4750
Wire Wire Line
	2650 4750 2650 4100
Connection ~ 2650 4100
Wire Wire Line
	2650 4100 2850 4100
Wire Wire Line
	2950 4950 2650 4950
Wire Wire Line
	2650 4950 2650 4750
Connection ~ 2650 4750
Wire Wire Line
	2950 5150 1950 5150
Wire Wire Line
	1950 5150 1950 4100
Connection ~ 1950 4100
Wire Wire Line
	1950 4100 2150 4100
$Comp
L Custom:LMV358 U?
U 1 1 5FF1E438
P 7600 4800
F 0 "U?" H 7750 5100 50  0000 L CNN
F 1 "LMV358" H 7750 5000 50  0000 L CNN
F 2 "" H 7850 5100 50  0001 C CNN
F 3 "" H 7850 5100 50  0001 C CNN
	1    7600 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FF252AB
P 7600 5550
F 0 "#PWR?" H 7600 5300 50  0001 C CNN
F 1 "GND" H 7605 5377 50  0000 C CNN
F 2 "" H 7600 5550 50  0001 C CNN
F 3 "" H 7600 5550 50  0001 C CNN
	1    7600 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 5550 7600 5100
$Comp
L Device:R R?
U 1 1 5FF27F39
P 8750 4800
F 0 "R?" V 8957 4800 50  0000 C CNN
F 1 "100 ohm" V 8866 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8680 4800 50  0001 C CNN
F 3 "~" H 8750 4800 50  0001 C CNN
	1    8750 4800
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 5FF2915B
P 9300 5150
F 0 "C?" H 9185 5104 50  0000 R CNN
F 1 "4.7 uF" H 9185 5195 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9338 5000 50  0001 C CNN
F 3 "~" H 9300 5150 50  0001 C CNN
	1    9300 5150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FF29161
P 9300 5550
F 0 "#PWR?" H 9300 5300 50  0001 C CNN
F 1 "GND" H 9305 5377 50  0000 C CNN
F 2 "" H 9300 5550 50  0001 C CNN
F 3 "" H 9300 5550 50  0001 C CNN
	1    9300 5550
	1    0    0    -1  
$EndComp
Text GLabel 9700 4800 2    50   Input ~ 0
Sig
Wire Wire Line
	8100 4800 8450 4800
Wire Wire Line
	9300 5300 9300 5550
$Comp
L Device:C C?
U 1 1 5FF33D63
P 7900 4250
F 0 "C?" V 8152 4250 50  0000 C CNN
F 1 "0.1 uF" V 8061 4250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7938 4100 50  0001 C CNN
F 3 "~" H 7900 4250 50  0001 C CNN
	1    7900 4250
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FF33D69
P 8200 4300
F 0 "#PWR?" H 8200 4050 50  0001 C CNN
F 1 "GND" H 8205 4127 50  0000 C CNN
F 2 "" H 8200 4300 50  0001 C CNN
F 3 "" H 8200 4300 50  0001 C CNN
	1    8200 4300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8200 4250 8200 4300
$Comp
L power:+5V #PWR?
U 1 1 5FF34EB5
P 7600 4050
F 0 "#PWR?" H 7600 3900 50  0001 C CNN
F 1 "+5V" H 7615 4223 50  0000 C CNN
F 2 "" H 7600 4050 50  0001 C CNN
F 3 "" H 7600 4050 50  0001 C CNN
	1    7600 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 4500 7600 4250
Wire Wire Line
	7750 4250 7600 4250
Connection ~ 7600 4250
Wire Wire Line
	7600 4250 7600 4050
Wire Wire Line
	8200 4250 8050 4250
$Comp
L Device:R R?
U 1 1 5FF3B049
P 7600 3650
F 0 "R?" V 7807 3650 50  0000 C CNN
F 1 "0 ohm" V 7716 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7530 3650 50  0001 C CNN
F 3 "~" H 7600 3650 50  0001 C CNN
	1    7600 3650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5FF3C447
P 6700 3650
F 0 "R?" V 6907 3650 50  0000 C CNN
F 1 "DNP" V 6816 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6630 3650 50  0001 C CNN
F 3 "~" H 6700 3650 50  0001 C CNN
	1    6700 3650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8450 4800 8450 3650
Wire Wire Line
	8450 3650 7750 3650
Connection ~ 8450 4800
Wire Wire Line
	8450 4800 8600 4800
Wire Wire Line
	7450 3650 7150 3650
$Comp
L power:GND #PWR?
U 1 1 5FF4098E
P 6200 3650
F 0 "#PWR?" H 6200 3400 50  0001 C CNN
F 1 "GND" H 6205 3477 50  0000 C CNN
F 2 "" H 6200 3650 50  0001 C CNN
F 3 "" H 6200 3650 50  0001 C CNN
	1    6200 3650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6550 3650 6200 3650
Wire Wire Line
	7300 4650 7150 4650
Wire Wire Line
	7150 4650 7150 3650
Wire Wire Line
	7150 3650 6850 3650
Connection ~ 7150 3650
$Comp
L power:GND #PWR?
U 1 1 5FF47D20
P 6900 5550
F 0 "#PWR?" H 6900 5300 50  0001 C CNN
F 1 "GND" H 6905 5377 50  0000 C CNN
F 2 "" H 6900 5550 50  0001 C CNN
F 3 "" H 6900 5550 50  0001 C CNN
	1    6900 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 5550 6900 5500
$Comp
L Device:D D?
U 1 1 5FF48E2E
P 6350 4950
F 0 "D?" H 6350 4734 50  0000 C CNN
F 1 "D" H 6350 4825 50  0000 C CNN
F 2 "" H 6350 4950 50  0001 C CNN
F 3 "~" H 6350 4950 50  0001 C CNN
	1    6350 4950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5FF54656
P 6900 5350
F 0 "R?" H 6970 5396 50  0000 L CNN
F 1 "1 Mohm" H 6970 5305 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6830 5350 50  0001 C CNN
F 3 "~" H 6900 5350 50  0001 C CNN
	1    6900 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 4950 6900 4950
Wire Wire Line
	6900 5200 6900 4950
Connection ~ 6900 4950
Wire Wire Line
	6900 4950 7300 4950
Wire Wire Line
	8900 4800 9300 4800
Wire Wire Line
	9300 5000 9300 4800
Wire Wire Line
	9300 4800 9700 4800
Connection ~ 9300 4800
$Comp
L Device:R R?
U 1 1 5FEE7461
P 4700 4950
F 0 "R?" V 4907 4950 50  0000 C CNN
F 1 "10 kohm" V 4816 4950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4630 4950 50  0001 C CNN
F 3 "~" H 4700 4950 50  0001 C CNN
	1    4700 4950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4150 4950 4550 4950
Wire Wire Line
	5550 5200 6450 5200
Wire Wire Line
	6450 5200 6450 5250
Wire Wire Line
	6450 5250 5550 5250
Wire Wire Line
	5550 5250 5550 5300
Wire Wire Line
	5550 5300 6450 5300
Wire Wire Line
	6450 5300 6450 5350
Wire Wire Line
	6450 5350 5550 5350
Wire Wire Line
	5550 5350 5550 5400
Wire Wire Line
	5550 5400 6450 5400
Wire Wire Line
	6450 5400 6450 5450
Wire Wire Line
	6450 5450 5550 5450
Wire Wire Line
	5550 5450 5550 5500
Wire Wire Line
	5550 5500 6450 5500
Wire Wire Line
	6450 5500 6450 5550
Wire Wire Line
	6450 5550 5550 5550
Wire Wire Line
	5550 5550 5550 5600
Wire Wire Line
	5550 5600 6450 5600
Wire Wire Line
	6450 5600 6450 5650
Wire Wire Line
	6450 5650 5550 5650
Wire Wire Line
	5550 5650 5550 5700
Wire Wire Line
	5550 5700 6450 5700
Wire Wire Line
	6450 5700 6450 5750
Wire Wire Line
	6450 5750 5550 5750
Wire Wire Line
	5550 5750 5550 5800
Wire Wire Line
	5550 5800 6450 5800
Wire Wire Line
	6450 5800 6450 5850
Wire Wire Line
	6450 5850 5550 5850
Wire Wire Line
	5550 5850 5550 5900
Wire Wire Line
	5550 5900 6450 5900
Wire Wire Line
	6450 5900 6450 5950
Wire Wire Line
	6450 5950 5550 5950
Wire Wire Line
	5550 5950 5550 6000
Wire Wire Line
	5550 6000 6450 6000
Wire Wire Line
	4850 4950 5550 4950
Wire Wire Line
	5550 4950 5550 5200
Connection ~ 5550 4950
Wire Wire Line
	5550 4950 6200 4950
Text Notes 3150 1550 0    79   ~ 16
Indicator LED
$Comp
L power:+5V #PWR?
U 1 1 6000247E
P 2650 2050
F 0 "#PWR?" H 2650 1900 50  0001 C CNN
F 1 "+5V" H 2665 2223 50  0000 C CNN
F 2 "" H 2650 2050 50  0001 C CNN
F 3 "" H 2650 2050 50  0001 C CNN
	1    2650 2050
	1    0    0    -1  
$EndComp
Text Notes 7200 1500 0    79   ~ 16
Connector
Text Notes 3250 3200 0    79   ~ 16
555 Timer
Text Notes 7250 3200 0    79   ~ 16
Op Amp
$EndSCHEMATC

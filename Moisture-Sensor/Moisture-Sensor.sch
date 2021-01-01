EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Capacitance Moisture Sensor"
Date "2020-12-28"
Rev "A"
Comp "Mark Sherstan"
Comment1 "Capacitors should be ceramic 16V 10% X7R "
Comment2 "Resistors should be 1/10W 5%"
Comment3 "Manufactured PCB should be sealed in epoxy"
Comment4 ""
$EndDescr
$Comp
L Device:R R1
U 1 1 5FE8F3C9
P 1450 2000
F 0 "R1" V 1657 2000 50  0000 C CNN
F 1 "150 ohm" V 1566 2000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1380 2000 50  0001 C CNN
F 3 "~" H 1450 2000 50  0001 C CNN
	1    1450 2000
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D1
U 1 1 5FE8F924
P 2150 2000
F 0 "D1" H 2143 1745 50  0000 C CNN
F 1 "Green 2.2V 20mA" H 2143 1836 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2150 2000 50  0001 C CNN
F 3 "~" H 2150 2000 50  0001 C CNN
	1    2150 2000
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5FE903CE
P 2700 2000
F 0 "#PWR0101" H 2700 1750 50  0001 C CNN
F 1 "GND" H 2705 1827 50  0000 C CNN
F 2 "" H 2700 2000 50  0001 C CNN
F 3 "" H 2700 2000 50  0001 C CNN
	1    2700 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  2000 1300 2000
Wire Wire Line
	1600 2000 2000 2000
Wire Wire Line
	2300 2000 2700 2000
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 5FE95D2E
P 5350 1950
F 0 "J1" H 5268 1625 50  0000 C CNN
F 1 "Input" H 5268 1716 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5350 1950 50  0001 C CNN
F 3 "~" H 5350 1950 50  0001 C CNN
	1    5350 1950
	-1   0    0    1   
$EndComp
Text GLabel 5700 1850 2    50   Input ~ 0
Sig
$Comp
L power:GND #PWR0102
U 1 1 5FE9738F
P 5700 2050
F 0 "#PWR0102" H 5700 1800 50  0001 C CNN
F 1 "GND" H 5705 1877 50  0000 C CNN
F 2 "" H 5700 2050 50  0001 C CNN
F 3 "" H 5700 2050 50  0001 C CNN
	1    5700 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 1850 5700 1850
Wire Wire Line
	5550 1950 6000 1950
Wire Wire Line
	5550 2050 5700 2050
$Comp
L Device:C C2
U 1 1 5FEA618B
P 4450 4100
F 0 "C2" H 4335 4054 50  0000 R CNN
F 1 "0.1 uF" H 4335 4145 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4488 3950 50  0001 C CNN
F 3 "~" H 4450 4100 50  0001 C CNN
	1    4450 4100
	1    0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 5FEC3053
P 1600 4100
F 0 "R4" V 1807 4100 50  0000 C CNN
F 1 "1.5 kohm" V 1716 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1530 4100 50  0001 C CNN
F 3 "~" H 1600 4100 50  0001 C CNN
	1    1600 4100
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 5FEC44E3
P 6000 1950
F 0 "#PWR0103" H 6000 1800 50  0001 C CNN
F 1 "+5V" H 6015 2123 50  0000 C CNN
F 2 "" H 6000 1950 50  0001 C CNN
F 3 "" H 6000 1950 50  0001 C CNN
	1    6000 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5FEC4EF3
P 3550 5550
F 0 "#PWR0104" H 3550 5300 50  0001 C CNN
F 1 "GND" H 3555 5377 50  0000 C CNN
F 2 "" H 3550 5550 50  0001 C CNN
F 3 "" H 3550 5550 50  0001 C CNN
	1    3550 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5FEC5D9C
P 2300 4100
F 0 "R5" V 2507 4100 50  0000 C CNN
F 1 "2.4 kohm" V 2416 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2230 4100 50  0001 C CNN
F 3 "~" H 2300 4100 50  0001 C CNN
	1    2300 4100
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C1
U 1 1 5FEC703F
P 3000 4100
F 0 "C1" V 2748 4100 50  0000 C CNN
F 1 "470 pF" V 2839 4100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3038 3950 50  0001 C CNN
F 3 "~" H 3000 4100 50  0001 C CNN
	1    3000 4100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5FEC9917
P 4450 4300
F 0 "#PWR0105" H 4450 4050 50  0001 C CNN
F 1 "GND" H 4455 4127 50  0000 C CNN
F 2 "" H 4450 4300 50  0001 C CNN
F 3 "" H 4450 4300 50  0001 C CNN
	1    4450 4300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3550 4350 3550 4550
$Comp
L power:+5V #PWR0106
U 1 1 5FECC821
P 3850 3600
F 0 "#PWR0106" H 3850 3450 50  0001 C CNN
F 1 "+5V" H 3865 3773 50  0000 C CNN
F 2 "" H 3850 3600 50  0001 C CNN
F 3 "" H 3850 3600 50  0001 C CNN
	1    3850 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5FECD032
P 4350 5350
F 0 "C4" H 4235 5304 50  0000 R CNN
F 1 "10 nF" H 4235 5395 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4388 5200 50  0001 C CNN
F 3 "~" H 4350 5350 50  0001 C CNN
	1    4350 5350
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0107
U 1 1 5FECD49F
P 1050 4100
F 0 "#PWR0107" H 1050 3950 50  0001 C CNN
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
L power:GND #PWR0108
U 1 1 5FED3386
P 3300 4300
F 0 "#PWR0108" H 3300 4050 50  0001 C CNN
F 1 "GND" H 3305 4127 50  0000 C CNN
F 2 "" H 3300 4300 50  0001 C CNN
F 3 "" H 3300 4300 50  0001 C CNN
	1    3300 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 4750 4150 4350
Wire Wire Line
	4150 4350 3850 4350
Wire Wire Line
	4150 5150 4350 5150
$Comp
L power:GND #PWR0109
U 1 1 5FEE9AAC
P 4350 5550
F 0 "#PWR0109" H 4350 5300 50  0001 C CNN
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
L Custom:LMV358 U1
U 1 1 5FF1E438
P 7600 4800
F 0 "U1" H 7750 5100 50  0000 L CNN
F 1 "LMV358" H 7750 5000 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 7850 5100 50  0001 C CNN
F 3 "" H 7850 5100 50  0001 C CNN
F 4 "Texas Instruments" H 7600 4800 50  0001 C CNN "Manufacturer"
F 5 "LMV358ID" H 7600 4800 50  0001 C CNN "Manufacturer #"
F 6 "296-39049-5-ND" H 7600 4800 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/texas-instruments/LMV358ID/1510583" H 7600 4800 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    7600 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5FF252AB
P 7600 5550
F 0 "#PWR0110" H 7600 5300 50  0001 C CNN
F 1 "GND" H 7605 5377 50  0000 C CNN
F 2 "" H 7600 5550 50  0001 C CNN
F 3 "" H 7600 5550 50  0001 C CNN
	1    7600 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 5550 7600 5100
$Comp
L Device:R R6
U 1 1 5FF27F39
P 8900 4800
F 0 "R6" V 9107 4800 50  0000 C CNN
F 1 "100 ohm" V 9016 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8830 4800 50  0001 C CNN
F 3 "~" H 8900 4800 50  0001 C CNN
	1    8900 4800
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C5
U 1 1 5FF2915B
P 9350 5350
F 0 "C5" H 9235 5304 50  0000 R CNN
F 1 "4.7 uF" H 9235 5395 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9388 5200 50  0001 C CNN
F 3 "~" H 9350 5350 50  0001 C CNN
	1    9350 5350
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5FF29161
P 9350 5550
F 0 "#PWR0111" H 9350 5300 50  0001 C CNN
F 1 "GND" H 9355 5377 50  0000 C CNN
F 2 "" H 9350 5550 50  0001 C CNN
F 3 "" H 9350 5550 50  0001 C CNN
	1    9350 5550
	1    0    0    -1  
$EndComp
Text GLabel 9750 4800 2    50   Input ~ 0
Sig
Wire Wire Line
	8100 4800 8450 4800
$Comp
L Device:C C3
U 1 1 5FF33D63
P 7900 4250
F 0 "C3" V 8152 4250 50  0000 C CNN
F 1 "0.1 uF" V 8061 4250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7938 4100 50  0001 C CNN
F 3 "~" H 7900 4250 50  0001 C CNN
	1    7900 4250
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5FF33D69
P 8200 4300
F 0 "#PWR0112" H 8200 4050 50  0001 C CNN
F 1 "GND" H 8205 4127 50  0000 C CNN
F 2 "" H 8200 4300 50  0001 C CNN
F 3 "" H 8200 4300 50  0001 C CNN
	1    8200 4300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8200 4250 8200 4300
$Comp
L power:+5V #PWR0113
U 1 1 5FF34EB5
P 7600 4050
F 0 "#PWR0113" H 7600 3900 50  0001 C CNN
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
L Device:R R3
U 1 1 5FF3B049
P 7600 3650
F 0 "R3" V 7807 3650 50  0000 C CNN
F 1 "0 ohm" V 7716 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7530 3650 50  0001 C CNN
F 3 "~" H 7600 3650 50  0001 C CNN
	1    7600 3650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 5FF3C447
P 6700 3650
F 0 "R2" V 6907 3650 50  0000 C CNN
F 1 "DNP" V 6816 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6630 3650 50  0001 C CNN
F 3 "~" H 6700 3650 50  0001 C CNN
	1    6700 3650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8450 4800 8450 3650
Wire Wire Line
	7450 3650 7150 3650
$Comp
L power:GND #PWR0114
U 1 1 5FF4098E
P 6200 3650
F 0 "#PWR0114" H 6200 3400 50  0001 C CNN
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
L power:GND #PWR0115
U 1 1 5FF47D20
P 6900 5550
F 0 "#PWR0115" H 6900 5300 50  0001 C CNN
F 1 "GND" H 6905 5377 50  0000 C CNN
F 2 "" H 6900 5550 50  0001 C CNN
F 3 "" H 6900 5550 50  0001 C CNN
	1    6900 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 5550 6900 5500
$Comp
L Device:D D2
U 1 1 5FF48E2E
P 6350 4950
F 0 "D2" H 6350 4734 50  0000 C CNN
F 1 "4148" H 6350 4825 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 6350 4950 50  0001 C CNN
F 3 "~" H 6350 4950 50  0001 C CNN
F 4 "ON Semiconductor" H 6350 4950 50  0001 C CNN "Manufacturer"
F 5 "SMMSD4148T3G" H 6350 4950 50  0001 C CNN "Manufacturer #"
F 6 "SMMSD4148T3GOSCT-ND" H 6350 4950 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/on-semiconductor/SMMSD4148T3G/3062785" H 6350 4950 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    6350 4950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R8
U 1 1 5FF54656
P 6900 5350
F 0 "R8" H 6970 5396 50  0000 L CNN
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
	9350 4800 9750 4800
$Comp
L Device:R R7
U 1 1 5FEE7461
P 4700 4950
F 0 "R7" V 4907 4950 50  0000 C CNN
F 1 "10 kohm" V 4816 4950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4630 4950 50  0001 C CNN
F 3 "~" H 4700 4950 50  0001 C CNN
	1    4700 4950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4150 4950 4550 4950
Text Notes 1400 1500 0    79   ~ 16
Indicator LED
$Comp
L power:+5V #PWR0116
U 1 1 6000247E
P 900 2000
F 0 "#PWR0116" H 900 1850 50  0001 C CNN
F 1 "+5V" H 915 2173 50  0000 C CNN
F 2 "" H 900 2000 50  0001 C CNN
F 3 "" H 900 2000 50  0001 C CNN
	1    900  2000
	1    0    0    -1  
$EndComp
Text Notes 5400 1450 0    79   ~ 16
Connector
Text Notes 3250 3200 0    79   ~ 16
555 Timer
Text Notes 7250 3200 0    79   ~ 16
Op Amp
$Comp
L Custom:NE555 U2
U 1 1 60035764
P 3550 4950
F 0 "U2" H 3900 5400 50  0000 C CNN
F 1 "NE555" H 3900 5300 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3900 5400 50  0001 C CNN
F 3 "" H 3900 5400 50  0001 C CNN
F 4 "Texas Instruments" H 3550 4950 50  0001 C CNN "Manufacturer"
F 5 "NE555DR" H 3550 4950 50  0001 C CNN "Manufacturer #"
F 6 "296-6501-1-ND" H 3550 4950 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/texas-instruments/NE555DR/372491" H 3550 4950 50  0001 C CNN "Digi-Key LinkDigi LinkDigi-Key Link"
	1    3550 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 4800 9350 4800
Connection ~ 9350 4800
Wire Wire Line
	8750 4800 8450 4800
Connection ~ 8450 4800
Wire Wire Line
	9350 5550 9350 5500
Wire Wire Line
	9350 4800 9350 5200
Wire Wire Line
	8450 3650 7750 3650
Wire Wire Line
	4850 4950 6200 4950
Wire Notes Line
	5200 4700 5200 5200
Wire Notes Line
	5200 5200 5950 5200
Wire Notes Line
	5950 5200 5950 4700
Wire Notes Line
	5950 4700 5200 4700
Text Notes 5250 4650 0    50   ~ 0
Capacitor Trace
$Comp
L Mechanical:MountingHole H1
U 1 1 5FECF485
P 9050 1850
F 0 "H1" H 9150 1896 50  0000 L CNN
F 1 "M2" H 9150 1805 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_ISO14580_Pad" H 9050 1850 50  0001 C CNN
F 3 "~" H 9050 1850 50  0001 C CNN
	1    9050 1850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5FED2177
P 9500 1850
F 0 "H2" H 9600 1896 50  0000 L CNN
F 1 "M2" H 9600 1805 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_ISO14580_Pad" H 9500 1850 50  0001 C CNN
F 3 "~" H 9500 1850 50  0001 C CNN
	1    9500 1850
	1    0    0    -1  
$EndComp
Text Notes 8850 1450 0    79   ~ 16
Mounting Holes
$EndSCHEMATC

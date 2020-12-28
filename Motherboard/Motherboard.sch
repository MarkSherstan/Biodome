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
L Connector_Generic:Conn_02x20_Odd_Even J?
U 1 1 5FE88B4B
P 2300 2100
F 0 "J?" H 2350 3217 50  0000 C CNN
F 1 "RPi 3B+" H 2350 3126 50  0000 C CNN
F 2 "" H 2300 2100 50  0001 C CNN
F 3 "~" H 2300 2100 50  0001 C CNN
	1    2300 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FE8B962
P 1100 1200
F 0 "#PWR?" H 1100 1050 50  0001 C CNN
F 1 "+3.3V" H 1100 1350 50  0000 C CNN
F 2 "" H 1100 1200 50  0001 C CNN
F 3 "" H 1100 1200 50  0001 C CNN
	1    1100 1200
	1    0    0    -1  
$EndComp
Text GLabel 1850 1300 0    50   Input ~ 0
GPIO_2-SDA
Text GLabel 1850 1400 0    50   Input ~ 0
GPIO_3-SCL
Wire Wire Line
	1850 1300 2100 1300
Wire Wire Line
	1850 1400 2100 1400
Wire Wire Line
	2600 1300 3050 1300
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5FE93691
P 9250 1300
F 0 "J?" H 9168 875 50  0000 C CNN
F 1 "Power In" H 9168 966 50  0000 C CNN
F 2 "" H 9250 1300 50  0001 C CNN
F 3 "~" H 9250 1300 50  0001 C CNN
	1    9250 1300
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5FE9573B
P 9800 3500
F 0 "R?" V 10007 3500 50  0000 C CNN
F 1 "R" V 9916 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9730 3500 50  0001 C CNN
F 3 "~" H 9800 3500 50  0001 C CNN
	1    9800 3500
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 5FE9744A
P 8500 3850
F 0 "J?" H 8418 3525 50  0000 C CNN
F 1 "Moisture 0" H 8418 3616 50  0000 C CNN
F 2 "" H 8500 3850 50  0001 C CNN
F 3 "~" H 8500 3850 50  0001 C CNN
	1    8500 3850
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FE98B88
P 8950 3950
F 0 "#PWR?" H 8950 3700 50  0001 C CNN
F 1 "GND" H 8955 3777 50  0000 C CNN
F 2 "" H 8950 3950 50  0001 C CNN
F 3 "" H 8950 3950 50  0001 C CNN
	1    8950 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 3950 8950 3950
$Comp
L power:+5V #PWR?
U 1 1 5FE99F0F
P 9700 1000
F 0 "#PWR?" H 9700 850 50  0001 C CNN
F 1 "+5V" H 9715 1173 50  0000 C CNN
F 2 "" H 9700 1000 50  0001 C CNN
F 3 "" H 9700 1000 50  0001 C CNN
	1    9700 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 1100 9700 1100
Wire Wire Line
	9450 1200 9700 1200
Wire Wire Line
	9700 1200 9700 1100
$Comp
L power:GND #PWR?
U 1 1 5FE9C2E6
P 9700 1500
F 0 "#PWR?" H 9700 1250 50  0001 C CNN
F 1 "GND" H 9705 1327 50  0000 C CNN
F 2 "" H 9700 1500 50  0001 C CNN
F 3 "" H 9700 1500 50  0001 C CNN
	1    9700 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 1300 9700 1300
Wire Wire Line
	9700 1300 9700 1400
Wire Wire Line
	9450 1400 9700 1400
$Comp
L power:+5VA #PWR?
U 1 1 5FE9DE93
P 3050 1200
F 0 "#PWR?" H 3050 1050 50  0001 C CNN
F 1 "+5VA" H 3050 1350 50  0000 C CNN
F 2 "" H 3050 1200 50  0001 C CNN
F 3 "" H 3050 1200 50  0001 C CNN
	1    3050 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 1200 3050 1200
Wire Wire Line
	3050 1300 3050 1200
Connection ~ 3050 1200
Wire Wire Line
	9700 1100 9700 1000
Connection ~ 9700 1100
Wire Wire Line
	9700 1500 9700 1400
Connection ~ 9700 1400
$Comp
L power:+5V #PWR?
U 1 1 5FEA59B8
P 9200 3850
F 0 "#PWR?" H 9200 3700 50  0001 C CNN
F 1 "+5V" H 9215 4023 50  0000 C CNN
F 2 "" H 9200 3850 50  0001 C CNN
F 3 "" H 9200 3850 50  0001 C CNN
	1    9200 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 3850 9200 3850
Text GLabel 9500 3300 1    50   Input ~ 0
A0
$Comp
L Device:R R?
U 1 1 5FEAAE4D
P 9200 3500
F 0 "R?" V 9407 3500 50  0000 C CNN
F 1 "R" V 9316 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9130 3500 50  0001 C CNN
F 3 "~" H 9200 3500 50  0001 C CNN
	1    9200 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8700 3750 8900 3750
Wire Wire Line
	8900 3500 9050 3500
Wire Wire Line
	8900 3750 8900 3500
Wire Wire Line
	9350 3500 9500 3500
$Comp
L power:GND #PWR?
U 1 1 5FEACDB9
P 10100 3500
F 0 "#PWR?" H 10100 3250 50  0001 C CNN
F 1 "GND" H 10105 3327 50  0000 C CNN
F 2 "" H 10100 3500 50  0001 C CNN
F 3 "" H 10100 3500 50  0001 C CNN
	1    10100 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 3500 10100 3500
Wire Wire Line
	9500 3500 9500 3300
Connection ~ 9500 3500
Wire Wire Line
	9500 3500 9650 3500
$Comp
L power:GND #PWR?
U 1 1 5FEBFF94
P 1100 1600
F 0 "#PWR?" H 1100 1350 50  0001 C CNN
F 1 "GND" H 1100 1450 50  0000 C CNN
F 2 "" H 1100 1600 50  0001 C CNN
F 3 "" H 1100 1600 50  0001 C CNN
	1    1100 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FEC0BFF
P 1100 2400
F 0 "#PWR?" H 1100 2150 50  0001 C CNN
F 1 "GND" H 1100 2250 50  0000 C CNN
F 2 "" H 1100 2400 50  0001 C CNN
F 3 "" H 1100 2400 50  0001 C CNN
	1    1100 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FEC1408
P 1100 3100
F 0 "#PWR?" H 1100 2850 50  0001 C CNN
F 1 "GND" H 1100 2950 50  0000 C CNN
F 2 "" H 1100 3100 50  0001 C CNN
F 3 "" H 1100 3100 50  0001 C CNN
	1    1100 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FEC2992
P 3600 2800
F 0 "#PWR?" H 3600 2550 50  0001 C CNN
F 1 "GND" H 3600 2650 50  0000 C CNN
F 2 "" H 3600 2800 50  0001 C CNN
F 3 "" H 3600 2800 50  0001 C CNN
	1    3600 2800
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FEC3478
P 3600 2600
F 0 "#PWR?" H 3600 2350 50  0001 C CNN
F 1 "GND" H 3600 2450 50  0000 C CNN
F 2 "" H 3600 2600 50  0001 C CNN
F 3 "" H 3600 2600 50  0001 C CNN
	1    3600 2600
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FEC4DB8
P 3600 2100
F 0 "#PWR?" H 3600 1850 50  0001 C CNN
F 1 "GND" H 3600 1950 50  0000 C CNN
F 2 "" H 3600 2100 50  0001 C CNN
F 3 "" H 3600 2100 50  0001 C CNN
	1    3600 2100
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FEC57D7
P 3600 1800
F 0 "#PWR?" H 3600 1550 50  0001 C CNN
F 1 "GND" H 3600 1650 50  0000 C CNN
F 2 "" H 3600 1800 50  0001 C CNN
F 3 "" H 3600 1800 50  0001 C CNN
	1    3600 1800
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FEC601C
P 3600 1400
F 0 "#PWR?" H 3600 1150 50  0001 C CNN
F 1 "GND" H 3600 1250 50  0000 C CNN
F 2 "" H 3600 1400 50  0001 C CNN
F 3 "" H 3600 1400 50  0001 C CNN
	1    3600 1400
	-1   0    0    -1  
$EndComp
Text GLabel 1850 1500 0    50   Input ~ 0
GPIO_4-GPCLK0
Wire Wire Line
	1850 1500 2100 1500
Text GLabel 1850 1700 0    50   Input ~ 0
GPIO_17
Text GLabel 1850 1800 0    50   Input ~ 0
GPIO_27
Text GLabel 1850 1900 0    50   Input ~ 0
GPIO_22
$Comp
L power:+3.3V #PWR?
U 1 1 5FECA3C7
P 1100 2000
F 0 "#PWR?" H 1100 1850 50  0001 C CNN
F 1 "+3.3V" H 1100 2150 50  0000 C CNN
F 2 "" H 1100 2000 50  0001 C CNN
F 3 "" H 1100 2000 50  0001 C CNN
	1    1100 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1900 2100 1900
Wire Wire Line
	2100 1800 1850 1800
Wire Wire Line
	1850 1700 2100 1700
Text GLabel 1850 2100 0    50   Input ~ 0
GPIO_10-MOSI
Text GLabel 1850 2200 0    50   Input ~ 0
GPIO_9-MISO
Text GLabel 1850 2300 0    50   Input ~ 0
GPIO_11-SCLK
Wire Wire Line
	1850 2300 2100 2300
Wire Wire Line
	2100 2200 1850 2200
Wire Wire Line
	1850 2100 2100 2100
Text GLabel 1850 2500 0    50   Input ~ 0
GPIO_0
Text GLabel 1850 2600 0    50   Input ~ 0
GPIO_5
Text GLabel 1850 2700 0    50   Input ~ 0
GPIO_6
Text GLabel 1850 2800 0    50   Input ~ 0
GPIO_13-PWM1
Text GLabel 1850 2900 0    50   Input ~ 0
GPIO_19-PCMFS
Text GLabel 1850 3000 0    50   Input ~ 0
GPIO_26
Wire Wire Line
	1850 2500 2100 2500
Wire Wire Line
	2100 2600 1850 2600
Wire Wire Line
	1850 2700 2100 2700
Wire Wire Line
	2100 2800 1850 2800
Wire Wire Line
	1850 2900 2100 2900
Wire Wire Line
	2100 3000 1850 3000
Text GLabel 2850 1500 2    50   Input ~ 0
GPIO_14-TX
Wire Wire Line
	2600 1500 2850 1500
Text GLabel 2850 1600 2    50   Input ~ 0
GPIO_15-RX
Wire Wire Line
	2600 1600 2850 1600
Text GLabel 2850 1700 2    50   Input ~ 0
GPIO_18-CLK
Wire Wire Line
	2600 1700 2850 1700
Text GLabel 2850 1900 2    50   Input ~ 0
GPIO_23
Text GLabel 2850 2000 2    50   Input ~ 0
GPIO_24
Wire Wire Line
	2600 1900 2850 1900
Wire Wire Line
	2600 2000 2850 2000
Text GLabel 2850 2200 2    50   Input ~ 0
GPIO_25
Wire Wire Line
	2600 2200 2850 2200
Text GLabel 2850 2300 2    50   Input ~ 0
GPIO_8-CE0
Text GLabel 2850 2400 2    50   Input ~ 0
GPIO_7-CE1
Text GLabel 2850 2500 2    50   Input ~ 0
GPIO_1
Wire Wire Line
	2600 2500 2850 2500
Wire Wire Line
	2850 2400 2600 2400
Wire Wire Line
	2600 2300 2850 2300
Text GLabel 2850 2700 2    50   Input ~ 0
GPIO_12-PWM0
Wire Wire Line
	2600 2700 2850 2700
Wire Wire Line
	2600 1400 3600 1400
Wire Wire Line
	2600 1800 3600 1800
Wire Wire Line
	2600 2100 3600 2100
Wire Wire Line
	2600 2800 3600 2800
Wire Wire Line
	2600 2600 3600 2600
Wire Wire Line
	1100 1200 2100 1200
Wire Wire Line
	1100 1600 2100 1600
Wire Wire Line
	1100 2000 2100 2000
Wire Wire Line
	1100 2400 2100 2400
Wire Wire Line
	1100 3100 2100 3100
Text GLabel 2850 2900 2    50   Input ~ 0
GPIO_16
Text GLabel 2850 3000 2    50   Input ~ 0
GPIO_20
Text GLabel 2850 3100 2    50   Input ~ 0
GPIO_21
Wire Wire Line
	2600 2900 2850 2900
Wire Wire Line
	2850 3000 2600 3000
Wire Wire Line
	2850 3100 2600 3100
Wire Wire Line
	5800 2150 6000 2150
Text GLabel 5800 2150 0    50   Input ~ 0
GPIO_18-CLK
Wire Wire Line
	6550 2900 6400 2900
Connection ~ 6550 2900
Wire Wire Line
	6550 2950 6550 2900
Wire Wire Line
	6400 2850 6400 2900
Wire Wire Line
	6700 2850 6700 2900
Wire Wire Line
	6700 2900 6550 2900
$Comp
L power:GND #PWR?
U 1 1 5FF3C795
P 6550 2950
F 0 "#PWR?" H 6550 2700 50  0001 C CNN
F 1 "GND" H 6550 2800 50  0000 C CNN
F 2 "" H 6550 2950 50  0001 C CNN
F 3 "" H 6550 2950 50  0001 C CNN
	1    6550 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 1750 6700 1750
Wire Wire Line
	7100 1650 7100 1750
$Comp
L power:+3.3V #PWR?
U 1 1 5FF384BD
P 7100 1650
F 0 "#PWR?" H 7100 1500 50  0001 C CNN
F 1 "+3.3V" H 7100 1800 50  0000 C CNN
F 2 "" H 7100 1650 50  0001 C CNN
F 3 "" H 7100 1650 50  0001 C CNN
	1    7100 1650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6100 1750 6100 1650
Wire Wire Line
	6400 1750 6100 1750
$Comp
L power:+3.3V #PWR?
U 1 1 5FF2B7EF
P 6100 1650
F 0 "#PWR?" H 6100 1500 50  0001 C CNN
F 1 "+3.3V" H 6100 1800 50  0000 C CNN
F 2 "" H 6100 1650 50  0001 C CNN
F 3 "" H 6100 1650 50  0001 C CNN
	1    6100 1650
	-1   0    0    -1  
$EndComp
$Comp
L Analog_ADC:MCP3008 U?
U 1 1 5FE86B2D
P 6600 2250
F 0 "U?" H 6600 2931 50  0000 C CNN
F 1 "MCP3008" H 6600 2840 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 6700 2350 50  0001 C CNN
F 3 "" H 6700 2350 50  0001 C CNN
F 4 "Microchip Technology" H 6600 2250 50  0001 C CNN "Manufacturer"
F 5 "MCP3008T-I/SL" H 6600 2250 50  0001 C CNN "Manufacturer #"
F 6 "MCP3008T-I/SLCT-ND" H 6600 2250 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/microchip-technology/MCP3008T-I-SL/319424" H 6600 2250 50  0001 C CNN "Digi-Key Link"
	1    6600 2250
	-1   0    0    -1  
$EndComp
Text GLabel 5800 2350 0    50   Input ~ 0
GPIO_10-MOSI
Text GLabel 5800 2250 0    50   Input ~ 0
GPIO_9-MISO
Wire Wire Line
	5800 2250 6000 2250
Wire Wire Line
	6000 2350 5800 2350
Text GLabel 5800 2450 0    50   Input ~ 0
GPIO_8-CE0
Wire Wire Line
	6000 2450 5800 2450
Text GLabel 7400 1950 2    50   Input ~ 0
A0
Wire Wire Line
	7200 1950 7400 1950
$Comp
L Device:C C?
U 1 1 5FFA78D4
P 2600 5800
F 0 "C?" V 2852 5800 50  0000 C CNN
F 1 "0.1 uF" V 2761 5800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2638 5650 50  0001 C CNN
F 3 "~" H 2600 5800 50  0001 C CNN
	1    2600 5800
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 5FFB0318
P 1600 5800
F 0 "C?" V 1348 5800 50  0000 C CNN
F 1 "0.1 uF" V 1439 5800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1638 5650 50  0001 C CNN
F 3 "~" H 1600 5800 50  0001 C CNN
	1    1600 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 6000 2000 5800
Wire Wire Line
	2000 5800 1750 5800
Wire Wire Line
	2000 5600 2000 5800
Connection ~ 2000 5800
Wire Wire Line
	2200 6000 2200 5800
Wire Wire Line
	2200 5800 2450 5800
Wire Wire Line
	2200 5600 2200 5800
Connection ~ 2200 5800
$Comp
L power:+3.3V #PWR?
U 1 1 5FFB27B1
P 2100 5500
F 0 "#PWR?" H 2100 5350 50  0001 C CNN
F 1 "+3.3V" H 2100 5650 50  0000 C CNN
F 2 "" H 2100 5500 50  0001 C CNN
F 3 "" H 2100 5500 50  0001 C CNN
	1    2100 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 5600 2100 5600
Wire Wire Line
	2100 5500 2100 5600
Connection ~ 2100 5600
Wire Wire Line
	2100 5600 2200 5600
$Comp
L power:GND #PWR?
U 1 1 5FFE3AF7
P 1200 5800
F 0 "#PWR?" H 1200 5550 50  0001 C CNN
F 1 "GND" H 1200 5650 50  0000 C CNN
F 2 "" H 1200 5800 50  0001 C CNN
F 3 "" H 1200 5800 50  0001 C CNN
	1    1200 5800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1450 5800 1200 5800
$Comp
L Sensor:BME280 U?
U 1 1 5FE914F1
P 2100 6600
F 0 "U?" H 1671 6646 50  0000 R CNN
F 1 "BME280" H 1671 6555 50  0000 R CNN
F 2 "Package_LGA:Bosch_LGA-8_2.5x2.5mm_P0.65mm_ClockwisePinNumbering" H 3600 6150 50  0001 C CNN
F 3 "" H 2100 6400 50  0001 C CNN
F 4 "Bosch Sensortec" H 2100 6600 50  0001 C CNN "Manufacturer"
F 5 "BME280" H 2100 6600 50  0001 C CNN "Manufacturer #"
F 6 "828-1063-1-ND" H 2100 6600 50  0001 C CNN "Digi-Key #"
F 7 "https://www.digikey.ca/en/products/detail/bosch-sensortec/BME280/6136306" H 2100 6600 50  0001 C CNN "Digi-Key Link"
	1    2100 6600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FFEE84E
P 3000 5800
F 0 "#PWR?" H 3000 5550 50  0001 C CNN
F 1 "GND" H 3000 5650 50  0000 C CNN
F 2 "" H 3000 5800 50  0001 C CNN
F 3 "" H 3000 5800 50  0001 C CNN
	1    3000 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 5800 3000 5800
$Comp
L power:GND #PWR?
U 1 1 5FFF1BF6
P 2000 7200
F 0 "#PWR?" H 2000 6950 50  0001 C CNN
F 1 "GND" H 2000 7050 50  0000 C CNN
F 2 "" H 2000 7200 50  0001 C CNN
F 3 "" H 2000 7200 50  0001 C CNN
	1    2000 7200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FFF458E
P 2200 7200
F 0 "#PWR?" H 2200 6950 50  0001 C CNN
F 1 "GND" H 2200 7050 50  0000 C CNN
F 2 "" H 2200 7200 50  0001 C CNN
F 3 "" H 2200 7200 50  0001 C CNN
	1    2200 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FFF80A6
P 3450 6200
F 0 "R?" H 3380 6154 50  0000 R CNN
F 1 "4.7 kohm" H 3380 6245 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3380 6200 50  0001 C CNN
F 3 "~" H 3450 6200 50  0001 C CNN
	1    3450 6200
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FFFB399
P 3050 6900
F 0 "#PWR?" H 3050 6750 50  0001 C CNN
F 1 "+3.3V" H 3050 7050 50  0000 C CNN
F 2 "" H 3050 6900 50  0001 C CNN
F 3 "" H 3050 6900 50  0001 C CNN
	1    3050 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 6900 3050 6900
$Comp
L power:GND #PWR?
U 1 1 60000BEB
P 3050 6300
F 0 "#PWR?" H 3050 6050 50  0001 C CNN
F 1 "GND" H 3050 6150 50  0000 C CNN
F 2 "" H 3050 6300 50  0001 C CNN
F 3 "" H 3050 6300 50  0001 C CNN
	1    3050 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 6300 3050 6300
Text GLabel 4450 6700 2    50   Input ~ 0
GPIO_2-SDA
Text GLabel 4450 6500 2    50   Input ~ 0
GPIO_3-SCL
$Comp
L Device:R R?
U 1 1 60012929
P 4100 6200
F 0 "R?" H 4030 6154 50  0000 R CNN
F 1 "4.7 kohm" H 4030 6245 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4030 6200 50  0001 C CNN
F 3 "~" H 4100 6200 50  0001 C CNN
	1    4100 6200
	-1   0    0    1   
$EndComp
Wire Wire Line
	2700 6500 4100 6500
Wire Wire Line
	2700 6700 3450 6700
Wire Wire Line
	3450 6700 3450 6350
Connection ~ 3450 6700
Wire Wire Line
	3450 6700 4450 6700
Wire Wire Line
	4100 6350 4100 6500
Connection ~ 4100 6500
Wire Wire Line
	4100 6500 4450 6500
$Comp
L power:+3.3V #PWR?
U 1 1 600312BC
P 3450 5800
F 0 "#PWR?" H 3450 5650 50  0001 C CNN
F 1 "+3.3V" H 3450 5950 50  0000 C CNN
F 2 "" H 3450 5800 50  0001 C CNN
F 3 "" H 3450 5800 50  0001 C CNN
	1    3450 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 5800 3450 6050
$Comp
L power:+3.3V #PWR?
U 1 1 60037B05
P 4100 5800
F 0 "#PWR?" H 4100 5650 50  0001 C CNN
F 1 "+3.3V" H 4100 5950 50  0000 C CNN
F 2 "" H 4100 5800 50  0001 C CNN
F 3 "" H 4100 5800 50  0001 C CNN
	1    4100 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 5800 4100 6050
$Comp
L Device:LED D?
U 1 1 60046450
P 2600 4050
F 0 "D?" H 2593 3795 50  0000 C CNN
F 1 "LED" H 2593 3886 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2600 4050 50  0001 C CNN
F 3 "~" H 2600 4050 50  0001 C CNN
	1    2600 4050
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 60046FFA
P 2100 4050
F 0 "R?" V 2307 4050 50  0000 C CNN
F 1 "R" V 2216 4050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2030 4050 50  0001 C CNN
F 3 "~" H 2100 4050 50  0001 C CNN
	1    2100 4050
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 60059C89
P 1600 4050
F 0 "#PWR?" H 1600 3900 50  0001 C CNN
F 1 "+5V" H 1615 4223 50  0000 C CNN
F 2 "" H 1600 4050 50  0001 C CNN
F 3 "" H 1600 4050 50  0001 C CNN
	1    1600 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 4050 1950 4050
Wire Wire Line
	2250 4050 2450 4050
$Comp
L power:GND #PWR?
U 1 1 60079B09
P 3100 4050
F 0 "#PWR?" H 3100 3800 50  0001 C CNN
F 1 "GND" H 3100 3900 50  0000 C CNN
F 2 "" H 3100 4050 50  0001 C CNN
F 3 "" H 3100 4050 50  0001 C CNN
	1    3100 4050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2750 4050 3100 4050
$Comp
L Device:LED D?
U 1 1 600887C8
P 2600 4550
F 0 "D?" H 2593 4295 50  0000 C CNN
F 1 "LED" H 2593 4386 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2600 4550 50  0001 C CNN
F 3 "~" H 2600 4550 50  0001 C CNN
	1    2600 4550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 600887CE
P 2100 4550
F 0 "R?" V 2307 4550 50  0000 C CNN
F 1 "R" V 2216 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2030 4550 50  0001 C CNN
F 3 "~" H 2100 4550 50  0001 C CNN
	1    2100 4550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1600 4550 1950 4550
Wire Wire Line
	2250 4550 2450 4550
$Comp
L power:GND #PWR?
U 1 1 600887DC
P 3100 4550
F 0 "#PWR?" H 3100 4300 50  0001 C CNN
F 1 "GND" H 3100 4400 50  0000 C CNN
F 2 "" H 3100 4550 50  0001 C CNN
F 3 "" H 3100 4550 50  0001 C CNN
	1    3100 4550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2750 4550 3100 4550
Text GLabel 1600 4550 0    50   Input ~ 0
GPIO_21
$EndSCHEMATC

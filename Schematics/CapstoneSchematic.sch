EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
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
L CapstoneSchematic:LinearActuator U1
U 1 1 5DBB3DF9
P 2450 7050
F 0 "U1" V 2696 7078 50  0000 L CNN
F 1 "LinearActuator" V 2787 7078 50  0000 L CNN
F 2 "" H 2800 6800 50  0001 C CNN
F 3 "" H 2800 6800 50  0001 C CNN
	1    2450 7050
	-1   0    0    1   
$EndComp
Wire Wire Line
	3400 5250 3300 5250
Wire Wire Line
	3300 5250 3300 5600
Wire Wire Line
	3300 5600 3400 5600
$Comp
L power:+12V #PWR0101
U 1 1 5DBC046C
P 3300 5250
F 0 "#PWR0101" H 3300 5100 50  0001 C CNN
F 1 "+12V" H 3315 5423 50  0000 C CNN
F 2 "" H 3300 5250 50  0001 C CNN
F 3 "" H 3300 5250 50  0001 C CNN
	1    3300 5250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3200 5450 3200 5800
Wire Wire Line
	3200 5800 3400 5800
Wire Wire Line
	3200 5450 3400 5450
Wire Wire Line
	7550 1750 7550 1700
Wire Wire Line
	6350 1750 7550 1750
Wire Wire Line
	7550 1450 7550 1550
Wire Wire Line
	6350 1450 7550 1450
$Comp
L Device:Battery_Cell BT1
U 1 1 5DBC9C63
P 6350 1650
F 0 "BT1" H 6468 1746 50  0000 L CNN
F 1 "Battery_Cell" H 6468 1655 50  0000 L CNN
F 2 "" V 6350 1710 50  0001 C CNN
F 3 "~" V 6350 1710 50  0001 C CNN
	1    6350 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 1400 7550 1400
Wire Wire Line
	6750 800  6750 1400
Wire Wire Line
	7550 800  7550 1250
Wire Wire Line
	7050 800  7550 800 
$Comp
L Device:Solar_Cell SC1
U 1 1 5DBB4ADF
P 6850 800
F 0 "SC1" H 6958 896 50  0000 L CNN
F 1 "Solar_Cell" H 6958 805 50  0000 L CNN
F 2 "" V 6850 860 50  0001 C CNN
F 3 "~" V 6850 860 50  0001 C CNN
	1    6850 800 
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR0102
U 1 1 5DBE4411
P 7300 1850
F 0 "#PWR0102" H 7300 1700 50  0001 C CNN
F 1 "+12V" V 7315 1978 50  0000 L CNN
F 2 "" H 7300 1850 50  0001 C CNN
F 3 "" H 7300 1850 50  0001 C CNN
	1    7300 1850
	0    -1   -1   0   
$EndComp
$Comp
L CapstoneSchematic:SnapActionSwitch SAS1
U 1 1 5DBEA292
P 3500 6200
F 0 "SAS1" H 4125 6375 50  0000 C CNN
F 1 "SnapActionSwitch" H 4125 6284 50  0000 C CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type094_RT03503HBLU_1x03_P5.00mm_Horizontal" H 3450 6100 50  0001 C CNN
F 3 "" H 3450 6100 50  0001 C CNN
	1    3500 6200
	1    0    0    -1  
$EndComp
$Comp
L CapstoneSchematic:SnapActionSwitch SAS2
U 1 1 5DBEAB00
P 3400 7000
F 0 "SAS2" H 4025 7175 50  0000 C CNN
F 1 "SnapActionSwitch" H 4025 7084 50  0000 C CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type094_RT03502HBLU_1x02_P5.00mm_Horizontal" H 3350 6900 50  0001 C CNN
F 3 "" H 3350 6900 50  0001 C CNN
	1    3400 7000
	1    0    0    -1  
$EndComp
$Comp
L CapstoneSchematic:2RelayModule RM1
U 1 1 5DBB54F2
P 4450 5900
F 0 "RM1" H 4925 5035 50  0000 C CNN
F 1 "2RelayModule" H 4925 5126 50  0000 C CNN
F 2 "Capstone_PCB_Lib:2 Channels Relay" H 4906 5598 50  0001 C CNN
F 3 "" H 4906 5598 50  0001 C CNN
	1    4450 5900
	-1   0    0    1   
$EndComp
Wire Wire Line
	3400 5350 2850 5350
Wire Wire Line
	2850 5350 2850 6500
Wire Wire Line
	3100 6550 3100 5700
Wire Wire Line
	3100 5700 3400 5700
$Comp
L power:+5V #PWR0104
U 1 1 5DC0E8B4
P 3500 6400
F 0 "#PWR0104" H 3500 6250 50  0001 C CNN
F 1 "+5V" V 3515 6528 50  0000 L CNN
F 2 "" H 3500 6400 50  0001 C CNN
F 3 "" H 3500 6400 50  0001 C CNN
	1    3500 6400
	0    -1   -1   0   
$EndComp
$Comp
L Sensor_Temperature:MCP9700AT-ELT T1
U 1 1 5DC27357
P 7200 2550
F 0 "T1" H 6870 2596 50  0000 R CNN
F 1 "Temp Sensor" H 6870 2505 50  0001 R CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type094_RT03503HBLU_1x03_P5.00mm_Horizontal" H 7200 2150 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001942G.pdf" H 7200 2550 50  0001 C CNN
	1    7200 2550
	0    1    1    0   
$EndComp
$Comp
L MCU_Module:Arduino_UNO_R3 A1
U 1 1 5DBB2CDA
P 6950 4300
F 0 "A1" V 6996 3156 50  0000 R CNN
F 1 "Arduino_UNO_R3" V 6905 3156 50  0000 R CNN
F 2 "Module:Arduino_UNO_R3" H 7100 3250 50  0001 L CNN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 6750 5350 50  0001 C CNN
	1    6950 4300
	0    -1   -1   0   
$EndComp
$Comp
L CapstoneSchematic:LoRa ULoRa1
U 1 1 5DC1AD46
P 6150 6050
F 0 "ULoRa1" H 7528 5996 50  0000 L CNN
F 1 "LoRa" H 7528 5905 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Horizontal" H 6700 5850 50  0001 C CNN
F 3 "" H 6700 5850 50  0001 C CNN
	1    6150 6050
	0    -1   1    0   
$EndComp
Wire Wire Line
	6350 4800 6350 5950
Wire Wire Line
	6450 4800 6450 5950
$Comp
L power:+5V #PWR0105
U 1 1 5DC1040D
P 6150 5950
F 0 "#PWR0105" H 6150 5800 50  0001 C CNN
F 1 "+5V" H 6165 6123 50  0000 C CNN
F 2 "" H 6150 5950 50  0001 C CNN
F 3 "" H 6150 5950 50  0001 C CNN
	1    6150 5950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5DC11130
P 6650 5950
F 0 "#PWR0106" H 6650 5700 50  0001 C CNN
F 1 "GND" H 6655 5777 50  0000 C CNN
F 2 "" H 6650 5950 50  0001 C CNN
F 3 "" H 6650 5950 50  0001 C CNN
	1    6650 5950
	-1   0    0    1   
$EndComp
Wire Wire Line
	6550 4800 6550 5650
Wire Wire Line
	6250 5950 6250 4900
$Comp
L power:GND #PWR0107
U 1 1 5DC16D22
P 4550 5300
F 0 "#PWR0107" H 4550 5050 50  0001 C CNN
F 1 "GND" V 4555 5172 50  0000 R CNN
F 2 "" H 4550 5300 50  0001 C CNN
F 3 "" H 4550 5300 50  0001 C CNN
	1    4550 5300
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0108
U 1 1 5DC1AA6C
P 4550 5600
F 0 "#PWR0108" H 4550 5450 50  0001 C CNN
F 1 "+5V" V 4565 5728 50  0000 L CNN
F 2 "" H 4550 5600 50  0001 C CNN
F 3 "" H 4550 5600 50  0001 C CNN
	1    4550 5600
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0109
U 1 1 5DC1B373
P 5950 4100
F 0 "#PWR0109" H 5950 3950 50  0001 C CNN
F 1 "+5V" V 5965 4228 50  0000 L CNN
F 2 "" H 5950 4100 50  0001 C CNN
F 3 "" H 5950 4100 50  0001 C CNN
	1    5950 4100
	0    -1   -1   0   
$EndComp
Connection ~ 3300 5250
$Comp
L CapstoneSchematic:ArduinoRGBShield J1
U 1 1 5DC4EC30
P 7650 3050
F 0 "J1" V 7712 3194 50  0000 L CNN
F 1 "ArduinoRGBShield" V 7803 3194 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 7650 3050 50  0001 C CNN
F 3 "~" H 7650 3050 50  0001 C CNN
	1    7650 3050
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0110
U 1 1 5DC52169
P 7750 3450
F 0 "#PWR0110" H 7750 3300 50  0001 C CNN
F 1 "+5V" H 7765 3623 50  0000 C CNN
F 2 "" H 7750 3450 50  0001 C CNN
F 3 "" H 7750 3450 50  0001 C CNN
	1    7750 3450
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5DC5291A
P 7650 3250
F 0 "#PWR0111" H 7650 3000 50  0001 C CNN
F 1 "GND" H 7655 3077 50  0000 C CNN
F 2 "" H 7650 3250 50  0001 C CNN
F 3 "" H 7650 3250 50  0001 C CNN
	1    7650 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3250 7750 3450
Wire Wire Line
	5500 3600 5500 4400
$Comp
L power:GND #PWR0112
U 1 1 5DC66997
P 8050 4200
F 0 "#PWR0112" H 8050 3950 50  0001 C CNN
F 1 "GND" V 8055 4072 50  0000 R CNN
F 2 "" H 8050 4200 50  0001 C CNN
F 3 "" H 8050 4200 50  0001 C CNN
	1    8050 4200
	0    -1   -1   0   
$EndComp
$Comp
L CapstoneSchematic:CMP12 U7
U 1 1 5DC684DB
P 8400 1150
F 0 "U7" V 8829 1178 50  0000 L CNN
F 1 "CMP12-CapstoneLib" V 8920 1178 50  0000 L CNN
F 2 "" H 8700 950 50  0001 C CNN
F 3 "" H 8700 950 50  0001 C CNN
	1    8400 1150
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0113
U 1 1 5DC71C84
P 5950 4200
F 0 "#PWR0113" H 5950 4050 50  0001 C CNN
F 1 "+3.3V" V 5965 4328 50  0000 L CNN
F 2 "" H 5950 4200 50  0001 C CNN
F 3 "" H 5950 4200 50  0001 C CNN
	1    5950 4200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5500 4400 5950 4400
Wire Wire Line
	7450 3250 7450 3650
Wire Wire Line
	7450 3650 7350 3650
Wire Wire Line
	7350 3650 7350 3800
Wire Wire Line
	7550 3250 7550 3700
Wire Wire Line
	7550 3700 7450 3700
Wire Wire Line
	7450 3700 7450 3800
$Comp
L power:GND #PWR0115
U 1 1 5DC900BD
P 6350 3350
F 0 "#PWR0115" H 6350 3100 50  0001 C CNN
F 1 "GND" V 6355 3222 50  0000 R CNN
F 2 "" H 6350 3350 50  0001 C CNN
F 3 "" H 6350 3350 50  0001 C CNN
	1    6350 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	8100 5050 8100 5650
$Comp
L power:+3.3V #PWR0117
U 1 1 5DCB4C18
P 7500 2550
F 0 "#PWR0117" H 7500 2400 50  0001 C CNN
F 1 "+3.3V" V 7515 2678 50  0000 L CNN
F 2 "" H 7500 2550 50  0001 C CNN
F 3 "" H 7500 2550 50  0001 C CNN
	1    7500 2550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5DCB51EE
P 6900 2550
F 0 "#PWR0118" H 6900 2300 50  0001 C CNN
F 1 "GND" V 6905 2422 50  0000 R CNN
F 2 "" H 6900 2550 50  0001 C CNN
F 3 "" H 6900 2550 50  0001 C CNN
	1    6900 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	6950 3700 6950 3800
Wire Wire Line
	7200 2950 7200 3250
Wire Wire Line
	7200 3250 7250 3250
Wire Wire Line
	7250 3250 7250 3800
Wire Wire Line
	2500 6500 2550 6500
Wire Wire Line
	2500 7350 3400 7350
$Comp
L power:+5V #PWR0119
U 1 1 5DBF5204
P 3450 7200
F 0 "#PWR0119" H 3450 7050 50  0001 C CNN
F 1 "+5V" V 3465 7328 50  0000 L CNN
F 2 "" H 3450 7200 50  0001 C CNN
F 3 "" H 3450 7200 50  0001 C CNN
	1    3450 7200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3400 7200 3450 7200
Wire Wire Line
	3100 6550 3500 6550
Wire Wire Line
	5200 5650 5200 6350
Wire Wire Line
	5200 6350 4750 6350
Wire Wire Line
	5350 7150 4650 7150
Wire Wire Line
	2500 6750 2500 7350
Wire Wire Line
	4750 6500 5000 6500
Wire Wire Line
	5000 6500 5000 7300
Wire Wire Line
	5000 7300 4650 7300
Wire Wire Line
	6550 5650 5200 5650
Wire Wire Line
	6250 4900 6750 4900
Wire Wire Line
	6750 4900 6750 4800
Text Notes 7350 7500 0    50   ~ 0
Main Door Schematic
$Comp
L Device:Fuse 2A1
U 1 1 5DC36D6F
P 2700 6500
F 0 "2A1" V 2503 6500 50  0000 C CNN
F 1 "Fuse" V 2594 6500 50  0000 C CNN
F 2 "" V 2630 6500 50  0001 C CNN
F 3 "~" H 2700 6500 50  0001 C CNN
	1    2700 6500
	0    1    1    0   
$EndComp
$Sheet
S 23300 600  11650 7900
U 5DC4244F
F0 "Sheet5DC4244E" 50
F1 "Alarm.sch" 50
$EndSheet
Wire Wire Line
	5500 3600 5950 3600
Wire Wire Line
	5950 2950 5950 3600
$Comp
L power:GND #PWR0120
U 1 1 5DC7D7D6
P 5750 2950
F 0 "#PWR0120" H 5750 2700 50  0001 C CNN
F 1 "GND" V 5755 2822 50  0000 R CNN
F 2 "" H 5750 2950 50  0001 C CNN
F 3 "" H 5750 2950 50  0001 C CNN
	1    5750 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 2950 5750 2950
$Comp
L pspice:0 #GND0101
U 1 1 5DC3A737
P 3150 5450
F 0 "#GND0101" H 3150 5350 50  0001 C CNN
F 1 "0" V 3150 5494 50  0000 L CNN
F 2 "" H 3150 5450 50  0001 C CNN
F 3 "~" H 3150 5450 50  0001 C CNN
	1    3150 5450
	0    1    1    0   
$EndComp
Wire Wire Line
	3150 5450 3200 5450
Connection ~ 3200 5450
$Comp
L CapstoneSchematic:LEDModule LED_GREEN1
U 1 1 5DC91461
P 7300 5650
F 0 "LED_GREEN1" H 7231 5529 50  0000 R CNN
F 1 "200" H 7231 5438 50  0000 R CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type094_RT03502HBLU_1x02_P5.00mm_Horizontal" V 7370 5500 50  0001 C CNN
F 3 "~" H 7300 5500 50  0001 C CNN
	1    7300 5650
	1    0    0    -1  
$EndComp
$Comp
L CapstoneSchematic:LEDModule LED_RED1
U 1 1 5DCA452F
P 8100 5650
F 0 "LED_RED1" H 8031 5529 50  0000 R CNN
F 1 "200" H 8031 5438 50  0000 R CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type094_RT03502HBLU_1x02_P5.00mm_Horizontal" V 8170 5500 50  0001 C CNN
F 3 "~" H 8100 5500 50  0001 C CNN
	1    8100 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5DCB250A
P 7600 5950
F 0 "#PWR0116" H 7600 5700 50  0001 C CNN
F 1 "GND" V 7605 5822 50  0000 R CNN
F 2 "" H 7600 5950 50  0001 C CNN
F 3 "" H 7600 5950 50  0001 C CNN
	1    7600 5950
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0132
U 1 1 5DCB32FA
P 8400 5950
F 0 "#PWR0132" H 8400 5700 50  0001 C CNN
F 1 "GND" V 8405 5822 50  0000 R CNN
F 2 "" H 8400 5950 50  0001 C CNN
F 3 "" H 8400 5950 50  0001 C CNN
	1    8400 5950
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0114
U 1 1 5DC7F41E
P 6950 3350
F 0 "#PWR0114" H 6950 3200 50  0001 C CNN
F 1 "+3.3V" H 6965 3523 50  0000 C CNN
F 2 "" H 6950 3350 50  0001 C CNN
F 3 "" H 6950 3350 50  0001 C CNN
	1    6950 3350
	0    1    1    0   
$EndComp
$Comp
L CapstoneSchematic:PhotoResistor PR1
U 1 1 5DCD4A6E
P 6350 3150
F 0 "PR1" H 6700 3175 50  0000 C CNN
F 1 "PhotoResistor" H 6700 3084 50  0000 C CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type094_RT03503HBLU_1x03_P5.00mm_Horizontal" H 6700 3000 50  0001 C CNN
F 3 "" H 6700 3000 50  0001 C CNN
	1    6350 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3450 6650 3700
Wire Wire Line
	6650 3700 6950 3700
$Comp
L CapstoneSchematic:Linear_Regulator LR1
U 1 1 5DD3D0F0
P 5950 2600
F 0 "LR1" H 5975 2815 50  0000 C CNN
F 1 "Linear_Regulator" H 5975 2724 50  0000 C CNN
F 2 "Capstone_PCB_Lib:Linear Regulator" H 5950 2400 50  0001 C CNN
F 3 "" H 5950 2400 50  0001 C CNN
	1    5950 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	7300 1850 7550 1850
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 5DD6235D
P 5850 1900
F 0 "J2" V 5814 1712 50  0000 R CNN
F 1 "VoltageIn" V 5723 1712 50  0000 R CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type094_RT03502HBLU_1x02_P5.00mm_Horizontal" H 5850 1900 50  0001 C CNN
F 3 "~" H 5850 1900 50  0001 C CNN
	1    5850 1900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5950 2150 5950 2300
Wire Wire Line
	5950 2100 5950 2150
Connection ~ 5950 2150
$Comp
L power:+12V #PWR0133
U 1 1 5DD6AE5A
P 5950 2150
F 0 "#PWR0133" H 5950 2000 50  0001 C CNN
F 1 "+12V" V 5965 2278 50  0000 L CNN
F 2 "" H 5950 2150 50  0001 C CNN
F 3 "" H 5950 2150 50  0001 C CNN
	1    5950 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	5850 2100 5850 2150
$Comp
L pspice:0 #GND0102
U 1 1 5DD7F5FF
P 5700 2150
F 0 "#GND0102" H 5700 2050 50  0001 C CNN
F 1 "0" V 5700 2194 50  0000 L CNN
F 2 "" H 5700 2150 50  0001 C CNN
F 3 "~" H 5700 2150 50  0001 C CNN
	1    5700 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	5700 2150 5850 2150
Connection ~ 5850 2150
Wire Wire Line
	5850 2150 5850 2300
$Comp
L pspice:0 #GND0103
U 1 1 5DD841FC
P 7250 2000
F 0 "#GND0103" H 7250 1900 50  0001 C CNN
F 1 "0" V 7250 2044 50  0000 L CNN
F 2 "" H 7250 2000 50  0001 C CNN
F 3 "~" H 7250 2000 50  0001 C CNN
	1    7250 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	7250 2000 7550 2000
$Comp
L CapstoneSchematic:ProxSensor MPS1
U 1 1 5DC7E79C
P 10350 4650
F 0 "MPS1" H 10625 4807 39  0000 C CNN
F 1 "ProxSensor" H 10625 4724 50  0000 C CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type094_RT03503HBLU_1x03_P5.00mm_Horizontal" H 10800 4600 50  0001 C CNN
F 3 "" H 10800 4600 50  0001 C CNN
	1    10350 4650
	0    1    1    0   
$EndComp
$Comp
L CapstoneSchematic:ProxSensor MPS2
U 1 1 5DC82B61
P 10350 5750
F 0 "MPS2" H 10625 5907 39  0000 C CNN
F 1 "ProxSensor" H 10625 5824 50  0000 C CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type094_RT03503HBLU_1x03_P5.00mm_Horizontal" H 10800 5700 50  0001 C CNN
F 3 "" H 10800 5700 50  0001 C CNN
	1    10350 5750
	0    1    1    0   
$EndComp
Wire Wire Line
	9900 4950 9750 4950
Wire Wire Line
	9750 4950 9750 5250
Wire Wire Line
	9750 5250 6850 5250
Wire Wire Line
	6850 5250 6850 4800
Wire Wire Line
	9900 6050 9300 6050
Wire Wire Line
	9300 6050 9300 5300
Wire Wire Line
	9300 5300 6950 5300
Wire Wire Line
	6950 5300 6950 4800
Wire Wire Line
	5350 5750 5350 7150
Wire Wire Line
	6650 5750 5350 5750
Wire Wire Line
	6650 4800 6650 5750
Wire Wire Line
	7450 4800 7450 5000
$Comp
L power:+5V #PWR0122
U 1 1 5DC36F90
P 8350 4800
F 0 "#PWR0122" H 8350 4650 50  0001 C CNN
F 1 "+5V" V 8365 4928 50  0000 L CNN
F 2 "" H 8350 4800 50  0001 C CNN
F 3 "" H 8350 4800 50  0001 C CNN
	1    8350 4800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 5DC36A10
P 8350 4900
F 0 "#PWR0121" H 8350 4650 50  0001 C CNN
F 1 "GND" V 8355 4772 50  0000 R CNN
F 2 "" H 8350 4900 50  0001 C CNN
F 3 "" H 8350 4900 50  0001 C CNN
	1    8350 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	7450 5000 8350 5000
$Comp
L CapstoneSchematic:LaserSensor U6
U 1 1 5DC2BFC6
P 8150 4650
F 0 "U6" H 9128 4496 50  0000 L CNN
F 1 "LaserSensor" H 9128 4405 50  0000 L CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type094_RT03503HBLU_1x03_P5.00mm_Horizontal" H 8500 4600 50  0001 C CNN
F 3 "" H 8500 4600 50  0001 C CNN
	1    8150 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 5050 8100 5050
Wire Wire Line
	7250 4800 7250 5050
Wire Wire Line
	7300 5550 7300 5650
Wire Wire Line
	7150 5550 7300 5550
Wire Wire Line
	4550 5500 7650 5500
Wire Wire Line
	7650 5500 7650 4800
Wire Wire Line
	7150 4800 7150 5550
Wire Wire Line
	4550 5400 7550 5400
Wire Wire Line
	7550 5400 7550 4800
$Comp
L power:+5V #PWR0103
U 1 1 5DC9AA46
P 10200 5650
F 0 "#PWR0103" H 10200 5500 50  0001 C CNN
F 1 "+5V" H 10215 5823 50  0000 C CNN
F 2 "" H 10200 5650 50  0001 C CNN
F 3 "" H 10200 5650 50  0001 C CNN
	1    10200 5650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0134
U 1 1 5DC9B612
P 10200 4550
F 0 "#PWR0134" H 10200 4400 50  0001 C CNN
F 1 "+5V" H 10215 4723 50  0000 C CNN
F 2 "" H 10200 4550 50  0001 C CNN
F 3 "" H 10200 4550 50  0001 C CNN
	1    10200 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0135
U 1 1 5DC9C280
P 10200 5300
F 0 "#PWR0135" H 10200 5050 50  0001 C CNN
F 1 "GND" V 10205 5172 50  0000 R CNN
F 2 "" H 10200 5300 50  0001 C CNN
F 3 "" H 10200 5300 50  0001 C CNN
	1    10200 5300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0136
U 1 1 5DC9D0B6
P 10200 6400
F 0 "#PWR0136" H 10200 6150 50  0001 C CNN
F 1 "GND" V 10205 6272 50  0000 R CNN
F 2 "" H 10200 6400 50  0001 C CNN
F 3 "" H 10200 6400 50  0001 C CNN
	1    10200 6400
	0    -1   -1   0   
$EndComp
$EndSCHEMATC

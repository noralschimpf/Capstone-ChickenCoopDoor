EESchema Schematic File Version 4
LIBS:CapstoneSchematic-cache
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
L CapstoneSchematic-rescue:LinearActuator-CapstoneLib U?
U 1 1 5DBB3DF9
P 2450 7050
F 0 "U?" V 2696 7078 50  0000 L CNN
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
L power:+12V #PWR?
U 1 1 5DBC046C
P 3300 5250
F 0 "#PWR?" H 3300 5100 50  0001 C CNN
F 1 "+12V" H 3315 5423 50  0000 C CNN
F 2 "" H 3300 5250 50  0001 C CNN
F 3 "" H 3300 5250 50  0001 C CNN
	1    3300 5250
	0    -1   -1   0   
$EndComp
$Comp
L power:-12V #PWR?
U 1 1 5DBC0890
P 3200 5450
F 0 "#PWR?" H 3200 5550 50  0001 C CNN
F 1 "-12V" H 3215 5623 50  0000 C CNN
F 2 "" H 3200 5450 50  0001 C CNN
F 3 "" H 3200 5450 50  0001 C CNN
	1    3200 5450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3200 5450 3200 5800
Wire Wire Line
	3200 5800 3400 5800
Wire Wire Line
	3200 5450 3400 5450
Wire Wire Line
	5750 2000 5750 2250
Wire Wire Line
	5750 1850 5950 1850
Wire Wire Line
	7550 1750 7550 1700
Wire Wire Line
	6350 1750 7550 1750
Wire Wire Line
	7550 1450 7550 1550
Wire Wire Line
	6350 1450 7550 1450
$Comp
L Device:Battery_Cell BT?
U 1 1 5DBC9C63
P 6350 1650
F 0 "BT?" H 6468 1746 50  0000 L CNN
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
L Device:Solar_Cell SC?
U 1 1 5DBB4ADF
P 6850 800
F 0 "SC?" H 6958 896 50  0000 L CNN
F 1 "Solar_Cell" H 6958 805 50  0000 L CNN
F 2 "" V 6850 860 50  0001 C CNN
F 3 "~" V 6850 860 50  0001 C CNN
	1    6850 800 
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5DBE4411
P 5750 1850
F 0 "#PWR?" H 5750 1700 50  0001 C CNN
F 1 "+12V" V 5765 1978 50  0000 L CNN
F 2 "" H 5750 1850 50  0001 C CNN
F 3 "" H 5750 1850 50  0001 C CNN
	1    5750 1850
	0    -1   -1   0   
$EndComp
$Comp
L power:-12V #PWR?
U 1 1 5DBE50FA
P 5550 2000
F 0 "#PWR?" H 5550 2100 50  0001 C CNN
F 1 "-12V" V 5565 2128 50  0000 L CNN
F 2 "" H 5550 2000 50  0001 C CNN
F 3 "" H 5550 2000 50  0001 C CNN
	1    5550 2000
	0    -1   -1   0   
$EndComp
$Comp
L CapstoneSchematic-rescue:SnapActionSwitch-CapstoneLib U?
U 1 1 5DBEA292
P 3500 6200
F 0 "U?" H 4125 6375 50  0000 C CNN
F 1 "SnapActionSwitch" H 4125 6284 50  0000 C CNN
F 2 "" H 3450 6100 50  0001 C CNN
F 3 "" H 3450 6100 50  0001 C CNN
	1    3500 6200
	1    0    0    -1  
$EndComp
$Comp
L CapstoneSchematic-rescue:SnapActionSwitch-CapstoneLib U?
U 1 1 5DBEAB00
P 3400 7000
F 0 "U?" H 4025 7175 50  0000 C CNN
F 1 "SnapActionSwitch" H 4025 7084 50  0000 C CNN
F 2 "" H 3350 6900 50  0001 C CNN
F 3 "" H 3350 6900 50  0001 C CNN
	1    3400 7000
	1    0    0    -1  
$EndComp
$Comp
L CapstoneSchematic-rescue:2RelayModule-CapstoneLib U?
U 1 1 5DBB54F2
P 4450 5900
F 0 "U?" H 4925 5035 50  0000 C CNN
F 1 "2RelayModule" H 4925 5126 50  0000 C CNN
F 2 "" H 4906 5598 50  0001 C CNN
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
L power:+5V #PWR?
U 1 1 5DC0E8B4
P 3500 6400
F 0 "#PWR?" H 3500 6250 50  0001 C CNN
F 1 "+5V" V 3515 6528 50  0000 L CNN
F 2 "" H 3500 6400 50  0001 C CNN
F 3 "" H 3500 6400 50  0001 C CNN
	1    3500 6400
	0    -1   -1   0   
$EndComp
$Comp
L Sensor_Temperature:MCP9700AT-ELT U?
U 1 1 5DC27357
P 7200 2550
F 0 "U?" H 6870 2596 50  0000 R CNN
F 1 "MCP9700AT-ELT" H 6870 2505 50  0001 R CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 7200 2150 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001942G.pdf" H 7200 2550 50  0001 C CNN
	1    7200 2550
	0    1    1    0   
$EndComp
$Comp
L Device:R_PHOTO R?
U 1 1 5DC279E0
P 6850 3350
F 0 "R?" H 6920 3396 50  0000 L CNN
F 1 "R_PHOTO" H 6920 3305 50  0000 L CNN
F 2 "" V 6900 3100 50  0001 L CNN
F 3 "~" H 6850 3300 50  0001 C CNN
	1    6850 3350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D_RED
U 1 1 5DC2B291
P 7800 5950
F 0 "D_RED" H 7793 6166 50  0000 C CNN
F 1 "LED" H 7793 6075 50  0000 C CNN
F 2 "" H 7800 5950 50  0001 C CNN
F 3 "~" H 7800 5950 50  0001 C CNN
	1    7800 5950
	1    0    0    1   
$EndComp
$Comp
L Device:LED D_GREEN
U 1 1 5DC2B9C5
P 7300 5950
F 0 "D_GREEN" H 7293 6166 50  0000 C CNN
F 1 "LED" H 7293 6075 50  0000 C CNN
F 2 "" H 7300 5950 50  0001 C CNN
F 3 "~" H 7300 5950 50  0001 C CNN
	1    7300 5950
	-1   0    0    1   
$EndComp
Wire Wire Line
	4550 5500 7650 5500
Wire Wire Line
	4550 5400 7550 5400
Wire Wire Line
	7650 5500 7650 4800
Wire Wire Line
	7550 5400 7550 4800
$Comp
L MCU_Module:Arduino_UNO_R3 A?
U 1 1 5DBB2CDA
P 6950 4300
F 0 "A?" V 6996 3156 50  0000 R CNN
F 1 "Arduino_UNO_R3" V 6905 3156 50  0000 R CNN
F 2 "Module:Arduino_UNO_R3" H 7100 3250 50  0001 L CNN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 6750 5350 50  0001 C CNN
	1    6950 4300
	0    -1   -1   0   
$EndComp
$Comp
L CapstoneSchematic-rescue:LoRa-CapstoneLib ULoRa?
U 1 1 5DC1AD46
P 6150 6050
F 0 "ULoRa?" H 7528 5996 50  0000 L CNN
F 1 "LoRa" H 7528 5905 50  0000 L CNN
F 2 "" H 6700 5850 50  0001 C CNN
F 3 "" H 6700 5850 50  0001 C CNN
	1    6150 6050
	0    -1   1    0   
$EndComp
Wire Wire Line
	6350 4800 6350 5950
Wire Wire Line
	6450 4800 6450 5950
$Comp
L power:+5V #PWR?
U 1 1 5DC1040D
P 6150 5950
F 0 "#PWR?" H 6150 5800 50  0001 C CNN
F 1 "+5V" H 6165 6123 50  0000 C CNN
F 2 "" H 6150 5950 50  0001 C CNN
F 3 "" H 6150 5950 50  0001 C CNN
	1    6150 5950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC11130
P 6650 5950
F 0 "#PWR?" H 6650 5700 50  0001 C CNN
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
L power:GND #PWR?
U 1 1 5DC16D22
P 4550 5300
F 0 "#PWR?" H 4550 5050 50  0001 C CNN
F 1 "GND" V 4555 5172 50  0000 R CNN
F 2 "" H 4550 5300 50  0001 C CNN
F 3 "" H 4550 5300 50  0001 C CNN
	1    4550 5300
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DC1AA6C
P 4550 5600
F 0 "#PWR?" H 4550 5450 50  0001 C CNN
F 1 "+5V" V 4565 5728 50  0000 L CNN
F 2 "" H 4550 5600 50  0001 C CNN
F 3 "" H 4550 5600 50  0001 C CNN
	1    4550 5600
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DC1B373
P 5950 4100
F 0 "#PWR?" H 5950 3950 50  0001 C CNN
F 1 "+5V" V 5965 4228 50  0000 L CNN
F 2 "" H 5950 4100 50  0001 C CNN
F 3 "" H 5950 4100 50  0001 C CNN
	1    5950 4100
	0    -1   -1   0   
$EndComp
Connection ~ 3200 5450
Connection ~ 3300 5250
$Comp
L CapstoneSchematic-rescue:ArduinoRGBShield J?
U 1 1 5DC4EC30
P 7650 3050
F 0 "J?" V 7712 3194 50  0000 L CNN
F 1 "ArduinoRGBShield" V 7803 3194 50  0000 L CNN
F 2 "" H 7650 3050 50  0001 C CNN
F 3 "~" H 7650 3050 50  0001 C CNN
	1    7650 3050
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DC52169
P 7750 3450
F 0 "#PWR?" H 7750 3300 50  0001 C CNN
F 1 "+5V" H 7765 3623 50  0000 C CNN
F 2 "" H 7750 3450 50  0001 C CNN
F 3 "" H 7750 3450 50  0001 C CNN
	1    7750 3450
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC5291A
P 7650 3250
F 0 "#PWR?" H 7650 3000 50  0001 C CNN
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
L power:GND #PWR?
U 1 1 5DC66997
P 8050 4200
F 0 "#PWR?" H 8050 3950 50  0001 C CNN
F 1 "GND" V 8055 4072 50  0000 R CNN
F 2 "" H 8050 4200 50  0001 C CNN
F 3 "" H 8050 4200 50  0001 C CNN
	1    8050 4200
	0    -1   -1   0   
$EndComp
$Comp
L CapstoneSchematic-rescue:CMP12-CapstoneLib U?
U 1 1 5DC684DB
P 8400 1150
F 0 "U?" V 8829 1178 50  0000 L CNN
F 1 "CMP12-CapstoneLib" V 8920 1178 50  0000 L CNN
F 2 "" H 8700 950 50  0001 C CNN
F 3 "" H 8700 950 50  0001 C CNN
	1    8400 1150
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5DC71C84
P 5950 4200
F 0 "#PWR?" H 5950 4050 50  0001 C CNN
F 1 "+3.3V" V 5965 4328 50  0000 L CNN
F 2 "" H 5950 4200 50  0001 C CNN
F 3 "" H 5950 4200 50  0001 C CNN
	1    5950 4200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5500 4400 5950 4400
$Comp
L Device:R 47kOhm
U 1 1 5DC75DED
P 6550 3350
F 0 "47kOhm" V 6757 3350 50  0000 C CNN
F 1 "R" V 6666 3350 50  0000 C CNN
F 2 "" V 6480 3350 50  0001 C CNN
F 3 "~" H 6550 3350 50  0001 C CNN
	1    6550 3350
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5DC7F41E
P 7000 3350
F 0 "#PWR?" H 7000 3200 50  0001 C CNN
F 1 "+3.3V" H 7015 3523 50  0000 C CNN
F 2 "" H 7000 3350 50  0001 C CNN
F 3 "" H 7000 3350 50  0001 C CNN
	1    7000 3350
	0    1    1    0   
$EndComp
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
L power:GND #PWR?
U 1 1 5DC900BD
P 6300 3350
F 0 "#PWR?" H 6300 3100 50  0001 C CNN
F 1 "GND" V 6305 3222 50  0000 R CNN
F 2 "" H 6300 3350 50  0001 C CNN
F 3 "" H 6300 3350 50  0001 C CNN
	1    6300 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5DC95885
P 7150 5800
F 0 "R1" H 7220 5846 50  0000 L CNN
F 1 "220" H 7220 5755 50  0000 L CNN
F 2 "" V 7080 5800 50  0001 C CNN
F 3 "~" H 7150 5800 50  0001 C CNN
	1    7150 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5DC964D0
P 7950 5800
F 0 "R2" H 7880 5754 50  0000 R CNN
F 1 "220" H 7880 5845 50  0000 R CNN
F 2 "" V 7880 5800 50  0001 C CNN
F 3 "~" H 7950 5800 50  0001 C CNN
	1    7950 5800
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC9F829
P 7550 5950
F 0 "#PWR?" H 7550 5700 50  0001 C CNN
F 1 "GND" H 7555 5777 50  0000 C CNN
F 2 "" H 7550 5950 50  0001 C CNN
F 3 "" H 7550 5950 50  0001 C CNN
	1    7550 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 5950 7550 5950
Wire Wire Line
	7450 5950 7550 5950
Connection ~ 7550 5950
Wire Wire Line
	7150 4800 7150 5650
Wire Wire Line
	7250 4800 7250 5050
Wire Wire Line
	7950 5050 7950 5650
$Comp
L power:+3.3V #PWR?
U 1 1 5DCB4C18
P 7500 2550
F 0 "#PWR?" H 7500 2400 50  0001 C CNN
F 1 "+3.3V" V 7515 2678 50  0000 L CNN
F 2 "" H 7500 2550 50  0001 C CNN
F 3 "" H 7500 2550 50  0001 C CNN
	1    7500 2550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DCB51EE
P 6900 2550
F 0 "#PWR?" H 6900 2300 50  0001 C CNN
F 1 "GND" V 6905 2422 50  0000 R CNN
F 2 "" H 6900 2550 50  0001 C CNN
F 3 "" H 6900 2550 50  0001 C CNN
	1    6900 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	6700 3350 6700 3700
Wire Wire Line
	6700 3700 6950 3700
Wire Wire Line
	6950 3700 6950 3800
Connection ~ 6700 3350
Wire Wire Line
	7200 2950 7200 3250
Wire Wire Line
	7200 3250 7250 3250
Wire Wire Line
	7250 3250 7250 3800
$Comp
L CapstoneSchematic-rescue:CapstoneSchematic-cache_CapstoneSchematic-cache_CapstoneSchematic-cache_Linear_Regulator-CapstoneSchematic-cache UReg?
U 1 1 5DBD091B
P 5950 2600
AR Path="/5DBD091B" Ref="UReg?"  Part="1" 
AR Path="/5DC4244F/5DBD091B" Ref="UReg?"  Part="1" 
F 0 "UReg?" V 5929 2688 50  0000 L CNN
F 1 "LinearRegulatorPCB" V 6020 2688 50  0000 L CNN
F 2 "" H 6350 2700 50  0001 C CNN
F 3 "" H 6350 2700 50  0001 C CNN
	1    5950 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	5950 1850 5950 2300
Wire Wire Line
	5750 2250 5850 2250
Wire Wire Line
	5850 2250 5850 2300
Wire Wire Line
	6400 3350 6300 3350
Connection ~ 5750 2000
Wire Wire Line
	5750 2000 5550 2000
Connection ~ 5950 1850
Wire Wire Line
	5950 1850 7550 1850
Wire Wire Line
	5750 2000 7550 2000
Wire Wire Line
	2500 6500 2550 6500
Wire Wire Line
	2500 7350 3400 7350
$Comp
L power:+5V #PWR?
U 1 1 5DBF5204
P 3450 7200
F 0 "#PWR?" H 3450 7050 50  0001 C CNN
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
	5350 5750 5350 7150
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
	6650 5750 5350 5750
Wire Wire Line
	6650 4800 6650 5750
Wire Wire Line
	6250 4900 6750 4900
Wire Wire Line
	6750 4900 6750 4800
Text Notes 7350 7500 0    50   ~ 0
Main Door Schematic
$Comp
L Device:Fuse 2A
U 1 1 5DC36D6F
P 2700 6500
F 0 "2A" V 2503 6500 50  0000 C CNN
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
L power:GND #PWR?
U 1 1 5DC7D7D6
P 5750 2950
F 0 "#PWR?" H 5750 2700 50  0001 C CNN
F 1 "GND" V 5755 2822 50  0000 R CNN
F 2 "" H 5750 2950 50  0001 C CNN
F 3 "" H 5750 2950 50  0001 C CNN
	1    5750 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 2950 5750 2950
Wire Wire Line
	7250 5050 7950 5050
$Comp
L CapstoneSchematic:LaserSensor U?
U 1 1 5DC2BFC6
P 8150 4650
F 0 "U?" H 9128 4496 50  0000 L CNN
F 1 "LaserSensor" H 9128 4405 50  0000 L CNN
F 2 "" H 8500 4600 50  0001 C CNN
F 3 "" H 8500 4600 50  0001 C CNN
	1    8150 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 4800 7450 5000
Wire Wire Line
	7450 5000 8350 5000
$Comp
L power:GND #PWR?
U 1 1 5DC36A10
P 8350 4900
F 0 "#PWR?" H 8350 4650 50  0001 C CNN
F 1 "GND" V 8355 4772 50  0000 R CNN
F 2 "" H 8350 4900 50  0001 C CNN
F 3 "" H 8350 4900 50  0001 C CNN
	1    8350 4900
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DC36F90
P 8350 4800
F 0 "#PWR?" H 8350 4650 50  0001 C CNN
F 1 "+5V" V 8365 4928 50  0000 L CNN
F 2 "" H 8350 4800 50  0001 C CNN
F 3 "" H 8350 4800 50  0001 C CNN
	1    8350 4800
	0    -1   -1   0   
$EndComp
$EndSCHEMATC

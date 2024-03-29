EESchema Schematic File Version 4
LIBS:CapstoneSchematic-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "Coop Main Door"
Date "2020-04-24"
Rev "4"
Comp "UofL ECE Capstone"
Comment1 "Adedotun Abe"
Comment2 "Michael Portaro"
Comment3 "Nathan Schimpf"
Comment4 "Jacob Berdichevsky"
$EndDescr
Wire Wire Line
	9200 1700 9200 1650
Wire Wire Line
	8000 1700 9200 1700
Wire Wire Line
	9200 1400 9200 1500
Wire Wire Line
	8000 1400 9200 1400
$Comp
L Device:Battery_Cell BT1
U 1 1 5DBC9C63
P 8000 1600
F 0 "BT1" H 8118 1696 50  0000 L CNN
F 1 "Battery_Cell" H 8118 1605 50  0000 L CNN
F 2 "" V 8000 1660 50  0001 C CNN
F 3 "~" V 8000 1660 50  0001 C CNN
	1    8000 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 1350 9200 1350
Wire Wire Line
	8400 750  8400 1350
Wire Wire Line
	9200 750  9200 1200
Wire Wire Line
	8700 750  9200 750 
$Comp
L Device:Solar_Cell SC1
U 1 1 5DBB4ADF
P 8500 750
F 0 "SC1" H 8608 846 50  0000 L CNN
F 1 "Solar_Cell" H 8608 755 50  0000 L CNN
F 2 "" V 8500 810 50  0001 C CNN
F 3 "~" V 8500 810 50  0001 C CNN
	1    8500 750 
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR027
U 1 1 5DBE4411
P 8950 1800
F 0 "#PWR027" H 8950 1650 50  0001 C CNN
F 1 "+12V" V 8965 1928 50  0000 L CNN
F 2 "" H 8950 1800 50  0001 C CNN
F 3 "" H 8950 1800 50  0001 C CNN
	1    8950 1800
	0    -1   -1   0   
$EndComp
$Comp
L CapstoneSchematic:CMP12 U2
U 1 1 5DC684DB
P 10050 1100
F 0 "U2" V 10479 1128 50  0000 L CNN
F 1 "CMP12-CapstoneLib" V 10570 1128 50  0000 L CNN
F 2 "" H 10350 900 50  0001 C CNN
F 3 "" H 10350 900 50  0001 C CNN
	1    10050 1100
	0    1    1    0   
$EndComp
Text Notes 10265 6500 0    50   ~ 0
Main Door Schematic
$Sheet
S 23300 600  11650 7900
U 5DC4244F
F0 "Sheet5DC4244E" 50
F1 "Alarm.sch" 50
$EndSheet
$Comp
L CapstoneSchematic:LEDModule LED_GREEN1
U 1 1 5DC91461
P 4750 4350
F 0 "LED_GREEN1" H 4681 4229 50  0000 R CNN
F 1 "200" H 4681 4138 50  0000 R CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type094_RT03502HBLU_1x02_P5.00mm_Horizontal" V 4820 4200 50  0001 C CNN
F 3 "~" H 4750 4200 50  0001 C CNN
	1    4750 4350
	1    0    0    -1  
$EndComp
$Comp
L CapstoneSchematic:LEDModule LED_RED1
U 1 1 5DCA452F
P 3600 4400
F 0 "LED_RED1" H 3531 4279 50  0000 R CNN
F 1 "200" H 3531 4188 50  0000 R CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type094_RT03502HBLU_1x02_P5.00mm_Horizontal" V 3670 4250 50  0001 C CNN
F 3 "~" H 3600 4250 50  0001 C CNN
	1    3600 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5DCB250A
P 5050 4650
F 0 "#PWR010" H 5050 4400 50  0001 C CNN
F 1 "GND" V 5055 4522 50  0000 R CNN
F 2 "" H 5050 4650 50  0001 C CNN
F 3 "" H 5050 4650 50  0001 C CNN
	1    5050 4650
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5DCB32FA
P 3900 4700
F 0 "#PWR06" H 3900 4450 50  0001 C CNN
F 1 "GND" V 3905 4572 50  0000 R CNN
F 2 "" H 3900 4700 50  0001 C CNN
F 3 "" H 3900 4700 50  0001 C CNN
	1    3900 4700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8950 1800 9200 1800
$Comp
L pspice:0 #GND03
U 1 1 5DD841FC
P 8900 1950
F 0 "#GND03" H 8900 1850 50  0001 C CNN
F 1 "0" V 8900 1994 50  0000 L CNN
F 2 "" H 8900 1950 50  0001 C CNN
F 3 "~" H 8900 1950 50  0001 C CNN
	1    8900 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	8900 1950 9200 1950
$Comp
L CapstoneSchematic:LinearActuator LA1
U 1 1 5DDA921B
P 2050 2700
F 0 "LA1" V 2388 1972 50  0000 R CNN
F 1 "LinearActuator" V 2297 1972 50  0000 R CNN
F 2 "" H 2400 2450 50  0001 C CNN
F 3 "" H 2400 2450 50  0001 C CNN
	1    2050 2700
	0    -1   -1   0   
$EndComp
Text Label 4425 3725 0    50   ~ 0
SAS_Int2
Wire Bus Line
	5500 1500 5500 2500
Wire Wire Line
	7050 1900 7050 2350
Text Label 6645 2750 2    50   ~ 0
LoRa4
Text Label 4150 1800 0    50   ~ 0
LoRa4
Text Label 4150 1700 0    50   ~ 0
LoRa3
Text Label 4150 1600 0    50   ~ 0
LoRa2
Wire Bus Line
	4250 1500 5500 1500
Entry Wire Line
	4150 1600 4250 1500
Entry Wire Line
	4150 1800 4250 1700
Entry Wire Line
	4150 1700 4250 1600
Entry Wire Line
	6545 2650 6645 2750
Entry Wire Line
	6545 2750 6645 2850
Wire Wire Line
	7950 2950 7950 3550
Wire Wire Line
	7650 3650 8700 3650
Wire Wire Line
	7950 2950 8450 2950
Wire Wire Line
	7650 3550 7950 3550
Wire Wire Line
	7650 3750 8300 3750
Wire Wire Line
	8100 4050 8300 4050
Wire Wire Line
	6950 1050 6950 1100
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5DD6235D
P 7050 850
F 0 "J1" V 7014 662 50  0000 R CNN
F 1 "VoltageIn" V 6923 662 50  0000 R CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type094_RT03502HBLU_1x02_P5.00mm_Horizontal" H 7050 850 50  0001 C CNN
F 3 "~" H 7050 850 50  0001 C CNN
	1    7050 850 
	0    1    -1   0   
$EndComp
$Comp
L CapstoneSchematic:LaserSensor U1
U 1 1 5DC2BFC6
P 5850 2300
F 0 "U1" H 6828 2146 50  0000 L CNN
F 1 "LaserSensor" H 6828 2055 50  0000 L CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type094_RT03503HBLU_1x03_P5.00mm_Horizontal" H 6200 2250 50  0001 C CNN
F 3 "" H 6200 2250 50  0001 C CNN
	1    5850 2300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5DC36A10
P 6100 2100
F 0 "#PWR013" H 6100 1850 50  0001 C CNN
F 1 "GND" V 6105 1972 50  0000 R CNN
F 2 "" H 6100 2100 50  0001 C CNN
F 3 "" H 6100 2100 50  0001 C CNN
	1    6100 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR012
U 1 1 5DC36F90
P 6000 2100
F 0 "#PWR012" H 6000 1950 50  0001 C CNN
F 1 "+5V" V 6015 2228 50  0000 L CNN
F 2 "" H 6000 2100 50  0001 C CNN
F 3 "" H 6000 2100 50  0001 C CNN
	1    6000 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	6950 1100 6950 1250
Connection ~ 6950 1100
Wire Wire Line
	6800 1100 6950 1100
$Comp
L pspice:0 #GND02
U 1 1 5DD7F5FF
P 6800 1100
F 0 "#GND02" H 6800 1000 50  0001 C CNN
F 1 "0" V 6800 1144 50  0000 L CNN
F 2 "" H 6800 1100 50  0001 C CNN
F 3 "~" H 6800 1100 50  0001 C CNN
	1    6800 1100
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR017
U 1 1 5DD6AE5A
P 7050 1100
F 0 "#PWR017" H 7050 950 50  0001 C CNN
F 1 "+12V" V 7065 1228 50  0000 L CNN
F 2 "" H 7050 1100 50  0001 C CNN
F 3 "" H 7050 1100 50  0001 C CNN
	1    7050 1100
	0    1    1    0   
$EndComp
Connection ~ 7050 1100
Wire Wire Line
	7050 1050 7050 1100
Wire Wire Line
	7050 1100 7050 1250
$Comp
L CapstoneSchematic:Linear_Regulator LR1
U 1 1 5DD3D0F0
P 7050 1550
F 0 "LR1" H 7075 1765 50  0000 C CNN
F 1 "Linear_Regulator" H 7075 1674 50  0000 C CNN
F 2 "Capstone_PCB_Lib:Linear Regulator" H 7050 1350 50  0001 C CNN
F 3 "" H 7050 1350 50  0001 C CNN
	1    7050 1550
	0    1    1    0   
$EndComp
$Comp
L CapstoneSchematic:PhotoResistor PR1
U 1 1 5DCD4A6E
P 8750 2650
F 0 "PR1" H 9100 2675 50  0000 C CNN
F 1 "PhotoResistor" H 9100 2584 50  0000 C CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type094_RT03503HBLU_1x03_P5.00mm_Horizontal" H 9100 2500 50  0001 C CNN
F 3 "" H 9100 2500 50  0001 C CNN
	1    8750 2650
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR026
U 1 1 5DC7F41E
P 8550 3250
F 0 "#PWR026" H 8550 3100 50  0001 C CNN
F 1 "+3.3V" H 8565 3423 50  0000 C CNN
F 2 "" H 8550 3250 50  0001 C CNN
F 3 "" H 8550 3250 50  0001 C CNN
	1    8550 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	6950 1900 6850 1900
$Comp
L power:GND #PWR016
U 1 1 5DC7D7D6
P 6850 1900
F 0 "#PWR016" H 6850 1650 50  0001 C CNN
F 1 "GND" V 6855 1772 50  0000 R CNN
F 2 "" H 6850 1900 50  0001 C CNN
F 3 "" H 6850 1900 50  0001 C CNN
	1    6850 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR028
U 1 1 5DCB51EE
P 9100 3350
F 0 "#PWR028" H 9100 3100 50  0001 C CNN
F 1 "GND" V 9105 3222 50  0000 R CNN
F 2 "" H 9100 3350 50  0001 C CNN
F 3 "" H 9100 3350 50  0001 C CNN
	1    9100 3350
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR029
U 1 1 5DCB4C18
P 9100 3950
F 0 "#PWR029" H 9100 3800 50  0001 C CNN
F 1 "+3.3V" V 9115 4078 50  0000 L CNN
F 2 "" H 9100 3950 50  0001 C CNN
F 3 "" H 9100 3950 50  0001 C CNN
	1    9100 3950
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR025
U 1 1 5DC900BD
P 8550 2650
F 0 "#PWR025" H 8550 2400 50  0001 C CNN
F 1 "GND" V 8555 2522 50  0000 R CNN
F 2 "" H 8550 2650 50  0001 C CNN
F 3 "" H 8550 2650 50  0001 C CNN
	1    8550 2650
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR019
U 1 1 5DC71C84
P 7250 2350
F 0 "#PWR019" H 7250 2200 50  0001 C CNN
F 1 "+3.3V" V 7265 2478 50  0000 L CNN
F 2 "" H 7250 2350 50  0001 C CNN
F 3 "" H 7250 2350 50  0001 C CNN
	1    7250 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 5DC66997
P 7250 4450
F 0 "#PWR020" H 7250 4200 50  0001 C CNN
F 1 "GND" V 7255 4322 50  0000 R CNN
F 2 "" H 7250 4450 50  0001 C CNN
F 3 "" H 7250 4450 50  0001 C CNN
	1    7250 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 5DC5291A
P 8300 3950
F 0 "#PWR024" H 8300 3700 50  0001 C CNN
F 1 "GND" H 8305 3777 50  0000 C CNN
F 2 "" H 8300 3950 50  0001 C CNN
F 3 "" H 8300 3950 50  0001 C CNN
	1    8300 3950
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR023
U 1 1 5DC52169
P 8100 4050
F 0 "#PWR023" H 8100 3900 50  0001 C CNN
F 1 "+5V" H 8115 4223 50  0000 C CNN
F 2 "" H 8100 4050 50  0001 C CNN
F 3 "" H 8100 4050 50  0001 C CNN
	1    8100 4050
	0    -1   -1   0   
$EndComp
$Comp
L CapstoneSchematic:ArduinoRGBShield J2
U 1 1 5DC4EC30
P 8500 3950
F 0 "J2" V 8562 4094 50  0000 L CNN
F 1 "ArduinoRGBShield" V 8653 4094 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 8500 3950 50  0001 C CNN
F 3 "~" H 8500 3950 50  0001 C CNN
	1    8500 3950
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR021
U 1 1 5DC1B373
P 7350 2350
F 0 "#PWR021" H 7350 2200 50  0001 C CNN
F 1 "+5V" V 7365 2478 50  0000 L CNN
F 2 "" H 7350 2350 50  0001 C CNN
F 3 "" H 7350 2350 50  0001 C CNN
	1    7350 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5DC11130
P 4150 2000
F 0 "#PWR08" H 4150 1750 50  0001 C CNN
F 1 "GND" H 4155 1827 50  0000 C CNN
F 2 "" H 4150 2000 50  0001 C CNN
F 3 "" H 4150 2000 50  0001 C CNN
	1    4150 2000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR07
U 1 1 5DC1040D
P 4150 1500
F 0 "#PWR07" H 4150 1350 50  0001 C CNN
F 1 "+5V" H 4165 1673 50  0000 C CNN
F 2 "" H 4150 1500 50  0001 C CNN
F 3 "" H 4150 1500 50  0001 C CNN
	1    4150 1500
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Temperature:MCP9700AT-ELT T1
U 1 1 5DC27357
P 9100 3650
F 0 "T1" H 8770 3696 50  0000 R CNN
F 1 "Temp Sensor" H 8770 3605 50  0001 R CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type094_RT03503HBLU_1x03_P5.00mm_Horizontal" H 9100 3250 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001942G.pdf" H 9100 3650 50  0001 C CNN
	1    9100 3650
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5DC16D22
P 800 3850
F 0 "#PWR01" H 800 3600 50  0001 C CNN
F 1 "GND" V 805 3722 50  0000 R CNN
F 2 "" H 800 3850 50  0001 C CNN
F 3 "" H 800 3850 50  0001 C CNN
	1    800  3850
	1    0    0    1   
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 5DC1AA6C
P 800 4150
F 0 "#PWR02" H 800 4000 50  0001 C CNN
F 1 "+5V" V 815 4278 50  0000 L CNN
F 2 "" H 800 4150 50  0001 C CNN
F 3 "" H 800 4150 50  0001 C CNN
	1    800  4150
	1    0    0    1   
$EndComp
Connection ~ 2150 4000
Wire Wire Line
	2200 4000 2150 4000
Connection ~ 2050 3800
$Comp
L CapstoneSchematic:2RelayModule RM1
U 1 1 5DBB54F2
P 900 4450
F 0 "RM1" H 1375 3585 50  0000 C CNN
F 1 "2RelayModule" H 1375 3676 50  0000 C CNN
F 2 "Capstone_PCB_Lib:2 Channels Relay" H 1356 4148 50  0001 C CNN
F 3 "" H 1356 4148 50  0001 C CNN
	1    900  4450
	1    0    0    1   
$EndComp
Wire Wire Line
	2150 4000 1950 4000
Wire Wire Line
	2150 4350 1950 4350
Wire Wire Line
	2150 4000 2150 4350
$Comp
L power:+12V #PWR03
U 1 1 5DBC046C
P 2050 3800
F 0 "#PWR03" H 2050 3650 50  0001 C CNN
F 1 "+12V" H 2065 3973 50  0000 C CNN
F 2 "" H 2050 3800 50  0001 C CNN
F 3 "" H 2050 3800 50  0001 C CNN
	1    2050 3800
	0    1    -1   0   
$EndComp
Wire Wire Line
	2050 4150 1950 4150
Wire Wire Line
	2050 3800 2050 4150
Wire Wire Line
	1950 3800 2050 3800
$Comp
L pspice:0 #GND01
U 1 1 5DC3A737
P 2200 4000
F 0 "#GND01" H 2200 3900 50  0001 C CNN
F 1 "0" V 2200 4044 50  0000 L CNN
F 2 "" H 2200 4000 50  0001 C CNN
F 3 "~" H 2200 4000 50  0001 C CNN
	1    2200 4000
	0    -1   1    0   
$EndComp
Wire Wire Line
	6200 2100 6200 3150
Wire Wire Line
	6200 3150 6650 3150
Entry Wire Line
	6210 3750 6310 3650
Entry Wire Line
	6310 3750 6210 3850
Entry Wire Line
	795  3950 695  4050
Entry Wire Line
	695  4150 795  4050
$Comp
L MCU_Module:Arduino_UNO_R3 A1
U 1 1 5DBB2CDA
P 7150 3350
F 0 "A1" V 7196 2206 50  0000 R CNN
F 1 "Arduino_UNO_R3" V 7105 2206 50  0000 R CNN
F 2 "Module:Arduino_UNO_R3" H 7300 2300 50  0001 L CNN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 6950 4400 50  0001 C CNN
	1    7150 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3650 6310 3650
Wire Wire Line
	6310 3750 6650 3750
Wire Wire Line
	6645 3250 6650 3250
Wire Wire Line
	6645 2850 6650 2850
Wire Wire Line
	6645 2750 6650 2750
Wire Wire Line
	795  4050 800  4050
Wire Wire Line
	795  3950 800  3950
Wire Bus Line
	695  4885 6210 4885
Text Label 6650 3750 2    50   ~ 0
IN2
Text Label 6650 3650 2    50   ~ 0
IN1
Text Label 800  3950 2    50   ~ 0
IN1
Text Label 800  4050 2    50   ~ 0
IN2
Wire Wire Line
	7650 3850 8300 3850
$Comp
L CapstoneSchematic:ProxSensor MPS1
U 1 1 5DF46B30
P 6050 6200
F 0 "MPS1" H 6325 6265 39  0000 C CNN
F 1 "ProxSensor" H 6325 6348 50  0000 C CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type094_RT03503HBLU_1x03_P5.00mm_Horizontal" H 6500 6150 50  0001 C CNN
F 3 "" H 6500 6150 50  0001 C CNN
	1    6050 6200
	-1   0    0    1   
$EndComp
$Comp
L CapstoneSchematic:ProxSensor MPS2
U 1 1 5DF47D78
P 6950 6200
F 0 "MPS2" H 7225 6265 39  0000 C CNN
F 1 "ProxSensor" H 7225 6348 50  0000 C CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type094_RT03503HBLU_1x03_P5.00mm_Horizontal" H 7400 6150 50  0001 C CNN
F 3 "" H 7400 6150 50  0001 C CNN
	1    6950 6200
	-1   0    0    1   
$EndComp
Wire Wire Line
	5750 5750 5750 5000
Wire Wire Line
	5750 5000 6450 5000
Wire Wire Line
	6450 5000 6450 3950
Wire Wire Line
	6450 3950 6650 3950
$Comp
L power:+5V #PWR014
U 1 1 5DF5591E
P 6150 6050
F 0 "#PWR014" H 6150 5900 50  0001 C CNN
F 1 "+5V" H 6165 6223 50  0000 C CNN
F 2 "" H 6150 6050 50  0001 C CNN
F 3 "" H 6150 6050 50  0001 C CNN
	1    6150 6050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR018
U 1 1 5DF566EE
P 7050 6050
F 0 "#PWR018" H 7050 5900 50  0001 C CNN
F 1 "+5V" H 7065 6223 50  0000 C CNN
F 2 "" H 7050 6050 50  0001 C CNN
F 3 "" H 7050 6050 50  0001 C CNN
	1    7050 6050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5DF56B87
P 6300 6050
F 0 "#PWR015" H 6300 5800 50  0001 C CNN
F 1 "GND" H 6305 5877 50  0000 C CNN
F 2 "" H 6300 6050 50  0001 C CNN
F 3 "" H 6300 6050 50  0001 C CNN
	1    6300 6050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5DF5704D
P 5400 6050
F 0 "#PWR011" H 5400 5800 50  0001 C CNN
F 1 "GND" H 5405 5877 50  0000 C CNN
F 2 "" H 5400 6050 50  0001 C CNN
F 3 "" H 5400 6050 50  0001 C CNN
	1    5400 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 4050 6650 5750
Wire Wire Line
	5450 3050 6650 3050
$Comp
L CapstoneSchematic:LoRa ULoRa1
U 1 1 5DC1AD46
P 4050 1500
F 0 "ULoRa1" H 5428 1446 50  0000 L CNN
F 1 "LoRa" H 5428 1355 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Horizontal" H 4600 1300 50  0001 C CNN
F 3 "" H 4600 1300 50  0001 C CNN
	1    4050 1500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2400 2750 2400 2875
Wire Wire Line
	2400 2875 2375 2875
Wire Wire Line
	1950 3900 2375 3900
Text Label 6650 3250 2    50   ~ 0
LoRa2
Wire Bus Line
	6545 2500 6550 2500
Connection ~ 6545 2500
Wire Bus Line
	5500 2500 6545 2500
Text Label 6525 3050 2    50   ~ 0
SAS_Int2
Text Label 3600 4400 0    50   ~ 0
LED_R
$Comp
L power:+5V #PWR09
U 1 1 5E8A92AF
P 4750 4350
F 0 "#PWR09" H 4750 4200 50  0001 C CNN
F 1 "+5V" V 4765 4478 50  0000 L CNN
F 2 "" H 4750 4350 50  0001 C CNN
F 3 "" H 4750 4350 50  0001 C CNN
	1    4750 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 4275 3600 4400
Entry Wire Line
	6645 3250 6545 3350
Wire Wire Line
	5775 3450 6650 3450
Wire Wire Line
	5775 4275 3600 4275
Wire Wire Line
	5775 3450 5775 4275
Wire Wire Line
	2375 2875 2375 3900
$Comp
L power:GND #PWR05
U 1 1 5E8177E0
P 3175 3775
F 0 "#PWR05" H 3175 3525 50  0001 C CNN
F 1 "GND" V 3180 3647 50  0000 R CNN
F 2 "" H 3175 3775 50  0001 C CNN
F 3 "" H 3175 3775 50  0001 C CNN
	1    3175 3775
	0    1    1    0   
$EndComp
$Comp
L CapstoneSchematic:SnapActionSwitch SAS2
U 1 1 5DBEAB00
P 3175 3575
F 0 "SAS2" H 3800 3750 50  0000 C CNN
F 1 "SnapActionSwitch" H 3800 3659 50  0000 C CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type094_RT03503HBLU_1x03_P5.00mm_Horizontal" H 3125 3475 50  0001 C CNN
F 3 "" H 3125 3475 50  0001 C CNN
	1    3175 3575
	1    0    0    -1  
$EndComp
$Comp
L CapstoneSchematic:SnapActionSwitch SAS1
U 1 1 5E9451EF
P 3175 2850
F 0 "SAS1" H 3800 3025 50  0000 C CNN
F 1 "SnapActionSwitch" H 3800 2934 50  0000 C CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type094_RT03503HBLU_1x03_P5.00mm_Horizontal" H 3125 2750 50  0001 C CNN
F 3 "" H 3125 2750 50  0001 C CNN
	1    3175 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5E9474E0
P 3175 3200
F 0 "#PWR04" H 3175 2950 50  0001 C CNN
F 1 "GND" V 3180 3072 50  0000 R CNN
F 2 "" H 3175 3200 50  0001 C CNN
F 3 "" H 3175 3200 50  0001 C CNN
	1    3175 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 2950 6650 2950
Wire Wire Line
	4425 3725 5450 3725
Wire Wire Line
	5450 3050 5450 3725
Text Label 6525 2950 2    50   ~ 0
SAS_Int1
Wire Wire Line
	3175 3925 2850 3925
Wire Wire Line
	2850 3050 3175 3050
Wire Wire Line
	4425 3875 4500 3875
Wire Wire Line
	4500 3875 4500 4250
Wire Wire Line
	1950 4250 4500 4250
Wire Wire Line
	2850 3050 2850 3925
Wire Wire Line
	4700 2950 4700 3250
Wire Wire Line
	4425 3250 4700 3250
Wire Wire Line
	4425 2900 4425 2625
Wire Wire Line
	4425 2625 2900 2625
Wire Wire Line
	2900 2625 2900 2750
Wire Wire Line
	2900 2750 2600 2750
$Comp
L power:+3.3V #PWR022
U 1 1 5E967A7C
P 7800 3150
F 0 "#PWR022" H 7800 3000 50  0001 C CNN
F 1 "+3.3V" H 7815 3323 50  0000 C CNN
F 2 "" H 7800 3150 50  0001 C CNN
F 3 "" H 7800 3150 50  0001 C CNN
	1    7800 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 3150 7650 3150
Text Label 4525 3250 0    50   ~ 0
SAS_Int1
Text Label 6650 2850 2    50   ~ 0
LoRa3
Text Notes -2950 9800 0    50   ~ 0
Notes:\nThere was an accidental junction on the Common and 12V for the Relays, need to fix\n\nInterrupts need rewiring: https://www.instructables.com/id/Arduino-Interrupts/\n-THe COMM goes to GND for 5V line\n\nLinear Reg,put pin names on silkscreen\n\nLED_G should just go to 5V line and not be connected to arduino.\n\nMake AREF Accessible\nTo debounce switch will need to put a .1 micro f cap on gnd and input pin
Wire Bus Line
	695  4050 695  4885
Wire Bus Line
	4250 1500 4250 1700
Wire Bus Line
	6545 2500 6545 3350
Wire Bus Line
	6210 3735 6210 4885
$EndSCHEMATC

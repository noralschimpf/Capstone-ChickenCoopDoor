EESchema Schematic File Version 4
LIBS:CapstoneSchematic-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title "Wireless Alarm Schematic"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR?
U 1 1 5DC549DA
P 4225 2825
AR Path="/5DC549DA" Ref="#PWR?"  Part="1" 
AR Path="/5DC4244F/5DC549DA" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 4225 2575 50  0001 C CNN
F 1 "GND" H 4230 2652 50  0000 C CNN
F 2 "" H 4225 2825 50  0001 C CNN
F 3 "" H 4225 2825 50  0001 C CNN
	1    4225 2825
	0    -1   1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DC549E0
P 4225 2325
AR Path="/5DC549E0" Ref="#PWR?"  Part="1" 
AR Path="/5DC4244F/5DC549E0" Ref="#PWR032"  Part="1" 
F 0 "#PWR032" H 4225 2175 50  0001 C CNN
F 1 "+5V" H 4240 2498 50  0000 C CNN
F 2 "" H 4225 2325 50  0001 C CNN
F 3 "" H 4225 2325 50  0001 C CNN
	1    4225 2325
	0    1    -1   0   
$EndComp
$Comp
L Device:Buzzer BZ1
U 1 1 5DC609D6
P 10150 1225
F 0 "BZ1" H 10156 900 50  0000 C CNN
F 1 "Buzzer" H 10156 991 50  0000 C CNN
F 2 "Buzzer_Beeper:Buzzer_15x7.5RM7.6" V 10125 1325 50  0001 C CNN
F 3 "~" V 10125 1325 50  0001 C CNN
	1    10150 1225
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC60A34
P 10250 1125
AR Path="/5DC60A34" Ref="#PWR?"  Part="1" 
AR Path="/5DC4244F/5DC60A34" Ref="#PWR037"  Part="1" 
F 0 "#PWR037" H 10250 875 50  0001 C CNN
F 1 "GND" V 10255 997 50  0000 R CNN
F 2 "" H 10250 1125 50  0001 C CNN
F 3 "" H 10250 1125 50  0001 C CNN
	1    10250 1125
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DC69508
P 4150 1800
AR Path="/5DC69508" Ref="#PWR?"  Part="1" 
AR Path="/5DC4244F/5DC69508" Ref="#PWR030"  Part="1" 
F 0 "#PWR030" H 4150 1650 50  0001 C CNN
F 1 "+5V" H 4165 1973 50  0000 C CNN
F 2 "" H 4150 1800 50  0001 C CNN
F 3 "" H 4150 1800 50  0001 C CNN
	1    4150 1800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC69FE6
P 4150 2000
AR Path="/5DC69FE6" Ref="#PWR?"  Part="1" 
AR Path="/5DC4244F/5DC69FE6" Ref="#PWR031"  Part="1" 
F 0 "#PWR031" H 4150 1750 50  0001 C CNN
F 1 "GND" H 4155 1827 50  0000 C CNN
F 2 "" H 4150 2000 50  0001 C CNN
F 3 "" H 4150 2000 50  0001 C CNN
	1    4150 2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4150 1900 4150 2000
Text GLabel 4675 2425 2    50   Input ~ 0
Lora_Reset
Wire Wire Line
	4675 2425 4225 2425
Wire Wire Line
	6450 1600 4150 1600
Wire Wire Line
	4150 1700 6450 1700
Text Notes 8175 7650 0    50   ~ 0
11/1/2019
$Comp
L power:GND #PWR034
U 1 1 5E4A2B00
P 6350 5000
F 0 "#PWR034" H 6350 4750 50  0001 C CNN
F 1 "GND" H 6355 4827 50  0000 C CNN
F 2 "" H 6350 5000 50  0001 C CNN
F 3 "" H 6350 5000 50  0001 C CNN
	1    6350 5000
	0    1    1    0   
$EndComp
Wire Wire Line
	6450 5000 6350 5000
Wire Wire Line
	9750 1900 9050 1900
Wire Wire Line
	5300 1800 6450 1800
Wire Wire Line
	5400 1900 6450 1900
Wire Wire Line
	9600 2000 9050 2000
Wire Wire Line
	9450 2200 9050 2200
$Comp
L CapstoneSchematic:LoRa ULoRa?
U 1 1 5DC549E8
P 4125 2325
AR Path="/5DC549E8" Ref="ULoRa?"  Part="1" 
AR Path="/5DC4244F/5DC549E8" Ref="ULoRa2"  Part="1" 
F 0 "ULoRa2" H 5503 2271 50  0000 L CNN
F 1 "LoRa" H 5503 2180 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Horizontal" H 4675 2125 50  0001 C CNN
F 3 "" H 4675 2125 50  0001 C CNN
	1    4125 2325
	-1   0    0    -1  
$EndComp
$Comp
L CapstoneSchematic:BluetoothModule U3
U 1 1 5DC67D77
P 4050 1500
F 0 "U3" H 4294 885 50  0000 C CNN
F 1 "BluetoothModule" H 4294 976 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Horizontal" H 4350 1000 50  0001 C CNN
F 3 "" H 4350 1000 50  0001 C CNN
	1    4050 1500
	-1   0    0    -1  
$EndComp
$Comp
L CapstoneSchematic:Arduino_Mega2560_Shield XA1
U 1 1 5E49C0DD
P 7750 3750
F 0 "XA1" H 7750 1370 60  0000 C CNN
F 1 "Arduino_Mega2560_Shield" H 7750 1264 60  0000 C CNN
F 2 "Arduino:Arduino_Mega2560_Shield" H 8450 6500 60  0001 C CNN
F 3 "https://store.arduino.cc/arduino-mega-2560-rev3" H 8450 6500 60  0001 C CNN
	1    7750 3750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR035
U 1 1 5E54092B
P 6350 5600
F 0 "#PWR035" H 6350 5450 50  0001 C CNN
F 1 "+5V" H 6365 5773 50  0000 C CNN
F 2 "" H 6350 5600 50  0001 C CNN
F 3 "" H 6350 5600 50  0001 C CNN
	1    6350 5600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6350 5600 6450 5600
Wire Wire Line
	9750 1100 10050 1100
Wire Wire Line
	10050 1100 10050 1125
Wire Wire Line
	9750 1100 9750 1900
Wire Wire Line
	4225 2525 5300 2525
Wire Wire Line
	5300 1800 5300 2525
Wire Wire Line
	4225 2625 5400 2625
Wire Wire Line
	5400 1900 5400 2625
Wire Wire Line
	10125 2425 10150 2425
Text GLabel 9600 2000 2    50   Input ~ 0
Lora_Reset
$Comp
L Switch:SW_MEC_5G_LED SW1
U 1 1 5E936E97
P 9925 2325
F 0 "SW1" H 9925 2710 50  0000 C CNN
F 1 "SW_MEC_5G_LED" H 9925 2619 50  0000 C CNN
F 2 "" H 9925 2625 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 9925 2625 50  0001 C CNN
	1    9925 2325
	-1   0    0    1   
$EndComp
Wire Wire Line
	10125 2325 10150 2325
Wire Wire Line
	10150 2325 10150 2425
Connection ~ 10150 2425
Wire Wire Line
	10150 2425 10200 2425
$Comp
L power:GND #PWR036
U 1 1 5E944770
P 10200 2425
F 0 "#PWR036" H 10200 2175 50  0001 C CNN
F 1 "GND" V 10205 2297 50  0000 R CNN
F 2 "" H 10200 2425 50  0001 C CNN
F 3 "" H 10200 2425 50  0001 C CNN
	1    10200 2425
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9450 2425 9725 2425
Wire Wire Line
	9725 2325 9650 2325
Wire Wire Line
	9450 2200 9450 2425
Wire Wire Line
	9650 2325 9650 2100
Wire Wire Line
	9650 2100 9050 2100
$EndSCHEMATC

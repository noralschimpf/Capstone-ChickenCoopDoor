EESchema Schematic File Version 4
LIBS:CapstoneSchematic-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title "Wireless Alarm Schematic"
Date "2020-04-24"
Rev "3"
Comp "UofL ECE Capstone"
Comment1 "Adedotun Abe"
Comment2 "Michael Portaro"
Comment3 "Nathan Schimpf"
Comment4 "Jacob Berdichevsky"
$EndDescr
$Comp
L power:GND #PWR0101
U 1 1 5DC549DA
P 2800 2750
AR Path="/5DC549DA" Ref="#PWR0101"  Part="1" 
AR Path="/5DC4244F/5DC549DA" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 2800 2500 50  0001 C CNN
F 1 "GND" H 2805 2577 50  0000 C CNN
F 2 "" H 2800 2750 50  0001 C CNN
F 3 "" H 2800 2750 50  0001 C CNN
	1    2800 2750
	0    -1   1    0   
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 5DC549E0
P 2800 2250
AR Path="/5DC549E0" Ref="#PWR0102"  Part="1" 
AR Path="/5DC4244F/5DC549E0" Ref="#PWR032"  Part="1" 
F 0 "#PWR032" H 2800 2100 50  0001 C CNN
F 1 "+5V" H 2815 2423 50  0000 C CNN
F 2 "" H 2800 2250 50  0001 C CNN
F 3 "" H 2800 2250 50  0001 C CNN
	1    2800 2250
	0    1    -1   0   
$EndComp
$Comp
L Device:Buzzer BZ1
U 1 1 5DC609D6
P 8725 1150
F 0 "BZ1" H 8731 825 50  0000 C CNN
F 1 "Buzzer" H 8731 916 50  0000 C CNN
F 2 "Buzzer_Beeper:Buzzer_15x7.5RM7.6" V 8700 1250 50  0001 C CNN
F 3 "~" V 8700 1250 50  0001 C CNN
	1    8725 1150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5DC60A34
P 8825 1050
AR Path="/5DC60A34" Ref="#PWR0103"  Part="1" 
AR Path="/5DC4244F/5DC60A34" Ref="#PWR037"  Part="1" 
F 0 "#PWR037" H 8825 800 50  0001 C CNN
F 1 "GND" V 8830 922 50  0000 R CNN
F 2 "" H 8825 1050 50  0001 C CNN
F 3 "" H 8825 1050 50  0001 C CNN
	1    8825 1050
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 5DC69508
P 2725 1725
AR Path="/5DC69508" Ref="#PWR0104"  Part="1" 
AR Path="/5DC4244F/5DC69508" Ref="#PWR030"  Part="1" 
F 0 "#PWR030" H 2725 1575 50  0001 C CNN
F 1 "+5V" H 2740 1898 50  0000 C CNN
F 2 "" H 2725 1725 50  0001 C CNN
F 3 "" H 2725 1725 50  0001 C CNN
	1    2725 1725
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5DC69FE6
P 2725 1925
AR Path="/5DC69FE6" Ref="#PWR0105"  Part="1" 
AR Path="/5DC4244F/5DC69FE6" Ref="#PWR031"  Part="1" 
F 0 "#PWR031" H 2725 1675 50  0001 C CNN
F 1 "GND" H 2730 1752 50  0000 C CNN
F 2 "" H 2725 1925 50  0001 C CNN
F 3 "" H 2725 1925 50  0001 C CNN
	1    2725 1925
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2725 1825 2725 1925
Text GLabel 3250 2350 2    50   Input ~ 0
Lora_Reset
Wire Wire Line
	3250 2350 2800 2350
Wire Wire Line
	5025 1525 2725 1525
Wire Wire Line
	2725 1625 5025 1625
Text Notes 8175 7650 0    50   ~ 0
11/1/2019
$Comp
L power:GND #PWR034
U 1 1 5E4A2B00
P 4925 4925
F 0 "#PWR034" H 4925 4675 50  0001 C CNN
F 1 "GND" H 4930 4752 50  0000 C CNN
F 2 "" H 4925 4925 50  0001 C CNN
F 3 "" H 4925 4925 50  0001 C CNN
	1    4925 4925
	0    1    1    0   
$EndComp
Wire Wire Line
	5025 4925 4925 4925
Wire Wire Line
	8325 1825 7625 1825
Wire Wire Line
	3875 1725 5025 1725
Wire Wire Line
	3975 1825 5025 1825
Wire Wire Line
	8175 1925 7625 1925
Wire Wire Line
	8025 2125 7625 2125
$Comp
L CapstoneSchematic:LoRa ULoRa1
U 1 1 5DC549E8
P 2700 2250
AR Path="/5DC549E8" Ref="ULoRa1"  Part="1" 
AR Path="/5DC4244F/5DC549E8" Ref="ULoRa2"  Part="1" 
F 0 "ULoRa2" H 4078 2196 50  0000 L CNN
F 1 "LoRa" H 4078 2105 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Horizontal" H 3250 2050 50  0001 C CNN
F 3 "" H 3250 2050 50  0001 C CNN
	1    2700 2250
	-1   0    0    -1  
$EndComp
$Comp
L CapstoneSchematic:BluetoothModule U3
U 1 1 5DC67D77
P 2625 1425
F 0 "U3" H 2869 810 50  0000 C CNN
F 1 "BluetoothModule" H 2869 901 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Horizontal" H 2925 925 50  0001 C CNN
F 3 "" H 2925 925 50  0001 C CNN
	1    2625 1425
	-1   0    0    -1  
$EndComp
$Comp
L CapstoneSchematic:Arduino_Mega2560_Shield XA1
U 1 1 5E49C0DD
P 6325 3675
F 0 "XA1" H 6325 1295 60  0000 C CNN
F 1 "Arduino_Mega2560_Shield" H 6325 1189 60  0000 C CNN
F 2 "Arduino:Arduino_Mega2560_Shield" H 7025 6425 60  0001 C CNN
F 3 "https://store.arduino.cc/arduino-mega-2560-rev3" H 7025 6425 60  0001 C CNN
	1    6325 3675
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR035
U 1 1 5E54092B
P 4925 5525
F 0 "#PWR035" H 4925 5375 50  0001 C CNN
F 1 "+5V" H 4940 5698 50  0000 C CNN
F 2 "" H 4925 5525 50  0001 C CNN
F 3 "" H 4925 5525 50  0001 C CNN
	1    4925 5525
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4925 5525 5025 5525
Wire Wire Line
	8325 1025 8625 1025
Wire Wire Line
	8625 1025 8625 1050
Wire Wire Line
	8325 1025 8325 1825
Wire Wire Line
	2800 2450 3875 2450
Wire Wire Line
	3875 1725 3875 2450
Wire Wire Line
	2800 2550 3975 2550
Wire Wire Line
	3975 1825 3975 2550
Wire Wire Line
	8700 2350 8725 2350
Text GLabel 8175 1925 2    50   Input ~ 0
Lora_Reset
$Comp
L Switch:SW_MEC_5G_LED SW1
U 1 1 5E936E97
P 8500 2250
F 0 "SW1" H 8500 2635 50  0000 C CNN
F 1 "SW_MEC_5G_LED" H 8500 2544 50  0000 C CNN
F 2 "Capstone_PCB_Lib:Button" H 8500 2550 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 8500 2550 50  0001 C CNN
	1    8500 2250
	-1   0    0    1   
$EndComp
Wire Wire Line
	8700 2250 8725 2250
Wire Wire Line
	8725 2250 8725 2350
Connection ~ 8725 2350
Wire Wire Line
	8725 2350 8775 2350
$Comp
L power:GND #PWR036
U 1 1 5E944770
P 8775 2350
F 0 "#PWR036" H 8775 2100 50  0001 C CNN
F 1 "GND" V 8780 2222 50  0000 R CNN
F 2 "" H 8775 2350 50  0001 C CNN
F 3 "" H 8775 2350 50  0001 C CNN
	1    8775 2350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8025 2350 8300 2350
Wire Wire Line
	8300 2250 8225 2250
Wire Wire Line
	8025 2125 8025 2350
Wire Wire Line
	8225 2250 8225 2025
Wire Wire Line
	8225 2025 7625 2025
$EndSCHEMATC

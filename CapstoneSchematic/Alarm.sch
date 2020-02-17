EESchema Schematic File Version 4
LIBS:CapstoneSchematic-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L power:GND #PWR?
U 1 1 5DC5496C
P 3450 3200
AR Path="/5DC5496C" Ref="#PWR?"  Part="1" 
AR Path="/5DC4244F/5DC5496C" Ref="#PWR0122"  Part="1" 
F 0 "#PWR0122" H 3450 2950 50  0001 C CNN
F 1 "GND" H 3455 3027 50  0000 C CNN
F 2 "" H 3450 3200 50  0001 C CNN
F 3 "" H 3450 3200 50  0001 C CNN
	1    3450 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DC54972
P 3450 2650
AR Path="/5DC54972" Ref="R?"  Part="1" 
AR Path="/5DC4244F/5DC54972" Ref="R?"  Part="1" 
F 0 "R?" H 3380 2604 50  0000 R CNN
F 1 "220" H 3380 2695 50  0000 R CNN
F 2 "" V 3380 2650 50  0001 C CNN
F 3 "~" H 3450 2650 50  0001 C CNN
	1    3450 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC549DA
P 3050 4350
AR Path="/5DC549DA" Ref="#PWR?"  Part="1" 
AR Path="/5DC4244F/5DC549DA" Ref="#PWR0123"  Part="1" 
F 0 "#PWR0123" H 3050 4100 50  0001 C CNN
F 1 "GND" H 3055 4177 50  0000 C CNN
F 2 "" H 3050 4350 50  0001 C CNN
F 3 "" H 3050 4350 50  0001 C CNN
	1    3050 4350
	0    -1   1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DC549E0
P 3050 3850
AR Path="/5DC549E0" Ref="#PWR?"  Part="1" 
AR Path="/5DC4244F/5DC549E0" Ref="#PWR0124"  Part="1" 
F 0 "#PWR0124" H 3050 3700 50  0001 C CNN
F 1 "+5V" H 3065 4023 50  0000 C CNN
F 2 "" H 3050 3850 50  0001 C CNN
F 3 "" H 3050 3850 50  0001 C CNN
	1    3050 3850
	0    1    -1   0   
$EndComp
$Comp
L CapstoneSchematic-rescue:LoRa-CapstoneLib ULoRa?
U 1 1 5DC549E8
P 2950 3850
AR Path="/5DC549E8" Ref="ULoRa?"  Part="1" 
AR Path="/5DC4244F/5DC549E8" Ref="ULoRa?"  Part="1" 
F 0 "ULoRa?" H 4328 3796 50  0000 L CNN
F 1 "LoRa" H 4328 3705 50  0000 L CNN
F 2 "" H 3500 3650 50  0001 C CNN
F 3 "" H 3500 3650 50  0001 C CNN
	1    2950 3850
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D_RED?
U 1 1 5DC54A01
P 3450 2950
AR Path="/5DC54A01" Ref="D_RED?"  Part="1" 
AR Path="/5DC4244F/5DC54A01" Ref="D_RED?"  Part="1" 
F 0 "D_RED?" H 3443 3166 50  0000 C CNN
F 1 "LED" H 3443 3075 50  0000 C CNN
F 2 "" H 3450 2950 50  0001 C CNN
F 3 "~" H 3450 2950 50  0001 C CNN
	1    3450 2950
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC5FEC3
P 4000 5200
AR Path="/5DC5FEC3" Ref="#PWR?"  Part="1" 
AR Path="/5DC4244F/5DC5FEC3" Ref="#PWR0125"  Part="1" 
F 0 "#PWR0125" H 4000 4950 50  0001 C CNN
F 1 "GND" V 4005 5072 50  0000 R CNN
F 2 "" H 4000 5200 50  0001 C CNN
F 3 "" H 4000 5200 50  0001 C CNN
	1    4000 5200
	-1   0    0    1   
$EndComp
Wire Wire Line
	4000 5250 4000 5200
Wire Wire Line
	3450 3200 3450 3100
$Comp
L Device:Buzzer BZ?
U 1 1 5DC609D6
P 4150 2550
F 0 "BZ?" H 4156 2225 50  0000 C CNN
F 1 "Buzzer" H 4156 2316 50  0000 C CNN
F 2 "" V 4125 2650 50  0001 C CNN
F 3 "~" V 4125 2650 50  0001 C CNN
	1    4150 2550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC60A34
P 4250 2650
AR Path="/5DC60A34" Ref="#PWR?"  Part="1" 
AR Path="/5DC4244F/5DC60A34" Ref="#PWR0126"  Part="1" 
F 0 "#PWR0126" H 4250 2400 50  0001 C CNN
F 1 "GND" V 4255 2522 50  0000 R CNN
F 2 "" H 4250 2650 50  0001 C CNN
F 3 "" H 4250 2650 50  0001 C CNN
	1    4250 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 2450 4300 2450
Wire Wire Line
	4300 2450 4300 2400
Wire Wire Line
	4300 2400 4550 2400
Wire Wire Line
	4550 2400 4550 2350
Wire Wire Line
	3450 2250 3450 2500
$Comp
L power:+5V #PWR?
U 1 1 5DC5F7B9
P 3800 5250
AR Path="/5DC5F7B9" Ref="#PWR?"  Part="1" 
AR Path="/5DC4244F/5DC5F7B9" Ref="#PWR0127"  Part="1" 
F 0 "#PWR0127" H 3800 5100 50  0001 C CNN
F 1 "+5V" V 3815 5378 50  0000 L CNN
F 2 "" H 3800 5250 50  0001 C CNN
F 3 "" H 3800 5250 50  0001 C CNN
	1    3800 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 5250 3800 5300
Wire Notes Line
	4100 5400 4100 4900
Wire Notes Line
	4100 4900 2850 4900
Wire Notes Line
	2850 4900 2850 5400
Wire Notes Line
	4100 5400 2850 5400
Text Notes 3600 5250 2    50   ~ 0
From USB Adapter
$Comp
L CapstoneSchematic-rescue:BluetoothModule U?
U 1 1 5DC67D77
P 4050 1500
F 0 "U?" H 4294 885 50  0000 C CNN
F 1 "BluetoothModule" H 4294 976 50  0000 C CNN
F 2 "" H 4350 1000 50  0001 C CNN
F 3 "" H 4350 1000 50  0001 C CNN
	1    4050 1500
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DC69508
P 4150 1800
AR Path="/5DC69508" Ref="#PWR?"  Part="1" 
AR Path="/5DC4244F/5DC69508" Ref="#PWR0128"  Part="1" 
F 0 "#PWR0128" H 4150 1650 50  0001 C CNN
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
AR Path="/5DC4244F/5DC69FE6" Ref="#PWR0129"  Part="1" 
F 0 "#PWR0129" H 4150 1750 50  0001 C CNN
F 1 "GND" H 4155 1827 50  0000 C CNN
F 2 "" H 4150 2000 50  0001 C CNN
F 3 "" H 4150 2000 50  0001 C CNN
	1    4150 2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4150 1900 4150 2000
Text GLabel 3500 3950 2    50   Input ~ 0
Lora_Reset
Wire Wire Line
	3500 3950 3050 3950
Text GLabel 5050 4150 0    50   Input ~ 0
Lora_Reset
$Comp
L Switch:SW_MEC_5G Alarm_Silence
U 1 1 5DC6DC68
P 5150 4800
F 0 "Alarm_Silence" H 5150 5085 50  0000 C CNN
F 1 "SW_MEC_5G" H 5150 4994 50  0000 C CNN
F 2 "" H 5150 5000 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 5150 5000 50  0001 C CNN
	1    5150 4800
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DC6E068
P 5950 4750
AR Path="/5DC6E068" Ref="#PWR?"  Part="1" 
AR Path="/5DC4244F/5DC6E068" Ref="#PWR0130"  Part="1" 
F 0 "#PWR0130" H 5950 4600 50  0001 C CNN
F 1 "+5V" H 5965 4923 50  0000 C CNN
F 2 "" H 5950 4750 50  0001 C CNN
F 3 "" H 5950 4750 50  0001 C CNN
	1    5950 4750
	0    1    -1   0   
$EndComp
Wire Wire Line
	6000 4750 5950 4750
Connection ~ 5950 4750
Wire Wire Line
	4700 4800 4700 4250
Wire Wire Line
	6450 1600 4150 1600
Wire Wire Line
	4150 1700 6450 1700
Wire Wire Line
	3450 2250 4850 2250
Wire Wire Line
	4550 2350 4950 2350
Wire Wire Line
	3000 4050 3050 4050
Wire Wire Line
	4450 4050 4450 3950
Connection ~ 3050 4050
Wire Wire Line
	3050 4050 4450 4050
Wire Wire Line
	5300 3950 4450 3950
Wire Wire Line
	4500 4050 4500 4150
Wire Wire Line
	4500 4150 3050 4150
Text Notes 7200 7500 0    50   ~ 0
Wireless Alarm Schematic
Text Notes 7950 7650 0    50   ~ 0
11/1/2019
$Comp
L arduino:Arduino_Mega2560_Shield XA?
U 1 1 5E49C0DD
P 7750 3750
F 0 "XA?" H 7750 1370 60  0000 C CNN
F 1 "Arduino_Mega2560_Shield" H 7750 1264 60  0000 C CNN
F 2 "" H 8450 6500 60  0001 C CNN
F 3 "https://store.arduino.cc/arduino-mega-2560-rev3" H 8450 6500 60  0001 C CNN
	1    7750 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E4A2B00
P 6300 6050
F 0 "#PWR?" H 6300 5800 50  0001 C CNN
F 1 "GND" H 6305 5877 50  0000 C CNN
F 2 "" H 6300 6050 50  0001 C CNN
F 3 "" H 6300 6050 50  0001 C CNN
	1    6300 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 5000 6350 5000
$Comp
L CapstoneSchematic-cache:power_+5V #PWR?
U 1 1 5E4A411A
P 6050 5600
F 0 "#PWR?" H 6050 5450 50  0001 C CNN
F 1 "power_+5V" H 6065 5773 50  0000 C CNN
F 2 "" H 6050 5600 50  0001 C CNN
F 3 "" H 6050 5600 50  0001 C CNN
	1    6050 5600
	-1   0    0    1   
$EndComp
Wire Wire Line
	4850 800  9900 800 
Wire Wire Line
	9900 800  9900 1800
Wire Wire Line
	9900 1800 9050 1800
Wire Wire Line
	4850 800  4850 2250
Wire Wire Line
	4950 2350 4950 950 
Wire Wire Line
	9750 950  9750 1900
Wire Wire Line
	9750 1900 9050 1900
Wire Wire Line
	4950 950  9750 950 
Wire Wire Line
	6350 5000 6350 5250
Wire Wire Line
	6350 6050 6300 6050
Wire Wire Line
	4000 5250 6350 5250
Connection ~ 6350 5250
Wire Wire Line
	6350 5250 6350 6050
Wire Wire Line
	3800 5300 6250 5300
Wire Wire Line
	6250 5700 6450 5700
Wire Wire Line
	6250 5300 6250 5600
Wire Wire Line
	6250 5600 6250 5700
Wire Wire Line
	6050 5600 6250 5600
Connection ~ 6250 5600
Wire Wire Line
	6250 5600 6450 5600
Wire Wire Line
	5300 3950 5300 1800
Wire Wire Line
	5300 1800 6450 1800
Wire Wire Line
	5400 4050 5400 1900
Wire Wire Line
	5400 1900 6450 1900
Wire Wire Line
	4500 4050 5400 4050
Wire Wire Line
	5500 4150 5500 1050
Wire Wire Line
	5500 1050 9600 1050
Wire Wire Line
	9600 1050 9600 2000
Wire Wire Line
	9600 2000 9050 2000
Wire Wire Line
	5050 4150 5500 4150
Wire Wire Line
	5300 4750 5950 4750
Wire Wire Line
	4950 4800 4700 4800
Wire Wire Line
	9450 1100 9450 2100
Wire Wire Line
	9450 2100 9050 2100
Wire Wire Line
	4700 4250 5600 4250
Wire Wire Line
	5600 1100 5600 4250
Wire Wire Line
	5600 1100 9450 1100
$EndSCHEMATC

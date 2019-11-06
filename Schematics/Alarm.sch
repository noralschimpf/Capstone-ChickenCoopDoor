EESchema Schematic File Version 4
LIBS:CapstoneSchematic-cache
EELAYER 30 0
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
P 3300 4450
AR Path="/5DC5496C" Ref="#PWR?"  Part="1" 
AR Path="/5DC4244F/5DC5496C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3300 4200 50  0001 C CNN
F 1 "GND" H 3305 4277 50  0000 C CNN
F 2 "" H 3300 4450 50  0001 C CNN
F 3 "" H 3300 4450 50  0001 C CNN
	1    3300 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DC54972
P 3300 3900
AR Path="/5DC54972" Ref="R?"  Part="1" 
AR Path="/5DC4244F/5DC54972" Ref="R?"  Part="1" 
F 0 "R?" H 3230 3854 50  0000 R CNN
F 1 "220" H 3230 3945 50  0000 R CNN
F 2 "" V 3230 3900 50  0001 C CNN
F 3 "~" H 3300 3900 50  0001 C CNN
	1    3300 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC549DA
P 7400 3700
AR Path="/5DC549DA" Ref="#PWR?"  Part="1" 
AR Path="/5DC4244F/5DC549DA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7400 3450 50  0001 C CNN
F 1 "GND" H 7405 3527 50  0000 C CNN
F 2 "" H 7400 3700 50  0001 C CNN
F 3 "" H 7400 3700 50  0001 C CNN
	1    7400 3700
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DC549E0
P 7400 3200
AR Path="/5DC549E0" Ref="#PWR?"  Part="1" 
AR Path="/5DC4244F/5DC549E0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7400 3050 50  0001 C CNN
F 1 "+5V" H 7415 3373 50  0000 C CNN
F 2 "" H 7400 3200 50  0001 C CNN
F 3 "" H 7400 3200 50  0001 C CNN
	1    7400 3200
	0    -1   -1   0   
$EndComp
$Comp
L CapstoneSchematic-rescue:LoRa-CapstoneLib ULoRa?
U 1 1 5DC549E8
P 7500 3200
AR Path="/5DC549E8" Ref="ULoRa?"  Part="1" 
AR Path="/5DC4244F/5DC549E8" Ref="ULoRa?"  Part="1" 
F 0 "ULoRa?" H 8878 3146 50  0000 L CNN
F 1 "LoRa" H 8878 3055 50  0000 L CNN
F 2 "" H 8050 3000 50  0001 C CNN
F 3 "" H 8050 3000 50  0001 C CNN
	1    7500 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D_RED?
U 1 1 5DC54A01
P 3300 4200
AR Path="/5DC54A01" Ref="D_RED?"  Part="1" 
AR Path="/5DC4244F/5DC54A01" Ref="D_RED?"  Part="1" 
F 0 "D_RED?" H 3293 4416 50  0000 C CNN
F 1 "LED" H 3293 4325 50  0000 C CNN
F 2 "" H 3300 4200 50  0001 C CNN
F 3 "~" H 3300 4200 50  0001 C CNN
	1    3300 4200
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC5FEC3
P 6650 2450
AR Path="/5DC5FEC3" Ref="#PWR?"  Part="1" 
AR Path="/5DC4244F/5DC5FEC3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6650 2200 50  0001 C CNN
F 1 "GND" V 6655 2322 50  0000 R CNN
F 2 "" H 6650 2450 50  0001 C CNN
F 3 "" H 6650 2450 50  0001 C CNN
	1    6650 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 2400 6650 2450
Wire Wire Line
	3300 4450 3300 4350
$Comp
L Device:Buzzer BZ?
U 1 1 5DC609D6
P 4000 3800
F 0 "BZ?" H 4006 3475 50  0000 C CNN
F 1 "Buzzer" H 4006 3566 50  0000 C CNN
F 2 "" V 3975 3900 50  0001 C CNN
F 3 "~" V 3975 3900 50  0001 C CNN
	1    4000 3800
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC60A34
P 4100 3900
AR Path="/5DC60A34" Ref="#PWR?"  Part="1" 
AR Path="/5DC4244F/5DC60A34" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4100 3650 50  0001 C CNN
F 1 "GND" V 4105 3772 50  0000 R CNN
F 2 "" H 4100 3900 50  0001 C CNN
F 3 "" H 4100 3900 50  0001 C CNN
	1    4100 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3700 4150 3700
Wire Wire Line
	4150 3700 4150 3650
Wire Wire Line
	5650 2400 6650 2400
Wire Wire Line
	5650 2400 5650 3200
Wire Wire Line
	4150 3650 4400 3650
Wire Wire Line
	4400 3650 4400 3600
Wire Wire Line
	3300 3500 3300 3750
$Comp
L power:+5V #PWR?
U 1 1 5DC5F7B9
P 6850 2400
AR Path="/5DC5F7B9" Ref="#PWR?"  Part="1" 
AR Path="/5DC4244F/5DC5F7B9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6850 2250 50  0001 C CNN
F 1 "+5V" V 6865 2528 50  0000 L CNN
F 2 "" H 6850 2400 50  0001 C CNN
F 3 "" H 6850 2400 50  0001 C CNN
	1    6850 2400
	-1   0    0    1   
$EndComp
Wire Wire Line
	6850 2400 6850 2350
Wire Wire Line
	4300 2350 4300 3200
Wire Wire Line
	4300 2350 6850 2350
Wire Notes Line
	6550 2250 6550 2750
Wire Notes Line
	6550 2750 7800 2750
Wire Notes Line
	7800 2750 7800 2250
Wire Notes Line
	6550 2250 7800 2250
Text Notes 7050 2400 0    50   ~ 0
From USB Adapter
$Comp
L CapstoneSchematic-rescue:BluetoothModule U?
U 1 1 5DC67D77
P 3200 2600
F 0 "U?" H 3444 1985 50  0000 C CNN
F 1 "BluetoothModule" H 3444 2076 50  0000 C CNN
F 2 "" H 3500 2100 50  0001 C CNN
F 3 "" H 3500 2100 50  0001 C CNN
	1    3200 2600
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DC69508
P 3300 2900
AR Path="/5DC69508" Ref="#PWR?"  Part="1" 
AR Path="/5DC4244F/5DC69508" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3300 2750 50  0001 C CNN
F 1 "+5V" H 3315 3073 50  0000 C CNN
F 2 "" H 3300 2900 50  0001 C CNN
F 3 "" H 3300 2900 50  0001 C CNN
	1    3300 2900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC69FE6
P 3300 3100
AR Path="/5DC69FE6" Ref="#PWR?"  Part="1" 
AR Path="/5DC4244F/5DC69FE6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3300 2850 50  0001 C CNN
F 1 "GND" H 3305 2927 50  0000 C CNN
F 2 "" H 3300 3100 50  0001 C CNN
F 3 "" H 3300 3100 50  0001 C CNN
	1    3300 3100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3300 3000 3300 3100
Text GLabel 6950 3300 0    50   Input ~ 0
Lora_Reset
Wire Wire Line
	6950 3300 7400 3300
Text GLabel 5400 3500 2    50   Input ~ 0
Lora_Reset
$Comp
L Switch:SW_MEC_5G Alarm_Silence
U 1 1 5DC6DC68
P 5300 4150
F 0 "Alarm_Silence" H 5300 4435 50  0000 C CNN
F 1 "SW_MEC_5G" H 5300 4344 50  0000 C CNN
F 2 "" H 5300 4350 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 5300 4350 50  0001 C CNN
	1    5300 4150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DC6E068
P 5100 4150
AR Path="/5DC6E068" Ref="#PWR?"  Part="1" 
AR Path="/5DC4244F/5DC6E068" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5100 4000 50  0001 C CNN
F 1 "+5V" H 5115 4323 50  0000 C CNN
F 2 "" H 5100 4150 50  0001 C CNN
F 3 "" H 5100 4150 50  0001 C CNN
	1    5100 4150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5050 4150 5100 4150
Connection ~ 5100 4150
Wire Wire Line
	5100 4150 5200 4150
Wire Wire Line
	5500 4150 5750 4150
Wire Wire Line
	5750 4150 5750 3600
Wire Wire Line
	5150 3200 5650 3200
Wire Wire Line
	4300 3200 4450 3200
Wire Wire Line
	4100 3300 4100 2700
Wire Wire Line
	4100 2700 3300 2700
Wire Wire Line
	3300 2800 4050 2800
Wire Wire Line
	4050 2800 4050 3400
Wire Wire Line
	4100 3300 4450 3300
Wire Wire Line
	4050 3400 4450 3400
Wire Wire Line
	3300 3500 4450 3500
Wire Wire Line
	4400 3600 4450 3600
Wire Wire Line
	5150 3600 5750 3600
Wire Wire Line
	5150 3500 5400 3500
Wire Wire Line
	7450 3400 7400 3400
Wire Wire Line
	6000 3400 6000 3300
Connection ~ 7400 3400
Wire Wire Line
	7400 3400 6000 3400
Wire Wire Line
	5150 3300 6000 3300
Wire Wire Line
	5950 3400 5950 3500
Wire Wire Line
	5950 3500 7400 3500
Wire Wire Line
	5150 3400 5950 3400
Text Notes 7400 7500 0    50   ~ 0
Wireless Alarm Schematic
Text Notes 8150 7650 0    50   ~ 0
11/1/2019
$EndSCHEMATC

# Wireless Alarm
Atmel Solution for the Wireless alarm. Covers functions of receiving and silencing alerts from the main door. Alerts are physically informed by audio and visual indications from and LED and piezo buzzer, but may also be sent via bluetooth (low-priority). Commands for manual controls may be sent via bluetooth and transmitted to the main door as well.

# Layout
The solution is broken into a Main.c and several supporting classes.

## Main.c
Initializes all I/O; calls supporting class functions to receive and indicate exact alarm messages/alerts, transmit control signals to the main door, transmit notifications to user devices via bluetooth, and receive control signals from user devices via bluetooth.

## LoRa.c/h
Controls for transmitting and receiving from the Lora modules. This code will likely be a copy or light-implementation of the LoRa libraries for Arduino. Commands should be able to allow interaction via string input/output through the routines.

## Bluetooth.c/h
Provides wrapper class for interfacing with phones via bluetooth. This code will likely be a copy or light-implementation of existing bluetooth libraries for Arduino.

## Bluetooth_impl.c/h
Provides functional routines for all bluetooth commands. This includes formatting for alarm and control signals, as to minimize the necessary implementation in Main.c

## Alarms.c/h
Carries an enumerated set of alarm messages and codes, stored locally on both the alarm and main door. this is to allow for minimized data transmission and possibility of error.

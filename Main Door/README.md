#Main Door
Atmel Solution for the main door. Covers functions of reading light and temperature; operating the door and reacting to safety sensors; Interfacing with the LCD; and sending maintenance alerts to the wireless alarm. 

#Layout
The solution is broken into a main.c and several supporting class.

##main.c
Covers all I/O initialization; calls functions from supporting libraries to determine if the door should be opened/closed; 

##Safety.c/h
Controls all I/O related that address or require safety concers. Includes routines for responding to IR sensors, proximity switches, and limit swithces; watchdog timers and routines for opening/closing the coop door; and other potential high-priority functions.

##Environment.c/h
Controls the reading of environment sensors used to determine whether the door, under safe operation, should be opened or closed. Controls include routines reading photoresistor and temperature sensor values, as well as determining if environemnt conditions are suitable for allowing chickens to leave.
Timers for tracking how long after sunrise/sunset will be incorporated into this library as well.
User-Specified environement values (temperature, acceptable light intensity, timer delays) must be accessible or copied to this library.

##Lora.c/h
Controls for transmitting and receiving from the Lora modules. This code will likely be a copy or light-implementation of the LoRa libraries for Arduino. Commands should be able to allow interaction via string input/output through the routines.

##Display.c/h
Controls for interfacing with the LCD module directly. If the Arduino libraries this functionality, this class may be excluded.

##Display_impl.c/h
Implements functions for menu navigation and status display on the LCD. Displays status of the door, allows for manual door functions to be entered, and reads off pre-written alarm messages.

##Arduino/
Any imported libraries from the Arduino IDE that may be needed.

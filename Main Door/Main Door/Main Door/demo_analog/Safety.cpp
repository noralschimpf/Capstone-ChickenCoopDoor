/* 
* Safety.cpp
*
* Created: 3/1/2020 2:58:03 PM
* Author: natha
*/


#include "Safety.h"
#include <Arduino.h>
#include "constant_parameters.h"
// default constructor
Safety::Safety()
{
	
} //Safety

// default destructor
Safety::~Safety()
{
} //~Safety

int Safety::deviceStatus(device dev)
{
	switch(dev)
	{
		case LS1:
			return digitalRead(PIN_LIMITSWITCH_1);
		case LS2:
			return digitalRead(PIN_LIMITSWITCH_2);
		case PEC:
			return digitalRead(PIN_LASERSENSOR);
		case PrxUp:
			return digitalRead(PIN_PROX_UP);
		case PrxDn:				
			return digitalRead(PIN_PROX_DOWN);
		
	}
}
void Safety::setDevice(device dev,int state)
{
	switch (dev)
	{
		case LS1:
			isLS1Clear = state;
			break;
		case LS2:
			isLS2Clear = state;
			break;
		case PEC:
			isPECClear = state;
			break;
		case PrxUp:
			isDoorUp = state;
			break;
		case PrxDn:
			isDoorDown = state;
			break;
	}
}
void Safety::cntEventIncr(int incr)
{
	switch(incr)
	{
		case 0:
			cntEvent = 0;
			break;
		case 1:
			cntEvent++;
			break;
		default:
			
	}
}

//TODO:REWRITE
void closeDoor() {
	pinMode(PIN_RELAY_DOOROPEN, OUTPUT);
	pinMode(PIN_RELAY_DOORCLOSE, OUTPUT);

	uint8_t buttons;
	digitalWrite(PIN_RELAY_DOORCLOSE, HIGH);
	digitalWrite(PIN_RELAY_DOOROPEN, LOW);
	isClosing = true;
	Serial.println("Closing");
	for (int i = 0; i < openAndCloseTime && isOkay; i++) {
		//    for(int i =0; i< openAndCloseTime;i++){
		delay(1);
		//Check if door needs to stop
		//dspMainDoor.UpdateMenuFromButtons();//UNCOMMENT
		if (buttons & BUTTON_SELECT)
		{
			//stop door due to select
			digitalWrite(PIN_RELAY_DOORCLOSE, LOW);
			digitalWrite(PIN_RELAY_DOOROPEN, LOW);
			break;
		}
	}
	//stop door
	digitalWrite(PIN_RELAY_DOOROPEN, LOW);
	digitalWrite(PIN_RELAY_DOORCLOSE, LOW);

	isClosing = false;

	pinMode(PIN_RELAY_DOOROPEN, INPUT);
	pinMode(PIN_RELAY_DOORCLOSE, INPUT);
	Serial.println("Close Complete");
}


//TODO:REWRITE
void openDoorAction(int tme) {
	// Set relay pins to actually work
	pinMode(PIN_RELAY_DOOROPEN, OUTPUT);
	pinMode(PIN_RELAY_DOORCLOSE, OUTPUT);

	Serial.println("Relay pins set to output");
	uint8_t buttons;

	digitalWrite(PIN_RELAY_DOOROPEN, HIGH);
	digitalWrite(PIN_RELAY_DOORCLOSE, LOW);

	for (int i = 0; i < openAndCloseTime && isOkay; i++) {
		delay(1);

		//dspMainDoor.UpdateMenuFromButtons();//UNCOMMENT
		if (buttons & BUTTON_SELECT)
		{
			digitalWrite(PIN_RELAY_DOOROPEN, LOW);
			digitalWrite(PIN_RELAY_DOORCLOSE, LOW);
			break;
		}
	}
	//Stop door
	digitalWrite(PIN_RELAY_DOOROPEN, LOW);
	digitalWrite(PIN_RELAY_DOORCLOSE, LOW);

	//Stop relay from being jank
	pinMode(PIN_RELAY_DOOROPEN, INPUT);
	pinMode(PIN_RELAY_DOORCLOSE, INPUT);
}

void openDoor() {
	Serial.println("Opening");
	openDoorAction(openAndCloseTime);
	Serial.println("Open Complete");
}

//TODO:REWRITE
void emergencyOpen(){
	digitalWrite(PIN_RELAY_DOORCLOSE,LOW);
	digitalWrite(PIN_RELAY_DOOROPEN,LOW);
	pinMode(PIN_RELAY_DOORCLOSE,INPUT);
	pinMode(PIN_RELAY_DOOROPEN,INPUT);
	delay(1000);
	Serial.println("Emergency");
	openDoorAction(1000);
	//digitalWrite(led, LOW);
	pinMode(PIN_RELAY_DOORCLOSE,INPUT);
	pinMode(PIN_RELAY_DOOROPEN,INPUT);

	Serial.println("Emergency Finished");
}


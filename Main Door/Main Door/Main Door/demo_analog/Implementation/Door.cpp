/* 
* Door.cpp
*
* Created: 4/9/2020 8:06:58 PM
* Author: Jacob
*/


#include "../Contracts/Door.h"
#include "../Contracts/DoorActions.h"


// default constructor
Door::Door()
{
} //Door

// default destructor
Door::~Door()
{
} //~Door


void Door::OpenDoorAction(int tme) {
	// Set relay pins to actually work

	uint8_t buttons;
	bool isLimitSwitchActive=false;

	DoorOperation(DoorActions.OPENDOOR);
	for (int i = 0; i < tme && !isLimitSwitchActive; i++) {
		delay(1);
		
		isLimitSwitchActive=Safety::IsLimitSwitchActive();
		//buttons = lcd.readButtons();
		//if (buttons & BUTTON_SELECT)
		//{
			//break;
		//}
	}
	DoorOperation(DoorActions.STOPDOOR);
	Serial.println("Open Complete");
}

void Door::DoorOperation(DoorActions action){
	switch(action){
		case OPENDOOR:
		SetRelayInputPins(true);
		digitalWrite(PIN_RELAY_DOOROPEN, HIGH);
		digitalWrite(PIN_RELAY_DOORCLOSE, LOW);
		break;
		case CLOSEDOOR:
		SetRelayInputPins(true);
		digitalWrite(PIN_RELAY_DOOROPEN, LOW);
		digitalWrite(PIN_RELAY_DOORCLOSE, HIGH);
		break;
		case STOPDOOR:
		digitalWrite(PIN_RELAY_DOOROPEN, LOW);
		digitalWrite(PIN_RELAY_DOORCLOSE, LOW);
		SetRelayInputPins(false);
		break;
	}
}

void Door::SetRelayInputPins(bool on){
	if(on){
		pinMode(PIN_RELAY_DOOROPEN, OUTPUT);
		pinMode(PIN_RELAY_DOORCLOSE, OUTPUT);
		}else{
		pinMode(PIN_RELAY_DOOROPEN, INPUT);
		pinMode(PIN_RELAY_DOORCLOSE, INPUT);
	}
}
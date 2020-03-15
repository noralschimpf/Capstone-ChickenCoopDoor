/* 
* Safety.cpp
*
* Created: 3/1/2020 2:58:03 PM
* Author: natha
*/


/*TODOs
	*Lora alarm
	*LED state addition
	*revise open/close/stall
*/

#include "Safety.h"
#include "constant_parameters.h"
#include <Arduino.h>
// default constructor
Safety::Safety()
{
	
} //Safety

// default destructor
Safety::~Safety()
{
} //~Safety

int Safety::deviceStatus(int dev)
{
	switch(dev)
	{
		case DEVICE_LS1:
			return digitalRead(PIN_LIMITSWITCH_1);
		case DEVICE_LS2:
			return digitalRead(PIN_LIMITSWITCH_2);
		case DEVICE_PEC:
			return digitalRead(PIN_LASERSENSOR);
		case DEVICE_PRXUP:
			return digitalRead(PIN_PROX_UP);
		case DEVICE_PRXDN:				
			return digitalRead(PIN_PROX_DOWN);
		case DEVICE_DOORDIR:
			return inDoorDir;
	}
}
void Safety::setDevice(int dev, int state)
{
	switch(dev)
	{
		case DEVICE_LS1:
			isLS1Clear = state;
			break;
		case DEVICE_LS2:
			isLS2Clear = state;
			break;
		case DEVICE_PEC:
			isPECClear = state;
			break;
		case DEVICE_PRXUP:
			isDoorUp = state;
			break;
		case DEVICE_PRXDN:
			isDoorDown = state;
			break;
		case DEVICE_DOORDIR:
			inDoorDir = state;
			if(state==MVT_STALLED)
			{
				disableMotor(true,0);
			}
			else
			{
				disableMotor(false);
			}
			setRelay(state);
			break;
		default:
			break;
	}
}
void Safety::setSafetyStatus(boolean ok)
{
	isOkay = ok;
}
boolean Safety::safetyStatus()
{
	return isOkay;
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
			break;
	}
}

//TODO:REWRITE
void Safety::closeDoor()
{
	uint8_t buttons;
	setDevice(DEVICE_DOORDIR, MVT_CLOSING);
	Serial.println("Closing");

	for (int i = 0; i < OPENCLOSETIME && isOkay; i++) {
		//    for(int i =0; i< openAndCloseTime;i++){
		delay(1);
		//Check if door needs to stop
		//dspMainDoor.UpdateMenuFromButtons();//UNCOMMENT
		/*if (buttons & BUTTON_SELECT)
		{
			//stop door due to select
			digitalWrite(PIN_RELAY_DOORCLOSE, LOW);
			digitalWrite(PIN_RELAY_DOOROPEN, LOW);
			break;
		}*/
	}
	//stop door
	digitalWrite(PIN_RELAY_DOOROPEN, LOW);
	digitalWrite(PIN_RELAY_DOORCLOSE, LOW);

	setDevice(DEVICE_DOORDIR,MVT_STALLED);

	pinMode(PIN_RELAY_DOOROPEN, INPUT);
	pinMode(PIN_RELAY_DOORCLOSE, INPUT);
	Serial.println("Close Complete");
}


//TODO:REWRITE
void Safety::openDoor()
 {	
	uint8_t buttons;
	setDevice(DEVICE_DOORDIR,MVT_OPENING);
	
	
	unsigned long temp = millis();
	while((temp + OPENCLOSETIME < millis()) || deviceStatus(DEVICE_PRXUP))
	{
		delay(50);
	}
		//dspMainDoor.UpdateMenuFromButtons();//UNCOMMENT
	/*
	if (buttons & BUTTON_SELECT)
		{
			digitalWrite(PIN_RELAY_DOOROPEN, LOW);
			digitalWrite(PIN_RELAY_DOORCLOSE, LOW);
			break;
		}
		DEBUG
	*/
	}
	//Stop door
	setDevice(DEVICE_DOORDIR,MVT_STALLED);
}

//TODO:REWRITE
void Safety::emergencyOpen(){
	Serial.println("EMERGENCY OPEN:");
	setDevice(DEVICE_DOORDIR,MVT_OPENING);
	unsigned long temp = millis();
	while(deviceStatus(DEVICE_PRXUP)==0 || ((millis()-temp))<5000)
	{
		delay(50);
	}
	
	disableMotor(true,3000);
	
	/*
	digitalwrite(PIN_LED_RED,HIGH);
	TODO:
	ERROR STATE FOR LORA ALARM
	*/
}
//TODO:WRITE
void Safety::emergencyStall()
{
	Serial.println("Emergency");
	disableMotor(true, 1000);
	//digitalWrite(PIN_LED_RED, LOW);
	disableMotor(true,0);
	Serial.println("Emergency Finished");	
}
//TODO:WRITE
//Replaces setting outputs to inputs at each call
void Safety::disableMotor(bool disable, int ms)
{		
	if(disable)
	{
		digitalWrite(PIN_RELAY_DOORCLOSE,LOW);
		digitalWrite(PIN_RELAY_DOOROPEN,LOW);
		pinMode(PIN_RELAY_DOORCLOSE,INPUT);
		pinMode(PIN_RELAY_DOOROPEN,INPUT);
		Serial.println("Relay disabled\tWaiting %d ms",ms);
		delay(ms);
	}
	else
	{
		pinMode(PIN_RELAY_DOOROPEN,OUTPUT);
		pinMode(PIN_RELAY_DOORCLOSE,OUTPUT);
		Serial.println("Relay pins set to output");
	}
}

void Safety::setRelay(int doordir)
{
	switch(doordir)
	{
		case MVT_CLOSING:
			digitalWrite(PIN_RELAY_DOORCLOSE,HIGH);
			digitalWrite(PIN_RELAY_DOOROPEN,LOW);
		case MVT_STALLED:
			digitalWrite(PIN_RELAY_DOORCLOSE,LOW);
			digitalWrite(PIN_RELAY_DOOROPEN,LOW);
		case MVT_OPENING:
			digitalWrite(PIN_RELAY_DOORCLOSE,LOW);
			digitalWrite(PIN_RELAY_DOOROPEN,HIGH);
		default:
			break;
	}
}

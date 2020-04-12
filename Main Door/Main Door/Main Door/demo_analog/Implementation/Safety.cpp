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

#include "../Contracts/Safety.h"
#include "constant_parameters.h"
#include <Arduino.h>
// default constructor
Safety::Safety()
{
	setSafetyStatus(true);
	cntEventIncr(0);
	for(int i= DEVICE_LS1; i<DEVICE_DOORDIR;i++)
	{
		setDevice(i,deviceStatus(i));
	}
	setDevice(DEVICE_DOORDIR,MVT_STALLED);
	
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
void Safety::setSafetyStatus(int ok)
{
	isOkay = ok;
}
int Safety::safetyStatus()
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

int Safety::inEventCount()
{
	return cntEvent;
}

//TODO:REWRITE
void Safety::closeDoor()
{
	uint8_t buttons;
	setDevice(DEVICE_DOORDIR, MVT_CLOSING);
	
	#ifdef DEBUG
	Serial.println("Closing");
	#endif
	
	unsigned long i=0;
	
	while(((i+OPENCLOSETIME < millis()) || (deviceStatus(DEVICE_PRXDN)==0))&& isOkay==ISOK_OK)
	{
		delay(DELAY_INLOOP_MS);
	}
	
	switch(isOkay)
	{
		case ISOK_LSERR:
			#ifdef DEBUG
			Serial.println("LSERR flag caught");
			#endif
			emergencyStall();
			cntEventIncr(0);
			setSafetyStatus(ISOK_OK);
			break;
		case ISOK_PECERR:
			#ifdef DEBUG
			Serial.println("PECERR flag caught");
			#endif
			emergencyOpen();
			setSafetyStatus(ISOK_OK);
			break;
		default:
			break;
	}
	
	//stop door
	setDevice(DEVICE_DOORDIR,MVT_STALLED);
	
	#ifdef DEBUG
	Serial.println("Close Complete");
	#endif
}



void Safety::openDoor()
 {	
	//uint8_t buttons;
	setDevice(DEVICE_DOORDIR,MVT_OPENING);
	
	
	unsigned long temp = millis();
	while((temp + OPENCLOSETIME < millis()) || deviceStatus(DEVICE_PRXUP))
	{
		delay(DELAY_INLOOP_MS);
	
	/*	dspMainDoor.UpdateMenuFromButtons();
	
	if (buttons & BUTTON_SELECT)
		{
			break;
		}*/
	}
	
	//Stop door
	setDevice(DEVICE_DOORDIR,MVT_STALLED);
}

//TODO:VERIFY
void Safety::emergencyOpen(){
	
	#ifdef DEBUG
	Serial.println("EMERGENCY OPEN:");
	#endif
	
	setDevice(DEVICE_DOORDIR,MVT_OPENING);
	unsigned long temp = millis();
	while(deviceStatus(DEVICE_PRXUP)==0 || ((millis()-temp))<5000)
	{
		delay(DELAY_INLOOP_MS);
	}
	
	emergencyStall();
	
	/*
	digitalwrite(PIN_LED_RED,HIGH);
	TODO:
	ERROR STATE FOR LORA ALARM
	*/
}
//TODO:WRITE
void Safety::emergencyStall()
{
	#ifdef DEBUG
	Serial.println("Emergency Stall");
	#endif
	
	disableMotor(true, 1000);
	//digitalWrite(PIN_LED_RED, LOW);
	disableMotor(false,0);
	
	#ifdef DEBUG 
	Serial.println("Emergency Finished");	
	#endif
}
//TODO:WRITE
//Replaces setting outputs to inputs at each call
// Jacob Comment: Why are you doing digital writes here and in setRelay,
// id remove the delay from this method and add it on whoever is doing the calling, that'll elim second arg
//Seems like they're doing similar things
void Safety::disableMotor(bool disable, int ms)
{		
	if(disable)
	{
		digitalWrite(PIN_RELAY_DOORCLOSE,LOW);
		digitalWrite(PIN_RELAY_DOOROPEN,LOW);
		pinMode(PIN_RELAY_DOORCLOSE,INPUT);
		pinMode(PIN_RELAY_DOOROPEN,INPUT);
		
		#ifdef DEBUG
		Serial.println("Relay disabled\tWaiting");
		#endif
		
		delay(ms);
	}
	else
	{
		pinMode(PIN_RELAY_DOOROPEN,OUTPUT);
		pinMode(PIN_RELAY_DOORCLOSE,OUTPUT);
		
		#ifdef DEBUG
		Serial.println("Relay pins set to output");
		#endif
	}
}


void Safety::setRelay(int doordir)
{
	switch(doordir)
	{
		case MVT_CLOSING:
			digitalWrite(PIN_RELAY_DOORCLOSE,HIGH);
			digitalWrite(PIN_RELAY_DOOROPEN,LOW);
			break;
		case MVT_STALLED:
			digitalWrite(PIN_RELAY_DOORCLOSE,LOW);
			digitalWrite(PIN_RELAY_DOOROPEN,LOW);
			break;
		case MVT_OPENING:
			digitalWrite(PIN_RELAY_DOORCLOSE,LOW);
			digitalWrite(PIN_RELAY_DOOROPEN,HIGH);
			break;
		default:
			break;
	}
}

bool Safety::IsLimitSwitchActive(){
	int isActive=digitalRead(PIN_LIMITSWITCH_1);
	isActive+=digitalRead(PIN_LIMITSWITCH_2);

	Serial.println("EMERGENCY SOMETHING IN DOOR");
	
	return isActive == 0;
}

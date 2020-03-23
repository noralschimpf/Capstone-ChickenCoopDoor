/*Begining of Auto generated code by Atmel studio */
#include <Arduino.h>
#include "Display.h"
#include "Safety.h"
#include "Sensor.h"
#include <avr/interrupt.h>
/*End of auto generated code by Atmel studio */

#include <Adafruit_RGBLCDShield.h>
#include <Wire.h>
#include "./constant_parameters.h"




Adafruit_RGBLCDShield disp = Adafruit_RGBLCDShield();

//NOTE - CLASSES MUST BE INITIALIZED AS POINTERS. WILL NOT EXECUTE OTHERWISE
Display *ptrdspMainDoor;  
Safety *ptrsftMainDoor;
Sensor *ptrsnsMainDoor;
unsigned long tmeLastUpdated;


void setup() {
  
  #ifdef DEBUG
  Serial.begin(9600);
  #endif
  
  ptrdspMainDoor= new Display(disp);
  ptrsftMainDoor = new Safety();
  ptrsnsMainDoor = new Sensor(440,100,40,900000,900000);
  
 
  pinMode(PIN_LIMITSWITCH_1, INPUT_PULLUP);
  analogReference(EXTERNAL);  

  /*
  TWI INTERRUPT
  TWCR |= (1<<TWIE);
  */
  
  /* INT0 & INT1 Interrupts Enable*/
  //set both to activate on falling edge
  EICRA |= (1 << ISC11) | (1<<ISC01);
  //enable both interrupts
  EIMSK = 0x03;
  
  /*PCINT Interrupt Enable*/
  PCICR |= (1<<PCIE2)|(1<<PCIE0);
  
  
  //TODO Interrupt Vector table placement & write prevention(MCUCR)
  sei();
  
  tmeLastUpdated = millis();
  #ifdef DEBUG
  Serial.println("Init Complete");
  #endif
  
}

void loop() 
{
  // TODO: Implement sleep timer
  
  
  #ifdef DEBUG
  Serial.println("in loop");
  #endif
  
  
  if (ptrdspMainDoor->UpdateMenuFromButtons(tmeLastUpdated))
  {
	#ifdef DEBUG
	Serial.println("NEWMENU");
	#endif
	tmeLastUpdated = millis();
  }
  
  switch(ptrdspMainDoor->CurrentMenu())
  {
	  /*
	  SWITCH IS FOR INTERFACING CLASSES ACCORDING TO STATES
	  EACH MENU MAY NOT NEED A CASE
	  */
		case MENU_DAY:
			/*
			call sensor reads and
			motor ops here
			
			make sure to set display to operation
			
			if(lightVal is night) {set to MENU_NIGHT}
			*/
			break;
		case MENU_NIGHT:
			/*
			call sensor reads and
			motor ops here
			
			make sure to set display to operation
			
			if(lightVal is day) {set to MENU_DAY}
			*/
			break;
		
			
	  
  }
}




ISR(INT0_vect)//Limit Switch 1
//TODO: MESH WITH
//attachInterrupt(digitalPinToInterrupt(PIN_LIMITSWITCH_1), LimitSwitchActive, RISING);
{
	#ifdef DEBUG
	Serial.println("LS1 Interrupt");
	#endif
	
	ptrsftMainDoor->cntEventIncr(1);
	ptrsftMainDoor->setSafetyStatus(ISOK_LSERR);
	if(ptrsftMainDoor->inEventCount() >=3)
	{
		/*
		TODO:
		LORA ALARM & ERROR CODE
		*/
	}
}
ISR(INT1_vect)//Limit Switch 2
{
	#ifdef DEBUG
	Serial.println("LS2 Interrupt");
	#endif
	
	ptrsftMainDoor->cntEventIncr(1);
	ptrsftMainDoor->setSafetyStatus(ISOK_LSERR);
	if(ptrsftMainDoor->inEventCount() >=3)
	{
		/*
		TODO:
		LORA ALARM & ERROR CODE
		*/
	}
}

ISR(PCINT2_vect)
{
	if(PCINT20)
	{
		#ifdef DEBUG
		Serial.println("PEC Interrupt");
		#endif
		
		if(ptrsftMainDoor->deviceStatus(DEVICE_DOORDIR)==MVT_CLOSING)
		{
			ptrsftMainDoor->cntEventIncr(1);
			ptrsftMainDoor->setSafetyStatus(ISOK_PECERR);	
			if(ptrsftMainDoor->inEventCount() >=3)
			{
				/*
				TODO:
				LORA ALARM & ERROR CODE
				*/
			}
		}
		
	}
}
ISR(PCINT0_vect)
{
	if(PCINT4)
	{
		#ifdef DEBUG
		Serial.println("PX1 Interrupt");
		#endif
			
		ptrsftMainDoor->setDevice(DEVICE_PRXUP,1);
		ptrsftMainDoor->setDevice(DEVICE_DOORDIR,MVT_STALLED);
	}
	else if(PCINT5)
	{
		#ifdef DEBUG
		Serial.println("PX2 Interrupt");
		#endif
			
		ptrsftMainDoor->setDevice(DEVICE_PRXDN,1);
		ptrsftMainDoor->cntEventIncr(0);
		ptrsftMainDoor->setDevice(DEVICE_DOORDIR,MVT_STALLED);
	}
		
}

/*ISR(USART_RX_vect)//LoRa Message Receive 
WARNING: UNUSABLE - conflicts with serial libraries
{
	Serial.println("UART Interrupt");
}*/

/*TWI INTERRUPT UNUSABLE
WARNING: UNUSABLE - conflicts with lcd library
ISR(TWI_vect)
{
	Serial.println("TWI Interrupt");
}*/



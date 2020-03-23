/*Begining of Auto generated code by Atmel studio */
#include <Arduino.h>
#include "Display.h"
#include "Safety.h"
#include <avr/interrupt.h>
/*End of auto generated code by Atmel studio */

#include <Adafruit_RGBLCDShield.h>
#include <Wire.h>
#include "./constant_parameters.h"

//void print2ln(Adafruit_RGBLCDShield lcd, String a, String b);
boolean checkTemp();
boolean checkLight(int TimeOfDay);



double Temperature = 0;
int Light = 0;
//TODO: REPLACE VARS WITH CLASS-EQUIVALENCE
int CurrentMenu = 0;
int MenuSelect = 0;
unsigned long MenuLastUpdated = 0; //ONLY MODIFY VIA: MenuControls()
String line1;
String line2;
int ScrollCount = 0;
int ScrollTotal = 0;
boolean isClosing;
//END-TODO
char lghtstr[4];
char tempstr[4];
char sac[64];


Adafruit_RGBLCDShield disp = Adafruit_RGBLCDShield();
//NOTE - CLASSES MUST BE INITIALIZED AS POINTERS. WILL NOT EXECUTE OTHERWISE
Display *ptrdspMainDoor;  
Safety *ptrsftMainDoor;
unsigned long tmeLastUpdated;
void setup() {
  
  #ifdef DEBUG
  Serial.begin(9600);
  #endif
  
  ptrdspMainDoor= new Display(disp);
  ptrsftMainDoor = new Safety;
  
  pinMode(PIN_RELAY_DOOROPEN, INPUT);
  pinMode(PIN_RELAY_DOORCLOSE, INPUT);
  pinMode(PIN_LIMITSWITCH_1, INPUT_PULLUP);
  analogReference(EXTERNAL);  

  isClosing = false;
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

void loop() {
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
		
			
	  
  }
  //MenuSelect = GetNextMenu(lcd, CurrentMenu);
  //if (!isOkay) {
  //  isOkay = true;
  //}
}
















//boolean checkTemp()
/*Returns True if within safe temperature
  FOR DEMO DAY: hair-dryer on will provide temperature outside safe range*/
/*{
  Temperature = analogRead(PIN_TEMPSENSOR);

  Temperature = (1000.0*(Temperature/1024.0*3.3)); //Calculate mV reading
  Temperature = (Temperature-500.0);//in Celcius*100
  Temperature = ((int)((Temperature*(9.0/5.0))+3200))/100;//Fahrenheit*10
  if (Temperature>=TEMP_THRESHOLD) {return false;}
  else {return true;}
}

boolean checkLight(int TimeOfDay)
//Returns True if light crosses threshold for door operation
{
  Light = analogRead(PIN_PHOTORESISTOR);

  switch (TimeOfDay)
  {
    case MORNING:
      if (Light >= LIGHT_THRESHOLD) {
        return true;
      }
      else {
        return false;
      }
      break;
    case EVENING:
      if (Light <= LIGHT_THRESHOLD) {
        return true;
      }
      else {
        return false;
      }
      break;
    default:
      Serial.println("ERR CheckLight: Invalid TimeOfDay Arg Passed");
      return false;
  }

}*/

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

/*int GetNextMenu(Adafruit_RGBLCDShield lcd, int CurrentMenu)
{
  uint8_t buttons = lcd.readButtons();
  int NextScreen = -1;
  //select next screen and operations by current screen and button combination
  switch (CurrentMenu)
  {
    case MENU_MAIN:
      if (buttons & BUTTON_UP) {
        NextScreen = MENU_OPEN;
      }
      else if (buttons & BUTTON_DOWN) {
        NextScreen = MENU_CLOSE;
      }
      else if (buttons & BUTTON_LEFT) {
        NextScreen = MENU_DAY;
      }
      else if (buttons & BUTTON_RIGHT) {
        NextScreen = MENU_NIGHT;
      }
      else {
        NextScreen = MENU_MAIN;
      }
      break;
    case MENU_OPEN:
      //TODO:Include safety checks here?
      if (buttons & BUTTON_SELECT) {
        NextScreen = MENU_MAIN;
      }
      else {
        openDoor();
        NextScreen = MENU_MAIN;
      }
      break;
    case MENU_CLOSE:
      //TODO:Include safety checks here?
      if (buttons & BUTTON_SELECT) {
        NextScreen = MENU_MAIN;
      }
      else {
        closeDoor();
        NextScreen = MENU_MAIN;
      }
      break;
    case MENU_DAY:
      if (buttons & BUTTON_SELECT) {
        NextScreen = MENU_MAIN;
      }
      else if (checkTemp() && checkLight(MORNING)) {
        NextScreen = MENU_OPEN;
      }
      else {
        NextScreen = MENU_DAY;
      }
      break;
    case MENU_NIGHT:
      if (buttons & BUTTON_SELECT) {
        NextScreen = MENU_MAIN;
      }
      else if (checkTemp() && checkLight(EVENING)) {
        NextScreen = MENU_CLOSE;
      }
      else {
        NextScreen = MENU_NIGHT;
      }
      break;
    //TODO: ADD SAFETY/ERROR STATES
    default:
      if (buttons & BUTTON_UP) {
        NextScreen = MENU_OPEN;
      }
      else if (buttons & BUTTON_DOWN) {
        NextScreen = MENU_CLOSE;
      }
      else if (buttons & BUTTON_LEFT) {
        NextScreen = MENU_DAY;
      }
      else if (buttons & BUTTON_RIGHT) {
        NextScreen = MENU_NIGHT;
      }
      else {
        NextScreen = MENU_MAIN;
      }
      break;
  }
  return NextScreen;
}
//TODO:Add state switches within interrupts
*/



//void LimitSwitchActive() {
	//if(isClosing){
		//digitalWrite(PIN_RELAY_DOORCLOSE,LOW);
		//digitalWrite(PIN_RELAY_DOOROPEN,LOW);
		////digitalWrite(led, HIGH);
		//emergencyOpen();
		//isOkay = false;
	//}
//}

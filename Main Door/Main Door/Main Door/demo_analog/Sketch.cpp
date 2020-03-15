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


Adafruit_RGBLCDShield disp = Adafruit_RGBLCDShield();//NOTE - CLASSES MUST BE INITIALIZED AS POINTERS. WILL NOT EXECUTE OTHERWISE
Display *ptrdspMainDoor;  
Safety *ptrsftMainDoor;
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  ptrdspMainDoor= new Display(disp);
  ptrsftMainDoor = new Safety;
  //ptrdspMainDoor = &dspMainDoor;
  pinMode(PIN_RELAY_DOOROPEN, INPUT);
  pinMode(PIN_RELAY_DOORCLOSE, INPUT);
  pinMode(PIN_LIMITSWITCH_1, INPUT_PULLUP);
  analogReference(EXTERNAL);  

  isClosing = false;
  /*TWI INTERRUPT*/
  TWCR |= (1<<TWIE);
  sei();
  Serial.println("Init Complete");
  
  
}

void loop() {
  // TODO: Implement sleep timer
  //dspMainDoor.selectDisplay(MENU_MAIN,false);
  delay(REFRESH_RATE);
  Serial.println("in loop");
  if (CurrentMenu != MenuSelect)
  {
	Serial.println("NEWMENU");
	ptrdspMainDoor->UpdateMenuFromButtons();
    CurrentMenu = MenuSelect;
    MenuLastUpdated = millis();
  }
  else if (millis() - MenuLastUpdated > REFRESH_RATE)
  {
	ptrdspMainDoor->UpdateMenuFromButtons();
    //MenuControls(MenuSelect, true);
    CurrentMenu = MenuSelect;
    MenuLastUpdated = millis();
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

/*ISR(INT0_vect)//Limit Switch 1
TODO: MESH WITH
attachInterrupt(digitalPinToInterrupt(PIN_LIMITSWITCH_1), LimitSwitchActive, RISING);
{
	Serial.println("LS1 Interrupt");
}
ISR(INT1_vect)//Limit Switch 2
{
	Serial.println("LS2 Interrupt");
}*/
//ISR(PCINT20)//Photoeye
/*ISR(PCINT2_vect)
{
	if(PCINT20){Serial.println("PEC Interrupt");}
	else if(PCINT4){Serial.println("PX1 Interrupt");}
	else if(PCINT5){Serial.println("PX2 Interrupt");}
	
}*/
/*ISR(PCINT4)//Prox Switch 1
{
}
ISR(PCINT5)//Prox Switch 2
{
	
}*/
/*ISR(USART_RX_vect)//LoRa Message Receive
{
	Serial.println("UART Interrupt");
}*/

/*TWI INTERRUPT UNUSABLE
ALREADY ACTIVE IN ARDUINO LIB
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

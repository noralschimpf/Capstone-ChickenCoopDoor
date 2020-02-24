/*Begining of Auto generated code by Atmel studio */
#include <Arduino.h>
#include "Display.h"
/*End of auto generated code by Atmel studio */

#include <Adafruit_RGBLCDShield.h>
#include <Wire.h>
#include "./constant_parameters.h"
//Beginning of Auto generated function prototypes by Atmel Studio
void closeDoor();
void openDoorAction(int tme);
void openDoor();
void emergencyOpen();
void LimitSwitchActive();
//void print2ln(Adafruit_RGBLCDShield lcd, String a, String b);
boolean checkTemp();
boolean checkLight(int TimeOfDay);
//void MenuControls(int CurrentMenu, boolean isRefresh);
//int GetNextMenu(Adafruit_RGBLCDShield lcd, int CurrentMenu);
//int refreshLine(int row, String Str, int section, int len);
//End of Auto generated function prototypes by Atmel Studio





const int openAndCloseTime = 11000;
//Adafruit_RGBLCDShield lcd = Adafruit_RGBLCDShield();

//int PIN_PIN_PHOTORESISTORISTOR = A1;
//int PIN_PHOTORESISTOR = A0;
double Temperature = 0;
int Light = 0;
int CurrentMenu = 0;
int MenuSelect = 0;
unsigned long MenuLastUpdated = 0; //ONLY MODIFY VIA: MenuControls()
String line1;
String line2;
int ScrollCount = 0;
int ScrollTotal = 0;
boolean isOkay;
boolean isClosing;

char lghtstr[4];
char tempstr[4];
char sac[64];


Adafruit_RGBLCDShield disp = Adafruit_RGBLCDShield();//NOTE - CLASSES MUST BE INITIALIZED AS POINTERS. WILL NOT EXECUTE OTHERWISE
Display *ptrdspMainDoor;  
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  Display dspMainDoor(disp);
  ptrdspMainDoor = &dspMainDoor;
  pinMode(PIN_RELAY_DOOROPEN, INPUT);
  pinMode(PIN_RELAY_DOORCLOSE, INPUT);
  pinMode(PIN_LIMITSWITCH_1, INPUT_PULLUP);
  attachInterrupt(digitalPinToInterrupt(PIN_LIMITSWITCH_1), LimitSwitchActive, RISING);
	analogReference(EXTERNAL);  
  isOkay = true;
  isClosing = false;
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
//
/*void emergencyOpen() {
  digitalWrite(PIN_RELAY_DOORCLOSE, LOW);
  digitalWrite(PIN_RELAY_DOOROPEN, LOW);
  //  delay(1000);
  Serial.println("Emergency");
  openDoorAction(1000);
  //  digitalWrite(led, LOW);
  Serial.println("Emergency Finished");
}
////
void LimitSwitchActive() {
  //  if(isClosing){
  isOkay = false;
  //     digitalWrite(PIN_RELAY_DOORCLOSE,LOW);
  //     digitalWrite(PIN_RELAY_DOOROPEN,LOW);
  Serial.println("ERROR");
  //    digitalWrite(led, HIGH);
  emergencyOpen();
  isOkay = true;
  //  }
}*/












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
}
ISR(SPI_STC_vect)//Display Comms
{
	Serial.println("SPI Interrupt");
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

void LimitSwitchActive() {
  if(isClosing){
    digitalWrite(PIN_RELAY_DOORCLOSE,LOW);
    digitalWrite(PIN_RELAY_DOOROPEN,LOW);
    //digitalWrite(led, HIGH);
    emergencyOpen();
    isOkay = false;
  }
}

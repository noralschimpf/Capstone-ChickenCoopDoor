#include <Adafruit_RGBLCDShield.h>
#include <Wire.h>
#include "./constant_parameters.h"


const int MENU_MAIN = 0;
const int MENU_OPEN = 1;
const int MENU_CLOSE = 2;
const int MENU_DAY = 3;
const int MENU_NIGHT = 4;

const int REFRESH_RATE = 3000;//in ms
const int openAndCloseTime = 11000;
Adafruit_RGBLCDShield lcd = Adafruit_RGBLCDShield();

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

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);

  pinMode(PIN_RELAY_DOOROPEN, INPUT);
  pinMode(PIN_RELAY_DOORCLOSE, INPUT);
  pinMode(PIN_LIMITSWITCH_1, INPUT_PULLUP);
  attachInterrupt(digitalPinToInterrupt(PIN_LIMITSWITCH_1), LimitSwitchActive, RISING);

  lcd.begin(16, 2);
  lcd.clear();
  MenuControls(CurrentMenu,false);
  analogReference(EXTERNAL);
  
  isOkay = true;
  isClosing = false;
}

void loop() {
  // put your main code here, to run repeatedly:
  if (CurrentMenu != MenuSelect)
  {
    MenuControls(MenuSelect, false);
    CurrentMenu = MenuSelect;
    MenuLastUpdated = millis();
  }
  else if (millis() - MenuLastUpdated > REFRESH_RATE)
  {
    MenuControls(MenuSelect, true);
    CurrentMenu = MenuSelect;
    MenuLastUpdated = millis();
  }
  MenuSelect = GetNextMenu(lcd, CurrentMenu);
  if (!isOkay) {
    isOkay = true;
  }
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
    buttons = lcd.readButtons();
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

    buttons = lcd.readButtons();
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
void emergencyOpen() {
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
}


/*





*/


void print2ln(Adafruit_RGBLCDShield lcd, String a, String b)
{
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print(a);
  lcd.setCursor(0, 1);
  lcd.print(b);
  lcd.setCursor(0, 0);
}

boolean checkTemp()
/*Returns True if within safe temperature
  FOR DEMO DAY: hair-dryer on will provide temperature outside safe range*/
{
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

}

void MenuControls(int CurrentMenu, boolean isRefresh)
{
  //Set Current LCD Display
  switch (CurrentMenu)
  {
    case MENU_MAIN:
      ScrollTotal = 1;
      if (!isRefresh)
      {
        print2ln(lcd, "Main Menu", "Up:Open Dn:CloseLft:Day Rt:Night");
        lcd.setBacklight(GREEN);
        ScrollCount = 1;
      }
      else {
        ScrollCount = refreshLine(1, "Up:Open Dn:CloseLft:Day Rt:Night", ScrollCount, ScrollTotal);
      }
      break;
    case MENU_OPEN:
      ScrollCount = 0; ScrollTotal = 0;
      if (!isRefresh)
      {
        print2ln(lcd, "Opening Door", "Sel:Escape");
        lcd.setBacklight(YELLOW);
      }
      break;
    case MENU_CLOSE:
      ScrollCount = ScrollTotal = 0;
      if (!isRefresh)
      {
        print2ln(lcd, "Closing Door", "Sel:Escape");
        lcd.setBacklight(YELLOW);
      }

      break;
    case MENU_DAY:
      ScrollTotal = 1;
      checkTemp();
      checkLight(MORNING);
      
      dtostrf(Temperature,1,1,tempstr);
      
      dtostrf(Light,1,1,lghtstr);
    
      sprintf(sac,"Day Mode        Tmp:%sLht:%s",tempstr,lghtstr);
      if(!isRefresh)
      {

        
        line1 = (String)(sac);
        line2="Sel:Escape";
        print2ln(lcd,sac,line2);
        lcd.setBacklight(GREEN);
        ScrollCount = 1;
      }
      else {
        ScrollCount = refreshLine(0, "Day Mode        Tmp:" + (String)Temperature + " Lht:" + (String)Light, ScrollCount, ScrollTotal);
      }

      break;
    case MENU_NIGHT:
      ScrollTotal = 1;
      checkTemp();
      checkLight(EVENING);

//      char tempstr[4];
      dtostrf(Temperature,1,1,tempstr);
//      char lghtstr[4];
      dtostrf(Light,1,1,lghtstr);
      char sac[64];
      sprintf(sac,"Night Mode      Tmp:%sLht:%s",tempstr,lghtstr);
      if(!isRefresh)
      {
        
        

        line1 = (String)(sac);
        line2="Sel:Escape";
        print2ln(lcd,sac,line2);
        
//        print2ln(lcd,"Night Mode      Tmp:" + (String)Temperature + " Lht:" + (String)Light,"Sel:Escape");
        lcd.setBacklight(GREEN);
        ScrollCount = 1;
      }
      else{ScrollCount = refreshLine(0,sac,ScrollCount,ScrollTotal);}
      break;
    //TODO: ADD SAFETY/ERROR STATES
    default:
      ScrollTotal = 1;
      if (!isRefresh)
      {
        print2ln(lcd, "Main Menu", "Up:Open Dn:Close Lft:Day Rt:Night");
        lcd.setBacklight(GREEN);
        ScrollCount = 1;
      }
      else {
        ScrollCount = refreshLine(1, "Up:Open Dn:Close Lft:Day Rt:Night", ScrollCount, ScrollTotal);
      }
      break;
  }
}

int GetNextMenu(Adafruit_RGBLCDShield lcd, int CurrentMenu)
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

int refreshLine(int row, String Str, int section, int len)
{
  String strToPrint;

  //reset out-of-bounds section indices
  if (section > len) {
    section = 0;
  }

  //print selected section
  if (section == len) {
    strToPrint = Str.substring(section * 16);
  }
  else {
    strToPrint = Str.substring(section * 16, (section + 1) * 16);
  }
  lcd.setCursor(0, row);
  lcd.print(strToPrint);
  lcd.setCursor(0, 0);

  return section + 1;
}


//void emergencyOpen(){
//  digitalWrite(PIN_RELAY_DOORCLOSE,LOW);
//  digitalWrite(PIN_RELAY_DOOROPEN,LOW);
//  pinMode(PIN_RELAY_DOORCLOSE,INPUT);
//  pinMode(PIN_RELAY_DOOROPEN,INPUT);
//  delay(1000);
//  Serial.println("Emergency");
//  openDoorAction(1000);
////  digitalWrite(led, LOW);
//  pinMode(PIN_RELAY_DOORCLOSE,INPUT);
//  pinMode(PIN_RELAY_DOOROPEN,INPUT);
//
//  Serial.println("Emergency Finished");
//}
//
//void LimitSwitchActive() {
//  if(isClosing){
////    digitalWrite(PIN_RELAY_DOORCLOSE,LOW);
////    digitalWrite(PIN_RELAY_DOOROPEN,LOW);
////    digitalWrite(led, HIGH);
//    emergencyOpen();
//    isOkay = false;
//  }
//}

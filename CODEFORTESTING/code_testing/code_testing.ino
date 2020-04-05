#include <Adafruit_RGBLCDShield.h>
#include <Wire.h>
#include "./constant_parameters.h"



enum DoorActions{
  OPEN,CLOSE,STOP//,EMERGENCYOPEN
};

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);

  pinMode(PIN_RELAY_DOOROPEN, INPUT);
  pinMode(PIN_RELAY_DOORCLOSE, INPUT);
  pinMode(PIN_LIMITSWITCH_1, INPUT_PULLUP);

  lcd.begin(16, 2);
  lcd.clear();
  MenuControls(CurrentMenu,false);
  analogReference(EXTERNAL);
  
  isOkay = true;
  isClosing = false;
}






void loop() {
  // put your main code here, to run repeatedly:
  if(isOkay){
    DoorRecovery()
  }

}

void DoorRecovery(){}

void SetRelayInputPins(bool on){
  if(on){
    pinMode(PIN_RELAY_DOOROPEN, OUTPUT);
    pinMode(PIN_RELAY_DOORCLOSE, OUTPUT);
  }else{
    pinMode(PIN_RELAY_DOOROPEN, INPUT);
    pinMode(PIN_RELAY_DOORCLOSE, INPUT);
  }
}

void DoorOperation(DoorActions action){
  switch(action){
    case OPEN:
      SetRelayInputPins(true);
      digitalWrite(PIN_RELAY_DOOROPEN, HIGH);
      digitalWrite(PIN_RELAY_DOORCLOSE, LOW);
      break;
    case CLOSE:
      SetRelayInputPins(true);
      digitalWrite(PIN_RELAY_DOOROPEN, LOW);
      digitalWrite(PIN_RELAY_DOORCLOSE, HIGH);
      break;
    case STOP:
      digitalWrite(PIN_RELAY_DOOROPEN, LOW);
      digitalWrite(PIN_RELAY_DOORCLOSE, LOW);
      SetRelayInputPins(false);
      break;
  }
}

void openDoorAction(int tme) {
  // Set relay pins to actually work

  uint8_t buttons;

  DoorOperation(DoorActions.OPEN);
  for (int i = 0; i < openAndCloseTime; i++) {
    delay(1);

    buttons = lcd.readButtons();
    if (buttons & BUTTON_SELECT)
    {
      break;
    }
  }
  DoorOperation(DoorActions.STOP);
  Serial.println("Open Complete");
}


void CloseDoor() {

  uint8_t buttons;

  DoorOperation(DoorActions.Close);

  isClosing = true;
  
  for (int i = 0; i < openAndCloseTime && !isLimitSwitchActive(); i++) {
    delay(1);
    buttons = lcd.readButtons();
    if (buttons & BUTTON_SELECT)
    {
      break;
    }
  }
  
  DoorOperation(Door.STOP);
  isClosing = false;

  Serial.println("Close Complete");
}

bool isLimitSwitchActive(){
  int isActive=digitalRead(PIN_LIMITSWITCH_1);
  //isActive+=digitalRead(PIN_LIMITSWITCH_2);

  Serial.println("EMERGENCY SOMETHING IN DOOR");
  
  isOkay=false;
  DoorOperation.STOP();
  return isActive == 0;
}



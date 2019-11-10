#include "./Menu.h"

Menu _menu;
Door _door;

void setup()
{                
  Serial.begin(9600);
  _menu.Initialize(_door);
}   

bool displayed = false;
void loop()                     
{
  if(!displayed){
    displayed = true;
    _menu.NavigateMainMenu();
  }
}

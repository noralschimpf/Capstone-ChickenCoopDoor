#include "./Door.h"
#include <String>
#include <Arduino.h>

String _main_menu = "Main Menu: \n\t1) Open Door\n\t2) Close Door\n\t3) Settings\n\n";
String _settings_menu = "1) Morning Settings\n\t2) Evening Settings\n\t3) Back\n\n";
String _time_menu = "1) Temperature\n\t2) Light Level\n\t3) DelayTime\n\t4) Back\n\n";
String I2CtempMenu = "Press the up button for higher temp, down for lower, select for back\n";
String tempMenu = "Enter a number in Celsius for new temp (-1 for exit):\n";
Door dor;

class Menu{

    public: 
    Menu();
    void Initialize(Door d);
    void NavigateMainMenu();
    void NavigateDayOrNight();
    void NavigateSettings(bool isDaylight);
    void SetTemp(bool isDaylight);
    void SetLight(bool isDaylight){}
    void SetTimeDelay(bool isDaylight){}

};

Menu::Menu(){}

void Menu::Initialize(Door d){
    dor=d;
}

void Menu::NavigateMainMenu(){
        Serial.println(_main_menu);
        String item = Serial.readstring();

        int input = item.toInt();
        
        switch(input){
            case 1:  dor.OpenDoor();
            break;
            case 2: dor.CloseDoor();
            break;
            case 3: NavigateDayOrNight();
            break;
            default:
            NavigateMainMenu();
            break;
        }

    }

    void Menu::NavigateDayOrNight(){
        Serial.println(_settings_menu);
        String item = Serial.readstring();

        int input = item.toInt();

        switch(input){
          case 1: NavigateSettings(true);
          break;
          case 2: NavigateSettings(false);
          break;
          case 3: NavigateDayOrNight();
          break;
          default:
          NavigateDayOrNight();
          break;
        }

    }

void Menu::NavigateSettings(bool isDaylight){
        Serial.println(_time_menu);
        String item = Serial.readstring();

        int input = item.toInt();

        switch(input){
            case 1:  SetTemp(isDaylight);
            break;
            case 2: SetLight(isDaylight);
            break;
            case 3: SetTimeDelay(isDaylight);
            break;
            case 4: NavigateMainMenu();
            break;
            default: NavigateSettings(isDaylight);
        }
    }

 void Menu::SetTemp(bool isDaylight){
        Serial.println(tempMenu);

        String in = "";
        double input = 0;
        bool abort = false;
        // while(input !=-1){
        //     double currTemp = dor.GetTemp(isDaylight);
        //     Serial.println(currTemp,"Temperature %f\n");
        //     in = Serial.readstring();
        //     for(int i =0;i<in.length();i++){
        //         if(!isDigit(in[i])){
        //             abort = true;
        //             break;
        //         }
        //     }
        //     if(abort || input ==-1){
        //         abort=false;
        //         continue;
        //     }else{
        //         dor.SetTemp(isDaylight,input);
        //     }
        // }


    }
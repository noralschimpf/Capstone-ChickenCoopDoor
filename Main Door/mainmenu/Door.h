#include "./Settings.h"

class Door{
    public: 
    Door();
    void Initialize();
    void OpenDoor();
    void CloseDoor();
    double GetTemp(bool isDaylight);
    void SetTemp(bool isDaylight,double temp);

    
};

Settings _set;

Door::Door(){}

void Door::Initialize(){}

void Door::OpenDoor(){}
void Door::CloseDoor(){}

double GetTemp(bool isDaylight){
    if(isDaylight){
        return _set.MorningSettings.temp;
    }else{
        return _set.EveningSettings.temp;
    }
}


void Door::SetTemp(bool isDaylight,double temp){
    if(isDaylight){
        _set.MorningSettings.temp=temp;
    }else{
        _set.EveningSettings.temp = temp;
    }
}
#include "./DayNightSettings.h";
#ifndef Settings_h
#define Settings_h
class Settings{
    
	private:
		struct DayNightSettings MorningSettings;
		struct DayNightSettings EveningSettings;
	public:
		double GetTemp(bool isDaylight);
		int GetLumens(bool isDaylight);
		int GetActivationTime(bool isDaylight);
	
		void SetTemp(bool isDaylight,double _temp);
		void SetLumens(bool isDaylight, int _lumens);
		void SetActivationTime(bool isDaylight, int _activationTime);
};

#endif


#include "./Door.h"
#include "./constant_parameters.h"


Settings::Settings()
{
	MorningSettings = {0.0,512,60};
	EveningSettings = {0.0,512,60};
}

double Settings::GetTemp(bool isDaylight)
{
	if (isDaylight)
		return MorningSettings.temp;
	else
		return EveningSettings.temp;
}
int Settings::GetLumens(bool isDaylight)
{
	if (isDaylight)
		return MorningSettings.lumens;
	else
		return EveningSettings.lumens;
}
int Settings::GetActivationTime(bool isDaylight)
{
	if (isDaylight)
		return MorningSettings.timeToActivate;
	else
		return EveningSettings.timeToActivate;
}
void Settings::SetTemp(bool isDaylight, double _temp)
{
	if(isDaylight)
		MorningSettings.temp = _temp;
	else
		EveningSettings.temp = _temp;
}
void Settings::SetLumens(bool isDaylight, int _lumens)
{
	if (isDaylight)
		MorningSettings.lumens = _lumens;
	else
		EveningSettings.lumens = _lumens;
}
void Settings::SetActivationTime(bool isDaylight, int _activationTime)
{
	if(isDaylight)
		MorningSettings.timeToActivate = _activationTime;
	else
		EveningSettings.timeToActivate = _activationTime;
}


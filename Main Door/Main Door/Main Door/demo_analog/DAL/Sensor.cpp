/* 
* Sensor.cpp
*
* Created: 3/22/2020 7:34:26 PM
* Author: natha
*/


#include "../Contracts/Sensor.h"
#include <Arduino.h>
#include "constant_parameters.h"

/*
*TODO:
*overflow handling of timers
*/


Sensor::Sensor()
{
	dbTempConfig = 440;
	//Daylight config - from demoday code
	//nightlight config - arbitrary
	//TODO:test both
	inDaylightConfig = 100;
	inNightlightConfig = 40;
	//Set Default Delays to 1 minute, 2 minutes
	msDayDelay = 120000;
	msNightDelay = 60000;
	msDelayStart = 0;
	//TODO: Set inTimeOfDay according to door position on powerup
}

Sensor::Sensor(double tmp, int dlt, int nlt, unsigned long msd, unsigned long msn)
{
	dbTempConfig = tmp;
	inDaylightConfig = dlt;
	inNightlightConfig = nlt;
	msDayDelay = msd;
	msNightDelay = msn;
	//TODO: Set inTimeOfDay according to door position on powerup
}


Sensor::~Sensor()
{
} 

double Sensor::retTemp()
{
	return dbTemp;
}

double Sensor::retTempCfg()
{
	return dbTempConfig;
}

int Sensor::retLight()
{
	return inLight;
}

int Sensor::retLightCfg(int mode)
{
	switch(mode)
	{
		case MORNING:
			return inDaylightConfig;
			break;
		case EVENING:
			return inNightlightConfig;
			break;
	}
}

unsigned long Sensor::retMsDayCfg()
{
	return msDayDelay;
}

unsigned long Sensor::retMsNightCfg()
{
	return msNightDelay;
}

void Sensor::msDayCfg(unsigned long ms)
{
	msDayDelay = ms;
}

void Sensor::msNightCfg(unsigned long ms)
{
	msNightDelay = ms;
}

void Sensor::TempCfg(double t)
{
	dbTempConfig = t;
}

void Sensor::LightCfg(int mode, int l)
{
	switch(mode)
	{
		case MORNING:
			inDaylightConfig = l;
			break;
		case EVENING:
			inNightlightConfig = l;
			break;
	}
}

void Sensor::readTemp()
{
	dbTemp = analogRead(PIN_TEMPSENSOR);
	dbTemp = (1000.0*(dbTemp/1024.0*3.3)); //Calculate mV reading
	dbTemp = (dbTemp-500.0);//in Celcius*100
	dbTemp = ((int)((dbTemp*(9.0/5.0))+3200))/100;//Fahrenheit*10
}

void Sensor::readLight()
{
	inLight = analogRead(PIN_PHOTORESISTOR);
}
int Sensor::doorOp()
//returns MVT_XXXX based on sensor and delay statuses
{
	readLight();
	readTemp();
	switch(inTimeOfDay)
	{
		case MORNING:
			if(inLight <= inNightlightConfig)//ASK FAUL: Do chickens know to go inside if cold during day?
				{
					if(msDelayStart != 0)
					{
						if(millis() >= msDelayStart+msNightDelay)
						{
							msDelayStart = 0;
							return MVT_CLOSING;
						}
						else
						{
							return MVT_STALLED;
						}
					}
					else
					{
						msDelayStart = millis();
						return MVT_STALLED;
					}
				}
			else {return MVT_STALLED;}
			break;
		case EVENING:
			if(inLight >= inDaylightConfig && dbTemp >= dbTempConfig)
			{
				if(msDelayStart != 0)
				{
					if(millis() >= msDelayStart + msDayDelay)
					{
						
						msDelayStart = 0;
						return MVT_OPENING;
					}
					else
					{
						return MVT_STALLED;
					}
				}
				else
				{
					msDelayStart = millis();
					return MVT_STALLED;
				}
			}
			else {return MVT_STALLED;}
			break;
	}
	
}
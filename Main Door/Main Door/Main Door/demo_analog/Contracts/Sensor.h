/* 
* Sensor.h
*
* Created: 3/22/2020 7:34:26 PM
* Author: natha
*/

/*

Determines if door should be opened/closed
Timers for tracking how long after sunrise/sunset
User-Specified environment values (temperature, acceptable light intensity, timer delays) must be accessible or copied to this library.
*/


#ifndef __SENSOR_H__
#define __SENSOR_H__


class Sensor
{
//variables
public:
protected:
private:
	//Latest Sensor Readings
	double dbTemp;
	int inLight;
	//User-Configurable Values
	double dbTempConfig;
	int inDaylightConfig;
	int inNightlightConfig;
	
	//Timerstamp for Motor Delays
	unsigned long msDelayStart;
	//User-Configurable Delay Times
	unsigned long msDayDelay;
	unsigned long msNightDelay;
	
	//System-Controlled Value
	//Should be changed in Sketch.cpp
	//according to Motor Operation
	int inTimeOfDay;

//functions
public:
	Sensor();
	Sensor(double tmp, int dlt, int nlt, unsigned long msd, unsigned long msn);
	~Sensor();
	int doorOp();//returns integer indicating if door should open, close, or neither
	double retTemp();
	double retTempCfg();
	int retLight();
	int retLightCfg(int mode);
	unsigned long retMsDayCfg();
	unsigned long retMsNightCfg();
	void msDayCfg(unsigned long ms);
	void msNightCfg(unsigned long ms);
	void TempCfg(double t);
	void LightCfg(int mode, int l);
protected:
private:
	void readTemp();//reads environment sensors (photores, temp)
	void readLight();//storing to internal members
	
	Sensor( const Sensor &c );
	Sensor& operator=( const Sensor &c );

}; //Sensor

#endif //__SENSOR_H__

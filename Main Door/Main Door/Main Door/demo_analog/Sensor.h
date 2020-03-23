/* 
* Sensor.h
*
* Created: 3/22/2020 7:34:26 PM
* Author: natha
*/

/*

Determines if door should be opened/closed
Timers for tracking how long after sunrise/sunset
User-Specified environement values (temperature, acceptable light intensity, timer delays) must be accessible or copied to this library.
*/


#ifndef __SENSOR_H__
#define __SENSOR_H__


class Sensor
{
//variables
public:
protected:
private:
	float flTemp;
	int inLight;
	float flTempConfig;
	int inLightConfig;
	int msDayDelay;
	int msNightDelay;

//functions
public:
	Sensor();
	~Sensor();
	int doorOp();//returns integer indicating if door should open, close, or neither
	float retTemp();
	int retLight();
protected:
private:
	void readTemp();//reads environment sensors (photores, temp)
	void readLight();//storing to internal members
	Sensor( const Sensor &c );
	Sensor& operator=( const Sensor &c );

}; //Sensor

#endif //__SENSOR_H__

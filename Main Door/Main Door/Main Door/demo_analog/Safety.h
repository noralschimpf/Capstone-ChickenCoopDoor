/* 
* Safety.h
*
* Created: 3/1/2020 2:58:03 PM
* Author: natha
*/


#ifndef __SAFETY_H__
#define __SAFETY_H__
#include "constant_parameters.h"

class Safety
{
//variables
public:
protected:
private:
	int isPECClear;
	int isLS1Clear;
	int isLS2Clear;
	int isDoorUp;
	int isDoorDown;
	int inDoorDir;
	int cntEvent;
	bool isOkay;

//functions
public:
	Safety();
	~Safety();
	int deviceStatus(int dev);
	int inEventCount();
	bool safetyStatus();
	
	void setDevice(int dev, int state);
	void cntEventIncr(int incr);//0 reset, 1 increment
	void setSafetyStatus(bool ok);
	void openDoor();//open until (prox sensed & motor pad) or timeout
	void emergencyOpen();//raise door fully and exit operation
	void emergencyStall();
	void closeDoor();//close until (prox sensed & motor pad) or timeout
protected:
private:
	void disableMotor(bool disable, int ms = 0);
	void setRelay(int doordir);
	
	Safety( const Safety &c );
	Safety& operator=( const Safety &c );

}; //Safety

#endif //__SAFETY_H__

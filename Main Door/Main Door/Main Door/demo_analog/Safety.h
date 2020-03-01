/* 
* Safety.h
*
* Created: 3/1/2020 2:58:03 PM
* Author: natha
*/


#ifndef __SAFETY_H__
#define __SAFETY_H__


class Safety
{
//variables
public:
	enum device {LS1 = 0, LS2,PEC,PrxUp,PrxDn};
	enum posDoor {Down=-1,Other=0,Open=1};
	enum mvtDoor {Closing=-1,Stalled=0,Opening=1};
protected:
private:
	int isPECClear;
	int isLS1Clear;
	int isLS2Clear;
	int isDoorUp;
	int isDoorDown;
	int cntEvent;
	

//functions
public:
	Safety();
	~Safety();
	int deviceStatus(device dev);
	//int isOkay();//checks for immediate safety sensor concerns while closing
	
	void setDevice(device dev, int state);
	void cntEventIncr(int incr);//0 reset, 1 increment
	void openDoor();//open until (prox sensed & motor pad) or timeout
	void emergencyOpen();//raise door fully and exit operation
	void emergencyStall();
	void closeDoor();//close until (prox sensed & motor pad) or timeout
protected:
private:
	void disableMotor();
	
	Safety( const Safety &c );
	Safety& operator=( const Safety &c );

}; //Safety

#endif //__SAFETY_H__

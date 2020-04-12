/* 
* Door.h
*
* Created: 4/9/2020 8:06:58 PM
* Author: Jacob
*/


#ifndef __DOOR_H__
#define __DOOR_H__

#include "../Contracts/Safety.h"
#include "../Contracts/DoorActions.h"

class Door
{
//variables
public:
protected:
private:

//functions
public:
	Door();
	~Door();
	void OpenDoor();
	void CloseDoor();
protected:
private:
	Door( const Door &c );
	Door& operator=( const Door &c );
	void OpenDoorAction(int tme);
	void DoorOperation(DoorActions action);
	void SetRelayInputPins(bool on);

}; //Door

#endif //__DOOR_H__

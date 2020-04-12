/* 
* Display.cpp
*
* Created: 2/9/2020 1:00:02 PM
* Author: natha
*/

#include <Arduino.h>
#include "../Contracts/Display.h"
#include "constant_parameters.h"

// default constructor
Display::Display(Adafruit_RGBLCDShield _lcd)
	: lcd(_lcd)
{
	lcd.begin(16,2);
	lcd.clear();
	selectDisplay(MENU_MAIN,false);
} //Display

// default destructor
Display::~Display()
{
} //~Display

void Display::print2ln(String strTop, String strBot)
{
	lcd.clear();
	lcd.setCursor(0,0);
	lcd.print(strTop);
	lcd.setCursor(0,1);
	lcd.print(strBot);
	lcd.setCursor(0,0);
}

int Display::refreshLine()
{
	String strToPrint;
	switch (inScrollRow)
	{
		case 0:
		strToPrint = strTopLine;
		case 1:
		strToPrint = strBotLine;
	}
	
	//reset out-of-bounds section indices
	if (inScrollSectionPrinted>inScrollTotalSections){inScrollSectionPrinted=0;}
	
	//print selected section
	if(inScrollSectionPrinted==inScrollTotalSections){strToPrint=strToPrint.substring(inScrollSectionPrinted*16);}
	else {strToPrint=strToPrint.substring(inScrollSectionPrinted*16,(inScrollSectionPrinted+1)*16);}
	lcd.setCursor(0,inScrollRow);
	lcd.print(strToPrint);
	lcd.setCursor(0,0);
	
	return inScrollSectionPrinted+1;
}

void Display::setCurrentDisplay(String _top, String _bot, int _backlight, int NextStates[5],int _scrollTotal, int _scrollRow, bool _refresh)
//Sets new Display values
{
	strTopLine = _top;
	strBotLine = _bot;
	
	inScrollTotalSections = _scrollTotal;
	inScrollRow = _scrollRow;
	
	inNext[SELECT] = NextStates[0];
	inNext[UP] = NextStates[1];
	inNext[DOWN] = NextStates[2];
	inNext[LEFT] = NextStates[3];
	inNext[RIGHT] = NextStates[4];
	
	lcd.setBacklight(_backlight);
	blnIsRefreshed = _refresh;
	if (!_refresh)
	{
		inScrollSectionPrinted = 0;
		this->print2ln(_top,_bot);
	}
	else
	{
		inScrollSectionPrinted = this->refreshLine();
	}
}

void Display::selectDisplay(int inCurrentMenu, bool blnIsRefresh, char *strArg1,char *strArg2)
//Selects which menu will be displayed. Complete possibilities are present here
{
	if(blnIsRefresh) {refreshLine();}
	else
	{
		char strTemp [32];
		int inNextStates[5];
		inCurrent = inCurrentMenu;
		switch(inCurrentMenu)
		//TODO: rework as enums
		{
			case MENU_MAIN:
				assignStates(inNextStates,-1,MENU_OPEN,MENU_CLOSE,MENU_DAY,MENU_NIGHT);
				setCurrentDisplay("Main Menu","Up:Open DnClose Lft:Day Rt:Night",GREEN,
					inNextStates,2,1,false);
				break;
			case MENU_OPEN:
				assignStates(inNextStates,MENU_MAIN,-1,-1,-1,-1);
				setCurrentDisplay("Opening Door","Sel:Escape",YELLOW,inNextStates);
				break;
			case MENU_CLOSE:
				assignStates(inNextStates,MENU_MAIN,-1,-1,-1,-1);
				setCurrentDisplay("Closing Door","Sel:Escape",YELLOW,inNextStates);
				break;
			case MENU_DAY:
				//TODO: separate temperature readings/calls?
				sprintf(strTemp,"Day Mode        Tmp:%sLht:%s",strArg1,strArg2);
				assignStates(inNextStates,MENU_MAIN,-1,-1,-1,-1);
				setCurrentDisplay(strTemp,"Sel:Escape",GREEN,inNextStates,1,0);
				break;
			case MENU_NIGHT:
				//TODO: separate temperature readings/calls?
				sprintf(strTemp,"Night Mode      Tmp:%sLht:%s",strArg1,strArg2);
				assignStates(inNextStates,MENU_MAIN,-1,-1,-1,-1);
				setCurrentDisplay(strTemp,"Sel:Escape",GREEN,inNextStates,1,0);
				break;
			case MENU_ERR:
				assignStates(inNextStates, MENU_MAIN,-1,-1,-1,-1);
				setCurrentDisplay("WARNING: SAFETY ALERT TRIGGERED ","Sel:Escape",RED,inNextStates,1,0);
			default:
				assignStates(inNextStates,-1,MENU_OPEN,MENU_CLOSE,MENU_DAY,MENU_NIGHT);
				setCurrentDisplay("Main Menu","Up:Open DnCloseLft:Day Rt:Night",GREEN, inNextStates,1,1);
				break;
		}
		
	}
	
}

bool Display::UpdateMenuFromButtons(unsigned long tme)
//Reads buttons and alters for initialized menu directions
{
	uint8_t buttons = lcd.readButtons();
	if((buttons & BUTTON_SELECT) && inNext[SELECT] != -1)
	{
		selectDisplay(inNext[SELECT],false);
		return true;
	}
	else if((buttons & BUTTON_UP) && inNext[UP] != -1)
	{
		selectDisplay(inNext[UP],false);
		return true;
	}
	else if((buttons & BUTTON_DOWN) && inNext[DOWN] != -1)
	{
		selectDisplay(inNext[DOWN],false);
		return true;
	}
	else if((buttons & BUTTON_LEFT) && inNext[LEFT] != -1)
	{
		selectDisplay(inNext[LEFT],false);
		return true;
	}
	else if((buttons & BUTTON_RIGHT) && inNext[RIGHT] != -1)
	{
		selectDisplay(inNext[RIGHT],false);
		return true;
	}
	else if (tme+REFRESH_RATE>=millis())
	{
		selectDisplay(inCurrent,true);
		return true;
	}//TEST
	else {return false;}
}

void Display::assignStates(int arr[5], int a, int b, int c, int d, int e)
{//TODO: NOT THIS
	arr[0] = a;
	arr[1] = b;
	arr[2] = c;
	arr[3] = d;
	arr[4] = e;
	
	
}

int Display::CurrentMenu()
{
	return inCurrent;
}
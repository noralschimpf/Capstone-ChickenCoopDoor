/* 
* Display.h
*
* Created: 2/9/2020 1:00:02 PM
* Author: natha
*/


#ifndef __DISPLAY_H__
#define __DISPLAY_H__
#include <Adafruit_RGBLCDShield.h>

class Display
{
	//variables
	public:
		enum Next {SELECT=0,UP,DOWN,LEFT,RIGHT};
	protected:
	private:
		Adafruit_RGBLCDShield lcd;
		int inCurrent;
		int inNext [5];
		int inRefreshLine;
		int inScrollRow;
		int inScrollSectionPrinted;
		int inScrollTotalSections;
		String strTopLine;
		String strBotLine;
		bool blnIsRefreshed;
	//functions
	public:
		Display(Adafruit_RGBLCDShield _lcd);
		~Display();
		int CurrentMenu();
		int refreshLine();
		bool UpdateMenuFromButtons(unsigned long tme);
		
		void print2ln(String strTop, String strBot);
		void setCurrentDisplay(String _top, String _bot, int _backlight, int NextStates[5], int _scrollTotal = 0, int _scrollRow = -1, bool _refresh = false);
		void selectDisplay(int inCurrentMenu, bool blnIsRefresh, char *strArg1="", char *strArg2 = ""); //replaces MenuControls in sketch.cpp
	protected:
		
	private:
		Display( const Display &c );
		Display& operator=( const Display &c );
		void assignStates(int arr[5], int a, int b, int c, int d, int e);
	
}; //Display
	
#endif //__DISPLAY_H__

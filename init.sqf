/* 
###MISSION_VERSION 1.1
*/

_d = execVM "scripts\debugRPT.sqf";
waitUntil {scriptDone _d};

_p = execVM "params.sqf";
waitUntil {scriptDone _p};

_a = TOUR_Core execVM "a2s_multitask.sqf";
waitUntil {scriptDone _a};

TOUR_HQ = [WEST, "HQ"];

{
	_x setVariable ["BIS_noCoreConversations",true];
} forEach allUnits;

if (isServer) then
{
	execVM "scripts\control\tasks.sqf";
	execVM "spawn.sqf";
};

//player only

if (!isDedicated) then
{
	[] call A2S_tasksSync;

	#include "about.hpp"

	doStop player;
	sleep 2;
	if (alive player) then 
	{
		_date = date;
		_year = _date select 0;
		_month = _date select 1;
		_day = _date select 2;
		_hour = _date select 3;
		_min = _date select 4;
		_text_date = [];

		if (_min < 10) then 
		{ 
			_text_date = format ["%1-%2-%3  %4h0%5m", _month, _day, _year, _hour, _min]; 
		} 
		else 
		{  
			if (_min == 60) then
			{
				_hour = _hour + 1;
				_min = 0;
				_text_date = format ["%1-%2-%3  %4h0%5m", _month, _day, _year, _hour, _min];
			}
			else
			{
				_text_date = format ["%1-%2-%3  %4h%5m", _month, _day, _year, _hour, _min]; 
			};
		};
		_text_1 = "US Embassy";
		_text_2 = "Altis";
		sleep 2;
		[_text_1, _text_date, _text_2] execVM "scripts\control\infoText.sqf";
	};
};
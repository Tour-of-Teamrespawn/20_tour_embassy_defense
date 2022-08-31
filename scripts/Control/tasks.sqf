["TOUR_objDiplomat", {"Defend Embassy"}] call A2S_createSimpleTask;
["TOUR_objDiplomat", {"Defend the <marker name=""marker_0"">US Embassy</marker> and ensure that the ambassaor remains safe and the intel does not fall into the enemy hands."}, {"Defend Embassy"}, {"Defend Embassy"}] call A2S_setSimpleTaskDescription;
"TOUR_objDiplomat" call A2S_taskCommit;

sleep 5;

while {isNil "ambassador"} do 
{
	["You Require A Player To Be The Ambassador For This Mission To Continue!"] remoteExecCall ["hint", 0, false];
	sleep 5;
};

waitUntil {alive ambassador};

TOUR_missionTime = 1200;

waitUntil {sleep 1; ((!isNil "TOUR_gotIntel") or (time > TOUR_missionTime) or (!alive ambassador) or ({(vehicle _x distance (getMarkerPos "marker_0") > 150) && (side _x == WEST)}count playableUnits + switchableunits > 0))};

switch (true) do 
{
	case (!isNil "TOUR_gotIntel"): 
	{
		["TOUR_objDiplomat", "FAILED"] call A2S_setTaskState;
		"TOUR_objDiplomat" call A2S_taskCommit;	
		sleep 2;
		"TOUR_objDiplomat" call A2S_taskHint;	
		sleep 5;
		"intel" remoteExecCall ["BIS_fnc_endMissionServer", 0, true];
	};
	case (time > TOUR_missionTime): 
	{
		[
			[], {while {true} do {{_x allowDamage false}forEach playableUnits + switchableUnits;sleep 1;}}
		]remoteExec["spawn", 0, false];
		["TOUR_objDiplomat", "SUCCEEDED"] call A2S_setTaskState;
		"TOUR_objDiplomat" call A2S_taskCommit;

		_veh1 = createvehicle ["RHS_uh60m_d", [getMarkerPos "marker_2" select 0, getmarkerpos "marker_2" select 1, 100], [], 0, "FLY"];
		_veh2 = createvehicle ["RHS_uh60m_d", [getMarkerPos "marker_3" select 0, getmarkerpos "marker_3" select 1, 100], [], 0, "FLY"];
		_veh3 = createvehicle ["RHS_uh60m_d", [getMarkerPos "marker_4" select 0, getmarkerpos "marker_4" select 1, 100], [], 0, "FLY"];
		{
			createVehicleCrew _x;
		}forEach [_veh1, _veh2, _veh3];
		sleep 1;
		{
			_veh = _x;
			_veh allowDamage false;
			{
				_x allowDamage false;
			}forEach crew _veh;
			_wp = (group driver _veh) addWaypoint [getMarkerPos "marker_0", 200];
			_wp setWaypointType "SAD";
			_wp setWaypointBehaviour "COMBAT";
			_wp setWaypointCombatMode "RED";
		}forEach [_veh1, _veh2, _veh3];

		[[], 
		{
			if (!isDedicated) then 
			{
				enableradio true;
				sleep 2;
				TOUR_HQ sideChat "This is Command, relief force inbound, you've done a great job!";
				sleep 2;
			};
		}]remoteExec["spawn", 0, true];

		sleep 5;
		"TOUR_objDiplomat" call A2S_taskHint;
		sleep 50;
		"complete" remoteExecCall ["BIS_fnc_endMissionServer", 0, true];
	};
	case (!alive ambassador):
	{
			["TOUR_objDiplomat", "FAILED"] call A2S_setTaskState;
			"TOUR_objDiplomat" call A2S_taskCommit;	
			sleep 2;
			"TOUR_objDiplomat" call A2S_taskHint;	
			sleep 5;
			"failed" remoteExecCall ["BIS_fnc_endMissionServer", 0, true];
	};
	case ({(vehicle _x distance (getMarkerPos "marker_0") > 150) && (side _x == WEST)}count playableUnits + switchableunits > 0): 
	{
		["TOUR_objDiplomat", "FAILED"] call A2S_setTaskState;
		"TOUR_objDiplomat" call A2S_taskCommit;	
		sleep 2;
		"TOUR_objDiplomat" call A2S_taskHint;	
		sleep 5;
		"flee" remoteExecCall ["BIS_fnc_endMissionServer", 0, true];
	};
};
if (!isServer) exitWith {};

while {true} do {

sleep 180;

_spawnPos = getMarkerPos "marker_5";

_group1 = createGroup EAST;

_unit1 = _group1 createUnit ["UK3CB_CCM_O_OFF", [_spawnPos select 0,_spawnPos select 1,1], [], 1, "NONE"]; sleep 0.2;
_unit2 = _group1 createUnit ["UK3CB_CCM_O_SL", [_spawnPos select 0,_spawnPos select 1,1], [], 1, "NONE"]; sleep 0.2;
_unit3 = _group1 createUnit ["UK3CB_CCM_O_RIF_2", [_spawnPos select 0,_spawnPos select 1,1], [], 1, "NONE"]; sleep 0.2;
_unit4 = _group1 createUnit ["UK3CB_CCM_O_AR", [_spawnPos select 0,_spawnPos select 1,1], [], 1, "NONE"]; sleep 0.2;
_unit5 = _group1 createUnit ["UK3CB_CCM_O_DEM", [_spawnPos select 0,_spawnPos select 1,1], [], 1, "NONE"]; sleep 0.2;
_unit6 = _group1 createUnit ["UK3CB_CCM_O_AR", [_spawnPos select 0,_spawnPos select 1,1], [], 1, "NONE"]; sleep 0.2;
_unit7 = _group1 createUnit ["UK3CB_CCM_O_SL", [_spawnPos select 0,_spawnPos select 1,1], [], 1, "NONE"]; sleep 0.2;
_unit8 = _group1 createUnit ["UK3CB_CCM_O_AR", [_spawnPos select 0,_spawnPos select 1,1], [], 1, "NONE"]; sleep 0.2;
_unit9 = _group1 createUnit ["UK3CB_CCM_O_RIF_1", [_spawnPos select 0,_spawnPos select 1,1], [], 1, "NONE"]; sleep 0.2;
_unit10 = _group1 createUnit ["UK3CB_CCM_O_RIF_2", [_spawnPos select 0,_spawnPos select 1,1], [], 1, "NONE"]; sleep 0.2;
_unit11 = _group1 createUnit ["UK3CB_CCM_O_RIF_BOLT", [_spawnPos select 0,_spawnPos select 1,1], [], 1, "NONE"]; sleep 0.2;
_unit12 = _group1 createUnit ["UK3CB_CCM_O_SNI", [_spawnPos select 0,_spawnPos select 1,1], [], 1, "NONE"]; sleep 0.2;
_unit13 = _group1 createUnit ["UK3CB_CCM_O_TL", [_spawnPos select 0,_spawnPos select 1,1], [], 1, "NONE"]; sleep 0.2;

			_wp = _group1 addWaypoint [getMarkerPos "marker_1", 10];
			_wp setWaypointType "SAD";
			
_spawnPos = getMarkerPos "marker_6";

_group2 = createGroup EAST;

_unit14 = _group2 createUnit ["UK3CB_CCM_O_OFF", [_spawnPos select 0,_spawnPos select 1,1], [], 1, "NONE"]; sleep 0.2;
_unit15 = _group2 createUnit ["UK3CB_CCM_O_SL", [_spawnPos select 0,_spawnPos select 1,1], [], 1, "NONE"]; sleep 0.2;
_unit16 = _group2 createUnit ["UK3CB_CCM_O_RIF_2", [_spawnPos select 0,_spawnPos select 1,1], [], 1, "NONE"]; sleep 0.2;
_unit17 = _group2 createUnit ["UK3CB_CCM_O_AR", [_spawnPos select 0,_spawnPos select 1,1], [], 1, "NONE"]; sleep 0.2;
_unit18 = _group2 createUnit ["UK3CB_CCM_O_DEM", [_spawnPos select 0,_spawnPos select 1,1], [], 1, "NONE"]; sleep 0.2;
_unit19 = _group2 createUnit ["UK3CB_CCM_O_AR", [_spawnPos select 0,_spawnPos select 1,1], [], 1, "NONE"]; sleep 0.2;
_unit20 = _group2 createUnit ["UK3CB_CCM_O_SL", [_spawnPos select 0,_spawnPos select 1,1], [], 1, "NONE"]; sleep 0.2;
_unit21 = _group2 createUnit ["UK3CB_CCM_O_AR", [_spawnPos select 0,_spawnPos select 1,1], [], 1, "NONE"]; sleep 0.2;
_unit22 = _group2 createUnit ["UK3CB_CCM_O_RIF_1", [_spawnPos select 0,_spawnPos select 1,1], [], 1, "NONE"]; sleep 0.2;
_unit23 = _group2 createUnit ["UK3CB_CCM_O_RIF_2", [_spawnPos select 0,_spawnPos select 1,1], [], 1, "NONE"]; sleep 0.2;
_unit24 = _group2 createUnit ["UK3CB_CCM_O_RIF_BOLT", [_spawnPos select 0,_spawnPos select 1,1], [], 1, "NONE"]; sleep 0.2;
_unit25 = _group2 createUnit ["UK3CB_CCM_O_SNI", [_spawnPos select 0,_spawnPos select 1,1], [], 1, "NONE"]; sleep 0.2;
_unit26 = _group2 createUnit ["UK3CB_CCM_O_TL", [_spawnPos select 0,_spawnPos select 1,1], [], 1, "NONE"]; sleep 0.2;

			_wp = _group2 addWaypoint [getMarkerPos "marker_1", 10];
			_wp setWaypointType "SAD";
			
_spawnPos = getMarkerPos "marker_7";

_group3 = createGroup EAST;

_unit27 = _group3 createUnit ["UK3CB_CCM_O_OFF", [_spawnPos select 0,_spawnPos select 1,1], [], 1, "NONE"]; sleep 0.2;
_unit28 = _group3 createUnit ["UK3CB_CCM_O_SL", [_spawnPos select 0,_spawnPos select 1,1], [], 1, "NONE"]; sleep 0.2;
_unit29 = _group3 createUnit ["UK3CB_CCM_O_RIF_2", [_spawnPos select 0,_spawnPos select 1,1], [], 1, "NONE"]; sleep 0.2;
_unit30 = _group3 createUnit ["UK3CB_CCM_O_AR", [_spawnPos select 0,_spawnPos select 1,1], [], 1, "NONE"]; sleep 0.2;
_unit31 = _group3 createUnit ["UK3CB_CCM_O_DEM", [_spawnPos select 0,_spawnPos select 1,1], [], 1, "NONE"]; sleep 0.2;
_unit32 = _group3 createUnit ["UK3CB_CCM_O_AR", [_spawnPos select 0,_spawnPos select 1,1], [], 1, "NONE"]; sleep 0.2;
_unit33 = _group3 createUnit ["UK3CB_CCM_O_SL", [_spawnPos select 0,_spawnPos select 1,1], [], 1, "NONE"]; sleep 0.2;
_unit34 = _group3 createUnit ["UK3CB_CCM_O_AR", [_spawnPos select 0,_spawnPos select 1,1], [], 1, "NONE"]; sleep 0.2;
_unit35 = _group3 createUnit ["UK3CB_CCM_O_RIF_1", [_spawnPos select 0,_spawnPos select 1,1], [], 1, "NONE"]; sleep 0.2;
_unit36 = _group3 createUnit ["UK3CB_CCM_O_RIF_2", [_spawnPos select 0,_spawnPos select 1,1], [], 1, "NONE"]; sleep 0.2;
_unit37 = _group3 createUnit ["UK3CB_CCM_O_RIF_BOLT", [_spawnPos select 0,_spawnPos select 1,1], [], 1, "NONE"]; sleep 0.2;
_unit38 = _group3 createUnit ["UK3CB_CCM_O_SNI", [_spawnPos select 0,_spawnPos select 1,1], [], 1, "NONE"]; sleep 0.2;
_unit39 = _group3 createUnit ["UK3CB_CCM_O_TL", [_spawnPos select 0,_spawnPos select 1,1], [], 1, "NONE"]; sleep 0.2;

			_wp = _group3 addWaypoint [getMarkerPos "marker_1", 10];
			_wp setWaypointType "SAD";
			
};
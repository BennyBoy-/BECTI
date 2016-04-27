private ["_town"];

CTI_Towns = [];

if (CTI_Log_Level >= CTI_Log_Information) then {
	["INFORMATION", "FILE: Common\Init\Init_Locations.sqf", "Retrieving all the towns, searching for 'FlagPole_F' mission objects..."] call CTI_CO_FNC_Log;
};

{
	waitUntil {!isNil {_x getVariable "cti_town_sv"}};
	CTI_Towns pushBack _x;
} forEach allMissionObjects "FlagPole_F";

if (CTI_Log_Level >= CTI_Log_Information) then {
	["INFORMATION", "FILE: Common\Init\Init_Locations.sqf", format["Retrieved %1 towns, the towns are now ready", count CTI_Towns]] call CTI_CO_FNC_Log;
};

CTI_InitTowns = true;
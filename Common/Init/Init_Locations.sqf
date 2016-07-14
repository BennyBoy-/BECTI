private ["_town"];

CTI_Towns = [];

if (CTI_Log_Level >= CTI_Log_Information) then {
	["INFORMATION", "FILE: Common\Init\Init_Locations.sqf", "Retrieving all the towns, searching for mission objects..."] call CTI_CO_FNC_Log;
};

//--- Pull all the towns flag
{
	waitUntil {!isNil {_x getVariable "cti_town_sv"}};
	CTI_Towns pushBack _x;
} forEach allMissionObjects "FlagPole_F";

//--- Pull all the towns depot and update the town
{
	if !(isNil {_x getVariable "cti_depot"}) then {
		if (CTI_Log_Level >= CTI_Log_Information) then {
			["INFORMATION", "FILE: Common\Init\Init_Locations.sqf", format["Retrieved Town Depot [%1] (%2) for town [%3]", _x, typeOf _x, _x getVariable "cti_depot"]] call CTI_CO_FNC_Log;
		};
		
		(_x getVariable "cti_depot") setVariable ["cti_town_depot", _x];
		_x allowDamage false;
	};
} forEach allMissionObjects CTI_TOWNS_DEPOT_CLASSNAME;

if (CTI_Log_Level >= CTI_Log_Information) then {
	["INFORMATION", "FILE: Common\Init\Init_Locations.sqf", format["Retrieved %1 towns, the towns are now ready", count CTI_Towns]] call CTI_CO_FNC_Log;
};

CTI_InitTowns = true;
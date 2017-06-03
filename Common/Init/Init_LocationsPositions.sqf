_range = (CTI_TOWNS_RESISTANCE_SPAWN_RANGE + CTI_TOWNS_OCCUPATION_SPAWN_RANGE) / 2;

if (CTI_Log_Level >= CTI_Log_Information) then {
	["INFORMATION", "FILE: Common\Init\Init_TownsPositions.sqf", format["Scanning all [%1] towns for valid position and structures within [%2] meters", count CTI_Towns, _range]] call CTI_CO_FNC_Log;
};

//--- Scan all towns
{
	_town_buildings = [];
	
	{
		_bpos = _x buildingPos -1;
		if (count _bpos > 0) then {_town_buildings pushBack _x};
	} forEach (nearestObjects [_x, ["Building"], _range]);
	
	if (count _town_buildings > 0) then {_x setVariable ["cti_town_spawn_building", _town_buildings]};
	
	if (CTI_Log_Level >= CTI_Log_Information) then {
		["INFORMATION", "FILE: Common\Init\Init_TownsPositions.sqf", format["Scanned town [%1] and found [%2] valid building", _x getVariable "cti_town_name", count _town_buildings]] call CTI_CO_FNC_Log;
	};
	
	// {
		// _marker = createMarkerLocal [format ["cti_town_marker_%1", str _x], getPos _x];
		// _marker setMarkerTypeLocal "mil_dot";
		// _marker setMarkerColorLocal "ColorBlack";
		// _marker setMarkerSizeLocal [0.5, 0.5]; 
	// } forEach _town_buildings;
} forEach CTI_Towns;
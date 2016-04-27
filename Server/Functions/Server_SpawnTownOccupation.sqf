/*
  # HEADER #
	Script: 		Server\Functions\Server_SpawnTownOccupation.sqf
	Alias:			CTI_SE_FNC_SpawnTownOccupation
	Description:	This script will spawn the town occupation whenever a threat is 
					detected near a town.
					Note that this function can be replaced by another one. 
					Keep in mind to keep an identical return format.
	Author: 		Benny
	Creation Date:	23-09-2013
	Revision Date:	10-10-2013
	
  # PARAMETERS #
    0	[Object]: The town
    1	[Side]: The side which hold the town
	
  # RETURNED VALUE #
	0   [Array]: The created groups
	1   [Array]: The created vehicles
	
  # SYNTAX #
	[TOWN, SIDE] call CTI_SE_FNC_SpawnTownOccupation
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_ArrayPush
	Common Function: CTI_CO_FNC_ArrayShuffle
	Common Function: CTI_CO_FNC_CreateUnit
	Common Function: CTI_CO_FNC_CreateVehicle
	Common Function: CTI_CO_FNC_GetEmptyPosition
	Common Function: CTI_CO_FNC_GetRandomPosition
	Common Function: CTI_CO_FNC_GetSideID
	Common Function: CTI_CO_FNC_GetSideUpgrades
	Common Function: CTI_CO_FNC_ManVehicle
	Server Function: CTI_SE_FNC_HandleEmptyVehicle
	
  # EXAMPLE #
    [Town0, West] call CTI_SE_FNC_SpawnTownOccupation
	  -> Will spawn West defense forces for Town0
*/

private ["_groups", "_pool", "_pool_units", "_positions", "_side", "_sideID", "_teams", "_totalGroups", "_town", "_upgrade", "_value", "_vehicles"];

_town = _this select 0;
_side = _this select 1;
_sideID = (_side) call CTI_CO_FNC_GetSideID;
_upgrade = (_side call CTI_CO_FNC_GetSideUpgrades) select CTI_UPGRADE_TOWNS;

_value = _town getVariable "cti_town_sv"; //--- Occupation spawning is based on the current SV

//--- Calculate the Group size by scaling the SV and randomizing the input, min max scaling
_max_squad = 6;
_max_squad_random = 2;
_max_sv = 120;

_randomGroups = (_value / _max_sv) * _max_squad_random;
_totalGroups = round(((_value / _max_sv) * _max_squad) + random(_randomGroups) - random(_randomGroups));
if (_totalGroups < 1) then {_totalGroups = 1};

_pool_units = [];

//--- Pool data: [<GROUP>, <PRESENCE>, {<SPAWN PROBABILITY>}], nesting is possible to narrow down some choices
switch (true) do {
	case (_value < 50) : { 
		_pool_units = [
			["TOWNS_SQUAD_LIGHT", 3], 
			["TOWNS_SQUAD_LIGHT_2", 2], 
			["TOWNS_SQUAD_MOTORIZED_1", 1, 20], 
			["TOWNS_SQUAD_MOTORIZED_2", 1, 25]
		];
	};
	case (_value >= 50 && _value <= 60) : { 
		_pool_units = [
			["TOWNS_SQUAD_LIGHT", 2], 
			["TOWNS_SQUAD_LIGHT_2", 2], 
			["TOWNS_SQUAD_AA", 1, 75], 
			["TOWNS_SQUAD_AT", 2], 
			[
				["TOWNS_SNIPERS_1", 1, 35], 
				["TOWNS_SNIPERS_2", 1, 35]
			],
			[
				["TOWNS_SQUAD_MOTORIZED_1", 1, 70],
				["TOWNS_SQUAD_MOTORIZED_2", 1, 70]
			], 
			["TOWNS_APC_LIGHT", 1, 20], 
			[
				["TOWNS_MOTORIZED_HMG", 1, 50],
				["TOWNS_MOTORIZED_MIXED_LIGHT", 1, 25]
			]
		];
	};
	case (_value > 60 && _value <= 80) : { 
		_pool_units = [
			["TOWNS_SQUAD_LIGHT", 2], 
			["TOWNS_SQUAD_LIGHT_2", 2], 
			["TOWNS_SQUAD_MEDIUM", 2], 
			["TOWNS_SQUAD_AA", 1, 80], 
			["TOWNS_SQUAD_AT", 2], 
			[
				["TOWNS_SNIPERS_1", 1, 60], 
				["TOWNS_SNIPERS_2", 1, 60]
			],
			["TOWNS_SQUAD_MOTORIZED_1"], 
			["TOWNS_SQUAD_MOTORIZED_2"], 
			[
				["TOWNS_SQUAD_APC_1", 1, 60],
				["TOWNS_SQUAD_APC_2", 1, 60]
			],				
			[
				["TOWNS_AAV"], 
				["TOWNS_APC_LIGHT"], 
				["TOWNS_APC_MEDIUM", 1, 40]
			],
			[
				["TOWNS_MOTORIZED_HMG", 1, 75],
				["TOWNS_MOTORIZED_GMG", 1, 50]
			], 
			[
				["TOWNS_TANKS_LIGHT", 1, 70],
				["TOWNS_TANKS_MEDIUM", 1, 50]
			], 
			["TOWNS_MOTORIZED_MIXED_LIGHT", 1, 40]
		];
	};
	case (_value > 80 && _value <= 100) : { 
		_pool_units = [
			["TOWNS_SQUAD_LIGHT", 2], 
			["TOWNS_SQUAD_LIGHT_2"], 
			["TOWNS_SQUAD_MEDIUM", 2], 
			["TOWNS_SQUAD_AA"], 
			["TOWNS_SQUAD_AT", 2], 
			[
				["TOWNS_SPECIAL", 1, 40], 
				["TOWNS_SNIPERS_1", 1, 75], 
				["TOWNS_SNIPERS_2", 1, 80]
			],
			[
				["TOWNS_SQUAD_MOTORIZED_1", 1, 60], 
				["TOWNS_SQUAD_MOTORIZED_2", 1, 50]
			], 
			[
				["TOWNS_AAV"],
				["TOWNS_SQUAD_APC_1"],
				["TOWNS_SQUAD_APC_2"]
			],
			[
				["TOWNS_APC_MEDIUM", 1, 90], 
				["TOWNS_APC_HEAVY", 1, 75]
			], 
			[
				["TOWNS_MOTORIZED_HMG", 1, 75],
				["TOWNS_MOTORIZED_GMG", 1, 75]
			], 
			[
				["TOWNS_TANKS_LIGHT", 1, 90],
				["TOWNS_TANKS_MEDIUM", 1, 80],
				["TOWNS_TANKS_HEAVY", 1, 70]
			], 
			[
				["TOWNS_MOTORIZED_MIXED_LIGHT", 1, 60],
				["TOWNS_MOTORIZED_MIXED_HEAVY", 1, 45]
			]
		];
	};
	case (_value > 100 && _value <= 120) : { 
		_pool_units = [
			["TOWNS_SQUAD_LIGHT"], 
			["TOWNS_SQUAD_LIGHT_2"], 
			["TOWNS_SQUAD_MEDIUM", 2], 
			["TOWNS_SQUAD_AA"], 
			["TOWNS_SQUAD_AT", 2], 
			[
				["TOWNS_SPECIAL", 1, 40], 
				["TOWNS_SNIPERS_1", 1, 75], 
				["TOWNS_SNIPERS_2", 1, 80]
			],
			[
				["TOWNS_SQUAD_MOTORIZED_1", 1, 60], 
				["TOWNS_SQUAD_MOTORIZED_2", 1, 50]
			], 
			[
				["TOWNS_AAV"],
				["TOWNS_AAV_HEAVY"],
				["TOWNS_SQUAD_APC_1"],
				["TOWNS_SQUAD_APC_2"]
			],
			[
				["TOWNS_APC_MEDIUM"], 
				["TOWNS_APC_HEAVY", 2]
			], 
			[
				["TOWNS_MOTORIZED_HMG"],
				["TOWNS_MOTORIZED_GMG"]
			], 
			[
				["TOWNS_TANKS_LIGHT"],
				["TOWNS_TANKS_MEDIUM", 2, 90],
				["TOWNS_TANKS_HEAVY", 1, 80]
			], 
			[
				["TOWNS_MOTORIZED_MIXED_LIGHT", 1, 85],
				["TOWNS_MOTORIZED_MIXED_HEAVY", 1, 70]
			]
		];
	};
	case (_value > 120) : { 
		_pool_units = [
			["TOWNS_SQUAD_LIGHT"], 
			["TOWNS_SQUAD_LIGHT_2"], 
			["TOWNS_SQUAD_MEDIUM", 2], 
			["TOWNS_SQUAD_AA"], 
			["TOWNS_SQUAD_AT", 2], 
			[
				["TOWNS_SPECIAL", 1, 75], 
				["TOWNS_SNIPERS_1"], 
				["TOWNS_SNIPERS_2"]
			],
			[
				["TOWNS_SQUAD_MOTORIZED_1", 1, 75], 
				["TOWNS_SQUAD_MOTORIZED_2", 1, 80]
			], 
			[
				["TOWNS_AAV"],
				["TOWNS_AAV_HEAVY"],
				["TOWNS_SQUAD_APC_1"],
				["TOWNS_SQUAD_APC_2"]
			],
			[
				["TOWNS_APC_MEDIUM"], 
				["TOWNS_APC_HEAVY", 2]
			], 
			[
				["TOWNS_MOTORIZED_HMG"],
				["TOWNS_MOTORIZED_GMG"]
			], 
			[
				["TOWNS_TANKS_LIGHT"],
				["TOWNS_TANKS_MEDIUM", 2],
				["TOWNS_TANKS_HEAVY", 3]
			], 
			[
				["TOWNS_MOTORIZED_MIXED_LIGHT"],
				["TOWNS_MOTORIZED_MIXED_HEAVY", 2]
			]
		];
	};
};

//--- Flatten the pool
_pool = [];
{
	switch (typeName (_x select 0)) do {
		//--- Only one element is present, check for the force and probability and add it to our current pool
		case "STRING": {
			if (!isNil{missionNamespace getVariable format["%1_%2", _side, _x select 0]}) then {
				_force = if (count _x > 1) then {_x select 1} else {1};
				_probability = if (count _x > 2) then {_x select 2} else {100};
			
				for '_i' from 1 to _force do {_pool pushBack [_x select 0, _probability]};
			};
		};
		//--- More than one element is present, flatten the content and append the array to the current pool
		case "ARRAY": {
			_pool_nest = [];
			{
				if (!isNil{missionNamespace getVariable format["%1_%2", _side, _x select 0]}) then {
					_force = if (count _x > 1) then {_x select 1} else {1};
					_probability = if (count _x > 2) then {_x select 2} else {100};
					
					for '_i' from 1 to _force do {_pool_nest pushBack [_x select 0, _probability]};
				};
			} forEach _x;
			
			if (count _pool_nest > 0) then {_pool pushBack _pool_nest};
		};
	};
} forEach _pool_units;

if (count _pool < 1) exitWith {[[],[],[]]};

//--- Shuffle!
_pool = _pool call CTI_CO_FNC_ArrayShuffle;

//--- Compose the pool
_teams = [];
while {_totalGroups > 0} do {
	{
		_team = _x;
		
		//--- If nested, pick a random element
		if (typeName(_team select 0) == "ARRAY") then {
			_team = _team select floor(random count _team);
		};
		
		//--- Probability check
		_probability = _team select 1;
		
		_can_use = true;
		if (_probability != 100) then {
			if (random 100 > _probability) then { _can_use = false };
		};
		
		//--- Our team can be retrieved!
		if (_can_use) then {
			_teams pushBack (missionNamespace getVariable (_team select 0));
			_totalGroups = _totalGroups - 1;
		};
	} forEach _pool;
};

//--- Create the groups server-sided
_groups = [];
_positions = [];
_camps = (_town) Call CTI_CO_FNC_GetTownCamps;
{
	//--- A group may spawn close to a camp or somewhere in the town
	if (count _camps > 0 && random 100 > 50) then {
		_camp_index = floor(random count _camps);
		_position = [getPos(_camps select _camp_index), 10, CTI_TOWNS_OCCUPATION_SPAWN_RANGE_CAMPS] call CTI_CO_FNC_GetRandomPosition;
		_camps deleteAt _camp_index;
	} else {
		_position = [getPos _town, 25, CTI_TOWNS_OCCUPATION_SPAWN_RANGE] call CTI_CO_FNC_GetRandomPosition;
	};

	_position = [_position, 50] call CTI_CO_FNC_GetEmptyPosition;
	_positions pushBack _position;
	
	_group = createGroup _side;
	_groups pushBack _group;
	
	if (CTI_Log_Level >= CTI_Log_Information) then {
		["INFORMATION", "FILE: Server\Functions\Server_SpawnTownOccupation.sqf", format["Composing Occupation Team for town [%1] on side [%2] using group [%3] at position [%4] with units [%5]", _town getVariable "cti_town_name", _side, _group, _position, _x]] call CTI_CO_FNC_Log;
	};
} forEach _teams;

if (CTI_Log_Level >= CTI_Log_Information) then {
	["INFORMATION", "FILE: Server\Functions\Server_SpawnTownOccupation.sqf", format["Composed [%1] Occupation Teams for town [%2] on side [%3]", count _teams, _town getVariable "cti_town_name", _side]] call CTI_CO_FNC_Log;
};

[_teams, _groups, _positions]

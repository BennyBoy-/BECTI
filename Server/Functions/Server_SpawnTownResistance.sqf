/*/
  # HEADER #
	Script: 		Server\Functions\Server_SpawnTownResistance.sqf
	Alias:			CTI_SE_FNC_SpawnTownResistance
	Description:	This script will spawn the town resistance whenever a threat is 
					detected near a town.
					Note that this function can be replaced by another one. 
					Keep in mind to keep an identical return format.
	Author: 		Benny
	Creation Date:	23-09-2013
	Revision Date:	23-09-2013
	
  # PARAMETERS #
    0	[Object]: The town
	
  # RETURNED VALUE #
	0   [Array]: The created groups
	1   [Array]: The created vehicles
	
  # SYNTAX #
	(TOWN) call CTI_SE_FNC_SpawnTownResistance
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_ArrayShuffle
	Common Function: CTI_CO_FNC_CreateUnit
	Common Function: CTI_CO_FNC_CreateVehicle
	Common Function: CTI_CO_FNC_GetEmptyPosition
	Common Function: CTI_CO_FNC_GetRandomPosition
	Common Function: CTI_CO_FNC_GetTownCamps
	Common Function: CTI_CO_FNC_ManVehicle
	Server Function: CTI_SE_FNC_HandleEmptyVehicle
	
  # EXAMPLE #
    (Town0) call CTI_SE_FNC_SpawnTownResistance
	  -> Will spawn Resistance defense forces for Town0
*/

private ["_groups", "_pool", "_pool_units", "_positions", "_teams", "_totalGroups", "_town", "_value", "_vehicles"];

_town = _this;

_value = _town getVariable "cti_town_sv_max";

//--- Calculate the Group size by scaling the SV and randomizing the input, min max scaling
_max_squad = 7;
_max_squad_random = 2;
_max_sv = 120;

_randomGroups = (_value / _max_sv) * _max_squad_random;
_fixedGroups = (_value / _max_sv) * _max_squad;
_totalGroups = round(_fixedGroups + random _randomGroups - random _randomGroups);
// _totalGroups = round(((_value / _max_sv) * _max_squad) + random(_randomGroups) - random(_randomGroups));
if (_totalGroups < 1) then {_totalGroups = 1};

if (CTI_Log_Level >= CTI_Log_Information) then {
	["INFORMATION", "FILE: Server\Functions\Server_SpawnTownResistance.sqf", format["Begining Resistance Teams composition for town [%1] with a max SV of [%2] using variables <Max Squad = [%3]>,<Max Squad Randomness = [%4]>,<Max SV = [%5]> Resulting in Fixed Group Size [%6] and a Random Group Size of [%7] for a Total Rounded Group Size of [%8]", _town getVariable "cti_town_name", _value, _max_squad, _max_squad_random, _max_sv, _fixedGroups, _randomGroups, _totalGroups]] call CTI_CO_FNC_Log;
};

_pool_units = [];
_tries = 400;

//--- Pool data: [<GROUP>, <PRESENCE>, {<SPAWN PROBABILITY>}], nesting is possible to narrow down some choices
if (isNil {_town getVariable "cti_naval"}) then {
	switch (true) do {
		case (_value < 50) : { 
			_pool_units = [
				["GUER_TOWNS_SQUAD_LIGHT", 3], 
				["GUER_TOWNS_SQUAD_LIGHT_2", 2], 
				["GUER_TOWNS_SQUAD_MOTORIZED_1", 1, 20], 
				["GUER_TOWNS_SQUAD_MOTORIZED_2", 1, 25]
			];
		};
		case (_value >= 50 && _value <= 60) : { 
			_pool_units = [
				["GUER_TOWNS_SQUAD_LIGHT", 2], 
				["GUER_TOWNS_SQUAD_LIGHT_2", 2], 
				["GUER_TOWNS_SQUAD_AA", 1, 75], 
				["GUER_TOWNS_SQUAD_AT", 2], 
				[
					["GUER_TOWNS_SNIPERS_1", 1, 35], 
					["GUER_TOWNS_SNIPERS_2", 1, 35]
				],
				[
					["GUER_TOWNS_SQUAD_MOTORIZED_1", 1, 70],
					["GUER_TOWNS_SQUAD_MOTORIZED_2", 1, 70]
				], 
				["GUER_TOWNS_APC_LIGHT", 1, 20], 
				[
					["GUER_TOWNS_MOTORIZED_HMG", 1, 50],
					["GUER_TOWNS_MOTORIZED_MIXED_LIGHT", 1, 25]
				]
			];
		};
		case (_value > 60 && _value <= 80) : { 
			_pool_units = [
				["GUER_TOWNS_SQUAD_LIGHT", 2], 
				["GUER_TOWNS_SQUAD_LIGHT_2", 2], 
				["GUER_TOWNS_SQUAD_MEDIUM", 2], 
				["GUER_TOWNS_SQUAD_AA", 1, 80], 
				["GUER_TOWNS_SQUAD_AT", 2], 
				[
					["GUER_TOWNS_SNIPERS_1", 1, 60], 
					["GUER_TOWNS_SNIPERS_2", 1, 60]
				],
				["GUER_TOWNS_SQUAD_MOTORIZED_1"], 
				["GUER_TOWNS_SQUAD_MOTORIZED_2"], 
				["GUER_TOWNS_SQUAD_APC_1", 1, 60], 
				[
					["GUER_TOWNS_APC_LIGHT"], 
					["GUER_TOWNS_APC_MEDIUM", 1, 40]
				],
				[
					["GUER_TOWNS_MOTORIZED_HMG", 1, 75],
					["GUER_TOWNS_MOTORIZED_GMG", 1, 50]
				], 
				["GUER_TOWNS_MOTORIZED_MIXED_LIGHT", 1, 40]
			];
		};
		case (_value > 80 && _value <= 100) : { 
			_pool_units = [
				["GUER_TOWNS_SQUAD_LIGHT", 2], 
				["GUER_TOWNS_SQUAD_LIGHT_2"], 
				["GUER_TOWNS_SQUAD_MEDIUM", 2], 
				["GUER_TOWNS_SQUAD_AA"], 
				["GUER_TOWNS_SQUAD_AT", 2], 
				[
					["GUER_TOWNS_SPECIAL", 1, 40], 
					["GUER_TOWNS_SNIPERS_1", 1, 75], 
					["GUER_TOWNS_SNIPERS_2", 1, 80]
				],
				[
					["GUER_TOWNS_SQUAD_MOTORIZED_1", 1, 60], 
					["GUER_TOWNS_SQUAD_MOTORIZED_2", 1, 50]
				], 
				["GUER_TOWNS_SQUAD_APC_1"], 
				[
					["GUER_TOWNS_APC_MEDIUM", 1, 90], 
					["GUER_TOWNS_APC_HEAVY", 1, 75]
				], 
				[
					["GUER_TOWNS_MOTORIZED_HMG", 1, 75],
					["GUER_TOWNS_MOTORIZED_GMG", 1, 75]
				], 
				[
					["GUER_TOWNS_MOTORIZED_MIXED_LIGHT", 1, 60],
					["GUER_TOWNS_MOTORIZED_MIXED_HEAVY", 1, 45]
				]
			];
		};
		case (_value > 100 && _value <= 120) : { 
			_pool_units = [
				["GUER_TOWNS_SQUAD_LIGHT"], 
				["GUER_TOWNS_SQUAD_LIGHT_2"], 
				["GUER_TOWNS_SQUAD_MEDIUM", 2], 
				["GUER_TOWNS_SQUAD_AA"], 
				["GUER_TOWNS_SQUAD_AT", 2], 
				[
					["GUER_TOWNS_SPECIAL", 1, 40], 
					["GUER_TOWNS_SNIPERS_1", 1, 75], 
					["GUER_TOWNS_SNIPERS_2", 1, 80]
				],
				[
					["GUER_TOWNS_SQUAD_MOTORIZED_1", 1, 60], 
					["GUER_TOWNS_SQUAD_MOTORIZED_2", 1, 50]
				], 
				["GUER_TOWNS_SQUAD_APC_1"], 
				[
					["GUER_TOWNS_APC_MEDIUM"], 
					["GUER_TOWNS_APC_HEAVY"]
				], 
				[
					["GUER_TOWNS_MOTORIZED_HMG"],
					["GUER_TOWNS_MOTORIZED_GMG"]
				], 
				[
					["GUER_TOWNS_MOTORIZED_MIXED_LIGHT", 1, 85],
					["GUER_TOWNS_MOTORIZED_MIXED_HEAVY", 1, 70]
				]
			];
		};
		case (_value > 120) : { 
			_pool_units = [
				["GUER_TOWNS_SQUAD_LIGHT"], 
				["GUER_TOWNS_SQUAD_LIGHT_2"], 
				["GUER_TOWNS_SQUAD_MEDIUM", 2], 
				["GUER_TOWNS_SQUAD_AA"], 
				["GUER_TOWNS_SQUAD_AT", 2], 
				[
					["GUER_TOWNS_SPECIAL", 1, 75], 
					["GUER_TOWNS_SNIPERS_1"], 
					["GUER_TOWNS_SNIPERS_2"]
				],
				[
					["GUER_TOWNS_SQUAD_MOTORIZED_1", 1, 75], 
					["GUER_TOWNS_SQUAD_MOTORIZED_2", 1, 80]
				], 
				["GUER_TOWNS_SQUAD_APC_1", 2], 
				[
					["GUER_TOWNS_APC_MEDIUM"], 
					["GUER_TOWNS_APC_HEAVY"]
				], 
				[
					["GUER_TOWNS_MOTORIZED_HMG"],
					["GUER_TOWNS_MOTORIZED_GMG"]
				], 
				[
					["GUER_TOWNS_MOTORIZED_MIXED_LIGHT"],
					["GUER_TOWNS_MOTORIZED_MIXED_HEAVY"]
				]
			];
		};
	};
} else {
	switch (true) do {
		case (_value < 50) : { 
			_pool_units = [
				["GUER_TOWNS_SQUAD_LIGHT", 3], 
				["GUER_TOWNS_SQUAD_LIGHT_2", 2]
			];
		};
		case (_value >= 50 && _value <= 60) : { 
			_pool_units = [
				["GUER_TOWNS_SQUAD_LIGHT", 2], 
				["GUER_TOWNS_SQUAD_LIGHT_2", 2], 
				["GUER_TOWNS_SQUAD_AA", 1, 75], 
				["GUER_TOWNS_SQUAD_AT", 2], 
				[
					["GUER_TOWNS_SNIPERS_1", 1, 35], 
					["GUER_TOWNS_SNIPERS_2", 1, 35]
				]
			];
		};
		case (_value > 60 && _value <= 80) : { 
			_pool_units = [
				["GUER_TOWNS_SQUAD_LIGHT", 2], 
				["GUER_TOWNS_SQUAD_LIGHT_2", 2], 
				["GUER_TOWNS_SQUAD_MEDIUM", 2], 
				["GUER_TOWNS_SQUAD_AA", 1, 80], 
				["GUER_TOWNS_SQUAD_AT", 2], 
				[
					["GUER_TOWNS_SNIPERS_1", 1, 60], 
					["GUER_TOWNS_SNIPERS_2", 1, 60]
				]
			];
		};
		case (_value > 80 && _value <= 100) : { 
			_pool_units = [
				["GUER_TOWNS_SQUAD_LIGHT", 2], 
				["GUER_TOWNS_SQUAD_LIGHT_2"], 
				["GUER_TOWNS_SQUAD_MEDIUM", 2], 
				["GUER_TOWNS_SQUAD_AA"], 
				["GUER_TOWNS_SQUAD_AT", 2], 
				[
					["GUER_TOWNS_SPECIAL", 1, 40], 
					["GUER_TOWNS_SNIPERS_1", 1, 75], 
					["GUER_TOWNS_SNIPERS_2", 1, 80]
				]
			];
		};
		case (_value > 100 && _value <= 120) : { 
			_pool_units = [
				["GUER_TOWNS_SQUAD_LIGHT"], 
				["GUER_TOWNS_SQUAD_LIGHT_2"], 
				["GUER_TOWNS_SQUAD_MEDIUM", 2], 
				["GUER_TOWNS_SQUAD_AA"], 
				["GUER_TOWNS_SQUAD_AT", 2], 
				[
					["GUER_TOWNS_SPECIAL", 1, 40], 
					["GUER_TOWNS_SNIPERS_1", 1, 75], 
					["GUER_TOWNS_SNIPERS_2", 1, 80]
				]
			];
		};
		case (_value > 120) : { 
			_pool_units = [
				["GUER_TOWNS_SQUAD_LIGHT"], 
				["GUER_TOWNS_SQUAD_LIGHT_2"], 
				["GUER_TOWNS_SQUAD_MEDIUM", 2], 
				["GUER_TOWNS_SQUAD_AA"], 
				["GUER_TOWNS_SQUAD_AT", 2],
				[
					["GUER_TOWNS_SPECIAL", 1, 40], 
					["GUER_TOWNS_SNIPERS_1", 1, 75], 
					["GUER_TOWNS_SNIPERS_2", 1, 80]
				]
			];
		};
	};
	
	_tries = 0;
	
	//--- Naval forces are divided by two
	_totalGroups = round(_totalGroups / 2);
	if (_totalGroups < 1) then {_totalGroups = 1};
};

//--- Flatten the pool
_pool = [];
{
	switch (typeName (_x select 0)) do {
		//--- Only one element is present, check for the force and probability and add it to our current pool
		case "STRING": {
			if (!isNil{missionNamespace getVariable (_x select 0)}) then {
				_force = if (count _x > 1) then {_x select 1} else {1};
				_probability = if (count _x > 2) then {_x select 2} else {100};
				
				for '_i' from 1 to _force do {_pool pushBack [_x select 0, _probability]};
			} else {
				if (CTI_Log_Level >= CTI_Log_Error) then { 
					["ERROR", "FILE: Server\Functions\Server_SpawnTownResistance.sqf", format ["Attempting to use an undefined Resistance Team Template [%1] for town [%2]", _x select 0, _town getVariable "cti_town_name"]] call CTI_CO_FNC_Log;
				};
			};
		};
		//--- More than one element is present, flatten the content and append the array to the current pool
		case "ARRAY": {
			_pool_nest = [];
			{
				if (!isNil{missionNamespace getVariable (_x select 0)}) then {
					_force = if (count _x > 1) then {_x select 1} else {1};
					_probability = if (count _x > 2) then {_x select 2} else {100};
					
					for '_i' from 1 to _force do {_pool_nest pushBack [_x select 0, _probability]};
				} else {
					if (CTI_Log_Level >= CTI_Log_Error) then { 
						["ERROR", "FILE: Server\Functions\Server_SpawnTownResistance.sqf", format ["Attempting to use an undefined Resistance Team Template [%1] for town [%2]", _x select 0, _town getVariable "cti_town_name"]] call CTI_CO_FNC_Log;
					};
				};
			} forEach _x;
			
			_pool pushBack _pool_nest;
		};
	};
} forEach _pool_units;

if (CTI_Log_Level >= CTI_Log_Information) then { 
	["INFORMATION", "FILE: Server\Functions\Server_SpawnTownResistance.sqf", format ["Retrieved a Resistance Pool count of [%1] for town [%2]. Total groups is set to [%3]", _town getVariable "cti_town_name", count _pool, _totalGroups]] call CTI_CO_FNC_Log;
};

if (count _pool < 1) exitWith {[[],[],[]]};

//--- Shuffle the pool
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
		
		if (_totalGroups < 1) exitWith {};
	} forEach _pool;
};

//--- Create the groups server-sided
_groups = [];
_positions = [];
_camps = (_town) Call CTI_CO_FNC_GetTownCamps;
{
	_position = [];
	
	//--- A group may spawn close to a camp or somewhere in the town
	if (isNil {_town getVariable "cti_naval"}) then {
		if (count _camps > 0 && random 100 > 50) then {
			_camp_index = floor(random count _camps);
			_position = [ASLToAGL getPosASL(_camps select _camp_index), 10, CTI_TOWNS_RESISTANCE_SPAWN_RANGE_CAMPS, _tries] call CTI_CO_FNC_GetRandomPosition;
			_camps deleteAt _camp_index;
		} else {
			_position = [ASLToAGL getPosASL _town, 25, CTI_TOWNS_RESISTANCE_SPAWN_RANGE, _tries] call CTI_CO_FNC_GetRandomPosition;
		};
		_position = [_position, 50] call CTI_CO_FNC_GetEmptyPosition;
	} else {
		_position = [[ASLToAGL getPosASL _town, 25, CTI_TOWNS_RESISTANCE_SPAWN_RANGE/1.5, 0] call CTI_CO_FNC_GetRandomPosition, 200, "sea", 8, 3, 1, true] call CTI_CO_FNC_GetRandomBestPlaces;
	};
	
	_positions pushBack _position;
	
	_group = createGroup resistance;
	_groups pushBack _group;
	
	if (CTI_Log_Level >= CTI_Log_Information) then {
		["INFORMATION", "FILE: Server\Functions\Server_SpawnTownResistance.sqf", format["Composing Resistance Team for town [%1] using group [%2] at position [%3] with units [%4]", _town getVariable "cti_town_name", _group, _position, _x]] call CTI_CO_FNC_Log;
	};
} forEach _teams;

if (CTI_Log_Level >= CTI_Log_Information) then {
	["INFORMATION", "FILE: Server\Functions\Server_SpawnTownResistance.sqf", format["Composed [%1] Resistance Teams for town [%2] having a max SV of [%3]", count _teams, _town getVariable "cti_town_name", _value]] call CTI_CO_FNC_Log;
};

[_teams, _groups, _positions]

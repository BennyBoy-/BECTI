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
	Common Function: CTI_CO_FNC_ArrayShuffle
	Common Function: CTI_CO_FNC_CreateUnit
	Common Function: CTI_CO_FNC_CreateVehicle
	Common Function: CTI_CO_FNC_GetRandomBestPlaces
	Common Function: CTI_CO_FNC_GetRandomPosition
	Common Function: CTI_CO_FNC_GetSideID
	Common Function: CTI_CO_FNC_GetSideUpgrades
	Common Function: CTI_CO_FNC_GetTownCamps
	Common Function: CTI_CO_FNC_GetTownSpawnBuilding
	Common Function: CTI_CO_FNC_ManVehicle
	Server Function: CTI_SE_FNC_HandleEmptyVehicle
	
  # EXAMPLE #
    [Town0, West] call CTI_SE_FNC_SpawnTownOccupation
	  -> Will spawn West defense forces for Town0
*/

params ["_town", "_side"];
private ["_groups", "_pool", "_pool_units", "_positions", "_sideID", "_teams", "_totalGroups", "_upgrade", "_value", "_vehicles"];

_sideID = (_side) call CTI_CO_FNC_GetSideID;
_upgrade = (_side call CTI_CO_FNC_GetSideUpgrades) select CTI_UPGRADE_TOWNS;

_value = _town getVariable "cti_town_sv"; //--- Occupation spawning is based on the current SV

//--- Calculate the Group size by scaling the SV and randomizing the input, min max scaling
_max_squad = CTI_TOWNS_OCCUPATION_LEVEL;
_max_squad_random = 4;
_max_sv = 120;

_randomGroups = (_value / _max_sv) * _max_squad_random;
_fixedGroups = (_value / _max_sv) * _max_squad;
_totalGroups = round(_fixedGroups + random _randomGroups - random _randomGroups);
// _totalGroups = round(((_value / _max_sv) * _max_squad) + random(_randomGroups) - random(_randomGroups));
if (_totalGroups < 1) then {_totalGroups = 1};

if (CTI_Log_Level >= CTI_Log_Information) then {
	["INFORMATION", "FILE: Server\Functions\Server_SpawnTownOccupation.sqf", format["Begining Occupation Teams composition for town [%1] on side [%2] with a current SV of [%3] using variables <Max Squad = [%4]>,<Max Squad Randomness = [%5]>,<Max SV = [%6]> Resulting in Fixed Group Size [%7] and a Random Group Size of [%8] for a Total Rounded Group Size of [%9]", _town getVariable "cti_town_name", _side, _value, _max_squad, _max_squad_random, _max_sv, _fixedGroups, _randomGroups, _totalGroups]] call CTI_CO_FNC_Log;
};

_pool_units = [];
_tries = 400;

//--- Pool data: [<GROUP>, <PRESENCE>, {<SPAWN PROBABILITY>}], nesting is possible to narrow down some choices
if (isNil {_town getVariable "cti_naval"}) then {
	switch (true) do {
		case (_value < 50) : { 
			_pool_units = [
				["TOWNS_SQUAD_RIFLEMEN1", 1, 99],
				["TOWNS_SQUAD_AT1", 1, 99],				
				[
					["TOWNS_SQUAD_LIGHT1_MIXED", 2, 75],
					["TOWNS_SQUAD_LIGHT2_MIXED", 2, 25]
				]
			];
		};
		case (_value >= 50 && _value <= 60) : { 
			_pool_units = [
				["TOWNS_SQUAD_RIFLEMEN1", 1, 99],
				["TOWNS_SQUAD_SNIPER", 1, 75],
				["TOWNS_SQUAD_AT1", 1, 75],	
				[
					["TOWNS_SQUAD_LIGHT2_MIXED", 2, 25],
					["TOWNS_SQUAD_LIGHT3_MIXED", 3, 75],
					["TOWNS_SQUAD_LIGHT4_MIXED", 1, 25]
				],
				[
					["TOWNS_SQUAD_APC1_MIXED", 3, 80],
					["TOWNS_SQUAD_APC2_MIXED", 1, 50]
				]
			];
		};
		case (_value > 60 && _value <= 80) : { 
			_pool_units = [
				[
					["TOWNS_SQUAD_RIFLEMEN3", 1, 50], 
					["TOWNS_SQUAD_SNIPER", 1, 20], 
					["TOWNS_SQUAD_AT2", 2, 75]  				
				],
				[
					["TOWNS_SQUAD_LIGHT3_MIXED", 1, 20],
					["TOWNS_SQUAD_LIGHT4_MIXED", 3, 50],
					["TOWNS_SQUAD_LIGHT5_MIXED", 2, 30]
				],
				[
					["TOWNS_SQUAD_APC1_MIXED", 2, 40],
					["TOWNS_SQUAD_APC2_MIXED", 3, 70]
				],
				[
					["TOWNS_SQUAD_VEHICLE_AA1", 1, 20]
				]
			];
		};
		case (_value > 80 && _value <= 100) : { 
			_pool_units = [
				[
					["TOWNS_SQUAD_RIFLEMEN3", 2, 50],
					["TOWNS_SQUAD_SNIPER", 1, 10], 
					["TOWNS_SQUAD_AT2", 2, 75], 
					["TOWNS_SQUAD_AA", 2, 65]
				],
				[
					["TOWNS_SQUAD_LIGHT4_MIXED", 1, 20],
					["TOWNS_SQUAD_LIGHT5_MIXED", 1, 50],
					["TOWNS_SQUAD_LIGHT6_MIXED", 1, 30]
				],
				[
					["TOWNS_SQUAD_APC2_MIXED", 2, 70],
					["TOWNS_SQUAD_APC3_MIXED", 3, 70]
				],
				[
					["TOWNS_SQUAD_ARMORED1_MIXED", 1, 50]
				],
				[
					["TOWNS_SQUAD_LIGHT4", 1, 10],
					["TOWNS_SQUAD_LIGHT5", 2, 40],
					["TOWNS_SQUAD_LIGHT6", 1, 20]
				],
				[
					["TOWNS_SQUAD_APC2", 2, 50],
					["TOWNS_SQUAD_APC3", 2, 50]
				],
				[
					["TOWNS_SQUAD_ARMORED1", 1, 5],
					["TOWNS_SQUAD_ARMORED2", 1, 30]
				],
				[
					["TOWNS_SQUAD_VEHICLE_AA1", 2, 50],
					["TOWNS_SQUAD_VEHICLE_AA2", 1, 20]
				]
			];
		};
		case (_value > 100 && _value <= 120) : { 
			_pool_units = [
				[
					["TOWNS_SQUAD_RIFLEMEN3", 1, 50],
					["TOWNS_SQUAD_SNIPER", 1, 50], 
					["TOWNS_SQUAD_AT2", 3, 75], 
					["TOWNS_SQUAD_AA", 3, 65]
				],
				[
					["TOWNS_SQUAD_LIGHT5_MIXED", 1, 50],
					["TOWNS_SQUAD_LIGHT6_MIXED", 2, 50],
					["TOWNS_SQUAD_LIGHT7_MIXED", 2, 50]
				],
				[
					["TOWNS_SQUAD_APC2_MIXED", 2, 30],
					["TOWNS_SQUAD_APC3_MIXED", 4, 80]
				],
				[
					["TOWNS_SQUAD_ARMORED2_MIXED", 2, 70],
					["TOWNS_SQUAD_ARMORED3_MIXED", 1, 50]
				],
				[
					["TOWNS_SQUAD_LIGHT5", 2, 50],
					["TOWNS_SQUAD_LIGHT6", 1, 30],
					["TOWNS_SQUAD_LIGHT7", 1, 30]
				],
				[
					["TOWNS_SQUAD_APC2", 2, 30],
					["TOWNS_SQUAD_APC3", 3, 70]
				],
				[
					["TOWNS_SQUAD_ARMORED2", 1, 10],
					["TOWNS_SQUAD_ARMORED3", 1, 30]
				],
				[
					["TOWNS_SQUAD_VEHICLE_AA2", 1, 20],
					["TOWNS_SQUAD_VEHICLE_AA3", 2, 60]
				]
			];
		};
		case (_value > 120) : { 
			_pool_units = [
				[
					["TOWNS_SQUAD_RIFLEMEN3", 1, 50],
					["TOWNS_SQUAD_SNIPER", 1, 50], 
					["TOWNS_SQUAD_AT2", 4, 75], 
					["TOWNS_SQUAD_AA", 4, 65]
				],
				[
					["TOWNS_SQUAD_LIGHT6_MIXED", 1, 30],
					["TOWNS_SQUAD_LIGHT7_MIXED", 2, 50]
				],
				[
					["TOWNS_SQUAD_APC2_MIXED", 2, 30],
					["TOWNS_SQUAD_APC3_MIXED", 4, 70]
				],
				[
					["TOWNS_SQUAD_ARMORED2_MIXED", 2, 30],
					["TOWNS_SQUAD_ARMORED3_MIXED", 3, 60]
				],
				[
					["TOWNS_SQUAD_LIGHT6", 1, 30],
					["TOWNS_SQUAD_LIGHT7", 1, 50]
				],
				[
					["TOWNS_SQUAD_APC2", 2, 30],
					["TOWNS_SQUAD_APC3", 3, 70]
				],
				[
					["TOWNS_SQUAD_ARMORED2", 1, 30],
					["TOWNS_SQUAD_ARMORED3", 1, 60]
				],
				[
					["TOWNS_SQUAD_VEHICLE_AA2", 1, 20],
					["TOWNS_SQUAD_VEHICLE_AA3", 2, 60]
				]
			];
		};
	};
} else {
	switch (true) do {
		case (_value < 50) : { 
			_pool_units = [
				["TOWNS_SQUAD_NAVAL1", 1, 99],
				["TOWNS_SQUAD_ASSAULT_BOAT1", 4, 99]
			];
		};
		case (_value >= 50 && _value <= 60) : { 
			_pool_units = [
				["TOWNS_SQUAD_NAVAL2", 1, 99],
				["TOWNS_SQUAD_ASSAULT_BOAT1", 2, 40],
				["TOWNS_SQUAD_ASSAULT_BOAT2", 2, 60]
			];
		};
		case (_value > 60 && _value <= 80) : { 
			_pool_units = [
				["TOWNS_SQUAD_NAVAL2", 1, 99],
				["TOWNS_SQUAD_ASSAULT_BOAT1", 2, 30],
				["TOWNS_SQUAD_ASSAULT_BOAT2", 2, 70]
			];
		};
		case (_value > 80 && _value <= 100) : { 
			_pool_units = [
				["TOWNS_SQUAD_NAVAL3", 1, 99],
				["TOWNS_SQUAD_ASSAULT_BOAT1", 3, 30],
				["TOWNS_SQUAD_ASSAULT_BOAT2", 3, 70],
				["TOWNS_SQUAD_MEDIUM_ASSAULT_BOAT", 1, 50]
			];
		};
		case (_value > 100 && _value <= 120) : { 
			_pool_units = [ 
				["TOWNS_SQUAD_NAVAL3", 1, 99],
				["TOWNS_SQUAD_ASSAULT_BOAT1", 3, 20],
				["TOWNS_SQUAD_ASSAULT_BOAT2", 4, 80],
				["TOWNS_SQUAD_MEDIUM_ASSAULT_BOAT", 2, 90]
			];
		};
		case (_value > 120) : { 
			_pool_units = [
				["TOWNS_SQUAD_NAVAL3", 1, 99],
				["TOWNS_SQUAD_ASSAULT_BOAT1", 3, 10],
				["TOWNS_SQUAD_ASSAULT_BOAT2", 4, 90],
				["TOWNS_SQUAD_MEDIUM_ASSAULT_BOAT", 2, 90],
				["TOWNS_SQUAD_LARGE_ASSAULT_BOAT", 1, 05]
			];
		};
	};
	
	_tries = 0;
	
	//--- Naval forces are divided by two
	_totalGroups = round(_totalGroups / 2);
	if (_totalGroups < 1) then {_totalGroups = 1};
};

if (CTI_Log_Level >= CTI_Log_Information) then { 
	["INFORMATION", "FILE: Server\Functions\Server_SpawnTownOccupation.sqf", format ["An Occupation Pool of [%1] squad(s) template is about to be parsed for town [%2] on side [%3] based on the town SV [%4]", count _pool_units, _town getVariable "cti_town_name", _side, _value]] call CTI_CO_FNC_Log;
};

//--- Flatten the pool
_pool = [];
{
	switch (typeName (_x select 0)) do {
		//--- Only one element is present, check for the force and probability and add it to our current pool
		case "STRING": {
			if (!isNil{missionNamespace getVariable format["%1_%2", _side, _x select 0]}) then {
				if (count (missionNamespace getVariable format["%1_%2", _side, _x select 0]) > 0) then {
					_force = if (count _x > 1) then {_x select 1} else {1};
					_probability = if (count _x > 2) then {_x select 2} else {100};
				
					for '_i' from 1 to _force do {_pool pushBack [format["%1_%2", _side, _x select 0], _probability]};
				} else {
					if (CTI_Log_Level >= CTI_Log_Warning) then { 
						["WARNING", "FILE: Server\Functions\Server_SpawnTownOccupation.sqf", format ["Town unit pool [%1] has no units defined and will be skipped", format["%1_%2", _side, _x select 0]]] call CTI_CO_FNC_Log;
					};
				};
			} else {
				if (CTI_Log_Level >= CTI_Log_Error) then { 
					["ERROR", "FILE: Server\Functions\Server_SpawnTownOccupation.sqf", format ["Attempting to use an undefined Occupation Team Template [%1] for town [%2] on side [%3]", format["%1_%2", _side, _x select 0], _town getVariable "cti_town_name", _side]] call CTI_CO_FNC_Log;
				};
			};
		};
		//--- More than one element is present, flatten the content and append the array to the current pool
		case "ARRAY": {
			_pool_nest = [];
			{
				if (!isNil{missionNamespace getVariable format["%1_%2", _side, _x select 0]}) then {
					if (count (missionNamespace getVariable format["%1_%2", _side, _x select 0]) > 0) then {
						_force = if (count _x > 1) then {_x select 1} else {1};
						_probability = if (count _x > 2) then {_x select 2} else {100};
						
						for '_i' from 1 to _force do {_pool_nest pushBack [format["%1_%2", _side, _x select 0], _probability]};
					} else {
						if (CTI_Log_Level >= CTI_Log_Warning) then { 
							["WARNING", "FILE: Server\Functions\Server_SpawnTownOccupation.sqf", format ["Town unit pool [%1] has no units defined and will be skipped", format["%1_%2", _side, _x select 0]]] call CTI_CO_FNC_Log;
						};
					};
				} else {
					if (CTI_Log_Level >= CTI_Log_Error) then { 
						["ERROR", "FILE: Server\Functions\Server_SpawnTownOccupation.sqf", format ["Attempting to use an undefined Occupation Team Template [%1] for town [%2] on side [%3]", format["%1_%2", _side, _x select 0], _town getVariable "cti_town_name", _side]] call CTI_CO_FNC_Log;
					};
				};
			} forEach _x;
			
			if (count _pool_nest > 0) then {_pool pushBack _pool_nest};
		};
	};
} forEach _pool_units;

if (CTI_Log_Level >= CTI_Log_Information) then { 
	["INFORMATION", "FILE: Server\Functions\Server_SpawnTownOccupation.sqf", format ["Retrieved an effective Occupation Pool of [%1] squad(s) for town [%2] on side [%3]. Total group is set to [%4]", count _pool, _town getVariable "cti_town_name", _side, _totalGroups]] call CTI_CO_FNC_Log;
};

if (count _pool < 1) exitWith {
	if (CTI_Log_Level >= CTI_Log_Error) then { ["ERROR", "FILE: Server\Functions\Server_SpawnTownOccupation.sqf", Format["There are no Units Pools available for town [%1] on side [%2]. Units will not be spawned", _town getVariable "cti_town_name", _side]] call CTI_CO_FNC_Log };
	
	[[],[],[]]
};

//--- Shuffle!
_pool = _pool call CTI_CO_FNC_ArrayShuffle;

//--- Compose the pool
_teams = [];
while {_totalGroups > 0} do {
	{
		_team = _x;
		
		//--- If nested, pick a random element
		if (typeName(_team select 0) isEqualTo "ARRAY") then {
			_team = selectRandom _team;
		};
		
		//--- Probability check
		_probability = _team select 1;
		
		_can_use = true;
		if !(_probability isEqualTo 100) then {
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

_positions_building = _town getVariable ["cti_town_spawn_building", []];
if (count _positions_building > 0) then {_positions_building = _positions_building call CTI_CO_FNC_ArrayShuffle};

{
	_position = [];
	_has_vehicles = false;
	{if !(_x isKindOf "Man") exitWith {_has_vehicles = true}} forEach _x;
	
	//--- A group may spawn close to a camp or somewhere in the town
	if (isNil {_town getVariable "cti_naval"}) then { //--- The town is on the ground
		if (count _camps > 0 && random 100 > 40) then { //--- A camp can be selected for spawning units
			_camp_index = floor(random count _camps);
			_position = [getPos (_camps select _camp_index), 15, ([CTI_TOWNS_OCCUPATION_SPAWN_RANGE_CAMPS, CTI_TOWNS_OCCUPATION_SPAWN_RANGE_CAMPS * 3] select (_has_vehicles), [10, 25] select (_has_vehicles), (["infantry", "vehicles"] select (_has_vehicles))] call CTI_CO_FNC_GetSafePosition;
			_camps deleteAt _camp_index;
		} else { //--- Pick a random position
			_use_default = true;
			if (CTI_TOWNS_SPAWN_MODE isEqualTo 1 && !_has_vehicles) then { //--- Check if Infantry should spawn in buildings or not
				if (CTI_TOWNS_SPAWN_BUILDING_INFANTRY_CHANCE >= random 100 && count _positions_building > 0) then {
					_building = [_positions_building, _side] call CTI_CO_FNC_GetTownSpawnBuilding;
					if !(_building select 1 isEqualTo -1) then {
						_position = _building select 0;
						_use_default = false;
						_positions_building deleteAt (_building select 1);
					};
				};
			};
			
			if (_use_default) then { //--- Default spawn area, pick a safe area around the town
				_position = [getPos _town, 25, CTI_TOWNS_OCCUPATION_SPAWN_RANGE, [10, 25] select (_has_vehicles), (["infantry", "vehicles"] select (_has_vehicles))] call CTI_CO_FNC_GetSafePosition;
			};
		};
	} else { //--- The town is naval
		_use_default = true;
		if (CTI_TOWNS_SPAWN_MODE isEqualTo 1 && !_has_vehicles) then { //--- Check if Infantry should spawn in buildings or not
			if (count _positions_building > 0) then { //--- Naval AI squads will always spawn in buildings
				_building = [_positions_building, _side] call CTI_CO_FNC_GetTownSpawnBuilding;
				if !(_building select 1 isEqualTo -1) then {
					_position = _building select 0;
					_use_default = false;
					_positions_building deleteAt (_building select 1);
				};
			};
		};
		
		if (_use_default) then { //--- Default spawn area, pick a sea area
			_position = [[ASLToAGL getPosASL _town, 25, CTI_TOWNS_OCCUPATION_SPAWN_RANGE/1.5, 0] call CTI_CO_FNC_GetRandomPosition, 200, "sea", 8, 3, 1, true] call CTI_CO_FNC_GetRandomBestPlaces;
		};
	};

	_positions pushBack _position;
	
	_group = createGroup _side;
	_group setGroupIdGlobal [format["(%1) %2", _town, _group]];
	_group deleteGroupWhenEmpty true;
	_groups pushBack _group;
	
	if (CTI_Log_Level >= CTI_Log_Information) then {
		["INFORMATION", "FILE: Server\Functions\Server_SpawnTownOccupation.sqf", format["Composing Occupation Team for town [%1] on side [%2] using group [%3] at position [%4] with units [%5]", _town getVariable "cti_town_name", _side, _group, _position, _x]] call CTI_CO_FNC_Log;
	};
} forEach _teams;

if (CTI_Log_Level >= CTI_Log_Information) then {
	["INFORMATION", "FILE: Server\Functions\Server_SpawnTownOccupation.sqf", format["Composed [%1] Occupation Teams for town [%2] on side [%3] with the current SV [%4]", count _teams, _town getVariable "cti_town_name", _side, _value]] call CTI_CO_FNC_Log;
};

[_teams, _groups, _positions]
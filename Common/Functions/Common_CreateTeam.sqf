/*
  # HEADER #
	Script: 		Common\Functions\Common_CreateTeam.sqf
	Alias:			CTI_CO_FNC_CreateTeam
	Description:	Create an AI team at a desired location
	Author: 		Benny
	Creation Date:	20-06-2017
	Revision Date:	20-06-2017
	
  # PARAMETERS #
    0	[Array]: The units classnames
    1	[Array/Object]: The position (supports both objects and positions)
    2	[Side]: The side of the team
    3	{Optionnal} [Group]: The group to use
    4	{Optionnal} [Boolean]: The vehicles lock status
    5	{Optionnal} [Boolean]: The units net system
    6	{Optionnal} [Boolean]: Enable a reward for the unit
    7	{Optionnal} [Boolean]: Man extra turrets for vehicles
	
  # RETURNED VALUE #
	[Array, Array, Array]: The units, the vehicles, the crew, the group
	
  # SYNTAX #
	[CLASSNAMES, POSITION, SIDE] call CTI_CO_FNC_CreateTeam
	[CLASSNAMES, POSITION, SIDE, GROUP, LOCK, NET, BOUNTY, TURRETS] call CTI_CO_FNC_CreateTeam
	
  # NOTES #
	- Specifying a structure will make the units spawn in that building if it has at least 1 position
	- If the group doesn't exists before calling this function (grpNull), the script will create it
	- The CTI net system shows the unit on a map for the given side if specified
	
  # EXAMPLE #
    [["B_Soldier_TL_F", "B_Soldier_GL_F", "B_soldier_AR_F"], west, getPos player] call CTI_CO_FNC_CreateTeam
	  -> Will create 3 AI units at the player position on the west side
    [["B_MRAP_01_hmg_F", "B_Soldier_GL_F", "B_soldier_AR_F"], west, getPos player, group player, false, true, true, true] call CTI_CO_FNC_CreateTeam
	  -> Will create 3 AI units in the player's group at his position on the west side, the vehicle won't be locked, 
	     it will use the CTI net system, it will have a bounty and the extra turrets will be manned if needed
*/

params ["_units", "_position", "_side", ["_group", grpNull], ["_locked", true], ["_net", false], ["_bounty", false], ["_extra_units", true]];
private ["_created_units", "_created_vehicles", "_crew", "_crews", "_sideID", "_unit", "_vehicle", "_vehicle_crew"];

_sideID = (_side) call CTI_CO_FNC_GetSideID;
if (isNull _group) then {
	_group = createGroup _side;
	_group deleteGroupWhenEmpty true;
};

_created_units = [];
_created_vehicles = [];
_crews = [];

{
	if (_x isKindOf "Man") then {
		_unit_pos = if (typeName _position isEqualTo "OBJECT") then {selectRandom (_position buildingPos -1)} else {[_position, 2, 15, 50] call CTI_CO_FNC_GetRandomPosition};
		if (_unit_pos isEqualTo [0,0,0]) then {_unit_pos = _position};
		_unit = [_x, _group, _unit_pos, _sideID] call CTI_CO_FNC_CreateUnit;
		_created_units pushBack _unit;
	} else {
		_crew = switch (true) do {
			case (_x isKindOf "Tank"): { missionNamespace getVariable format["%1_SOLDIER_CREW", _side] };
			case (_x isKindOf "Air"): { missionNamespace getVariable format["%1_SOLDIER_PILOT", _side] };
			default { missionNamespace getVariable format["%1_SOLDIER", _side] };
		};
		if (typeName _crew isEqualTo "ARRAY") then {_crew = _crew select 0};
		_vehicle = [_x, [_position, 2, 15, 50] call CTI_CO_FNC_GetRandomPosition, random 360, _sideID, _locked, _net, _bounty] call CTI_CO_FNC_CreateVehicle;
		_created_vehicles pushBack _vehicle;
		_vehicle_crew = [_vehicle, _crew, _group, _sideID, _extra_units] call CTI_CO_FNC_ManVehicle;
		_crews = _crews + _vehicle_crew;
	};
} forEach _units;

{_group addVehicle _x} forEach _created_vehicles;

[_created_units, _created_vehicles, _crews, _group]
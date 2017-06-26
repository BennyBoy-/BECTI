/*
  # HEADER #
	Script: 		Common\Functions\Common_ManVehicle.sqf
	Alias:			CTI_CO_FNC_ManVehicle
	Description:	Man the commandeable positions of a vehicles + turrets
	Author: 		Benny
	Creation Date:	18-09-2013
	Revision Date:	29-07-2016
	
  # PARAMETERS #
    0	[Object]: The vehicle
    1	[String]: The crew classname to use
    2	[Group]: The group of the crew
    3	[Integer]: The Side ID of the vehicle
    4	[Boolean]: (Optional) Specify whether extra turrets should be manned
	
  # RETURNED VALUE #
	[Array]: The created crew
	
  # SYNTAX #
	[VEHICLE, CREW, GROUP, SIDE ID] call CTI_CO_FNC_ManVehicle
	[VEHICLE, CREW, GROUP, SIDE ID, MAN TURRETS] call CTI_CO_FNC_ManVehicle
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_CreateUnit
	
  # EXAMPLE #
    _crew = [tank1, "B_crew_F", group player, CTI_P_SideID] call CTI_CO_FNC_ManVehicle
	  -> Assuming tank1 is an empty tank, a crew (driver, gunner, commander, turrets) will be 
	     spawned in it and will join the player's group
    _crew = [tank1, "B_crew_F", group player, CTI_P_SideID, false] call CTI_CO_FNC_ManVehicle
	  -> Assuming tank1 is an empty tank, a crew (driver, gunner, commander) will be spawned in it 
	     and will join the player's group
*/

params ["_vehicle", "_crew", "_group", "_sideID", ["_extra_turrets", true]];
private ["_config", "_config_sub", "_net", "_position", "_turret_main", "_turrets", "_unit", "_units"];

_units = [];
_position = getPos _vehicle;
_position = [(_position select 0) + 5, (_position select 1) + 5, 0];

_net = [false, true] select ((missionNamespace getVariable "CTI_MARKERS_INFANTRY") isEqualTo 1 && _sideID in [CTI_WEST_ID, CTI_EAST_ID]);

//--- Man the driver
if (_vehicle emptyPositions "driver" > 0) then {
	_unit = [_crew, _group, _position, _sideID, _net] call CTI_CO_FNC_CreateUnit;
	_unit moveInDriver _vehicle;
	_units pushBack _unit;
};

//--- If the extra turrets parameter is set, we man all the turrets, not just the gunner & commander
if (_extra_turrets) then {
	_turrets = [];
	_config = configFile >> "CfgVehicles" >> typeOf _vehicle >> "turrets";
	for '_i' from 0 to (count _config)-1 do {
		_turret_main = _config select _i;
		_turrets pushBack [_i];
		
		_config_sub = _turret_main >> "turrets";
		for '_j' from 0 to (count _config_sub) -1 do {
			_turret_sub = _config_sub select _j;
			_turrets pushBack [_i, _j];
		};
	};

	{
		_unit = [_crew, _group, _position, _sideID, _net] call CTI_CO_FNC_CreateUnit;
		_unit moveInTurret [_vehicle, _x];
		_units pushBack _unit;
	} forEach _turrets;
} else { //--- Only man the gunner / commander if the extra turrets parameter is not set
	if (_vehicle emptyPositions "gunner" > 0) then {
		_unit = [_crew, _group, _position, _sideID, _net] call CTI_CO_FNC_CreateUnit;
		_unit moveInGunner _vehicle;
		_units pushBack _unit;
	};
	if (_vehicle emptyPositions "commander" > 0) then {
		_unit = [_crew, _group, _position, _sideID, _net] call CTI_CO_FNC_CreateUnit;
		_unit moveInCommander _vehicle;
		_units pushBack _unit;
	};
};

_units
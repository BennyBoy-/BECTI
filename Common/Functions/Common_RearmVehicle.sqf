/*
  # HEADER #
	Script: 		Common\Functions\Common_RearmVehicle.sqf
	Alias:			CTI_CO_FNC_RearmVehicle
	Description:	Rearm a vehicle and it's turrets
	Author: 		Benny
	Creation Date:	19-09-2013
	Revision Date:	14-10-2013
	
  # PARAMETERS #
    0	[Object]: The vehicle
    1	[Side]: The side of the vehicle
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[VEHICLE, SIDE] call CTI_CO_FNC_RearmVehicle
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_SanitizeAircraft
	Common Function: CTI_CO_FNC_SanitizeArtillery
	
  # EXAMPLE #
    [vehicle player, CTI_P_SideJoined] call CTI_CO_FNC_RearmVehicle;
	  -> Rearm the player vehicle of the player
*/

private ["_side", "_type", "_vehicle"];

_vehicle = _this select 0;
_side = _this select 1;
_type = typeOf _vehicle;

_vehicle setVehicleAmmoDef 1;

//--- Driver
/*{_vehicle removeMagazineTurret [_x, [-1]]; _vehicle addMagazineTurret [_x, [-1]]} forEach (getArray(configFile >> "CfgVehicles" >> _type >> "magazines"));

//--- Turrets
_config = configFile >> "CfgVehicles" >> _type >> "turrets";
for '_i' from 0 to (count _config)-1 do {
	_turret_main = _config select _i;
	_config_sub = _turret_main >> "turrets";
	{_vehicle removeMagazineTurret [_x, [_i]]; _vehicle addMagazineTurret [_x, [_i]]} forEach (getArray(_turret_main >> "magazines"));
	for '_j' from 0 to (count _config_sub) -1 do {
		_turret_sub = _config_sub select _j;
		{_vehicle removeMagazineTurret [_x, [_i, _j]]; _vehicle addMagazineTurret [_x, [_i, _j]]} forEach (getArray(_turret_sub >> "magazines"));
	};
};*/

//--- Authorize the air loadout depending on the parameters set
if (_vehicle isKindOf "Air") then {[_vehicle, _side] call CTI_CO_FNC_SanitizeAircraft};

//--- Sanitize the artillery loadout, mines may lag the server for instance
if (CTI_ARTILLERY_FILTER == 1) then {if (typeOf _vehicle in (missionNamespace getVariable ["CTI_ARTILLERY", []])) then {(_vehicle) call CTI_CO_FNC_SanitizeArtillery}};
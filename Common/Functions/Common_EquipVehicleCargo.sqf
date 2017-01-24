/*
  # HEADER #
	Script: 		Common\Functions\Common_EquipVehicleCargo.sqf
	Alias:			CTI_CO_FNC_EquipVehicleCargo
	Description:	Equips the cargo of a vehicle
	Author: 		Benny
	Creation Date:	31-08-2016
	Revision Date:	31-08-2016
	
  # PARAMETERS #
    0	[Object]: The vehicle
	1	[Array]: The gear (items, weapons, magazines, backpacks...)
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[OBJECT, GEAR] call CTI_CO_FNC_EquipVehicleCargo
	
  # EXAMPLE #
	[vehicle player, ["arifle_mxc_f", "30rnd_65x39_caseless_mag", "30rnd_65x39_caseless_mag"]] call CTI_CO_FNC_EquipVehicleCargo; 
*/

private ["_gear", "_vehicle"];

_vehicle = _this select 0;
_gear = _this select 1;

//--- Clear the vehicle before applying it's new cargo
clearItemCargoGlobal _vehicle;
clearMagazineCargoGlobal _vehicle;
clearWeaponCargoGlobal _vehicle;
clearBackpackCargoGlobal _vehicle;

_loaded = [];

{
	_item = _x;
	// if !(_item in _loaded) then {
	if (({_x == _item} count _loaded) < 1) then {
		_count = {_x == _item} count _gear;
		_loaded pushBack _item;
		
		if (isClass (configFile >> 'CfgVehicles' >> _item)) then {
			_vehicle addBackpackCargoGlobal [_item, _count];
		} else {
			_vehicle addItemCargoGlobal [_item, _count];
		};
	};
} forEach _gear;
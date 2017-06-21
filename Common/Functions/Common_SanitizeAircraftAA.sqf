/*
  # HEADER #
	Script: 		Common\Functions\Common_SanitizeAircraftAA.sqf
	Alias:			CTI_CO_FNC_SanitizeAircraftAA
	Description:	Sanitize the AA equipment of an aircraft
	Author: 		Benny
	Creation Date:	19-09-2013
	Revision Date:	19-09-2013
	
  # PARAMETERS #
    0	[Object]: The vehicle
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	(VEHICLE) call CTI_CO_FNC_SanitizeAircraftAA
	
  # EXAMPLE #
    (vehicle player) call CTI_CO_FNC_SanitizeAircraftAA;
	  -> Sanitize the player's vehicle (AA)
*/

params ["_vehicle"];
private ["_ammo", "_magazines", "_magazines_remove", "_remove", "_weapons", "_weapons_remove"];

_weapons = weapons _vehicle;
_magazines = magazines _vehicle;

_weapons_remove = [];
_magazines_remove = [];

//--- Find AA Lock weapons.
{
	_remove = false;
	
	{
		_ammo = getText(configFile >> "CfgMagazines" >> _x >> "ammo"); //--- We grab the ammo used by the magazine.
		
		if (_ammo != "") then {
			//--- We check if the ammo is air-lock based and that in inherits from the missile class.
			if (getNumber(configFile >> "CfgAmmo" >> _ammo >> "airLock") isEqualTo 1 && configName(inheritsFrom(configFile >> "CfgAmmo" >> _ammo)) isEqualTo "MissileBase") then {_remove = true; _magazines_remove pushBack _x};
		};
	} forEach getArray(configFile >> "CfgWeapons" >> _x >> "magazines"); //--- We check the magazines array of the weapon.
	
	if (_remove) then {_weapons_remove pushBack _x};
} forEach _weapons;

{if (_x in _magazines_remove) then {_vehicle removeMagazine _x}} forEach _magazines; //--- Remove AA magazines if found.
{_vehicle removeWeapon _x} forEach _weapons_remove; //--- Remove all weapons linked to AA lock.
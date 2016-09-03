/*
  # HEADER #
	Script: 		Common\Functions\Common_SanitizeAircraftDAR.sqf
	Alias:			CTI_CO_FNC_SanitizeAircraftDAR
	Description:	Sanitize the DAR equipment of an aircraft
	Author: 		Benny
	Creation Date:	19-09-2013
	Revision Date:	19-09-2013
	
  # PARAMETERS #
    0	[Object]: The vehicle
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	(VEHICLE) call CTI_CO_FNC_SanitizeAircraftDAR
	
  # EXAMPLE #
    (vehicle player) call CTI_CO_FNC_SanitizeAircraftDAR;
	  -> Sanitize the player's vehicle (DAR)
*/

private ["_magazines","_vehicle","_weapons"];

_vehicle = _this;

_weapons = weapons _vehicle;
_magazines = magazines _vehicle;

_weapons_remove = [];
_magazines_remove = [];

//--- Find DAR Lock weapons.
{
	_remove = false;
	
	{
		_ammo = getText(configFile >> "CfgMagazines" >> _x >> "ammo"); //--- We grab the ammo used by the magazine.
		
		if (_ammo != "") then {
			//--- We check if the ammo is DAR based and that in inherits from the missile class.
			if (configName(inheritsFrom(configFile >> "CfgAmmo" >> _ammo)) == "MissleBase") then {_remove = true; _magazines_remove = _magazines_remove + [_x]};
		};
	} forEach getArray(configFile >> "CfgWeapons" >> _x >> "magazines"); //--- We check the magazines array of the weapon.
	
	if (_remove) then {_weapons_remove = _weapons_remove + [_x]};
} forEach _weapons;

{if (_x in _magazines_remove) then {_vehicle removeMagazine _x}} forEach _magazines; //--- Remove DAR magazines if found.
{_vehicle removeWeapon _x} forEach _weapons_remove; //--- Remove all weapons linked to DAR lock.
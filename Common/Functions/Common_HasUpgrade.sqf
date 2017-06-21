/*
  # HEADER #
	Script: 		Common\Functions\Common_HasUpgrade.sqf
	Alias:			CTI_CO_FNC_HasUpgrade
	Description:	Check if a side has the given upgrade
	Author: 		Benny
	Creation Date:	17-10-2013
	Revision Date:	17-10-2013
	
  # PARAMETERS #
    0	[Side]: The side
    1	[Integer]: The upgrade
    2	[Integer]: The upgrade level
	
  # RETURNED VALUE #
	[Boolean]: True if the existing upgrade level is (or above) the desired one
	
  # SYNTAX #
	[SIDE, UPGRADE, UPGRADE LEVEL] call CTI_CO_FNC_HasUpgrade
	
  # EXAMPLE #
    _has_barracks1 = [west, CTI_UPGRADE_BARRACKS, 1] call CTI_CO_FNC_HasUpgrade;
    _has_occupation2 = [west, CTI_UPGRADE_TOWNS, 2] call CTI_CO_FNC_HasUpgrade;
*/

params ["_side", "_upgrade", "_upgrade_level"];
private ["_upgrades"];

_upgrades = (_side) call CTI_CO_FNC_GetSideUpgrades;

if ((_upgrades select _upgrade) >= _upgrade_level) then {true} else {false}
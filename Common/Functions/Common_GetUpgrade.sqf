/*
  # HEADER #
	Script: 		Common\Functions\Common_GetUpgrade.sqf
	Alias:			CTI_CO_FNC_GetUpgrade
	Description:	Get the given upgrade level for a given side
	Author: 		Benny
	Creation Date:	01-09-2016
	Revision Date:	01-09-2016
	
  # PARAMETERS #
    0	[Side]: The side
    1	[Integer]: The index
	
  # RETURNED VALUE #
	[Integer]: The upgrade level
	
  # SYNTAX #
	[SIDE, INTEGER] call CTI_CO_FNC_GetUpgrade
	
  # EXAMPLE #
    _upgrade_gear = [west, CTI_UPGRADE_GEAR] call CTI_CO_FNC_GetUnitsScore
	  -> Returns the "Gear" upgrade level for the west side
*/

private ["_index", "_side"];

_side = _this select 0;
_index = _this select 1;

((_side) call CTI_CO_FNC_GetSideUpgrades) select _index

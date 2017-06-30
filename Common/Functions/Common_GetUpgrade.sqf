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
    _upgrade_gear = [west, CTI_UPGRADE_GEAR] call CTI_CO_FNC_GetUpgrade
	  -> Returns the "Gear" upgrade level for the west side
*/

params ["_side", "_index"];

((_side) call CTI_CO_FNC_GetSideUpgrades) select _index
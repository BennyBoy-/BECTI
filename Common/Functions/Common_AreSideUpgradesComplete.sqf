/*
  # HEADER #
	Script: 		Common\Functions\Common_AreSideUpgradesComplete.sqf
	Alias:			CTI_CO_FNC_AreSideUpgradesComplete
	Description:	Determine whether all upgrade are complete for a side or not
	Author: 		Benny
	Creation Date:	28-06-2017
	Revision Date:	28-06-2017
	
  # PARAMETERS #
    0	[Side]: The side
	
  # RETURNED VALUE #
	[Boolean]: True if all upgrades are complete
	
  # SYNTAX #
	(SIDE) call CTI_CO_FNC_AreSideUpgradesComplete
	
  # EXAMPLE #
    _upgrades_complete = (West) call CTI_CO_FNC_AreSideUpgradesComplete
	  -> Returns true if all the west upgrades are done
*/

params ["_side"];
private ["_break", "_complete", "_u_enabled", "_u_levels"];

_u_enabled = missionNamespace getVariable format["CTI_%1_UPGRADES_ENABLED", _side];
_u_levels = missionNamespace getVariable format["CTI_%1_UPGRADES_LEVELS", _side];

_break = false;
_complete = true;

{
	if (_u_enabled select _forEachIndex) then {
		if (_x < (_u_levels select _forEachIndex)) then {_break = true};
	};
	
	if (_break) exitWith {_complete = false};
} forEach (_side call CTI_CO_FNC_GetSideUpgrades);

_complete
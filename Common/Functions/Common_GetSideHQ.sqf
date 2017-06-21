/*
  # HEADER #
	Script: 		Common\Functions\Common_GetSideHQ.sqf
	Alias:			CTI_CO_FNC_GetSideHQ
	Description:	Return a side's HQ
	Author: 		Benny
	Creation Date:	18-09-2013
	Revision Date:	19-04-2016
	
  # PARAMETERS #
    0	[Side]: The side
	
  # RETURNED VALUE #
	[Object]: The HQ
	
  # SYNTAX #
	(SIDE) call CTI_CO_FNC_GetSideHQ
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_GetSideFromID
	
  # EXAMPLE #
    _side = (West) call CTI_CO_FNC_GetSideHQ
	  -> Return the West HQ
*/

params ["_side"];

if (typeName _side == "SCALAR") then {_side = (_side) call CTI_CO_FNC_GetSideFromID};
if (typeName _side != "SIDE") exitWith {objNull};

switch (_side) do {
	case west: {CTI_WEST getVariable "cti_hq"};
	case east: {CTI_EAST getVariable "cti_hq"};
	default {objNull};
}
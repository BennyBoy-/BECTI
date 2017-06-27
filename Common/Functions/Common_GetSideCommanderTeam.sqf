/*
  # HEADER #
	Script: 		Common\Functions\Common_GetSideCommanderTeam.sqf
	Alias:			CTI_CO_FNC_GetSideCommanderTeam
	Description:	Return a side's Commander team
	Author: 		Benny
	Creation Date:	03-05-2016
	Revision Date:	03-05-2016
	
  # PARAMETERS #
    0	[Side]: The side
	
  # RETURNED VALUE #
	[Object]: The Commander
	
  # SYNTAX #
	(SIDE) call CTI_CO_FNC_GetSideCommanderTeam
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_GetSideCommanderTeam
	
  # EXAMPLE #
    _side = (West) call CTI_CO_FNC_GetSideCommanderTeam
	  -> Return the West Commander team
*/

if !(typeName _this isEqualTo "SIDE") exitWith {grpNull};

switch (_this) do {
	case west: {CTI_WEST getVariable "cti_commander_team"};
	case east: {CTI_EAST getVariable "cti_commander_team"};
	default {grpNull};
}
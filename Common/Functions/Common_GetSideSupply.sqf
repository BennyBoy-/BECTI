/*
  # HEADER #
	Script: 		Common\Functions\Common_GetSideSupply.sqf
	Alias:			CTI_CO_FNC_GetSideSupply
	Description:	Return the supply of a given side
	Author: 		Benny
	Creation Date:	05-05-2016
	Revision Date:	05-05-2016
	
  # PARAMETERS #
    0	[Side]: The side
	
  # RETURNED VALUE #
	[Integer]: The current supply
	
  # SYNTAX #
	(SIDE) call CTI_CO_FNC_GetSideSupply
	
  # EXAMPLE #
    _supply = (West) call CTI_CO_FNC_GetSideSupply
	  -> Return the current west supply
*/

if !(typeName _this isEqualTo "SIDE") exitWith {[]};

switch (_this) do {
	case west: {CTI_WEST getVariable "cti_supply"};
	case east: {CTI_EAST getVariable "cti_supply"};
	default {[]};
}
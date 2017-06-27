/*
  # HEADER #
	Script: 		Common\Functions\Common_IsHQDeployed.sqf
	Alias:			CTI_CO_FNC_IsHQDeployed
	Description:	Check if the HQ is deployed or not
	Author: 		Benny
	Creation Date:	01-06-2016
	Revision Date:	01-06-2016
	
  # PARAMETERS #
    0	[Side]: The side of the HQ
	
  # RETURNED VALUE #
	[Boolean]: True if deployed
	
  # SYNTAX #
	(SIDE) call CTI_CO_FNC_IsHQDeployed
	
  # EXAMPLE #
    (West) call CTI_CO_FNC_IsHQDeployed
	  -> Return true if the West HQ is deployed
*/

if !(typeName _this isEqualTo "SIDE") exitWith {false};

switch (_this) do {
	case west: {CTI_WEST getVariable "cti_hq_deployed"};
	case east: {CTI_EAST getVariable "cti_hq_deployed"};
	default {false};
}
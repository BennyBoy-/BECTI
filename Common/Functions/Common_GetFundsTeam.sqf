/*
  # HEADER #
	Script: 		Common\Functions\Common_GetFundsTeam.sqf
	Alias:			CTI_CO_FNC_GetFundsTeam
	Description:	Get the funds of a group. 0 by default
					Note that we do not check for commander's funds here
	Author: 		Benny
	Creation Date:	01-06-2016
	Revision Date:	01-06-2016
	
  # PARAMETERS #
    0	[Group]: The group
	
  # RETURNED VALUE #
	[Number]: The group's funds
	
  # SYNTAX #
	(GROUP) call CTI_CO_FNC_GetFundsTeam
	
  # EXAMPLE #
    _funds = (group player) call CTI_CO_FNC_GetFundsTeam
	  -> Returns the team's funds
*/

_this getVariable ["cti_funds", 0];

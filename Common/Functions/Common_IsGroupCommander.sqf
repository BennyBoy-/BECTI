/*
  # HEADER #
	Script: 		Common\Functions\Common_IsGroupCommander.sqf
	Alias:			CTI_CO_FNC_IsGroupCommander
	Description:	Determine whether a group is the commander or not
	Author: 		Benny
	Creation Date:	18-05-2016
	Revision Date:	18-05-2016
	
  # PARAMETERS #
    None
	
  # RETURNED VALUE #
	[Boolean]: True if the group is the commander
	
  # SYNTAX #
	(GROUP) call CTI_CO_FNC_IsGroupCommander
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_GetSideCommanderTeam
	
  # EXAMPLE #
    (group player) call CTI_CO_FNC_IsGroupCommander
	  -> Returns true if the player is the current commander
*/

((side _this) call CTI_CO_FNC_GetSideCommanderTeam) isEqualTo _this
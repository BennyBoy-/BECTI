/*
  # HEADER #
	Script: 		Common\Functions\Common_HasAllCamps.sqf
	Alias:			CTI_CO_FNC_HasAllCamps
	Description:	Check if a side own all camps in a town
	Author: 		Benny
	Creation Date:	03-03-2017
	Revision Date:	03-03-2017
	
  # PARAMETERS #
    0	[Object]: The town
    1	[Side/Integer]: The side
	
  # RETURNED VALUE #
	[Boolean]: True if the side own all camps (true if town has 0 camps)
	
  # SYNTAX #
	[TOWN, SIDE] call CTI_CO_FNC_HasAllCamps
	
  # EXAMPLE #
    _west_own_camps = [Meaux, west] call CTI_CO_FNC_HasAllCamps;
*/

params ["_town", "_sideID"];

if (typeName _sideID isEqualTo "SIDE") then {_sideID = (_sideID) call CTI_CO_FNC_GetSideID};

count(_town Call CTI_CO_FNC_GetTownCamps) isEqualTo count([_town, _sideID] call CTI_CO_FNC_GetTownCampsOnSide)
/*
  # HEADER #
	Script: 		Common\Functions\Common_GetTownCamps.sqf
	Alias:			CTI_CO_FNC_GetTownCamps
	Description:	Get the camps of a town if available
	Author: 		Benny
	Creation Date:	26-04-2016
	Revision Date:	26-04-2016
	
  # PARAMETERS #
    0	[Object]: The town
	
  # RETURNED VALUE #
	[Array (Copy)]: The camps
	
  # SYNTAX #
	(TOWN) call CTI_CO_FNC_GetTownCamps
	
  # EXAMPLE #
    _camps = (StPierre) call CTI_CO_FNC_GetTownCamps
	  -> Assuming St Pierre has 2 camps -> [Camp0, Camp1]
*/

private ["_camps"];

_camps = _this getVariable "cti_town_camps";

if (isNil '_camps') then {_camps = []};

+_camps
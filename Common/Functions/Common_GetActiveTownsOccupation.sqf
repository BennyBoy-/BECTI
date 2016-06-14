/*
  # HEADER #
	Script: 		Common\Functions\Common_GetActiveTownsOccupation.sqf
	Alias:			CTI_CO_FNC_GetActiveTownsOccupation
	Description:	Get the active towns for a given occupation side
	Author: 		Benny, adapted from Mike Melvin
	Creation Date:	14-06-2016
	Revision Date:	14-06-2016
	
  # PARAMETERS #
    0	[Side]: The occupation side
	
  # RETURNED VALUE #
	[Array]: The active towns
	
  # SYNTAX #
	(SIDE) call CTI_CO_FNC_GetActiveTownsOccupation
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_GetSideID
	
  # EXAMPLE #
    _activeTowns = (WEST) call CTI_CO_FNC_GetActiveTownsOccupation
	  -> Retrieves the active towns for the West side
*/

private ["_side", "_sideID", "_town"];

_side = _this;
_sideID = (_side) call CTI_CO_FNC_GetSideID;

_towns = [];
{
	if (_x getVariable "cti_town_sideID" == _sideID && _x getVariable [format["cti_town_active_%1", _side], false]) then {_towns pushBack _x};
} forEach CTI_Towns;

_towns
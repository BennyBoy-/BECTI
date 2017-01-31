/*
  # HEADER #
	Script: 		Common\Functions\Common_GetTownCampsHostileToSide.sqf
	Alias:			CTI_CO_FNC_GetTownCampsHostileToSide
	Description:	Get the camps of a town for a given side if available
	Author: 		Benny
	Creation Date:	31-01-2017
	Revision Date:	31-01-2017
	
  # PARAMETERS #
    0	[Object]: The town
    1	[Side/Integer]: The side which owns the town
	
  # RETURNED VALUE #
	[Array]: The camps which are hostile to the given side
	
  # SYNTAX #
	[TOWN, SIDE] call CTI_CO_FNC_GetTownCampsHostileToSide
	
  # EXAMPLE #
    _camps = [EntreDeux, West] call CTI_CO_FNC_GetTownCampsHostileToSide
	  -> Assuming that Entre Deux belongs to West and that Camp 1 is held by East -> [Camp1]
*/

private ["_camps", "_camps_side", "_sideID", "_town"];

_town = _this select 0;
_sideID = _this select 1;

if (typeName _sideID == "SIDE") then {_sideID = (_sideID) call CTI_CO_FNC_GetSideID};

_camps = _town getVariable "cti_town_camps";
if (isNil '_camps') exitWith {[]};

_camps_side = [];
{if ((_x getVariable "cti_camp_sideID") != _sideID) then {_camps_side pushBack _x}} forEach _camps;

_camps_side
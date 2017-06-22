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

params ["_town", "_sideID"];
private ["_camps", "_camps_side"];

if (typeName _sideID isEqualTo "SIDE") then {_sideID = (_sideID) call CTI_CO_FNC_GetSideID};

_camps = _town getVariable "cti_town_camps";
if (isNil '_camps') exitWith {[]};

_camps_side = [];
{if ((_x getVariable "cti_camp_sideID") != _sideID) then {_camps_side pushBack _x}} forEach _camps;

_camps_side
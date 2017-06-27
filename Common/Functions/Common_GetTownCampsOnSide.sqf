/*
  # HEADER #
	Script: 		Common\Functions\Common_GetTownCampsOnSide.sqf
	Alias:			CTI_CO_FNC_GetTownCampsOnSide
	Description:	Get the camps of a town for a given side if available
	Author: 		Benny
	Creation Date:	26-04-2016
	Revision Date:	26-04-2016
	
  # PARAMETERS #
    0	[Object]: The town
    1	[Side/Integer]: The side
	
  # RETURNED VALUE #
	[Array]: The camps held
	
  # SYNTAX #
	[TOWN, SIDE] call CTI_CO_FNC_GetTownCampsOnSide
	
  # EXAMPLE #
    _camps = [Lamentin, West] call CTI_CO_FNC_GetTownCampsOnSide
	  -> Assuming St Pierre has 1 camp held by West over 2 -> [Camp1]
*/

params ["_town", "_sideID"];
private ["_camps", "_camps_side"];

if (typeName _sideID isEqualTo "SIDE") then {_sideID = (_sideID) call CTI_CO_FNC_GetSideID};

_camps = _town getVariable "cti_town_camps";
if (isNil '_camps') exitWith {[]};

_camps_side = [];
{if ((_x getVariable "cti_camp_sideID") isEqualTo _sideID) then {_camps_side pushBack _x}} forEach _camps;

_camps_side
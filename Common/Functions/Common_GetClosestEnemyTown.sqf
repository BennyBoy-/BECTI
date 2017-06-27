/*
  # HEADER #
	Script: 		Common\Functions\Common_GetClosestEnemyTown.sqf
	Alias:			CTI_CO_FNC_GetClosestEnemyTown
	Description:	Get the closest hostile town for a given side
	Author: 		Benny
	Creation Date:	16-09-2013
	Revision Date:	18-04-2016
	
  # PARAMETERS #
    0	[Array/Object]: A position or an object which determine the center
    1	[Side/Integer]: The "friendly" side
	
  # RETURNED VALUE #
	[Object]: The closest hostile town (null if none)
	
  # SYNTAX #
	[CENTER, FRIENDLY SIDE] call CTI_CO_FNC_GetClosestEnemyTown
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_GetClosestEntity
	Common Function: CTI_CO_FNC_GetSideID
	
  # EXAMPLE #
    _closest = [player, CTI_P_SideID] call CTI_CO_FNC_GetClosestEnemyTown;
*/

params ["_center", "_friendlySide"];
private ["_towns"];

if (typeName _friendlySide isEqualTo "SIDE") then {_friendlySide = (_friendlySide) call CTI_CO_FNC_GetSideID};

_towns = [];
{if !((_x getVariable "cti_town_sideID") isEqualTo _friendlySide) then {_towns pushBack _x}} forEach CTI_Towns;

//--- Territorial mode
if ((missionNamespace getVariable "CTI_TOWNS_TERRITORIAL") > 0) exitWith {
	[_center, _friendlySide, _towns] call CTI_CO_FNC_GetClosestTerritorialEnemyTown;
};

if (count _towns isEqualTo 0) exitWith {objNull};

[_center, _towns] call CTI_CO_FNC_GetClosestEntity
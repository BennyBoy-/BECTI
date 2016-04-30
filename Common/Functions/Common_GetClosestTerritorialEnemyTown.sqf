/*
  # HEADER #
	Script: 		Common\Functions\Common_GetClosestTerritorialEnemyTown.sqf
	Alias:			CTI_CO_FNC_GetClosestTerritorialEnemyTown
	Description:	Get the closest hostile town for a given side which may be captured
					under Territorial Mode
	Author: 		Benny
	Creation Date:	19-04-2016
	Revision Date:	19-04-2016
	
  # PARAMETERS #
    0	[Array/Object]: A position or an object which determine the center
    1	[Side/Integer]: The "friendly" side
    1	[Array]: The enemy towns
	
  # RETURNED VALUE #
	[Object]: The closest capturable hostile town (null if none)
	
  # SYNTAX #
	[CENTER, FRIENDLY SIDE, ENEMY TOWNS] call CTI_CO_FNC_GetClosestTerritorialEnemyTown
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_GetClosestEntity
	Common Function: CTI_CO_FNC_GetSideHQ
	Common Function: CTI_CO_FNC_GetSideID
	Common Function: CTI_CO_FNC_GetSideTownCount
	
  # EXAMPLE #
    _closest = [player, CTI_P_SideID] call CTI_CO_FNC_GetClosestTerritorialEnemyTown;
*/

private ["_availableTowns", "_center", "_enemyTowns", "_friendlySide", "_town", "_towns"];

_center = _this select 0;
_friendlySide = _this select 1;
_enemyTowns = _this select 2;

if (typeName _friendlySide == "SIDE") then {_friendlySide = (_friendlySide) call CTI_CO_FNC_GetSideID};

//--- No towns are available for the friendly side? then, the closest enemy town is the one which is the closest to the HQ
if ((_friendlySide Call CTI_CO_FNC_GetSideTownCount) < 1) exitWith {
	[_friendlySide Call CTI_CO_FNC_GetSideHQ, _enemyTowns] Call CTI_CO_FNC_GetClosestEntity;
};

//--- At least 1 town is available, browse to find the closest one which may be captured
_availableTowns = [];
{
	_town = _x;
	{
		if ((_x getVariable "cti_town_sideID") == _friendlySide) exitWith {_availableTowns pushBack _town};
	} forEach (_x getVariable "cti_town_neighbors");
} forEach _enemyTowns;

[_center, _availableTowns] Call CTI_CO_FNC_GetClosestEntity
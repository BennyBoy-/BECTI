/*
  # HEADER #
	Script: 		Common\Functions\Common_GetTownSpawnBuilding.sqf
	Alias:			CTI_CO_FNC_GetTownSpawnBuilding
	Description:	Get a viable building for spawning ai units in a town
	Author: 		Benny
	Creation Date:	03-06-2017
	Revision Date:	03-06-2017
	
  # PARAMETERS #
    0	[Array]: The buildings
    1	[Side]: The side of the units
	
  # RETURNED VALUE #
	[Array]: The building and it's array index position
	
  # SYNTAX #
	[BUILDINGLIST, SIDE] call CTI_CO_FNC_GetTownSpawnBuilding
	
  # EXAMPLE #
    _ai_spawn_building = [nearestObjects [player, ["Building"], 150], resistance] call CTI_CO_FNC_GetTownSpawnBuilding
	  -> [the object, it's array position]
*/

params["_buildings", "_side"];
private ["_building", "_building_valid", "_entities", "_hostiles", "_index", "_safe_range"];

_safe_range = [CTI_TOWNS_OCCUPATION_SPAWN_SAFE_RANGE, CTI_TOWNS_RESISTANCE_SPAWN_SAFE_RANGE] select (_side isEqualTo resistance);
_hostiles = [west, east, resistance] - [_side];

_index = -1;
_building = objNull;
{
	if (alive _x) then {
		_building_valid = true;
		
		if (_safe_range > 0) then {
			_entities = _x nearEntities [["Man"], _safe_range];
			if (({_x countSide _entities > 0} count _hostiles) > 0) then {_building_valid = false};
		};
		
		if (_building_valid) then {_index = _forEachIndex; _building = _x};
	};
} forEach _buildings;

[_building, _index]
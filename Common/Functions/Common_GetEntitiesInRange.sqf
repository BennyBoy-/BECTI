/*
  # HEADER #
	Script: 		Common\Functions\Common_GetEntitiesInRange.sqf
	Alias:			CTI_CO_FNC_GetEntitiesInRange
	Description:	Get the entities/position amongst a list of positions/objects
					within a given range
	Author: 		Benny
	Creation Date:	28-04-2016
	Revision Date:	28-04-2016
	
  # PARAMETERS #
    0	[Array/Object]: A position or an object which determine the center
    1	[Array]: The list (objects/positions)
    2	[Float]: The range
	
  # RETURNED VALUE #
	[Array]: The positions or entities in range
	
  # SYNTAX #
	[CENTER, LIST, RANGE] call CTI_CO_FNC_GetEntitiesInRange
	
  # EXAMPLE #
    _closest = [player, [Town1, Town2, Town3]] call CTI_CO_FNC_GetEntitiesInRange;
    _closest = [player, [Town1, [0,0,0], [50,50]]] call CTI_CO_FNC_GetEntitiesInRange;
*/

private ["_distance", "_inrange", "_object", "_objects", "_range"];

_object = _this select 0;
_objects = _this select 1;
_range = _this select 2;

_inrange = [];
{if (_x distance _object <= _range) then {_inrange pushBack _x}} forEach _objects;

_inrange
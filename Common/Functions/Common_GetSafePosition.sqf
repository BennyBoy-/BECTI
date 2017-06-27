/*
  # HEADER #
	Script: 		Common\Functions\Common_GetSafePosition.sqf
	Alias:			CTI_CO_FNC_GetSafePosition
	Description:	Attempt to get a safe position near a center
	Author: 		Benny
	Creation Date:	04-06-2017
	Revision Date:	04-06-2017
	
  # PARAMETERS #
    0	[Array/Object]: The center
    1	{Optionnal} [Number]: The min radius
    2	{Optionnal} [Number]: The max radius
    3	{Optionnal} [Number]: The minimal distance to an object
    4	{Optionnal} [String]: The template to use
    5	{Optionnal} [Array]: The living entities classnames to detect
    6	{Optionnal} [Number]: The living entities detection radius
    7	{Optionnal} [Number]: The amount of scans to perform
	
  # RETURNED VALUE #
	[Array]: A safe position
	
  # SYNTAX #
	[POSITION] call CTI_CO_FNC_GetSafePosition
	[POSITION, RADIUS MIN, RADIUS MAX, DISTANCE MIN] call CTI_CO_FNC_GetSafePosition
	[POSITION, RADIUS MIN, RADIUS MAX, DISTANCE MIN, TEMPLATE, ENTITIES, ENTITIES RANGE, PASSES] call CTI_CO_FNC_GetSafePosition
	
  # EXAMPLE #
    _empty_position = [vehicle player] call CTI_CO_FNC_GetSafePosition
    _empty_position = [vehicle player, 1, 50, 10, "vehicles", ["Man"], 5, 250] call CTI_CO_FNC_GetSafePosition
*/

params["_center", ["_radius_min", 1], ["_radius_max", 200], ["_distance_min", 15], ["_template", ""], ["_near_entities", []], ["_near_entities_range", 5], ["_passes", 500]];
private ["_breakout", "_center_ran", "_direction", "_filter", "_is_clear", "_position", "_radius"];

if (typeName _center isEqualTo "OBJECT") then {_center = position _center};
_position = _center;

_filter = switch (_template) do {
	case "infantry": {["Building", "Fence", "Hide", "House", "Quay", "Rock", "Rocks", "Ruin"]}; //--- Units filter
	case "vehicles": {["Building", "Fence", "Forest Border", "Forest Square", "Forest Triangle", "Hide", "House", "Quay", "Rock", "Rocks", "Ruin", "Tree", "Wall"]}; //--- Vehicles filter
	default {[]}; //--- Filter all by default
};

_breakout = false;
for '_i' from 1 to _passes do {
	_direction = random 360;
	_radius = (random (_radius_max - _radius_min)) + _radius_min;
	_center_ran = [(_center select 0)+((sin _direction)*_radius),(_center select 1)+((cos _direction)*_radius),(_center select 2)];
	
	if (count (nearestTerrainObjects [_center_ran, _filter, _distance_min, false]) < 1 && !surfaceIsWater _center_ran) then {
		_is_clear = true;
		if (count _near_entities > 0) then {
			if !(count (_center_ran nearEntities [_near_entities, _near_entities_range]) isEqualTo 0) then {_is_clear = false};
		};
		
		if (_is_clear) then {
			_breakout = true;
			_position = _center_ran;
		};
	};
	
	if (_breakout) exitWith {};
};

//--- If the position is still the same, log a warning
if (_center isEqualTo _position) then {
	if (CTI_Log_Level >= CTI_Log_Warning) then { 
		["WARNING", "FILE: Common\Functions\Common_GetSafePosition.sqf", format ["Could not find a safe position at [%1] using template [%2], min radius [%3], max radius [%4], min distance [%5] after [%6] passes", _position, _template, _radius_min, _radius_max, _distance_min, _passes]] call CTI_CO_FNC_Log;
	};
};

_position
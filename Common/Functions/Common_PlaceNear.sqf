/*
  # HEADER #
	Script: 		Common\Functions\Common_PlaceNear.sqf
	Alias:			CTI_CO_FNC_PlaceNear
	Description:	Place an object/unit/vehicle next to a position
	Author: 		Benny, Adapted from Mike Melvin
	Creation Date:	19-09-2013
	Revision Date:	28-08-2016
	
  # PARAMETERS #
    0	[Object]: The object to place
    1	[Array]: The center
    2	[Number]: The minimum radius
    3	[Number]: The maximum radius
    4	{Optionnal} [Boolean]: Force the unit to face away from the center
    5	{Optionnal} [Boolean]: Set a random direction
    6	{Optionnal} [Boolean]: Place the unit safely
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[OBJECT, CENTER, RADIUS MIN, RADIUS MAX] call CTI_CO_FNC_GetRandomPosition
	[OBJECT, CENTER, RADIUS MIN, RADIUS MAX, FACE AWAY] call CTI_CO_FNC_GetRandomPosition
	[OBJECT, CENTER, RADIUS MIN, RADIUS MAX, FACE AWAY, RANDOM DIRECTION] call CTI_CO_FNC_GetRandomPosition
	[OBJECT, CENTER, RADIUS MIN, RADIUS MAX, FACE AWAY, RANDOM DIRECTION, SAFE PLACEMENT] call CTI_CO_FNC_GetRandomPosition
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_place_safe
	
  # EXAMPLE #
    [vehicle player, getPos Town0, 10, 20] call CTI_CO_FNC_PlaceNear;
	  -> Place the player's vehicle near Town0
	[vehicle player, getPos Town0, 10, 20, true] call CTI_CO_FNC_PlaceNear;
	  -> Place the player's vehicle near Town0 and force it to face away from the center
	[vehicle player, getPos Town0, 10, 20, true, false, true] call CTI_CO_FNC_PlaceNear;
	  -> Place the player's vehicle safely near Town0 and force it to face away from the center
*/

params ["_object", "_position", "_min_radius", "_max_radius", ["_face_away", true], ["_random_dir", true], ["_place_safe", false]];
private ["_destination", "_direction", "_radius", "_safeRadius"];

_direction = random 360;
_radius = (random (_max_radius - _min_radius)) + _min_radius;

if (_place_safe) then {
	_safeRadius = (_max_radius - _min_radius) / 2;
	if (_safeRadius < 5) then {_safeRadius = 5};
	_destination = [(_position select 0)+((sin _direction)*_radius),(_position select 1)+((cos _direction)*_radius),0.3]; //z: (_position select 2)+0.5
	[_object, _destination, _min_radius] call CTI_CO_FNC_place_safe;
} else {
	_object setPos [(_position select 0)+((sin _direction)*_radius),(_position select 1)+((cos _direction)*_radius),0.3]; //z: (_position select 2)+0.5
};

if (_random_dir) then {_object setDir random 360};

if (_face_away) then {
	_destination = getPos _object;
	_object setDir -((((_destination select 1) - (_position select 1)) atan2 ((_destination select 0) - (_position select 0))) - 90);
	_object setVectorUp surfaceNormal position _object;
};
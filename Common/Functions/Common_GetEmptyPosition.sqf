/*
  # HEADER #
	Script: 		Common\Functions\Common_GetEmptyPosition.sqf
	Alias:			CTI_CO_FNC_GetEmptyPosition
	Description:	Attempt to get an empty "flat" position near a center
	Author: 		Benny
	Creation Date:	18-09-2013
	Revision Date:	18-09-2013
	
  # PARAMETERS #
    0	[Array/Object]: The center
    0	[Number]: The radius
	
  # RETURNED VALUE #
	[Array]: A flat/empty position
	
  # SYNTAX #
	[POSITION, RADIUS] call CTI_CO_FNC_GetEmptyPosition
	
  # EXAMPLE #
    _empty_position = [vehicle player, 15] call CTI_CO_FNC_GetEmptyPosition
*/

private ["_i", "_object", "_position", "_tpos"];

_object = _this select 0;
_radius = _this select 1;

if (typeName _object == "OBJECT") then {_object = ASLToAGL getPosASL _object};

_position = _object;
{
	if ((_x nearEntities 10) isEqualTo []) exitWith {_position = _x};
} forEach ([_object, _radius, "meadow", 4, 25, 0.5, false] call CTI_CO_FNC_GetRandomBestPlaces);

_position
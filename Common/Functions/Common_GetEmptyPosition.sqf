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

private ["_i" ,"_object", "_position", "_tpos"];

_object = _this select 0;
_radius = _this select 1;

if (typeName _object == "OBJECT") then {_object = getPos _object};

_position = [(_object select 0)+5,(_object select 1)+5,0];
_i = 0;

while {_i < 1000} do {
	_tpos = [(_object select 0)+(_radius - (random (_radius * 2))),(_object select 1)+(_radius - (random (_radius * 2))),0];
	if (count (_tpos isFlatEmpty [15, 0, 2, 10, 0, false, objNull]) > 0) exitWith {_position = _tpos};
	_i = _i + 1;
};

_position
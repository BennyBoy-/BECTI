/*
  # HEADER #
	Script: 		Common\Functions\Common_GetRandomBestPlaces.sqf
	Alias:			CTI_CO_FNC_GetRandomBestPlaces
	Description:	Return the best placed based on a given layout formula
	Author: 		Benny
	Creation Date:	23-05-2016
	Revision Date:	23-05-2016
	
  # PARAMETERS #
    0	[Position]: The center
    1	[Number]: The radius
    2	[Number]: The layout to use (can be custom)
    3	[Number]: The precision (grid size)
    4	[Number]: The source count (count of returned positions)
    5	[Number]: The floor value which match a valid result of our expression
    6	[Boolean]: True if a single result should be returned, false for all results
	
  # RETURNED VALUE #
	[Array]: One or multiple positions depending on the Boolean parameter
	
  # SYNTAX #
	[CENTER, RADIUS, LAYOUT, PRECISION, SOURCECOUNT, VALIDFLOOR, RETURNONE] call CTI_CO_FNC_GetRandomBestPlaces
	
  # NOTE
	- A small precision will be more accurate but it will need more CPU resources, use the 0-100 range as a reference
	
  # EXAMPLE #
    _positions = [getPos player, 100, "sea", 10, 6, 1, false] call CTI_CO_FNC_GetRandomPosition
	  -> Will return the nearby "sea" positions around the player within 100m
	_position = [getPos player, 100, "meadow", 10, 6, 1, true] call CTI_CO_FNC_GetRandomPosition
	  -> Will return the nearby "sea" positions around the player within 100m
*/

params ["_position", ["_radius", 200], ["_layout", "meadow"], ["_precision", 8], ["_source_count", 3], ["_valid_floor", 1], ["_return_one", true]];

_formula = switch (_layout) do {
	/*
		Meadow formula:
			- We're looking for 'meadow' and we exclude 'sea', 'hills', 'houses', 'forest' and 'trees'
			- A value of 1 is equal to 'full meadow'
		Ideal Precision		-> 8
		Valid Floor			-> 0.1
	*/
	case "meadow": {"(1 * meadow) * (1 - sea) * (1 - hills) * (1 - houses) * (1 - forest) * (1 - trees)"}; 
	/*
		Sea formula:
			- We're looking for 'sea' and we exclude 'meadow', 'hills', 'houses', 'forest' and 'trees'
			- A value of 1 is equal to 'full sea'
		Ideal Precision		-> 8
		Valid Floor			-> 0.1
	*/
	case "sea": {"(1 * sea) * (1 - meadow) * (1 - hills) * (1 - houses) * (1 - forest) * (1 - trees)"};
	default {_layout};
};

//--- Retrieve the places which match our formula
_places = selectBestPlaces [_position, _radius, _formula, _precision, _source_count];

_positions = [];
{if ((_x select 1) >= _valid_floor) then {_positions pushBack (_x select 0)}} forEach _places;

if (count _positions < 1) then {_positions = _position};
if (_return_one) exitWith {_positions select floor(random count _positions)};

_positions
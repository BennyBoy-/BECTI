/*
  # HEADER #
	Script: 		Common\Functions\Common_HasStructure.sqf
	Alias:			CTI_CO_FNC_HasStructure
	Description:	Check if a side has the given structure
	Author: 		Benny
	Creation Date:	17-10-2013
	Revision Date:	17-10-2013
	
  # PARAMETERS #
    0	[Side]: The side
    1	[String]: The structure's type
	2	{Optionnal} [Object/Position]: The center
	3	{Optionnal} [Number]: The radius
	
  # RETURNED VALUE #
	[Boolean]: True if the structure is present
	
  # SYNTAX #
	[SIDE, STRUCTURE TYPE] call CTI_CO_FNC_HasStructure
	
  # EXAMPLE #
    _has_cc = [west, CTI_CONTROLCENTER] call CTI_CO_FNC_HasStructure;
    _has_barracks = [west, CTI_BARRACKS] call CTI_CO_FNC_HasStructure;
*/

params ["_side", "_structure_type", ["_center", false], ["_distance", 650]];
private ["_has_structure", "_structure", "_structures"];

_has_structure = false;

_structures = (_side) call CTI_CO_FNC_GetSideStructures;
_structures = [_structure_type, _structures] call CTI_CO_FNC_GetSideStructuresByType;

//--- Don't bother if we have nothing
if (count _structures > 0) then {
	//--- Check whether we have to filter or not with the distance
	if (typeName _center != "BOOL") then {
		_structure = [_structure_type, _center, _structures, _distance] call CTI_CO_FNC_GetClosestStructure;
		if !(isNull _structure) then {_has_structure = true};
	} else {
		_has_structure = true;
	};
};

_has_structure
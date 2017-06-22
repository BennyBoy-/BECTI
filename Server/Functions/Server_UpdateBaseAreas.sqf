/*
  # HEADER #
	Script: 		Server\Functions\Server_UpdateBaseAreas.sqf
	Alias:			CTI_SE_FNC_UpdateBaseAreas
	Description:	Updates base area(s) if needed
	Author: 		Benny
	Creation Date:	13-06-2016
	Revision Date:	13-06-2016
	
  # PARAMETERS #
    0	[Side]: The side which need a base area update
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	(SIDE) call CTI_SE_FNC_UpdateBaseAreas
	
  # EXAMPLE #
    (WEST) call CTI_SE_FNC_UpdateBaseAreas
	  -> Updates base areas if needed for the west side
*/

params ["_side"];
private ["_areas", "_closest", "_delete_pos", "_logic", "_need_update", "_structures_positions"];

_logic = (_side) call CTI_CO_FNC_GetSideLogic;

//--- We update the base area array to remove potential empty areas. First we get the 2D positions of our structures
_areas = _logic getVariable "cti_structures_areas";
_structures_positions = [];
{
	_pos = getPos _x;
	_pos = [_pos select 0, _pos select 1];
	_structures_positions pushBack _pos;
} forEach ((_side call CTI_CO_FNC_GetSideStructures) + (_logic getVariable "cti_structures_wip"));

//--- Check for empty areas now
_need_update = false;
_delete_pos = [];
{
	_closest = [_x, _structures_positions] call CTI_CO_FNC_GetClosestEntity;
	if (_closest distance _x > CTI_BASE_AREA_RANGE) then {_need_update = true; _delete_pos pushBack _x; _areas set [_forEachIndex, "!nil!"]};
	// if (_closest distance _x > CTI_BASE_AREA_RANGE) then {_need_update = true; _areas deleteAt _forEachIndex};
} forEach +_areas;

//--- Only update if we have to
if (_need_update) then {
	_areas = _areas - ["!nil!"];
	_logic setVariable ["cti_structures_areas", _areas, true];
	
	//--- Wipe the defense/structures upon area expiration
	{
		{
			if !(isNil {_x getVariable "cti_defense_sideID"}) then {deleteVehicle _x};
		} forEach (nearestObjects [_x, missionNamespace getVariable format ["CTI_%1_DEFENSES_NAMES", _side], CTI_BASE_AREA_RANGE]);
	} forEach _delete_pos;
};
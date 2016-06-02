/*
  # HEADER #
	Script: 		Server\Functions\Server_HandleStructureConstruction.sqf
	Alias:			CTI_SE_FNC_HandleStructureConstruction
	Description:	Handle the lifespan of a structure's construction
	Author: 		Benny
	Creation Date:	20-09-2013
	Revision Date:	20-09-2013

  # PARAMETERS #
    0	[Side]: The side of the structure
    1	[Object]: The ruin
    2	[String]: The structure variable name
    3	[Array]: The position
    4	[Array]: The direction

  # RETURNED VALUE #
	None

  # SYNTAX #
	[SIDE, RUIN, STRUCTURE VARIABLE, POSITION, DIRECTION] spawn CTI_SE_FNC_HandleStructureConstruction

  # DEPENDENCIES #

	Common Function: CTI_CO_FNC_GetClosestEntity
	Common Function: CTI_CO_FNC_GetSideID
	Common Function: CTI_CO_FNC_GetSideLogic
	Common Function: CTI_CO_FNC_GetSideStructures
	Common Function: CTI_CO_FNC_NetSend
	Server Function: CTI_SE_FNC_OnBuildingDestroyed
	Server Function: CTI_SE_FNC_OnBuildingHandleDamage
	Server Function: CTI_SE_FNC_OnBuildingHandleVirtualDamage
	Server Function: CTI_SE_FNC_OnBuildingHit

  # EXAMPLE #
    [_side, _structure, _variable, _position, _direction] spawn CTI_SE_FNC_HandleStructureConstruction;
*/

private ["_completion", "_completion_ratio", "_completion_last", "_direction", "_isDestroyed", "_lasttouch", "_position", "_side", "_structure", "_time_build", "_var", "_variable"];

_side = _this select 0;
_side_id= (_side) call CTI_CO_FNC_GetSideID;
_structure = _this select 1;
_variable = _this select 2;
_position = _this select 3;
_direction = _this select 4;
_isDestroyed = if (count _this > 5) then {_this select 5} else {false};


if (CTI_DEBUG) then {_structure setVariable ["cti_completion", 100]};
waitUntil {!isNil {_structure getVariable "cti_completion"}};
_completion = _structure getVariable "cti_completion";
_completion_ratio = _structure getVariable "cti_completion_ratio";
_completion_last = _completion;

_var = missionNamespace getVariable _variable;
_time_build = _var select 3;

switch (missionNamespace getVariable "CTI_BASE_CONSTRUCTION_MODE") do {
	case 0: { //--- Timed Based
		if(!CTI_DEBUG) then {
			sleep (if (CTI_DEV_MODE > 0) then {0} else {_time_build}); //this timer determines how long it takes for the structure to pop up, ss83
		};
		
		//--- Upon destruction, a structure is no longer valid in a timed-based situation
		_completion = if (_isDestroyed) then {0} else {100};
	};
	case 1: { //--- Worker Based
		_lasttouch = time;
		
		while {_completion > 0 && _completion < 100} do {
			_completion = _structure getVariable "cti_completion";
			sleep CTI_BASE_CONSTRUCTION_DECAY_DELAY;

			if (_completion > _completion_last) then { _lasttouch = time };

			if (time - _lasttouch > CTI_BASE_CONSTRUCTION_DECAY_TIMEOUT) then {_structure setVariable ["cti_completion", _completion - CTI_BASE_CONSTRUCTION_DECAY_FROM]};

			_completion_last = _completion;
		}; 
	};
};

_logic = (_side) call CTI_CO_FNC_GetSideLogic;
_logic setVariable ["cti_structures_wip", (_logic getVariable "cti_structures_wip") - [_structure, objNull]];

deleteVehicle _structure;

if (_completion >= 100) then {
	_structure = ((_var select 1) select 0) createVehicle _position;
	_structure setDir _direction;
	_structure setPos _position;
	_structure setDir _direction;
	_structure setVectorUp [0,0,0];
	_structure setVariable ["cti_structure_type", ((_var select 0) select 0)];

	//--- Do we use our alternative damage system to prevent some bisteries from happening?
	_alternative_damages = false;
	_reduce_damages = 0;
	{if ("DMG_Alternative" in _x) then {_alternative_damages = true}; if ("DMG_Reduce" in _x) then {_reduce_damages = _x select 1}} forEach (_var select 5);
	if (_alternative_damages) then {
		_structure setVariable ["cti_altdmg", 0];
		_structure addEventHandler ["handledamage", format ["[_this select 0, _this select 2, _this select 3, '%1', %2, %3, %4, %5, %6] call CTI_SE_FNC_OnBuildingHandleVirtualDamage", _variable, (_side) call CTI_CO_FNC_GetSideID, _position, _direction, _completion_ratio, _reduce_damages]];
	} else {
		_structure addEventHandler ["killed", format ["[_this select 0, _this select 1, '%1', %2, %3, %4, %5] spawn CTI_SE_FNC_OnBuildingDestroyed", _variable, (_side) call CTI_CO_FNC_GetSideID, _position, _direction, _completion_ratio]];
		if (_reduce_damages > 0 || CTI_BASE_NOOBPROTECTION == 1) then {
			_structure addEventHandler ["handledamage", format ["[_this select 0, _this select 2, _this select 3, %1, %2, '%3', %4] call CTI_SE_FNC_OnBuildingHandleDamage", (_side) call CTI_CO_FNC_GetSideID, _reduce_damages, _variable, _position]];
		} else {
			_structure addEventHandler ["hit", format ["[_this select 0, _this select 2, %1, '%2', %3] spawn CTI_SE_FNC_OnBuildingHit", (_side) call CTI_CO_FNC_GetSideID, _variable, _position]];
		};
	};

	_logic setVariable ["cti_structures", (_logic getVariable "cti_structures") + [_structure], true];

	[_structure, _var, _side] call CTI_SE_FNC_InitializeStructure;
	
	if (CTI_Log_Level >= CTI_Log_Information) then {
		["INFORMATION", "FILE: Server\Functions\Server_HandleStructureConstruction.sqf", format["A [%1] from side [%2] Construction has been completed on position [%3], was it destroyed? [%4]", (_var select 0) select 1, _side, _position, _isDestroyed]] call CTI_CO_FNC_Log;
	};

	[["CLIENT", _side], "Client_OnStructureConstructed", [_structure, _variable]] call CTI_CO_FNC_NetSend;
} else {
	private ["_areas", "_closest", "_delete_pos", "_need_update", "_structures_positions"];
	//--- We update the base area array to remove potential empty areas. First we get the 2D positions of our structures
	_areas = _logic getVariable "cti_structures_areas";
	_structures_positions = [];
	_delete_pos = [];
	{
		_pos = getPos _x;
		_pos = [_pos select 0, _pos select 1];
		_structures_positions pushBack _pos;
	} forEach ((_side call CTI_CO_FNC_GetSideStructures) + (_logic getVariable "cti_structures_wip"));

	//--- Check for empty areas now
	_need_update = false;
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
				if !(isNil {_x getVariable "cti_managed"}) then {deleteVehicle _x};
			} forEach (nearestObjects [_x, missionNamespace getVariable format ["CTI_%1_DEFENSES_NAMES", _side], CTI_BASE_AREA_RANGE]);
		} forEach _delete_pos;
	};
	
	if (CTI_Log_Level >= CTI_Log_Information) then {
		["INFORMATION", "FILE: Server\Functions\Server_HandleStructureConstruction.sqf", format["A [%1] from side [%2] Construction has expired at position [%3], was it destroyed? [%4]", (_var select 0) select 1, _side, _position, _isDestroyed]] call CTI_CO_FNC_Log;
	};

	//todo: add message bout structure expiration
};

//Admin Zeus
if !( isNil "ADMIN_ZEUS") then { ADMIN_ZEUS addCuratorEditableObjects [[_structure],true];};

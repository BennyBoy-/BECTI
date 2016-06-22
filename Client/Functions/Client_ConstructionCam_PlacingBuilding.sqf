/*
  # HEADER #
	Script: 		Client\Functions\Client_ConstructionCam_PlacingBuilding.sqf
	Alias:			CTI_CL_FNC_ConstructionCam_PlacingBuilding
	Description:	Prepare the placement of a structure before the construction
	Author: 		Benny
	Creation Date:	19-09-2013
	Revision Date:	19-09-2013

  # PARAMETERS #
    0	[String]: The structure variable name
    1	[Object]: The center (construction center)
    2	[Number]: The construction radius

  # RETURNED VALUE #
	None

  # SYNTAX #
	[STRUCTURE VARIABLE, CENTER, RADIUS] spawn CTI_CL_FNC_ConstructionCam_PlacingBuilding

  # DEPENDENCIES #
	Client Function: CTI_CL_FNC_ChangePlayerFunds
	Client Function: CTI_CL_FNC_GetPlayerFunds
	Common Function: CTI_CO_FNC_GetDirTo
	Common Function: CTI_CO_FNC_NetSend

  # EXAMPLE #
    [_selected, CTI_P_SideJoined call CTI_CO_FNC_GetSideHQ, CTI_BASE_CONSTRUCTION_RANGE] spawn CTI_CL_FNC_ConstructionCam_PlacingBuilding;
*/

_variable = _this select 0;
_center = _this select 1;
_center_distance = _this select 2;

CTI_VAR_StructureCanceled = false;
CTI_P_PreBuilding = true;
CTI_P_PreBuilding_SafePlace = false;

_buildingID = CTI_ConstructionCam_BuildingID;
_var = missionNamespace getVariable _variable;
_local = ((_var select 1) select 0) createVehicleLocal CTI_ConstructionCam_MouseLoc;
_direction_structure = (_var select 4) select 0;
_distance_structure = (_var select 4) select 1;
_last_collision_update = -600;
_pos = [];
_dir = 0;
_helper_blue = "Sign_Arrow_Large_Blue_F" createVehicleLocal CTI_ConstructionCam_MouseLoc;
_helper_red = "Sign_Sphere100cm_F" createVehicleLocal CTI_ConstructionCam_MouseLoc;

while {!CTI_VAR_StructurePlaced && !CTI_VAR_StructureCanceled && (call CTI_CL_FNC_IsPlayerCommander) && (_buildingID == CTI_ConstructionCam_BuildingID)} do {

	_pos = CTI_ConstructionCam_MouseLoc;
	
	if (time - _last_collision_update > 1.5) then {_last_collision_update = time;{_local disableCollisionWith _x} forEach (_helper_blue nearObjects 150)};
	CTI_P_PreBuilding_SafePlace = if (_pos distance ([_pos, CTI_P_SideJoined call CTI_CO_FNC_GetSideStructures] call CTI_CO_FNC_GetClosestEntity) >20 && _pos distance ( [_pos, ((CTI_P_SideJoined) call CTI_CO_FNC_GetSideLogic) getVariable "cti_structures_wip"] call CTI_CO_FNC_GetClosestEntity) >20 && !surfaceIsWater _pos && !(lineIntersects [ATLtoASL (_helper_blue modelToWorld (_helper_blue selectionPosition "pilot")),ATLtoASL (_local modelToWorld (_local selectionPosition "pilot")), player, _local])) then {true} else {false};
	
	_dir = CTI_ConstructionCam_Rotation;
	_pos set [2, 0];
	_local setPos _pos;
	_local setDir _dir;
	_helper_pos = _local modelToWorld [(sin (360 -_direction_structure) * _distance_structure), (cos (360 -_direction_structure) * _distance_structure), 0];
	_helper_pos set [2, 0];
	
	_helper_blue setPos _helper_pos;
	_helper_blue setDir _dir;
	
	if !(CTI_P_PreBuilding_SafePlace) then {
		_helper_pos set [2, 0.5];
		_helper_red setPos _helper_pos;
		_helper_red setDir _dir;
	} else {
		_helper_pos set [0, 0];
		_helper_pos set [1, 0];
		_helper_pos set [2, -1];
		_helper_red setPos _helper_pos;
	};
	sleep .01;
};

CTI_P_PreBuilding = false;

detach _helper_blue;
detach _helper_red;
deleteVehicle _helper_blue;
deleteVehicle _helper_red;
deleteVehicle _local;


//--- First check if the surface is water based
if (surfaceIsWater _pos) exitWith {hint parseText "<t size='1.3' color='#2394ef'>Information</t><br /><br />The structure may not be placed here."};

//--- Check the distance 2D between our position and the potential areas
_in_area = false;
{if ([_pos select 0, _pos select 1] distance [_x select 0, _x select 1] <= CTI_BASE_AREA_RANGE) exitWith {_in_area = true}} forEach (CTI_P_SideLogic getVariable "cti_structures_areas");

//--- Maybe we have no area in range?
if (!(_in_area) && ! CTI_VAR_StructureCanceled && (_buildingID == CTI_ConstructionCam_BuildingID)) then {
	//--- If we have none, then have we reached our limit?
	if (count (CTI_P_SideLogic getVariable "cti_structures_areas") < (missionNamespace getVariable "CTI_BASE_AREA_MAX")) then {
		//--- We create a new area if we still have room for areas and of course, we allow the construction
		CTI_P_SideLogic setVariable ["cti_structures_areas", (CTI_P_SideLogic getVariable "cti_structures_areas") + [[_pos select 0, _pos select 1]], true];
	} else {
		CTI_VAR_StructureCanceled = true;
		hint parseText "<t size='1.3' color='#2394ef'>Information</t><br /><br />The base area limit has been reached.";
	};
};

//todo: structure 'build' mode expires > check areas for other structures + buildings (if 0 then remove)

//--- If there's no problems then we place it.
if (!CTI_VAR_StructureCanceled && (_buildingID == CTI_ConstructionCam_BuildingID)) then {
	if (((CTI_P_SideJoined) call CTI_CO_FNC_GetSideSupply) >= (_var select 2)) then {
		[CTI_P_SideJoined, -(_var select 2)] call CTI_CO_FNC_ChangeSideSupply;
		
		//--- Check whether we're dealing with the HQ or a normal structure
		if !(((_var select 0) select 0) in [CTI_HQ_DEPLOY, CTI_HQ_MOBILIZE]) then {
			[_variable, CTI_P_SideJoined, [_pos select 0, _pos select 1], _dir, player] remoteExec ["CTI_PVF_SRV_RequestJIPGear", CTI_PV_SERVER];
		} else {
			[_variable, CTI_P_SideJoined, [_pos select 0, _pos select 1], _dir] remoteExec ["CTI_PVF_SRV_RequestHQToggle", CTI_PV_SERVER];
		};
	} else {
		hint parseText "<t size='1.3' color='#2394ef'>Information</t><br /><br />You do not have enough funds to place that structure.";
	};
};

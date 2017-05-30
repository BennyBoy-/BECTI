/*
  # HEADER #
	Script: 		Server\Functions\Server_ToggleHQ.sqf
	Alias:			CTI_SE_FNC_ToggleHQ
	Description:	Toggle between HQ Deploy and Mobilize
	Author: 		Benny
	Creation Date:	01-06-2016
	Revision Date:	01-06-2016
	
  # PARAMETERS #
    0	[String]: The structure variable name
    1	[Side]: The Side which requested it
    2	[Array]: The position of the HQ
    3	[Number]: The direction of the HQ
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[STRUCTURE VARIABLE, SIDE, POSITION, DIRECTION] Spawn CTI_SE_FNC_ToggleHQ
	
  # EXAMPLE #
    [_variable, CTI_P_SideJoined, [_pos select 0, _pos select 1], _dir] Spawn CTI_SE_FNC_ToggleHQ
	  -> Will mobilize or deploy the HQ based on the given and global variable at the desired position
*/

private ["_direction", "_hq", "_is_deployed", "_logic", "_position", "_side", "_sideID", "_var", "_variable"];

_variable = _this select 0;
_side = _this select 1;
_position = _this select 2;
_direction = _this select 3;

_var = missionNamespace getVariable (_this select 0);

_logic = (_side) call CTI_CO_FNC_GetSideLogic;
_is_deployed = (_side) call CTI_CO_FNC_IsHQDeployed;
_current_hq = (_side) call CTI_CO_FNC_GetSideHQ;
_sideID = (_side) call CTI_CO_FNC_GetSideID;

if (((_var select CTI_STRUCTURE_LABELS) select 0) == CTI_HQ_DEPLOY) then { //--- Attempt to deploy the HQ
	if (!_is_deployed && alive _current_hq) then { //--- Make sure that the HQ is not deployed and alive
		_logic setVariable ["cti_hq_deployed", true, true];
		
		//--- Deploy the HQ
		_structure = ((_var select CTI_STRUCTURE_CLASSES) select 0) createVehicle _position;
		_structure setDir _direction;
		_structure setPos _position;
		_structure setDir _direction;
		_structure setVectorUp [0,0,0];
		
		//--- Transfer the previous damages to the new HQ if enabled
		if (missionNamespace getVariable "CTI_BASE_HQ_DAMAGES_TRANSFER" > 0) then {_structure setDammage (getDammage _current_hq)};
		
		//--- Do we use our alternative damage system to prevent some bisteries from happening?
		_alternative_damages = false;
		_reduce_damages = 0;
		{if ("DMG_Alternative" in _x) then {_alternative_damages = true}; if ("DMG_Reduce" in _x) then {_reduce_damages = _x select 1}} forEach (_var select CTI_STRUCTURE_SPECIALS);
		if (_alternative_damages) then {
			_structure setVariable ["cti_altdmg", 0];
			_structure addEventHandler ["handledamage", format ["[_this select 0, _this select 2, _this select 3, '%1', %2, %3, %4, %5, %6] call CTI_SE_FNC_OnBuildingHandleVirtualDamage", _variable, (_side) call CTI_CO_FNC_GetSideID, _position, _direction, 100, _reduce_damages]];
		} else {
			_structure addEventHandler ["killed", format["[_this select 0, _this select 1, %1] spawn CTI_SE_FNC_OnHQDestroyed", _sideID]];
			if (_reduce_damages > 0 || CTI_BASE_NOOBPROTECTION == 1) then {
				_structure addEventHandler ["handledamage", format ["[_this select 0, _this select 2, _this select 3, %1, %2, '%3', %4] call CTI_SE_FNC_OnBuildingHandleDamage", (_side) call CTI_CO_FNC_GetSideID, _reduce_damages, _variable, _position]];
			} else {
				_structure addEventHandler ["hit", format ["[_this select 0, _this select 2, %1, '%2', %3] spawn CTI_SE_FNC_OnBuildingHit", (_side) call CTI_CO_FNC_GetSideID, _variable, _position]];
			};
		};
		
		_logic setVariable ["cti_hq", _structure, true];
		deleteVehicle _current_hq;
		
		if (CTI_Log_Level >= CTI_Log_Information) then {
			["INFORMATION", "FILE: Server\Functions\Server_ToggleHQ.sqf", format["HQ from side [%1] was deployed at position [%2]", _side, _position]] call CTI_CO_FNC_Log;
		};
	};
} else { //--- Attempt to mobilize the HQ
	if (_is_deployed && alive _current_hq) then { //--- Make sure that the HQ is deployed and alive
		_logic setVariable ["cti_hq_deployed", false, true];
		
		//--- Get a safe position
		_position = [_position, 20] call CTI_CO_FNC_GetEmptyPosition;
		
		//--- Mobilize the HQ
		_hq = [missionNamespace getVariable Format["CTI_%1_HQ", _side], _position, 0, _side, true, false] call CTI_CO_FNC_CreateVehicle;
		_hq setVariable ["cti_gc_noremove", true]; //--- HQ wreck cannot be removed nor salvaged
		_hq setVariable ["cti_ai_prohib", true]; //--- HQ may not be used by AI as a commandable vehicle
		_hq addEventHandler ["killed", format["[_this select 0, _this select 1, %1] spawn CTI_SE_FNC_OnHQDestroyed", _sideID]];
		if (CTI_BASE_NOOBPROTECTION == 1) then {
			_hq addEventHandler ["handleDamage", format["[_this select 2, _this select 3, %1] call CTI_CO_FNC_OnHQHandleDamage", _sideID]]; //--- You want that on public
			(_hq) remoteExec ["CTI_PVF_CLT_AddHQDamagerHandler", _side];
		};
		
		//--- Transfer the previous damages to the new HQ if enabled
		if (missionNamespace getVariable "CTI_BASE_HQ_DAMAGES_TRANSFER" > 0) then {_hq setDammage (getDammage _current_hq)};
		
		_logic setVariable ["cti_hq", _hq, true];
		deleteVehicle _current_hq;
		
		//--- Set the HQ to be local to a player commander if possible.
		_commander = (_side) call CTI_CO_FNC_GetSideCommanderTeam;
		if (isPlayer leader _commander) then {
			_hq setOwner (owner leader _commander);
			(_hq) remoteExec ["CTI_PVF_CLT_AddHQActions", leader _commander];
		};
		
		if (CTI_Log_Level >= CTI_Log_Information) then {
			["INFORMATION", "FILE: Server\Functions\Server_ToggleHQ.sqf", format["HQ from side [%1] was mobilized at position [%2]", _side, _position]] call CTI_CO_FNC_Log;
		};
		
		//--- Update base areas
		(_side) call CTI_SE_FNC_UpdateBaseAreas;
	};
};

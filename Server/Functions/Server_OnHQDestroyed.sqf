/*
  # HEADER #
	Script: 		Server\Functions\Server_OnHQDestroyed.sqf
	Alias:			CTI_SE_FNC_OnHQDestroyed
	Description:	Triggered by the Killed EH whenever the HQ get destroyed
					Note this function shall be called by an Event Handler (EH) but can also be called manually
	Author: 		Benny
	Creation Date:	23-09-2013
	Revision Date:	23-09-2013
	
  # PARAMETERS #
    0	[Object]: The Killed defense
    1	[Object]: The Killer
    2	[Integer]: The Side ID of the defense
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[KILLED, KILLER, SIDE ID] spawn CTI_SE_FNC_OnHQDestroyed
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_GetSideFromID
	Common Function: CTI_CO_FNC_NetSend
	
  # EXAMPLE #
    _hq addEventHandler ["killed", format["[_this select 0, _this select 1, %1] spawn CTI_SE_FNC_OnHQDestroyed", _sideID]];
*/

private ["_killed", "_killer", "_side", "_sideID", "_was_deployed"];

_killed = _this select 0;
_killer = _this select 1;
_sideID = _this select 2;
_side = (_sideID) call CTI_CO_FNC_GetSideFromID;

if (CTI_Log_Level >= CTI_Log_Information) then {
	["INFORMATION", "FILE: Server\Functions\Server_OnHQDestroyed.sqf", format["HQ [%1] from side [%2] has been destroyed by [%3]", _killed, _side, _killer]] call CTI_CO_FNC_Log;
};

if (_side call CTI_CO_FNC_IsHQDeployed) then {
	if (CTI_Log_Level >= CTI_Log_Information) then {
		["INFORMATION", "FILE: Server\Functions\Server_OnHQDestroyed.sqf", format["HQ [%1] from side [%2] was mobilized, creating a wreck", _killed, _side]] call CTI_CO_FNC_Log;
	};
	
	_logic = (_side) call CTI_CO_FNC_GetSideLogic;
	_logic setVariable ["cti_hq_deployed", false, true];
	
	//--- Mobilize the HQ and destroy it
	_hq = [missionNamespace getVariable Format["CTI_%1_HQ", _side], position _killed, direction _killed, _side, true, false] call CTI_CO_FNC_CreateVehicle;
	_hq setVariable ["cti_gc_noremove", true]; //--- HQ wreck cannot be removed nor salvaged
	
	_hq setDamage 1;
	
	_logic setVariable ["cti_hq", _hq, true];
	
	//--- Delete the potential ruins
	_var = missionNamespace getVariable format["CTI_%1_%2", _side, CTI_HQ_DEPLOY];
	
	_classnames = _var select 1;
	_classnames = if (count _classnames > 2) then {[_classnames select 1] + (_classnames select 2)} else {[_classnames select 1]};

	{if (isNil {_x getVariable "cti_completion"}) then { deleteVehicle _x }} forEach (nearestObjects [position _killed, _classnames, 25]);
	
	//--- Just in case, remove the old wreck if needed
	if !(isNull _killed) then {deleteVehicle _killed}; 
};

[["CLIENT", _side], "Client_OnMessageReceived", ["hq-destroyed"]] call CTI_CO_FNC_NetSend;
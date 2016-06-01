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

if (_side call CTI_CO_FNC_IsHQDeployed) then {
	_logic = (_side) call CTI_CO_FNC_GetSideLogic;
	_logic setVariable ["cti_hq_deployed", false, true];
	
	//--- Mobilize the HQ and destroy it
	_hq = [missionNamespace getVariable Format["CTI_%1_HQ", _side], position _killed, direction _killed, _side, true, false] call CTI_CO_FNC_CreateVehicle;
	_hq setVariable ["cti_gc_noremove", true]; //--- HQ wreck cannot be removed nor salvaged
	
	_hq setDamage 1;
	
	_logic setVariable ["cti_hq", _hq, true];
};

[["CLIENT", _side], "Client_OnMessageReceived", ["hq-destroyed"]] call CTI_CO_FNC_NetSend;
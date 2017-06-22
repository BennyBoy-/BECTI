/*
  # HEADER #
	Script: 		Server\Functions\Server_RepairHQ.sqf
	Alias:			CTI_SE_FNC_RepairHQ
	Description:	Perform an HQ repair over the old HQ wreck.
					Note that the PVF "CTI_PVF_SRV_RequestHQRepair" calls it
	Author: 		Benny
	Creation Date:	23-09-2013
	Revision Date:	23-09-2013
	
  # PARAMETERS #
    0	[Side]: The side which requested the repair
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	(SIDE) call CTI_SE_FNC_RepairHQ
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_CreateVehicle
	Common Function: CTI_CO_FNC_GetSideCommander
	Common Function: CTI_CO_FNC_GetSideHQ
	Common Function: CTI_CO_FNC_GetSideID
	Common Function: CTI_CO_FNC_GetSideLogic
	Server Function: CTI_SE_FNC_OnHQDestroyed
	Server Function: CTI_CO_FNC_OnHQHandleDamage
	
  # EXAMPLE #
    (West) call CTI_SE_FNC_RepairHQ
	  -> Will repair the West HQ if destroyed
*/

params ["_side"];
private ["_commander", "_direction", "_hq", "_hq_wreck", "_logic", "_position", "_sideID"];

_logic = (_side) call CTI_CO_FNC_GetSideLogic;
_sideID = (_side) call CTI_CO_FNC_GetSideID;

_hq_wreck = (_side) call CTI_CO_FNC_GetSideHQ;
// _position = [([getPos _hq_wreck, 50] call CTI_CO_FNC_GetEmptyPosition), 30, "meadow", 8, 3, 0.1, true] call CTI_CO_FNC_GetRandomBestPlaces;
_position = [getPos _hq_wreck, 50] call CTI_CO_FNC_GetEmptyPosition;
_direction = getDir _hq_wreck;

if (alive _hq_wreck) exitWith {};
deleteVehicle _hq_wreck;

_hq = [missionNamespace getVariable Format["CTI_%1_HQ", _side], _position, _direction, _side, true, false] call CTI_CO_FNC_CreateVehicle;
_hq setVariable ["cti_gc_noremove", true]; //--- HQ wreck cannot be removed nor salvaged
_hq setVariable ["cti_ai_prohib", true]; //--- HQ may not be used by AI as a commandable vehicle
_hq addEventHandler ["killed", format["[_this select 0, _this select 1, %1] spawn CTI_SE_FNC_OnHQDestroyed", _sideID]];
if (CTI_BASE_NOOBPROTECTION == 1) then {
	_hq addEventHandler ["handleDamage", format["[_this select 2, _this select 3, %1] call CTI_CO_FNC_OnHQHandleDamage", _sideID]]; //--- You want that on public
	(_hq) remoteExec ["CTI_PVF_CLT_AddHQDamagerHandler", _side];
};

_logic setVariable ["cti_hq", _hq, true];

if (CTI_Log_Level >= CTI_Log_Information) then {
	["INFORMATION", "FILE: Server\Functions\Server_RepairHQ.sqf", format["HQ from side [%1] has been repaired at position [%2]", _side, _position]] call CTI_CO_FNC_Log;
};

["hq-repair"] remoteExec ["CTI_PVF_CLT_OnMessageReceived", _side];

//--- Set the HQ to be local to a player commander if possible.
_commander = (_side) call CTI_CO_FNC_GetSideCommanderTeam;
if (isPlayer leader _commander) then {
	_hq setOwner (owner leader _commander);
	(_hq) remoteExec ["CTI_PVF_CLT_AddHQActions", leader _commander];
};
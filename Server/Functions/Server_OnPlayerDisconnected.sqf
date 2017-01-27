/*
  # HEADER #
	Script: 		Server\Functions\Server_OnPlayerDisconnected.sqf
	Alias:			CTI_SE_FNC_OnPlayerDisconnected
	Description:	Triggered when a player leave the server
					Note this function is MP only.
					Also note that the server (in MP) will also trigger this script with a name of __SERVER__
	Author: 		Benny
	Creation Date:	23-09-2013
	Revision Date:	15-10-2013
	
  # PARAMETERS #
    0	[String]: The Player's UID
    1	[String]: The Player's name
    2	[Number]: The Player's seed ID
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[UID, NAME, ID] call CTI_SE_FNC_OnPlayerDisconnected
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_GetClosestEntity
	Common Function: CTI_CO_FNC_GetFunds
	Common Function: CTI_CO_FNC_GetRandomPosition
	Common Function: CTI_CO_FNC_GetSideCommanderTeam
	Common Function: CTI_CO_FNC_GetSideHQ
	Common Function: CTI_CO_FNC_GetSideStructures
	
  # EXAMPLE #
    onPlayerDisconnected {[_uid, _name, _id] call CTI_SE_FNC_OnPlayerDisconnected};
*/

_unit = _this select 0;
_id = _this select 1;
_uid = _this select 2;
_name = _this select 3;

_team = group _unit;

if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Server\Functions\Server_OnPlayerDisconnected.sqf", format["Player [%1] [%2] with unit [%3] in group [%4] has left the current session", _name, _uid, _unit, _team]] call CTI_CO_FNC_Log};

if (_name == '__SERVER__' || _uid == '') exitWith {}; //--- We don't care about the server!

waitUntil {!isNil 'CTI_Init_Common'};

//--- Was it an Headless Client?
_candidates = missionNamespace getVariable "CTI_HEADLESS_CLIENTS";
if !(isNil '_candidates') then {
	_index = -1;
	{if (_x select 2 == _uid) exitWith {_index = _forEachIndex}} forEach _candidates;
	if (_index > -1) then {
		// _candidates set [_index, "!nil!"]; _candidates = _candidates - ["!nil!"];
		_candidates deleteAt _index;
		missionNamespace setVariable ["CTI_HEADLESS_CLIENTS", _candidates];
		if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Server\Functions\Server_OnPlayerDisconnected.sqf", format["Headless Client [%1] [%2] has been disconnected and was removed from the registered clients. There is now [%3] Headless Clients.", _uid, _name, count _candidates]] call CTI_CO_FNC_Log};
	};
};

//--- We attempt to get the player information in case that he joined before
_get = missionNamespace getVariable format["CTI_SERVER_CLIENT_%1", _uid];
if (isNil '_get') exitWith {if (CTI_Log_Level >= CTI_Log_Warning) then {["WARNING", "FILE: Server\Functions\Server_OnPlayerDisconnected.sqf", format["Disconnected Player [%1] [%2] information couldn't be retrieved", _name, _uid]] call CTI_CO_FNC_Log}};

if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Server\Functions\Server_OnPlayerDisconnected.sqf", format["Retrieved Player [%1] [%2] previous informations [%3]", _name, _uid, _get]] call CTI_CO_FNC_Log};

//--- Make sure that the group is valid
if (isNull _team) exitWith {if (CTI_Log_Level >= CTI_Log_Error) then {["ERROR", "FILE: Server\Functions\Server_OnPlayerDisconnected.sqf", format["Disconnected Player [%1] [%2] group couldn't be found among the current playable units", _name, _uid]] call CTI_CO_FNC_Log}};

_side = _get select 3; //--- Get the last side joined

if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Server\Functions\Server_OnPlayerDisconnected.sqf", format["Player [%1] [%2] group is [%3] on last side [%4]", _name, _uid, _team, _side]] call CTI_CO_FNC_Log};

_funds = (_team) call CTI_CO_FNC_GetFundsTeam;
_is_commander = _team call CTI_CO_FNC_IsGroupCommander;
_hq = (_side) call CTI_CO_FNC_GetSideHQ;

//--- We force the unit out of it's vehicle.
if !(isNull assignedVehicle _unit) then { unassignVehicle _unit; [_unit] orderGetIn false; [_unit] allowGetIn false };
if (vehicle _unit == _hq) then { _unit action ["EJECT", vehicle _unit] }; //--- Is it the HQ?

_get set [1, _funds];

//-- Only store the client's gear if he didn't teamswap and if teamswaping is prohibed
if ((_side isEqualTo (_get select 2)) && (missionNamespace getVariable "CTI_TEAMSWAP") > 0) then {_get set [4, (_unit) call CTI_CO_FNC_GetUnitLoadout]};

missionNamespace setVariable [format["CTI_SERVER_CLIENT_%1", _uid], _get];
	
if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Server\Functions\Server_OnPlayerDisconnected.sqf", format["Updated Player [%1] [%2] funds to [%3]", _name, _uid, _funds]] call CTI_CO_FNC_Log};

if ((missionNamespace getVariable "CTI_AI_TEAMS_ENABLED") == 1) then { //--- Place the leader back at base
	_unit enableAI "Move";
	_structures = (_side) call CTI_CO_FNC_GetSideStructures;
	
	_spawn_at = _hq;
	if (count _structures > 0) then { _spawn_at = [_hq, _structures] call CTI_CO_FNC_GetClosestEntity };
	
	if (_is_commander) then {if (alive _hq) then { _spawn_at = _hq }}; //--- AI commander will prefer to spawn at HQ if it's alive
	_spawn_at = [_spawn_at, 8, 30] call CTI_CO_FNC_GetRandomPosition;
	_unit setPos _spawn_at;
	
	if (!_is_commander && !isNull _team) then { //--- AI Leader Takeover
		if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Server\Functions\Server_OnPlayerDisconnected.sqf", format["AI Leader is taking over [%1] [%2] slot since he/she left the current session. The team is [%3]", _name, _uid, _team]] call CTI_CO_FNC_Log};
		[_team, _side] execFSM "Server\FSM\update_ai.fsm";
	};
} else { //--- Place the leader at the respawn island and disable his movements
	_unit setPos ([markerPos format["CTI_%1Respawn",_side], 3, 15] call CTI_CO_FNC_GetRandomPosition);
	_unit enableSimulationGlobal false;
	_unit hideObjectGlobal true;
	_unit disableAI "FSM";
};

if (CTI_AI_TEAMS_UNITS_DELETE_ON_DISCONNECT > 0) then {
	if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Server\Functions\Server_OnPlayerDisconnected.sqf", format["Removing Player [%1] [%2] units and vehicles", _name, _uid]] call CTI_CO_FNC_Log};
	
	{if (!isPlayer _x && !(_x in playableUnits)) then {deleteVehicle _x}} forEach (units _team + ([_team, false] call CTI_CO_FNC_GetTeamVehicles) - [_hq]);
};

//--- Was it the commander?
if (_is_commander && !isNull _team) then {
	if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Server\Functions\Server_OnPlayerDisconnected.sqf", format["Player [%1] [%2] was commander, sending a notification to side [%3]", _name, _uid, _side]] call CTI_CO_FNC_Log};
	
	//--- Send a message!
	["commander-disconnected"] remoteExec ["CTI_PVF_CLT_OnMessageReceived", _side];
	
	if ((missionNamespace getVariable "CTI_AI_TEAMS_ENABLED") == 1) then { (_side) execFSM "Server\FSM\update_commander.fsm" }; //--- AI commander takeover
};

//--- Update the global teams if needed
(_side) spawn {
	sleep 10;
	_logic = (_this) call CTI_CO_FNC_GetSideLogic;
	_teams = _logic getVariable "cti_teams";
	if ({isNull _x} count _teams > 0) then {
		_teams = _teams - [objNull];
		_logic setVariable ["cti_teams", _teams];
		if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Server\Functions\Server_OnPlayerDisconnected.sqf", format["Removed some null groups from the Global Teams for side [%1]", _this]] call CTI_CO_FNC_Log};
	};
};

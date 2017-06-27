/*
  # HEADER #
	Script: 		Server\Functions\Server_OnPlayerConnected.sqf
	Alias:			CTI_SE_FNC_OnPlayerConnected
	Description:	Triggered when a player joins the server
					Note this function is MP only.
					Also note that the server (in MP) will also trigger this script with a name of __SERVER__
	Author: 		Benny
	Creation Date:	23-09-2013
	Revision Date:	15-10-2013
	
  # PARAMETERS #
    0	[String]: The Player's UID
    1	[String]: The Player's name
    2	[Number]: The Player's seed ID
    3	[Boolean]: The Player's JIP status
    4	[Number]: The Player's owner ID
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[UID, NAME, ID] spawn CTI_SE_FNC_OnPlayerConnected
	
  # EXAMPLE #
    onPlayerConnected {[_uid, _name, _id] spawn CTI_SE_FNC_OnPlayerConnected};
*/

params ["_uid", "_name", "_id", "_jip", "_ownerID"];

if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Server\Functions\Server_OnPlayerConnected.sqf", format["Player [%1] [%2] has joined the current session, jip? [%3]", _name, _uid, _jip]] call CTI_CO_FNC_Log};
/*
if (_name isEqualTo '__SERVER__' || _uid isEqualTo '') exitWith {}; //--- We don't care about the server!

waitUntil {!isNil 'CTI_Init_Common'};

//--- We try to get the player and it's group from the allPlayers array.
_max = 10;
_team = grpNull;

while {_max > 0 && isNull _team} do { { if ((getPlayerUID _x) isEqualTo _uid || owner _x isEqualTo _ownerID) exitWith {_team = group _x};	} forEach (call bis_fnc_listPlayers); if (isNull _team) then {sleep .75}; _max = _max - 1 };

//--- Make sure that we've found a team, otherwise we simply exit.
if (isNull _team) exitWith {if (CTI_Log_Level >= CTI_Log_Error) then {["ERROR", "FILE: Server\Functions\Server_OnPlayerConnected.sqf", format["Player [%1] [%2] couldn't be found among the current playable units", _name, _uid]] call CTI_CO_FNC_Log}};

_leader = leader _team;

//--- If we can't determine the side of a team, then we config-check the leader's side.
_side = side _team;
if !(_side in [west, east, resistance]) then {_side = switch (getNumber(configFile >> "CfgVehicles" >> typeOf _leader >> "side")) do {case 0: {east}; case 1: {west}; case 2: {resistance}; default {civilian}}};
if !(_side in [west, east, resistance]) exitWith {if (CTI_Log_Level >= CTI_Log_Error) then {["ERROR", "FILE: Server\Functions\Server_OnPlayerConnected.sqf", format["Player [%1] [%2] side couldn't be determined", _name, _uid]] call CTI_CO_FNC_Log}};

_logic = (_side) call CTI_CO_FNC_GetSideLogic;
_teams = _logic getVariable "cti_teams";
if !(_team in _teams) then {
	[_team, _side] call CTI_SE_FNC_InitializeGroup;
	
	//--- The leader may had a disabled slot
	if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Server\Functions\Server_OnPlayerConnected.sqf", format["Player [%1] [%2] does not belong to any CTI Groups on [%3]. Performed late-initialization and updated the Global Teams", _name, _uid, _side]] call CTI_CO_FNC_Log};
	
	//--- Update the global teams
	_logic setVariable ["cti_teams", _teams - [objNull] + [_team], true];
};

//--- We force the unit out of it's vehicle.
if !(isNull assignedVehicle _leader) then { unassignVehicle _leader; [_leader] orderGetIn false; [_leader] allowGetIn false };

//--- We attempt to get the player information in case that he had joined before.
_get = missionNamespace getVariable format["CTI_SERVER_CLIENT_%1", _uid];

//--- We 'Sanitize' the player, we remove the waypoints and we heal him.
// _team call CTI_CO_FNC_RemoveWaypoints;
_leader setDammage 0;

//--- Enable the leader again (sim + visu) in case of no-ai settings
if (missionNamespace getVariable "CTI_AI_TEAMS_ENABLED" < 1) then {
	_leader enableSimulationGlobal true;
	_leader hideObjectGlobal false;
};

_join = true;
_special = "";

if (isNil '_get') then { //--- The player has joined for the first time (or after being booted off for teamstacking)
	//--- Check if the teamstack protection is enabled or not	
	if ((missionNamespace getVariable "CTI_TEAMSTACK") > 0) then {
		//--- Retrieve the player count for each given side (minus the connecting client)
		_west_players = {side _x isEqualTo west && isPlayer _x} count (playableUnits - [_leader]);
		_east_players = {side _x isEqualTo east && isPlayer _x} count (playableUnits - [_leader]);
		
		if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Server\Functions\Server_OnPlayerConnected.sqf", format["Player [%1] [%2] on side [%3]. Without this player, there are [%4] players on west and [%5] players on east. The stack limit is set on [%6] with a current value of [%7]", _name, _uid, _side, _west_players, _east_players, missionNamespace getVariable "CTI_TEAMSTACK", abs(_west_players - _east_players)]] call CTI_CO_FNC_Log};
		
		_teamstacking = switch (_side) do {
			case west: {if ((_west_players - _east_players) >= (missionNamespace getVariable "CTI_TEAMSTACK")) then {true} else {false}};
			case east: {if ((_east_players - _west_players) >= (missionNamespace getVariable "CTI_TEAMSTACK")) then {true} else {false}};
			default {false}
		};
		
		if !(_teamstacking) then {
			//--- Team stacking is ok so far
			if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Server\Functions\Server_OnPlayerConnected.sqf", format["Player [%1] [%2] can join side [%3], the teams are balanced", _name, _uid, _side]] call CTI_CO_FNC_Log};
		} else {
			//--- The team stack limit has been reached, send this player back to the lobby
		//--- Todo check if the client is present in the "premium" UID array
			if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Server\Functions\Server_OnPlayerConnected.sqf", format["Player [%1] [%2] cannot join, the teams are no longer balanced", _name, _uid]] call CTI_CO_FNC_Log};
			_special = "teamstack";
			_join = false;
		};
	};
	
	//--- Check if the player is still jailed
	if ((missionNamespace getVariable [format ["CTI_SERVER_CLIENT_ELITE_%1", _uid], [0, 0]] select 1) isEqualTo 1) then {_special = "jailed"};
	
	//--- Determine whether the client is allowed to join or not
	if (_join) then {
		//--- Format is [UID, Funds, Original side, Last Joined side, Last known loadout]
		missionNamespace setVariable [format["CTI_SERVER_CLIENT_%1", _uid], [_uid, 0, _side, _side, []]];
		
		if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Server\Functions\Server_OnPlayerConnected.sqf", format["Player [%1] [%2] information were stored for the first time", _name, _uid]] call CTI_CO_FNC_Log};
	} else {
		if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Server\Functions\Server_OnPlayerConnected.sqf", format["Player [%1] [%2] information were not initially stored since he is not allowed to join", _name, _uid]] call CTI_CO_FNC_Log};
	};
} else { //--- The player has joined before.
	if (CTI_Log_Level >= CTI_Log_Debug) then {["DEBUG", "FILE: Server\Functions\Server_OnPlayerConnected.sqf", format["Player [%1] [%2] information are [%3]", _name, _uid, _get]] call CTI_CO_FNC_Log};
	
	_original_side = false;

	_side_origin = _get select 2; //--- Get the original side.
	
	if (_side_origin != _side) then { //--- Teamswapping, the joined side differs from the original one.
		_join = false;
		["teamswap", _name] remoteExec ["CTI_PVF_CLT_OnMessageReceived", CTI_PV_CLIENTS];
		if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Server\Functions\Server_OnPlayerConnected.sqf", format["Player [%1] [%2] tried to teamswap from it's original side [%3] to side [%4]. The server explicitely answered that he should be sent back to the lobby.", _name, _uid, _side_origin, _side]] call CTI_CO_FNC_Log};
	} else {
		if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Server\Functions\Server_OnPlayerConnected.sqf", format["Player [%1] [%2] joined back it's original side [%3].", _name, _uid, _side_origin]] call CTI_CO_FNC_Log};
		_original_side = true;
	};
	
	//--- Apply the team stack system if enabled
	if ((missionNamespace getVariable "CTI_TEAMSTACK") > 0 && _join) then {
		//--- Retrieve the player count for each given side (minus the connecting client)
		_west_players = {side _x isEqualTo west && isPlayer _x} count (playableUnits - [_leader]);
		_east_players = {side _x isEqualTo east && isPlayer _x} count (playableUnits - [_leader]);
		
		if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Server\Functions\Server_OnPlayerConnected.sqf", format["Player [%1] [%2] on side [%3]. Without this player, there are [%4] players on west and [%5] players on east. The stack limit is set on [%6] with a current value of [%7]", _name, _uid, _side, _west_players, _east_players, missionNamespace getVariable "CTI_TEAMSTACK", abs(_west_players - _east_players)]] call CTI_CO_FNC_Log};
		
		_teamstacking = switch (_side) do {
			case west: {if ((_west_players - _east_players) >= (missionNamespace getVariable "CTI_TEAMSTACK")) then {true} else {false}};
			case east: {if ((_east_players - _west_players) >= (missionNamespace getVariable "CTI_TEAMSTACK")) then {true} else {false}};
			default {false}
		};
		
		if (!(_teamstacking) || _original_side) then {
			//--- Team stacking is ok so far
			if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Server\Functions\Server_OnPlayerConnected.sqf", format["Player [%1] [%2] can join, the teams are still balanced or the player joined back it's original side [%3]", _name, _uid, _original_side]] call CTI_CO_FNC_Log};
		} else {
			//--- The team stack limit has been reached, send this player back to the lobby
		//--- Todo check if the client is present in the "premium" UID array
			if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Server\Functions\Server_OnPlayerConnected.sqf", format["Player [%1] [%2] cannot join, the teams are no longer balanced", _name, _uid]] call CTI_CO_FNC_Log};
			_special = "teamstack";
			_join = false;
		};
	};
	
	//--- Check if the player is still jailed
	if ((missionNamespace getVariable [format ["CTI_SERVER_CLIENT_ELITE_%1", _uid], [0, 0]] select 1) isEqualTo 1) then {_special = "jailed"};
	
	//--- Determine whether the client is allowed to join or not
	if (_join) then {
		_get set [3, _side];
		
		_funds = _get select 1;
		
		//--- Make sure that the player didn't teamswap.
		if (_side_origin != _side || isNil '_funds') then { _funds = missionNamespace getVariable format ["CTI_ECONOMY_STARTUP_FUNDS_%1", _side] };
		
		_team setVariable ["cti_funds", _funds, true];
		if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Server\Functions\Server_OnPlayerConnected.sqf", format["Player [%1] [%2] information were updated. Joined side is [%3], Teamswap? [%4]", _name, _uid, _side, (_side_origin != _side)]] call CTI_CO_FNC_Log};
	} else {
		if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Server\Functions\Server_OnPlayerConnected.sqf", format["Player [%1] [%2] information were not stored since he is not allowed to join", _name, _uid]] call CTI_CO_FNC_Log};
	};
};

//--- Notify the client
[_join, _special] remoteExec ["CTI_PVF_CLT_JoinRequestAnswer", _ownerID];*/
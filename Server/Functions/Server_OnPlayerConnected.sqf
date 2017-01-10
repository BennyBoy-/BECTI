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

_uid = _this select 0;
_name = _this select 1;
_id = _this select 2;
_jip = _this select 3;
_ownerID = _this select 4;

if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Server\Functions\Server_OnPlayerConnected.sqf", format["Player [%1] [%2] has joined the current session", _name, _uid]] call CTI_CO_FNC_Log};

if (_name == '__SERVER__' || _uid == '') exitWith {}; //--- We don't care about the server!

waitUntil {!isNil 'CTI_Init_Common'};

//--- We try to get the player and it's group from the allPlayers array.
_max = 10;
_team = grpNull;

while {_max > 0 && isNull _team} do { { if ((getPlayerUID _x) == _uid || owner _x == _ownerID) exitWith {_team = group _x};	} forEach (call bis_fnc_listPlayers); if (isNull _team) then {sleep .75}; _max = _max - 1 };

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

if (isNil '_get') then { //--- The player has joined for the first time.
	//--- Check if the teamstack protection is enabled or not
	/*if ((missionNamespace getVariable "CTI_TEAMSTACK") > 0) then {
		//--- Retrieve the player count for each given side (minus the connecting client)
		_west_players = {side _x == west && isPlayer _x} count (playableUnits - [_leader]);
		_east_players = {side _x == east && isPlayer _x} count (playableUnits - [_leader]);
		
		diag_log format["DEBUG:: STACKING: Player [%1] [%2] on side [%3]. Without this player, there are [%4] players on west and [%5] players on east. The stack limit is set on [%6] with a current value of [%7]", _name, _uid, _side, _west_players, _east_players, missionNamespace getVariable "CTI_TEAMSTACK", abs(_west_players - _east_players)];
		
			if (abs(_west_players - _east_players) <= (missionNamespace getVariable "CTI_TEAMSTACK")) then {
				//--- Team stacking is ok so far
				
				diag_log format["DEBUG:: STACKING: Player [%1] [%2] on side [%3] is allowed to join!", _name, _uid, _side, _west_players, _east_players];
				
				// store info + diag
			} else {
				//--- The team stack limit has been reached, send this player back to the lobby
				diag_log format["DEBUG:: STACKING: Player [%1] [%2] on side [%3] is not allowed to join!", _name, _uid, _side, _west_players, _east_players];
				
				// throw the player back to the lobby (rexec) + diag
			};
	};*/

	//--- Format is [UID, Funds, First Joined side, Last Joined side (current one)]
	missionNamespace setVariable [format["CTI_SERVER_CLIENT_%1", _uid], [_uid, 0, _side, _side, []]];
	
	if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Server\Functions\Server_OnPlayerConnected.sqf", format["Player [%1] [%2] information were stored for the first time on side [%3]", _name, _uid, _side]] call CTI_CO_FNC_Log};
} else { //--- The player has joined before.
	if (CTI_Log_Level >= CTI_Log_Debug) then {["DEBUG", "FILE: Server\Functions\Server_OnPlayerConnected.sqf", format["Player [%1] [%2] information are [%3]", _name, _uid, _get]] call CTI_CO_FNC_Log};
	_get set [3, _side];
	
	_funds = _get select 1;
	_side_first = _get select 2;
	
	//--- Make sure that the player didn't teamswap.
	if (_side_first != _side || isNil '_funds') then { _funds = missionNamespace getVariable format ["CTI_ECONOMY_STARTUP_FUNDS_%1", _side] };
	
	_team setVariable ["cti_funds", _funds, true];
	if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Server\Functions\Server_OnPlayerConnected.sqf", format["Player [%1] [%2] information were updated. Joined side is [%3], Teamswap? [%4]", _name, _uid, _side, if (_side_first != _side) then {true} else {false}]] call CTI_CO_FNC_Log};
};

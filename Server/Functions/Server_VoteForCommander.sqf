/*
  # HEADER #
	Script: 		Server\Functions\Server_VoteForCommander.sqf
	Alias:			CTI_SE_FNC_VoteForCommander
	Description:	Initiate a commander vote for a given side
	Author: 		Benny
	Creation Date:	03-05-2016
	Revision Date:	03-05-2016
	
  # PARAMETERS #
    0	[Side]: The side
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	(SIDE) spawn CTI_SE_FNC_VoteForCommander
	
  # EXAMPLE #
    (West) spawn CTI_SE_FNC_VoteForCommander
	  -> Will trigger a commander's vote for the west side
*/

params ["_side"];
private ["_logic", "_side", "_teams", "_votes"];

_vote_time = CTI_VOTE_TIME;
_logic = (_side) call CTI_CO_FNC_GetSideLogic;

//--- Vote countdown.
while {_vote_time > -1} do {_vote_time = _vote_time - 1; _logic setVariable ["cti_votetime", _vote_time, true]; sleep 1};

_teams = _logic getVariable "cti_teams";
_votes = [];
for '_i' from 0 to (count _teams)-1 do {_votes pushBack 0};

//--- Dispatch the votes
_vote_ai = 0;
{
	if (isPlayer leader _x) then {
		_who = _teams find (_x getVariable "cti_vote");
		if (_who > -1) then {_votes set [_who, (_votes select _who) + 1]} else {_vote_ai = _vote_ai + 1};
	};
} forEach _teams;

//--- Get the most voted for group
_highest = 0;
_highestTeam = -1;
_tie = false;
{
	if (_x isEqualTo _highest && _x > 0) then {_tie = true};
	if (_x > _highest) then {_highestTeam = _forEachIndex; _highest = _x; _tie = false};
} forEach _votes;

_commander = objNull;

//--- Attempt to get a playable team.
if (!_tie && _highest > _vote_ai && _highestTeam != -1) then {_commander = _teams select _highestTeam};

//--- Player voted for an ai...?
if !(isNull _commander) then {if !(isPlayer leader _commander) then {_commander = objNull}};

//--- Set the new commander
_logic setVariable ["cti_commander_team", _commander, true];

if (isNull _commander) then {
	if (missionNamespace getVariable "CTI_AI_TEAMS_ENABLED" > 0) then {
		if !(_logic getVariable "cti_ai_commander") then {
			_logic setVariable ["cti_ai_commander", true];
			(_side) execFSM "Server\FSM\update_commander.fsm";
		};
	};
} else {
	if (_logic getVariable "cti_ai_commander") then {_logic setVariable ["cti_ai_commander", false]};
	_hq = (_side) call CTI_CO_FNC_GetSideHQ;
	if (alive _hq) then {
		_hq setOwner (groupOwner _commander); //--- Transfer HQ locality
	};
};

["commander-vote-end", _commander] remoteExec ["CTI_PVF_CLT_OnMessageReceived", _side];
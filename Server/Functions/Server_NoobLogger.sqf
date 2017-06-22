/*
  # HEADER #
	Script: 		Server\Functions\Server_NoobLogger.sqf
	Alias:			CTI_SE_FNC_NoobLogger
	Description:	Log the "score" of the top-most players!
	Author: 		Benny
	Creation Date:	20-09-2013
	Revision Date:	20-09-2013
	
  # PARAMETERS #
    0	[Object]: The 1337 player
    1	[Integer]: The score
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[PROPLAYER, SCORE] spawn CTI_SE_FNC_NoobLogger
	
  # EXAMPLE #
    [player, 2] spawn CTI_SE_FNC_NoobLogger;
	  -> Add 2 points!
*/

params ["_proplayer", "_score"];

//--- Try to get the score of that marvelous players.
_uid = getPlayerUID _proplayer;
_get = missionNamespace getVariable [format ["CTI_SERVER_CLIENT_ELITE_%1", _uid], [0, 0]];
_get set [0, (_get select 0) + _score];

//--- Did the pro player reach the top?
if ((_get select 0) > 3) then {
	//--- Send to mcfly dungeon
	remoteExec ["CTI_PVF_CLT_OnUbernessReached", _proplayer];
	_get set [0, 0];
	_get set [1, 1];
} else {
	[_uid, _score] spawn {
		_uid = _this select 0;
		_score = _this select 1;
		
		_start = time;
		while {true} do {
			_get = missionNamespace getVariable format ["CTI_SERVER_CLIENT_ELITE_%1", _uid];
			if (time - _start > 240 || (_get select 0) isEqualTo 0) exitWith {};
			sleep 10;
		};
		
		_get = missionNamespace getVariable format ["CTI_SERVER_CLIENT_ELITE_%1", _uid];
		if (_get select 0 > -1) then { 
			_sub = (_get select 0) - _score;
			if (_sub < 0) then {_sub = 0};
			_get set [0, _sub];
			missionNamespace setVariable [format ["CTI_SERVER_CLIENT_ELITE_%1", _uid], _get];
		};
	};
};

missionNamespace setVariable [format ["CTI_SERVER_CLIENT_ELITE_%1", _uid], _get];
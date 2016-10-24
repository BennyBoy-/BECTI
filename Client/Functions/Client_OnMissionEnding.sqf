/*
  # HEADER #
	Script: 		Client\Functions\Client_OnMissionEnding.sqf
	Alias:			CTI_CL_FNC_OnMissionEnding
	Description:	Triggered upon the mission ending
					Note this function is automatically called by the server (PVF)
	Author: 		Benny
	Creation Date:	19-09-2013
	Revision Date:	19-09-2013
	
  # PARAMETERS #
    0	[Side]: The side
    1	[String]: The result
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[SIDE, RESULT] spawn CTI_CL_FNC_OnMissionEnding
	
  # DEPENDENCIES #
	BIS Function: BIS_fnc_endMission
	
  # EXAMPLE #
	[West, "win"] spawn CTI_CL_FNC_OnMissionEnding
	[West, "loose"] spawn CTI_CL_FNC_OnMissionEnding
*/

private ["_result", "_side", "_win","_enemyhq","_hq","_winnerside","_loserside","_winnername","_losername","_winnertext","_losertext","_scoretext1","_cameratext1","_cameratext2","_cameratext3","_endtext","_endmusic","_firstshot","_secondshot","_scoretext","_playerscore","_playerscore_kills","_playerscore_vehicle","_playerscore_armor","_playerscore_air","_playerscore_deaths","_playerscore_score","_playerscoretext","",""];

_side = _this select 0;
_result = _this select 1;

CTI_GameOver = true;
// player sidechat "%1 lost!!! booo! brit sucks btw.";
//todo camera work and shitz
_win = false;
_winnerside = West;
_loserside = East;
switch (_result) do {
	case "win": {if (CTI_P_SideJoined == _side) then {_win = true; if (CTI_P_SideJoined == West) then {_winnerside = West;_loserside = East;} else {_winnerside = East;_loserside = West;};}};
	case "loose": {if (CTI_P_SideJoined != _side) then {_win = true; if (CTI_P_SideJoined == West) then {_winnerside = West;_loserside = East;} else {_winnerside = East;_loserside = West;};} else {if (CTI_P_SideJoined == West) then {_winnerside = East;_loserside = West;} else {_winnerside = West;_loserside = East;};}};
};
_winnername = "Blufor";
_losername = "Opfor";
switch (_winnerside) do {
	case West: {_winnername = "Blufor";};
	case East: {_winnername = "Opfor";};
};
switch (_loserside) do {
	case West: {_losername = "Blufor";};
	case East: {_losername = "Opfor";};
};

//team scores
_winnerscore = scoreSide _winnerside; 
_loserscore = scoreSide _loserside;
_winnerscoretext = format ["%1 Team Score: %2", _winnername, _winnerscore];
_loserscoretext = format ["%1 Team Score: %2", _losername, _loserscore];
_scoretext = format ["%1 : %2 vs %3 : %4", _winnername,_winnerscore, _losername, _loserscore];
//player score
_playerscore = getPlayerScores player;
_playerscore_kills = _playerscore select 0;
_playerscore_vehicle = _playerscore select 1;
_playerscore_armor = _playerscore select 2;
_playerscore_air = _playerscore select 3;
_playerscore_deaths = _playerscore select 4;
_playerscore_score = _playerscore select 5;
_playerscoretext = format ["INFANTRY: %1 | VEHICLES: %2 | ARMOR: %3 | AIR: %4 | DEATHS: %5 | SCORE: %6", _playerscore_kills, _playerscore_vehicle, _playerscore_armor, _playerscore_air, _playerscore_deaths, _playerscore_score];

_winnertext = format ["%1 Has Dominated the Battlefield!", _winnername];
_losertext = format ["%1 Has Lost All Factories and MHQ!", _losername];
_scoretext1 = format ["Congratulations %1", _winnername];
_cameratext1 = [[[_losertext,"<br/><t align = 'center' shadow = '1' size = '1.4' font='PuristaBold'>%1</t>"]],0,0,"<t color='#FFFFFFFF' align='center'>%1</t>"];
_cameratext2 = [[[_winnertext,"<br/><t align = 'center' shadow = '1' size = '1.4' font='PuristaBold'>%1</t>"]],0,0,"<t color='#FFFFFFFF' align='center'>%1</t>"];
_cameratext3 = [[[_scoretext1,"<br/><t align = 'center' shadow = '1' size = '1.4' font='PuristaBold'>%1</t>"]],0,0,"<t color='#FFFFFFFF' align='center'>%1</t>"];

_endtext = [];
_endmusic = "";
switch (_win) do {
	case true: {
		_endtext = [[["Your Team Won!","<t align = 'center' shadow = '1' size = '1.4' font='PuristaBold'>%1</t><br/>"],["FREEDOM has prevailed!","<t align = 'center' shadow = '1' size = '1.2' font='PuristaBold'>%1</t><br/>"]],0,0,"<t color='#FFFFFFFF' align='center'>%1</t>"];
		_endmusic = "LeadTrack01a_F";
	};
	case false: {
		_endtext = [[["Your Team Lost","<t align = 'center' shadow = '1' size = '1.4' font='PuristaBold'>%1</t><br/>"],["Better luck next time noobs...","<t align = 'center' shadow = '1' size = '1.2' font='PuristaBold'>%1</t><br/>"]],0,0,"<t color='#FFFFFFFF' align='center'>%1</t>"];
		_endmusic = "Defcon";
	};
};
playMusic _endmusic;
sleep 5;
[[["Game Over...","<br/><br/><t align = 'center' shadow = '1' size = '1.4' font='PuristaBold'>%1</t>"]],0,0,"<t color='#FFFFFFFF' align='center'>%1</t>"] spawn BIS_fnc_typeText;
titleText [_playerscoretext, "PLAIN DOWN", 30];

sleep 30;
_endtext spawn BIS_fnc_typeText;
sleep 5;

if (!isNil "_camera_run") exitWith {};
_camera_run = true;
_enemyhq = (_loserside) call CTI_CO_FNC_GetSideHQ;
_firstshot = [_enemyhq, _enemyhq, _enemyhq, 40, 0.5, 0.4, false, 0, 0, 1, _cameratext1, _loserscoretext] execVM "Client\Events\Events_UI_OutroCamera.sqf";
waitUntil {scriptdone _firstshot};

_hq = (_winnerside) call CTI_CO_FNC_GetSideHQ;
_secondshot = [_hq, _hq, _hq, 40, 0.5, 0.4, false, 0, 0, 1, _cameratext2, _winnerscoretext] execVM "Client\Events\Events_UI_OutroCamera.sqf";
waitUntil {scriptdone _secondshot};
closeDialog 0;
createDialog "RscDisplayMPScoreTable";
_thirdshot = [_hq, _hq, _hq, 60, 0.5, 0.4, false, 0, 0, 1, _cameratext3, _scoretext] execVM "Client\Events\Events_UI_OutroCamera.sqf";
waitUntil {scriptdone _thirdshot};


if (_win) then {["END1", true, 0] call BIS_fnc_endMission} else {["END2", false, 0] call BIS_fnc_endMission};
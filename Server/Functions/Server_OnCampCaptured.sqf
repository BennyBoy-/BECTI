/*
  # HEADER #
	Script: 		Server\Functions\Server_OnCampCaptured.sqf
	Alias:			CTI_SE_FNC_OnCampCaptured
	Description:	Triggered when a camp is captured by a given side
	Author: 		Benny
	Creation Date:	20-04-2016
	Revision Date:	20-04-2016
	
  # PARAMETERS #
    0	[Object]: The Town
    1	[Object]: The Camp
    2	[Side]: The side which captured the camp
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[TOWN, CAMP, SIDE] call CTI_SE_FNC_OnCampCaptured
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_GetSideFromID
	Common Function: CTI_CO_FNC_GetSideID
	
  # EXAMPLE #
    [Gravette, Camp0, West] call CTI_SE_FNC_OnCampCaptured
	  -> Camp0 of Gravette will be changed to West
*/

private ["_camp", "_currentSideID", "_newSide", "_newSideID", "_town"];

_town = _this select 0;
_camp = _this select 1;
_newSide = _this select 2;

_newSideID = (_newSide) call CTI_CO_FNC_GetSideID;
_currentSideID = _camp getVariable "cti_camp_sideID";

_camp setVariable ["cti_camp_sideID", _newSideID, true];
_camp setVariable ["cti_camp_lastSideID", _currentSideID, true];

if (CTI_Log_Level >= CTI_Log_Information) then {
	["INFORMATION", "FILE: Server\Functions\Server_OnCampCaptured.sqf", format["Camp [%1] from Town [%2] has been captured, from [%3] to [%4]", _camp, _town getVariable "cti_town_name", (_currentSideID) Call CTI_CO_FNC_GetSideFromID, _newSide]] call CTI_CO_FNC_Log;
};

[_town, _camp, _newSideID, _currentSideID] remoteExec ["CTI_PVF_CLT_OnCampCaptured", CTI_PV_CLIENTS];
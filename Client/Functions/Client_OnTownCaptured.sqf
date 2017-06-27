/*
  # HEADER #
	Script: 		Client\Functions\Client_OnTownCaptured.sqf
	Alias:			CTI_CL_FNC_OnTownCaptured
	Description:	Called by the server whenever a town is captured by either side
					Note this function is called automatically by the PVF "CTI_PVF_CLT_OnTownCaptured"
	Author: 		Benny
	Creation Date:	19-09-2013
	Revision Date:	19-09-2013
	
  # PARAMETERS #
    0	[Object]: The Town
    1	[Integer]: The new Side ID
    2	[Integer]: The previous Side ID
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[TOWN, NEW SIDE ID, OLD SIDE ID] call CTI_CL_FNC_OnTownCaptured
	
  # DEPENDENCIES #
	Common Function: CTI_CL_FNC_ChangePlayerFunds
	Common Function: CTI_CL_FNC_DisplayMessage
	Common Function: CTI_CO_FNC_GetLiveUnits
	Common Function: CTI_CO_FNC_GetSideColoration
	Common Function: CTI_CO_FNC_GetSideFromID
	
  # EXAMPLE #
	[_structure, _variable] call CTI_CL_FNC_OnTownCaptured
*/

params ["_town", "_sideID_new", "_sideID_old"];
private ["_color", "_in_range", "_last_capture", "_score", "_side_new", "_value"];

if !(CTI_P_SideID in [_sideID_new, _sideID_old]) exitWith {}; //--- Make sure that the client need an update

_side_new = (_sideID_new) call CTI_CO_FNC_GetSideFromID;

if (_side_new isEqualTo CTI_P_SideJoined) then { //--- The player's side has captured it
	//todo move to displaymessage
	CTI_P_ChatID commandChat format["%1 has been captured!", _town getVariable "cti_town_name"];
	
	_in_range = false;
	{if (_x distance _town < CTI_MARKERS_TOWN_AREA_RANGE) exitWith {_in_range = true}} forEach ((units player) call CTI_CO_FNC_GetLiveUnits);
	
	if (_in_range) then { //--- The player or one of his unit was in range of the town.
		_last_capture = _town getVariable "cti_town_lastcap";
		_value = (_town getVariable "cti_town_sv_max") * CTI_TOWNS_CAPTURE_BOUNTY_COEF;
		if !(isNil '_last_capture') then {
			if (time - _last_capture <= CTI_TOWNS_CAPTURE_BOUNTY_DELAY) then { _value = round(_value / 2) };
		};
		
		_score = round(_value / CTI_SCORE_TOWN_VALUE_PERPOINT);
		
		if (CTI_Log_Level >= CTI_Log_Debug) then {
			["DEBUG", "FILE: Client\Functions\Client_OnTownCaptured.sqf", format ["Town [%1] capture did award the player's [%2] with [$%3] along with a score bonus of [%4]", _town getVariable "cti_town_name", group player, _value, _score]] call CTI_CO_FNC_Log;
		};
		
		if (_score > 0) then {[player, _score] remoteExec ["CTI_PVF_SRV_RequestAddScore", CTI_PV_SERVER]}; //--- Award some score
		(_value) call CTI_CL_FNC_ChangePlayerFunds; //--- Award some money
		["town-capture", [_town, _value]] call CTI_CL_FNC_DisplayMessage;
	};
	
	_town setVariable ["cti_town_lastcap", time];
	(format["cti_town_marker_%1", _town]) setMarkerTextLocal Format["  %1 | SV: %2/%3", _town getVariable "cti_town_name", _town getVariable "cti_town_sv", _town getVariable "cti_town_sv_max"];
} else { //--- The player's side has lost it
	//todo move to displaymessage
	CTI_P_ChatID commandChat format["%1 has been lost!", _town getVariable "cti_town_name"];
	(format["cti_town_marker_%1", _town]) setMarkerTextLocal format["  %1", _town getVariable "cti_town_name"];
};

//--- Whenever a town is captured or lost, if the camp spawn mode is on limited, we reset the respawn counter.
if ((missionNamespace getVariable "CTI_RESPAWN_CAMPS_CONDITION") isEqualTo 2) then {_town setVariable ["cti_camp_respawn_count", CTI_RESPAWN_CAMPS_CONDITION_LIMITED]};

//--- Paint it
_color = (_side_new) call CTI_CO_FNC_GetSideColoration;
(format ["cti_town_marker_%1", _town]) setMarkerColorLocal _color;

//--- Update the camps if needed
{(_x getVariable "cti_camp_marker") setMarkerColorLocal _color} forEach (_town getVariable ["cti_town_camps", []]);

//--- Update the territorial markers if enabled
if ((missionNamespace getVariable "CTI_TOWNS_TERRITORIAL") > 0) then {CTI_P_TerritorialUpdate = true};
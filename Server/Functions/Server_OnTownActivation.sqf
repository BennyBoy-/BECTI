/*
  # HEADER #
	Script: 		Server\Functions\Server_OnTownActivation.sqf
	Alias:			CTI_SE_FNC_OnTownActivation
	Description:	Triggered when town get Activated
	Author: 		Benny
	Creation Date:	12-06-2017
	Revision Date:	12-06-2017
	
  # PARAMETERS #
    0	[Object]: The Town
    1	[Side]: The Side which holds the town
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[TOWN, SIDE] call CTI_SE_FNC_OnTownActivation
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_CreateTownUnits
	Common Function: CTI_CO_FNC_GetSideID
	Server Function: CTI_SE_FNC_AttemptTownDelegation
	Server Function: CTI_SE_FNC_SpawnTownOccupation
	Server Function: CTI_SE_FNC_SpawnTownResistance
	
  # EXAMPLE #
    [Davie, East] call CTI_SE_FNC_OnTownActivation
	  -> Davie occupation forces will be activated for the east side
    [Lipany, Resistance] call CTI_SE_FNC_OnTownActivation
	  -> Lipany resistance forces will be activated
*/

params ["_town", "_side"];
private ["_return", "_town_groups", "_town_positions", "_town_teams", "_var_side"];

_town = _this select 0;
_side = _this select 1;

//--- Determine whether we're dealing with resistance or occupation town and gather a propre team template (teams, groups, positions)
_var_side = if (_side isEqualTo resistance) then {"resistance"} else {"occupation"};
_return = if (_side isEqualTo resistance) then {(_town) call CTI_SE_FNC_SpawnTownResistance} else {[_town, _side] call CTI_SE_FNC_SpawnTownOccupation};

_town_teams = _return select 0;
_town_groups = _return select 1;
_town_positions = _return select 2;

//--- Store the retrieved town groups in a local variable to make them available at a global scope
_town setVariable [format["cti_town_%1_groups", _var_side], _town_groups];

//--- Send a notification if we're dealing with an occupied town
if !(_side isEqualTo resistance) then {["town-hostilenear", _town] remoteExec ["CTI_PVF_CLT_OnMessageReceived", _side]};

//--- Create the town static defenses according to the town situation if needed
if !(isNil {_town getVariable "cti_town_hasdefenses"}) then {
	if (CTI_Log_Level >= CTI_Log_Information) then {
		["INFORMATION", "FILE: Server\Functions\Server_OnTownActivation.sqf", format["Creating Town Defenses for side [%1] in town [%2]", _side, _town]] call CTI_CO_FNC_Log;
	};
	
	[_town, _side] call CTI_SE_FNC_CreateTownDefenses;
};

//--- Make sure that we have at least one group to create the AI units
if (count _town_groups > 0) then {
	if (CTI_Log_Level >= CTI_Log_Information) then {
		["INFORMATION", "FILE: Server\Functions\Server_OnTownActivation.sqf", format["Creating Town Units for side [%1] in town [%2]. Headless Client delegation will be used if at least one HC is present", _side, _town]] call CTI_CO_FNC_Log;
	};
	
	//--- By default, we try to delegate the creation to the HC Clients
	_delegated = [_town, _side, _town_teams, _town_groups, _town_positions] call CTI_SE_FNC_AttemptTownDelegation;

	//--- If we couldn't delegate it then we create it from the server
	if !(_delegated) then {
		if (CTI_Log_Level >= CTI_Log_Information) then {
			["INFORMATION", "FILE: Server\Functions\Server_OnTownActivation.sqf", format["Creating Town Units for side [%1] in town [%2] on the Server", _side, _town]] call CTI_CO_FNC_Log;
		};
		
		[_town, _side, _town_teams, _town_groups, _town_positions] spawn CTI_CO_FNC_CreateTownUnits;
	};
};

_town setVariable [format["cti_town_%1_activeTime", _var_side], time];
_town setVariable [format["cti_town_%1_active", _var_side], true];

//--- If the town is held by an occupation force, then we mark the active side ID
if !(_side isEqualTo resistance) then {_town setVariable [format["cti_town_%1_active_sideID", _var_side], (_side) call CTI_CO_FNC_GetSideID]};
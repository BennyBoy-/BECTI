/*
  # HEADER #
	Script: 		Server\Functions\Server_OnTownDeactivation.sqf
	Alias:			CTI_SE_FNC_OnTownDeactivation
	Description:	Triggered when town get deactivated
	Author: 		Benny
	Creation Date:	28-03-2017
	Revision Date:	28-03-2017
	
  # PARAMETERS #
    0	[Object]: The Town
    1	[Side]: The Side which will be deactivated
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[TOWN, SIDE] call CTI_SE_FNC_OnTownDeactivation
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_GetSideID
	
  # EXAMPLE #
    [Provins, West] call CTI_SE_FNC_OnTownDeactivation
	  -> Provins west occupation forces will be deactivated
    [Levie, Resistance] call CTI_SE_FNC_OnTownDeactivation
	  -> Levie resistance forces will be deactivated
*/

private ["_side", "_town", "_variable"];

_town = _this select 0;
_side = _this select 1;

_variable = if (_side == resistance) then {"resistance"} else {"occupation"};

//--- Order the HC to perform a cleanup on their side
if !(isNil {missionNamespace getVariable "CTI_HEADLESS_CLIENTS"}) then {
	if (CTI_Log_Level >= CTI_Log_Information) then {
		["INFORMATION", "FILE: Server\Functions\Server_OnTownDeactivation.sqf", format["Town [%1] delegated units for side [%2] will be removed by the HC(s)", _town getVariable "cti_town_name", _side]] call CTI_CO_FNC_Log;
	};
	
	{
		[_town, _side] remoteExec ["CTI_PVF_HC_OnTownDelegationRemoval", _x select 1];
	} forEach (missionNamespace getVariable "CTI_HEADLESS_CLIENTS");
};

//--- Cleanup the units and groups in an spawned thread
(_town getVariable format["cti_town_%1_groups", _variable]) spawn {
	{
		if !(isNil '_x') then {
			if !(isNull _x) then {
				{deleteVehicle _x; sleep 4;} forEach units _x;
				sleep 2;
				deleteGroup _x;
			};
		};
	} forEach _this;
};

//--- Cleanup the vehicles if needed
{
	if (alive _x) then {
		if (!isPlayer _x) then {deleteVehicle _x};
	};
} forEach (_town getVariable format["cti_town_%1_active_vehicles", _variable]);

_town setVariable [format["cti_town_%1_groups", _variable], []];
_town setVariable [format["cti_town_%1_active_vehicles", _variable], []];
_town setVariable [format["cti_town_%1_active", _variable], false];

if (CTI_Log_Level >= CTI_Log_Information) then {
	["INFORMATION", "FILE: Server\Functions\Server_OnTownDeactivation.sqf", format["Town [%1] [%2] forces have been deactivated", _town getVariable "cti_town_name", _side]] call CTI_CO_FNC_Log;
};
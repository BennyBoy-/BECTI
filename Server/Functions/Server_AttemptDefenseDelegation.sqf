/*
  # HEADER #
	Script: 		Server\Functions\Server_AttemptDefenseDelegation.sqf
	Alias:			CTI_SE_FNC_AttemptDefenseDelegation
	Description:	Attempt to perform defense delegation on a single HC (MP)
	Author: 		Benny
	Creation Date:	11-04-2016
	Revision Date:	11-04-2016
	
  # PARAMETERS #
    0	[Object]: The Static
    1	[Group]: The Defensive Group
    2	[Integer]: The Side ID
    3	[Array]: The AI creation arguments
	
  # RETURNED VALUE #
	[Boolean]: True if delegated
	
  # SYNTAX #
	[UNIT, GROUP, SIDE ID, AI ARRAY ARGS] call CTI_SE_FNC_AttemptTownDelegation
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_NetSend
	
  # EXAMPLE #
    [ai1, defGroup, 1, ["B_Soldier_R", defGroup, [500, 600, 0], 1, true]] Call CTI_SE_FNC_AttemptDefenseDelegation;
*/

private ["_ai_args", "_hc", "_hcs", "_result", "_sideID", "_static", "_unit"];

_static = _this select 0;
_group = _this select 1;
_sideID = _this select 2;
_ai_args = _this select 3;

_hcs = missionNamespace getVariable "CTI_HEADLESS_CLIENTS";

//--- Don't bother if we don't have any HC connected
if (isNil '_hcs') exitWith {false};
//--- Don't bother if we have no more HC connected
if (count _hcs < 1) exitWith {false};

//--- Grab the first HC.
_hc = (_hcs select 0) select 0;

//--- First of all, we delegate the group to the HC if needed
if (groupOwner _group != _hc) then {
	if (CTI_Log_Level >= CTI_Log_Information) then {
		["INFORMATION", "FILE: Server\Functions\Server_AttemptDefenseDelegation.sqf", format["Attempting to change ownership of group [%1] to HC [%2]", _group, _hc]] call CTI_CO_FNC_Log;
	};

	_result = _group setGroupOwner _hc;
	
	if (CTI_Log_Level >= CTI_Log_Information) then {
		["INFORMATION", "FILE: Server\Functions\Server_AttemptDefenseDelegation.sqf", format["Swapping ownership of group [%1] to HC [%2] success? [%3]", _group, _hc, _result]] call CTI_CO_FNC_Log;
	};
	
	//--- If the ownership was successfully changed, we want to add back the killed EH again on the non-initialized units.
	if (_result) then {
		[["CLIENT", _hc], "CTI_PVF_Client_OnDefenseDelegationLocalityChanged", [_group, _sideID]] call CTI_CO_FNC_NetSend;
	};
};

//--- Send the creation request to the HC now
[["CLIENT", _hc], "Client_OnDefenseDelegationReceived", [_static, _ai_args]] call CTI_CO_FNC_NetSend;

true
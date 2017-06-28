/*
  # HEADER #
	Script: 		Server\Functions\Server_AttemptTownDefenseDelegation.sqf
	Alias:			CTI_SE_FNC_AttemptTownDefenseDelegation
	Description:	Attempt to perform town defense delegation on a single HC (MP)
	Author: 		Benny
	Creation Date:	15-06-2017
	Revision Date:	15-06-2017
	
  # PARAMETERS #
    0	[Object]: The Static
    1	[Group]: The Defensive Group
    2	[Side]: The Side
    3	[Array]: The AI creation arguments
	
  # RETURNED VALUE #
	[Boolean]: True if delegated
	
  # SYNTAX #
	[UNIT, GROUP, SIDE, AI ARRAY ARGS] call CTI_SE_FNC_AttemptTownDefenseDelegation
	
  # EXAMPLE #
    [staticX, defGroup, 1, ["B_Soldier_R", defGroup, [500, 600, 0], 1, true]] Call CTI_SE_FNC_AttemptTownDefenseDelegation;
*/

params ["_static", "_group", "_side", "_ai_args"];
private ["_delegated", "_hc", "_hcs", "_result", "_sideID", "_unit"];

_hcs = missionNamespace getVariable "CTI_HEADLESS_CLIENTS";
_delegated = true;

//--- Don't bother if we don't have any HC connected
if (isNil '_hcs') exitWith {false};
//--- Don't bother if we have no more HC connected
if (count _hcs < 1) exitWith {false};

_sideID = (_side) call CTI_CO_FNC_GetSideID;

//--- Grab a random HC. (TODO: Round robin iterator if hc count > 1)
_hc = (selectRandom _hcs) select 0;

//--- First of all, we delegate the group to the HC if needed
if !(groupOwner _group isEqualTo _hc) then {
	if (CTI_Log_Level >= CTI_Log_Information) then {
		["INFORMATION", "FILE: Server\Functions\Server_AttemptTownDefenseDelegation.sqf", format["Attempting to change ownership of group [%1] to HC [%2]", _group, _hc]] call CTI_CO_FNC_Log;
	};

	_result = _group setGroupOwner _hc;
	
	if (CTI_Log_Level >= CTI_Log_Information) then {
		["INFORMATION", "FILE: Server\Functions\Server_AttemptTownDefenseDelegation.sqf", format["Swapping ownership of group [%1] to HC [%2] success? [%3]", _group, _hc, _result]] call CTI_CO_FNC_Log;
	};
	
	//--- If the ownership was successfully changed, we want to add back the killed EH again on the non-initialized units.
	if (_result) then {
		[_group, _sideID] remoteExec ["CTI_PVF_HC_OnDefenseDelegationLocalityChanged", _hc];
	};
};

_static setVariable ["cti_delegated", true];

//--- Send the creation request to the HC now
[_static, _ai_args] remoteExec ["CTI_PVF_HC_OnDefenseDelegationReceived", _hc];

_delegated
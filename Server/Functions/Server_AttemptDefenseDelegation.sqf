/*
  # HEADER #
	Script: 		Server\Functions\Server_AttemptDefenseDelegation.sqf
	Alias:			CTI_SE_FNC_AttemptDefenseDelegation
	Description:	Attempt to perform defense delegation on a single HC (MP)
	Author: 		Benny
	Creation Date:	11-04-2016
	Revision Date:	11-04-2016
	
  # PARAMETERS #
    0	[Object]: The Unit
    1	[Object]: The Side
	
  # RETURNED VALUE #
	[Boolean]: True if delegated
	
  # SYNTAX #
	[UNIT, SIDE] call CTI_SE_FNC_AttemptTownDelegation
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_NetSend
	
  # EXAMPLE #
*/

private ["_hc", "_hcs", "_side", "_sideID", "_unit"];

_unit = _this select 0;
_side = _this select 1;

_sideID = (_side) call CTI_CO_FNC_GetSideID;

_hcs = missionNamespace getVariable "CTI_HEADLESS_CLIENTS";

//--- Don't bother if we don't have any HC connected
if (isNil '_hcs') exitWith {false};
//--- Don't bother if we have no more HC connected
if (count _hcs < 1) exitWith {false};

//--- Grab the first HC.
_hc = (_hcs select 0) select 0;

if (CTI_Log_Level >= CTI_Log_Information) then {
	["INFORMATION", "FILE: Server\Functions\Server_AttemptDefenseDelegation.sqf", format["Changing ownership of defensive unit [%1] (%2) on side [%3] to the HC [%4]", _unit, typeOf _unit, _side, _hc]] call CTI_CO_FNC_Log;
};

//--- We delegate the unit to the desired HC
_unit setOwner _hc;

//--- Since the unit was transfered, we need to re-attach the Killed EH on the unit from the HC's
[["CLIENT", _hc], "Client_OnDefenseDelegationReceived", [_unit, _sideID]] call CTI_CO_FNC_NetSend;

true

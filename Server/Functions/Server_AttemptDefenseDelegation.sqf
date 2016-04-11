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

private ["_delegate_history", "_hc", "_hcs", "_side", "_sideID", "_unit"];

_unit = _this select 0;
_side = _this select 1;

_sideID = (_side) call CTI_CO_FNC_GetSideID;

_hcs = missionNamespace getVariable "CTI_HEADLESS_CLIENTS";
_delegate_history = missionNamespace getVariable "CTI_HEADLESS_DEFENSE_HISTORY";

//--- Don't bother if we don't have any HC connected
if (isNil '_hcs') exitWith {false};
//--- Don't bother if we have no more HC connected
if (count _hcs < 1) exitWith {false};

//--- If the delegation history doesn't exists then we have to initialize it
if (isNil '_delegate_history') then { _delegate_history = [] };

//--- We retrieve the Owner ID from all of our HCs
_hc_owner_ids = [];
{ [_hc_owner_ids, _x] call CTI_CO_FNC_ArrayPush } forEach (_hcs select 0);
	
//--- First, we wipe the HC which are no longer connected
{
	if !(_x in _hc_owner_ids) then { _delegate_history = _delegate_history - [_x] };
} forEach +(_delegate_history);

//--- Next, we pick an HC which hasn't been picked already. If we're dealing with more than 1 HC, otherwise we grab the first one
_hc = -1;
if (count _hcs > 1) then {
	{
		if !(_x in _delegate_history) exitWith { _hc = _x };
	} forEach _hc_owner_ids;
	
	//--- If the we've already looped over all the HC, we can reset it and start all over again
	if (_hc < 0) then {
		_delegate_history = [];
		_hc = _hc_owner_ids select 0;
	};
} else {
	_hc = _hc_owner_ids select 0;
};

if (CTI_Log_Level >= CTI_Log_Information) then {
	["INFORMATION", "FILE: Server\Functions\Server_AttemptDefenseDelegation.sqf", format["Changing ownership of defensive unit [%1] (%2) on side [%3] to the HC [%4]", _unit, typeOf _unit, _side, _hc]] call CTI_CO_FNC_Log;
};

//--- We delegate the unit to the desired HC
_unit setOwner _hc;

//--- Since the unit was transfered, we need to re-attach the Killed EH on the unit from the HC's
[["CLIENT", _hc], "Client_OnDefenseDelegationReceived", [_unit, _sideID]] call CTI_CO_FNC_NetSend;

//--- We add this HC to our delegation history now
[_delegate_history, _hc] call CTI_CO_FNC_ArrayPush;
missionNamespace setVariable ["CTI_HEADLESS_DEFENSE_HISTORY", _delegate_history];

true
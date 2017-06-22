/*
  # HEADER #
	Script: 		Server\Functions\Server_AttemptTownDelegation.sqf
	Alias:			CTI_SE_FNC_AttemptTownDelegation
	Description:	Attempt to perform units delegation on HC's (MP)
	Author: 		Benny
	Creation Date:	23-09-2013
	Revision Date:	11-04-2016
	
  # PARAMETERS #
    0	[Object]: The Town
    1	[Side]: The side of the units
    2	[Array]: The units classname to create
    3	[Array]: The groups to be used
    4	[Array]: The position to be used
	
  # RETURNED VALUE #
	[Boolean]: True if delegated
	
  # SYNTAX #
	[TOWN, SIDE, CLASSNAMES, GROUPS, POSITIONS] call CTI_SE_FNC_AttemptTownDelegation
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_ArrayShuffle
	Common Function: CTI_CO_FNC_Log
	
  # EXAMPLE #
    [Town0, West, [["ClassA","ClassB"], ["ClassA"]], [GroupA, GroupB], [[652, 231, 0], [600, 200, 0]]] call CTI_SE_FNC_AttemptTownDelegation
	  -> Delegate the creation to the HC if any, return false if none are present
*/

params ["_town", "_side", "_teams", "_groups", "_positions"];
private ["_candidates", "_candidates_count", "_delegated", "_delegation_table", "_sleep_thread"];

_teams = +(_teams);
_groups = +(_groups);
_positions = +(_positions);

_candidates = missionNamespace getVariable "CTI_HEADLESS_CLIENTS";

_delegated = false;
if !(isNil '_candidates') then {
	_candidates_count = (count _candidates)-1;
	if (count _candidates > 0 && count _groups > 0) then {
		//--- Mix it so that we have different HC clients all the time
		if (count _candidates > 1) then {_candidates = (_candidates) call CTI_CO_FNC_ArrayShuffle};
		
		//--- Update the HC town groups
		{[_town, _side, _groups] remoteExec ["CTI_PVF_HC_UpdateTownGroups", _x select 1]} forEach _candidates;
		
		//--- Attempt to perform a load-balanced creation
		_delegation_table = [];
		for '_i' from 0 to _candidates_count do {
			if (_i >= count _groups) exitWith {};
			_delegation_table set [_i, []];
		};
		
		_index_hc = 0;
		for '_i' from 0 to count(_teams)-1 do {
			_delegation_table set [_index_hc, (_delegation_table select _index_hc) + [[_teams select _i, _groups select _i, _positions select _i]]];
			_index_hc = if (_index_hc+1 > _candidates_count) then {0} else {_index_hc + 1};
		};
		
		//--- Delegate the creation now
		_sleep_thread = 0; //--- Debug: add a delay while HC are fucked
		{
			_owner_id = (_candidates select _forEachIndex) select 0;
			_hc_entity = (_candidates select _forEachIndex) select 1;
			_uid = (_candidates select _forEachIndex) select 2;
			
			//--- Recompose
			_sub_teams = [];
			_sub_groups = [];
			_sub_positions = [];
			{
				_sub_teams pushBack (_x select 0);
				_sub_groups pushBack (_x select 1);
				_sub_positions pushBack (_x select 2);
				
				//--- Set the HC as the new group's owner
				_locality = (_x select 1) setGroupOwner _owner_id;
				
				if (_locality) then {
					if (CTI_Log_Level >= CTI_Log_Information) then {
						["INFORMATION", "FILE: Server\Functions\Server_AttemptTownDelegation.sqf", format["Group [%1] locality has been changed to the Headless Client [%2] with owner ID [%3] for town [%4] on side [%5]", _x select 1, _uid, _owner_id, _town getVariable "cti_town_name", _side]] call CTI_CO_FNC_Log;
					};
				} else {
					if (CTI_Log_Level >= CTI_Log_Error) then {
						["ERROR", "FILE: Server\Functions\Server_AttemptTownDelegation.sqf", format["Group [%1] locality could not be changed for Headless Client [%2] with owner ID [%3] for town [%4] on side [%5]", _x select 1, _uid, _owner_id, _town getVariable "cti_town_name", _side]] call CTI_CO_FNC_Log;
					};
				};
			} forEach _x;
			
			// [_town, _side, _sub_teams, _sub_groups, _sub_positions] remoteExec ["CTI_PVF_HC_OnTownDelegationReceived", _hc_entity];
			[_town, _side, _sub_teams, _sub_groups, _sub_positions, _sleep_thread] remoteExec ["CTI_PVF_HC_OnTownDelegationReceived", _hc_entity]; //--- debug while hc is fubar, add a delay
			
			_sleep_thread = _sleep_thread + 10; //--- Debug: add a delay while HC are fucked
			
			if (CTI_Log_Level >= CTI_Log_Information) then {
				["INFORMATION", "FILE: Server\Functions\Server_AttemptTownDelegation.sqf", format["Delegating unit creation to Headless Client [%1] with owner ID [%2] in [%3] for [%4] team(s) on [%5]", _uid, _owner_id, _town getVariable "cti_town_name", count _sub_teams, _side]] call CTI_CO_FNC_Log;
			};
		} forEach _delegation_table;
		
		_delegated = true;
	};
};

_delegated

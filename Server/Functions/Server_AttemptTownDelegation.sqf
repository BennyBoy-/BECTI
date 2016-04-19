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
	Common Function: CTI_CO_FNC_ArrayPush
	Common Function: CTI_CO_FNC_ArrayShuffle
	Common Function: CTI_CO_FNC_Log
	Common Function: CTI_CO_FNC_NetSend
	
  # EXAMPLE #
    [Town0, West, [["ClassA","ClassB"], ["ClassA"]], [GroupA, GroupB], [[652, 231, 0], [600, 200, 0]]] call CTI_SE_FNC_AttemptTownDelegation
	  -> Delegate the creation to the HC if any, return false if none are present
*/

private ["_candidates", "_groups", "_positions", "_side", "_teams", "_town"];

_town = _this select 0;
_side = _this select 1;
_teams = +(_this select 2);
_groups = +(_this select 3);
_positions = +(_this select 4);

_candidates = missionNamespace getVariable "CTI_HEADLESS_CLIENTS";

_delegated = false;
if !(isNil '_candidates') then {
	_candidates_count = (count _candidates)-1;
	if (count _candidates > 0 && count _groups > 0) then {
		//--- Mix it so that we have different HC clients all the time
		if (count _candidates > 1) then {_candidates = (_candidates) call CTI_CO_FNC_ArrayShuffle};
		
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
		{
			_owner_id = (_candidates select _forEachIndex) select 0;
			_hc_entity = (_candidates select _forEachIndex) select 1;
			_uid = (_candidates select _forEachIndex) select 2;
			
			//--- Recompose
			_sub_teams = [];
			_sub_groups = [];
			_sub_positions = [];
			{
				[_sub_teams, _x select 0] call CTI_CO_FNC_ArrayPush;
				[_sub_groups, _x select 1] call CTI_CO_FNC_ArrayPush;
				[_sub_positions, _x select 2] call CTI_CO_FNC_ArrayPush;
			} forEach _x;
			
			[["CLIENT", _hc_entity], "Client_OnTownDelegationReceived", [_town, _side, _sub_teams, _sub_groups, _sub_positions]] call CTI_CO_FNC_NetSend;
			
			if (CTI_Log_Level >= CTI_Log_Information) then {
				["INFORMATION", "FILE: Server\Functions\Server_AttemptTownDelegation.sqf", format["Delegating unit creation to Headless Client [%1] with owner ID [%2] in [%3] for [%4] team(s) on [%5]", _uid, _owner_id, _town getVariable "cti_town_name", count _sub_teams, _side]] call CTI_CO_FNC_Log;
			};
		} forEach _delegation_table;
		
		_delegated = true;
	};
};

_delegated
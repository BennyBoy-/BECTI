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
			
			if (CTI_Log_Level >= CTI_Log_Debug) then {
				["DEBUG", "FILE: Server\Functions\Server_AttemptDelegation.sqf", format["Delegating unit creation to Headless Client [%1] with owner ID [%2] in [%3] for [%4] team(s) on [%5]", _uid, _owner_id, _town getVariable "cti_town_name", count _sub_teams, _side]] call CTI_CO_FNC_Log;
			};
			// diag_log format ["delegating control to %1 of %2",_owner_id,_sub_teams];
		} forEach _delegation_table;
		
		_delegated = true;
	};
};

_delegated
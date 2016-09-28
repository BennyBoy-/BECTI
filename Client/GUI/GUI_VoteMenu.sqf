_update_list = time;
_vote_array = [];

while { alive player && dialog } do {
	
	if (isNil {uiNamespace getVariable "cti_dialog_ui_votemenu"}) exitWith {}; //--- Menu is closed.
	
	_vote_time = CTI_P_SideLogic getVariable "cti_votetime";
	
	if (_vote_time < 0) exitWith {closeDialog 0};
	
	((uiNamespace getVariable "cti_dialog_ui_votemenu") displayCtrl 300002) ctrlSetText format ["%1", _vote_time];
	
	//--- Check for JIP players
	if (time - _update_list > 3) then { //--- Refresh the list.
		_update_list = time;
		
		//--- Remove potential non-player controlled slots.
		_list_present = [];
		_delete = [];
		for '_i' from 1 to ((lnbSize 300001) select 0)-1 do {
			_value = lnbValue [300001,[_i, 0]];
			_team = (uiNamespace getVariable "cti_dialog_ui_votemenu_groups") select _value;
			if !(isPlayer leader _team) then {_delete pushBack _i} else {_list_present pushBack _team};
		};
		
		reverse _delete;
		{lnbDeleteRow [300001, _x]} forEach _delete;
		
		//--- Add JIP players if needed
		{
			if (isPlayer leader _x && !(_x in _list_present)) then {
				lnbAddRow[300001, [name leader _x, "0"]];
				lnbSetValue[300001, [((lnbSize 300001) select 0)-1, 0], _forEachIndex];
			};
		} forEach (uiNamespace getVariable "cti_dialog_ui_votemenu_groups");
	};
	
	for '_i' from 0 to count(uiNamespace getVariable "cti_dialog_ui_votemenu_groups") do {_vote_array set [_i , 0]};
	
	//--- Vote update
	_player_count = 0;
	_nullvote = 0;
	{
		if (isPlayer leader _x) then {
			_vote = _x getVariable "cti_vote";
			_index = (uiNamespace getVariable "cti_dialog_ui_votemenu_groups") find _vote;
			_index = if (_index < 0) then {0} else {_index + 1};
			_vote_array set [_index, (_vote_array select _index) + 1];
			_player_count = _player_count + 1;
		};
	} forEach (uiNamespace getVariable "cti_dialog_ui_votemenu_groups");
	
	//--- Get the most voted person
	_highest_id = 0;
	for '_i' from 0 to count(uiNamespace getVariable "cti_dialog_ui_votemenu_groups") do {if ((_vote_array select _i) > (_vote_array select _highest_id)) then {_highest_id = _i}};
	
	//--- Ai or null commander is handled outside
	if ((((uiNamespace getVariable "cti_dialog_ui_votemenu") displayCtrl 300001) lnbText [0, 1]) != str(_vote_array select 0)) then {lnbSetText [300001, [0, 1], str(_vote_array select 0)]}; //--- AI Commander
	
	for '_i' from 1 to ((lnbSize 300001) select 0)-1 do { //--- Update the UI list properties (name / votes) for players.
		_value = lnbValue [300001,[_i, 0]];
		_team = (uiNamespace getVariable "cti_dialog_ui_votemenu_groups") select _value;
		if ((((uiNamespace getVariable "cti_dialog_ui_votemenu") displayCtrl 300001) lnbText [_i, 0]) != name leader _team) then {lnbSetText [300001, [_i, 0], name leader _team]};
		if ((((uiNamespace getVariable "cti_dialog_ui_votemenu") displayCtrl 300001) lnbText [_i, 1]) != str(_vote_array select _value+1)) then {lnbSetText [300001, [_i, 1], str(_vote_array select _value+1)]};
	};
	
	//--- Display the highest voted person
	_voted_commander = if ((_vote_array select _highest_id) <= (_player_count/3) || _highest_id == 0) then {if (missionNamespace getVariable "CTI_AI_TEAMS_ENABLED" > 0) then {"Electing: AI Commander"} else {"Electing: No Commander"}} else {format["Electing: %1", name leader ((uiNamespace getVariable "cti_dialog_ui_votemenu_groups") select _highest_id-1)]};
	((uiNamespace getVariable "cti_dialog_ui_votemenu") displayCtrl 300003) ctrlSetText _voted_commander;
	
	sleep .1;
};
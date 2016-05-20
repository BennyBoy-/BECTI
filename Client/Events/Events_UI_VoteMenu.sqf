private ["_action"];
_action = _this select 0;

switch (_action) do {
	case "onLoad": {
		uiNamespace setVariable ["cti_dialog_ui_votemenu_groups", (CTI_P_SideJoined) call CTI_CO_FNC_GetSideGroups];
		
		lnbAddRow[300001, [if (missionNamespace getVariable "CTI_AI_TEAMS_ENABLED" > 0) then {"AI Commander"} else {"No Commander"}, "0"]];
		lnbSetValue[300001, [0, 0], -1];

		_u = 1;
		{
			if (isPlayer leader _x) then {
				lnbAddRow[300001, [name leader _x, "0"]];
				lnbSetValue[300001, [_u, 0], _forEachIndex];
				_u = _u + 1;
			};
		} forEach (uiNamespace getVariable "cti_dialog_ui_votemenu_groups");
		
		execVM "Client\GUI\GUI_VoteMenu.sqf";
	};
	case "onVoteLBSelChanged": {
		_index = lnbValue [300001,[lnbCurSelRow 300001, 0]];
		_who = grpNull;
		if (_index > -1) then { //--- Playable
			_who = (uiNamespace getVariable "cti_dialog_ui_votemenu_groups") select _index;
			if !(isPlayer leader _who) then {_who = grpNull}; //--- Non player vote = ai/null com
		};
		
		_current_vote = group player getVariable "cti_vote";
		_vote_update = false;
		
		if (isNull _who && !isNull _current_vote || !isNull _who && isNull _current_vote) then {_vote_update = true};
		if (!isNull _who && !isNull _current_vote) then {
			if (_who != _current_vote) then {_vote_update = true};
		};
		
		if (_vote_update) then {group player setVariable ["cti_vote", _who, true]};
	};
};
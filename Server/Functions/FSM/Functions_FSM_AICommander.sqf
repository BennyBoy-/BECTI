CTI_FSM_AICommander_TryUpgrade = {
	params ["_side"];
	private ["_break", "_current_content", "_hq", "_logic", "_upgrades"];
	
	_current_content = [];
	_break = false;
	
	_upgrades = (_side) call CTI_CO_FNC_GetSideUpgrades;
	_hq = (_side) call CTI_CO_FNC_GetSideHQ;
	_logic = (_side) call CTI_CO_FNC_GetSideLogic;
	
	{
		_upgrade = _x select 0;
		_upgrade_desired = _x select 1;
		_upgrade_current = _upgrades select _upgrade;
		
		//--- Make sure that the upgrade is enabled
		if ((missionNamespace getVariable format["CTI_%1_UPGRADES_ENABLED", _side]) select _upgrade_current) then {
			//--- Make sure that the current upgrade level is below the max level
			if (_upgrade_current < ((missionNamespace getVariable format["CTI_%1_UPGRADES_LEVELS", _side]) select _upgrade) && _upgrade_current < _upgrade_desired) then {
				_upgrade_price = ((missionNamespace getVariable format["CTI_%1_UPGRADES_COSTS", _side]) select _upgrade) select _upgrade_current;
				
				//--- Make sure that the desired upgrade level is not already reached
				if (((_side) call CTI_CO_FNC_GetFundsCommander) >= _upgrade_price) then {
					_current_content = [_upgrade, _upgrade_current, _upgrade_price];
				} else {
					_break = true;
				};
			};
		};
		
		if (_break || count _current_content > 0) exitWith {};
	} forEach (missionNamespace getVariable format["CTI_%1_UPGRADES_AI_ORDER", _side]);
	
	_current_content
};

CTI_FSM_AICommander_SetAIRole = {
	params ["_side", "_group", "_role"];
	
	_category = missionNamespace getVariable [format["CTI_SQUADS_%1_CATEGORY_%2", _side, _role], []];
	
	if (count _category > 0) then {
		//--- Find a valid matching squad array based on the given condition
		_pool = [];
		{
			if (call (_x select 2)) exitWith {_pool = _x};
		} forEach _category;
		
		//--- If no conditions can be met, use the first squad array element
		if (count _pool < 1) then {_pool = _category select 0};
		
		_squad = (_pool select 0) selectRandomWeighted (_pool select 1); 
		
		_group setVariable ["cti_role", _squad];
	} else {
		// todo warn about nil category, default to infantry
	};
};
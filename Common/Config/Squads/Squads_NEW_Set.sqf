params ["_side", "_names", "_label", "_members", "_factories"];
private ["_squads"];

_squads = [];

for '_i' from 0 to (count _names)-1 do {	
	//--- Make sure that the pool contain valid units, if not, delete the unit along with it's weight
	for '_j' from count((_members select _i) select 0)-1 to 0 step -1 do {
		if !(isClass(configFile >> "CfgVehicles" >> (((_members select _i) select 0) select _j))) then {
			if (CTI_Log_Level >= CTI_Log_Error) then { 
				["ERROR", "FILE: Common\Config\Squads\Squads_Set.sqf", format ["[%1] unit [%2] is not a valid CfgVehicles classname (Addons? Typo?). Removing it from the squad composition...", _side, (((_members select _i) select 0) select _j)]] call CTI_CO_FNC_Log 
			};
			
			((_members select _i) select 0) deleteAt _j;
			((_members select _i) select 1) deleteAt _j;
		};
	};
	
	//--- Make sure that we have at least one valid unit in the composition array
	if (count((_members select _i) select 0) > 0) then {
		//--- Retrieve the unit min cost and the max upgrade level required
		_cost_min = -1;
		_upgrade_max = 0;
		{
			_var = missionNamespace getVariable _x;
			if !(isNil '_var') then {
				if ((_var select CTI_UNIT_PRICE) < _cost_min || _cost_min < 0) then {_cost_min = _var select CTI_UNIT_PRICE};
				if ((_var select CTI_UNIT_UPGRADE) > _upgrade_max) then {_upgrade_max = _var select CTI_UNIT_UPGRADE};
			} else {
				if (CTI_Log_Level >= CTI_Log_Warning) then {
					["WARNING", "FILE: Common\Config\Squads\Squads_Set.sqf", format ["[%1] unit [%2] is not defined in the units files but will be used for the squad template [%3] nonetheless", _side, _x, _names select _i]] call CTI_CO_FNC_Log;
				};
			};
		} forEach ((_members select _i) select 0);
		
		missionNamespace setVariable [format ["CTI_SQUAD_%1_%2", _side, _names select _i], [_label select _i, _cost_min, _members select _i, _factories select _i, _upgrade_max]];
		_squads pushBack (_names select _i);
		
		if (CTI_Log_Level >= CTI_Log_Debug) then { 
			["DEBUG", "FILE: Common\Config\Squads\Squads_Set.sqf", format ["[%1] Set Squad [%2]", _side, _names select _i]] call CTI_CO_FNC_Log;
		};
	} else {
		if (CTI_Log_Level >= CTI_Log_Error) then { 
			["ERROR", "FILE: Common\Config\Squads\Squads_Set.sqf", format ["Squad [%1] on side [%2] has no valid units in it's composition, removing it", _names select _i, _side]] call CTI_CO_FNC_Log;
		};
	};
};

//--- The squads names are stored in a variable
missionNamespace setVariable [format ["CTI_SQUADS_%1", _side], _squads];
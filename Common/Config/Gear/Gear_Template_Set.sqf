private ["_faction", "_templates"];

_faction = _this select 0;
_templates = _this select 1;

_formated = [];

{
	_cost = 0;
	_picture = "";
	_label = "";
	_haspic = false;
	_upgrade_max = 0;
	
	{
		_cost = _cost + (_x call CTI_CO_FNC_GetGearItemCost);
		_upgrade = ((missionNamespace getVariable [format["cti_%1", _x], [[0, 0]]]) select 0) select 0; //--- Retrieve the item current upgrade level
		if (_upgrade > _upgrade_max) then {_upgrade_max = _upgrade}; //--- We retrieve the highest upgrade level needed for the template
	} forEach (_x call CTI_CO_FNC_ConvertGearToFlat);
	
	{
		if !((_x select 0) isEqualTo "") then {
			if !(_label isEqualTo "") then { _label = _label + " | " };
			_label = _label + getText(configFile >> "CfgWeapons" >> (_x select 0) >> "displayName");
			if !(_haspic) then { _picture = getText(configFile >> "CfgWeapons" >> (_x select 0) >> "picture"); _haspic = true};
		};
	} forEach (_x select 0);
	
	_formated pushBack [_label, _picture, _cost, _x, _upgrade_max];
} forEach _templates;

missionNamespace setVariable ["cti_gear_list_templates", _formated];
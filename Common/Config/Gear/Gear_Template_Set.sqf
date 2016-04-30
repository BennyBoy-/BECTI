private ["_faction", "_templates"];

_faction = _this select 0;
_templates = _this select 1;

_formated = [];

{
	_cost = 0;
	_picture = "";
	_label = "";
	_haspic = false;
	
	{
		_cost = _cost + (_x call CTI_CO_FNC_GetGearItemCost);
	} forEach (_x call CTI_CO_FNC_ConvertGearToFlat);
	
	{
		if (_x select 0 != "") then {
			if (_label != "") then { _label = _label + " | " };
			_label = _label + getText(configFile >> "CfgWeapons" >> (_x select 0) >> "displayName");
			if !(_haspic) then { _picture = getText(configFile >> "CfgWeapons" >> (_x select 0) >> "picture"); _haspic = true};
		};
	} forEach (_x select 0);
	
	_formated pushBack [_label, _picture, _cost, _x, 0/* todo Gear Upgrade */];
} forEach _templates;

missionNamespace setVariable ["cti_gear_list_templates", _formated];
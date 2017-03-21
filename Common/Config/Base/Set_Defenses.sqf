private ["_categories", "_classes", "_defenses", "_defenses_cname", "_headers", "_index", "_placements", "_prices", "_side", "_sub_categories", "_sub_categories_index"];

_side = _this select 0;
_headers = _this select 1;
_classes = _this select 2;
_prices = _this select 3;
_placements = _this select 4;
_categories = _this select 5;
_coinmenus = _this select 6;
_coinblacklist = _this select 7;

_defenses = [];
_defenses_cname = [];

_sub_categories = [];
_sub_categories_index = [];
_index = 0;

for '_i' from 0 to (count _headers) -1 do {
	_header = _headers select _i;
	_classname = _classes select _i;
	
	if (isNil {missionNamespace getVariable format["CTI_%1_%2",_side,_classname]}) then {
		_label = "";
		_special = [];
		switch (typeName _header) do {
			case "STRING": { _label = _header };
			case "ARRAY": {
				_label = _header select 0;
				_special = _header select 1;
			};
		};
		
		_stored = [
			_label,
			_classname,
			_prices select _i,
			_categories select _i,
			_placements select _i,
			_special,
			_coinmenus select _i,
			_coinblacklist select _i
		];
		
		if !((_categories select _i) in _sub_categories) then {
			_sub_categories pushBack (_categories select _i);
			_sub_categories_index pushBack _index;
			_index = _index + 1;
		};
		
		_find = _sub_categories find (_categories select _i);
		missionNamespace setVariable [format["CTI_COIN_%1_DEFENSE_CATEGORY_%2", _side, _find], (missionNamespace getVariable [format["CTI_COIN_%1_DEFENSE_CATEGORY_%2", _side, _find], []]) + [format["CTI_%1_%2", _side, _classname]]];
		
		missionNamespace setVariable [format["CTI_%1_%2", _side, _classname], _stored];
		_defenses pushBack format["CTI_%1_%2", _side, _classname];
		_defenses_cname pushBack _classname;
		
		if (CTI_Log_Level >= CTI_Log_Debug) then { ["DEBUG", "FILE: Common\Config\Base\Set_Defenses.sqf", format ["[%1] Set Defense [%2] using variable name [%3]", _side, _classname, format["CTI_%1_%2", _side, _classname]]] call CTI_CO_FNC_Log };
	} else {
		if (CTI_Log_Level >= CTI_Log_Information) then { 
			["TRIVIAL", "FILE: Common\Config\Base\Set_Defenses.sqf", format ["[%1] Defense [%2] was previously defined. Skipping this one.", _side, _classname]] call CTI_CO_FNC_Log
		};
	};
};

missionNamespace setVariable [format ["CTI_COIN_%1_DEFENSE_CATEGORIES", _side], _sub_categories];
missionNamespace setVariable [format ["CTI_COIN_%1_DEFENSE_CATEGORIES_INDEX", _side], _sub_categories_index];

missionNamespace setVariable [format ["CTI_%1_DEFENSES", _side], _defenses];
missionNamespace setVariable [format ["CTI_%1_DEFENSES_NAMES", _side], _defenses_cname];
private ["_classes", "_conditions", "_headers", "_placements", "_prices", "_respawnBPos", "_side", "_specials", "_structures", "_times"];

_side = _this select 0;
_headers = _this select 1;
_classes = _this select 2;
_prices = _this select 3;
_times = _this select 4;
_placements = _this select 5;
_specials = _this select 6;
_conditions = _this select 7;
_respawnBPos = _this select 8;

_structures = [];
for '_i' from 0 to (count _headers) -1 do {
	_head = _headers select _i;
	
	_stored = [
		_headers select _i,
		_classes select _i,
		_prices select _i,
		_times select _i,
		_placements select _i,
		_specials select _i,
		_conditions select _i,
		_respawnBPos select _i
	];
	
	missionNamespace setVariable [format ["CTI_%1_%2", _side, _head select 0], _stored];
	_structures pushBack format ["CTI_%1_%2", _side, _head select 0];
	
	missionNamespace setVariable [format ["CTI_%1_%2", _side, (_classes select _i) select 0], _stored];
	
	if (CTI_Log_Level >= CTI_Log_Debug) then { ["DEBUG", "FILE: Common\Config\Base\Set_Structures.sqf", format ["[%1] Set Structure [%2] using variable name [%3]", _side, _classname, format["CTI_%1_%2", _side, _head select 0]]] call CTI_CO_FNC_Log };
};

missionNamespace setVariable [format ["CTI_%1_STRUCTURES", _side], _structures];
_classnames = [];
_respawnBPos = [];

_classnames pushBack 		"Land_BagBunker_Tower_F";
_respawnBPos pushBack 		-1;

for '_i' from 0 to (count _classnames) -1 do {
	_classname = _classnames select _i;
	
	if (isNil {missionNamespace getVariable format["CTI_CAMPS_VAR_%1", _classname]}) then {
		missionNamespace setVariable [format["CTI_CAMPS_VAR_%1", _classname], [_respawnBPos select _i]];
		
		if (CTI_Log_Level >= CTI_Log_Debug) then { ["DEBUG", "FILE: Common\Config\Towns\Towns_Camps.sqf", format ["Set Camp [%1] using variable name [%2]", _classname, format["CTI_CAMPS_VAR_%1", _classname]]] call CTI_CO_FNC_Log };
	} else {
		if (CTI_Log_Level >= CTI_Log_Information) then { 
			["TRIVIAL", "FILE: Common\Config\Towns\Towns_Camps.sqf", format ["Camp [%1] is already defined and will be skipped for this iteration.", _classname]] call CTI_CO_FNC_Log
		};
	};
};
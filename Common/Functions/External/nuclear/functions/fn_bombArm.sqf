private ["_object"];
//arm bomb
_object = _this select 0;
[[[_object], "Common\Functions\External\nuclear\functions\fn_bombTimer.sqf"], "BIS_fnc_execVM", true] call BIS_fnc_MP;
private ["_lock", "_vehicle"];

_vehicle = _this select 0;
_lock = [0, 2] select (locked _vehicle isEqualTo 0);

_vehicle lock _lock;
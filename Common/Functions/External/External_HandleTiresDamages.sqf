//--- Credits: Zerty
private ["_damage", "_v", "_wheels"];

_v = _this select 0;
_damage = _this select 2;

_wheels = ["wheel_1_1_steering","wheel_1_2_steering","wheel_1_3_steering","wheel_1_4_steering","wheel_2_1_steering","wheel_2_2_steering","wheel_2_3_steering","wheel_2_4_steering"];

if (((_this select 1) in _wheels) && (isNull(_this select 3)) && count(crew _v) > 0 && !isNull(driver _v)) then {
	if (({isPlayer _x} count (crew _v)) isEqualTo 0) then {
		_damage = 0;
	} else {
		_damage = _damage * 0.2;
	};
};

_damage
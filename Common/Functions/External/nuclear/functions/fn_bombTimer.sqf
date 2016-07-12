private ["_time", "_object", "_target", "_time_difference"];

cutText ["BOMB ARMED", "PLAIN DOWN"];

_time = 600;
_object = _this select 0;

_object setVariable ["nukearmtime", serverTime, true];
_object setVariable ["nukeblowtime", (serverTime + _time), true];
_time_difference = (( _object getVariable "nukeblowtime" )- serverTime  );

//Validate parameters
if (isNull _object) exitWith {};
while {alive _object && _time > 0 && !isNull _object} do {
	_time_difference = (( _object getVariable "nukeblowtime" )- serverTime  );
	hintSilent format["Nuclear Detonation: \n %1", [((_time_difference)/60)+.01,"HH:MM"] call BIS_fnc_timetostring];

	if (_time_difference < 30 && _time_difference > 29) then {
		playsound "air_raid";
	};
	if (_time_difference < 20 && _time_difference > 19) then {
		playsound "air_raid";
	};
	if (_time_difference < 10 && _time_difference > 9) then {
		playsound "air_raid";
	};
	if (_time_difference < 8 && _time_difference > 7) then {
		playsound "choppa";
	};
	if (_time_difference <= 0) then {
		call {[_object] execvm "Common\Functions\External\nuclear\detonation.sqf"}; 
		hint "Nuclear Detonation Successful";
	};
	sleep 1;
};
if (isNull _object) exitWith {};
while {!alive _object && _time > 0 && !isNull _object} do {
	_time_difference = (( _object getVariable "nukeblowtime" )- serverTime  );

	if (_time_difference > 1) then {
		hint "Nuclear Device Disarmed";
	};
	sleep 1;
};
deleteVehicle _object;
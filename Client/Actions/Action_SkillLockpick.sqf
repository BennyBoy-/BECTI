_vehicles = player nearEntities [["Car","Motorcycle","Tank","Ship","Air","StaticWeapon"],5];
if (count _vehicles < 1) exitWith {hint "There are no nearby vehicles to lockpick"};

_vehicle = [player, _vehicles] Call CTI_CO_FNC_GetClosestEntity;

if (locked _vehicle in [-1, 0, 1]) exitWith {hint "The vehicle is not locked"};
if (count crew _vehicle > 0) exitWith {hint "The vehicle is not empty!"};

CTI_P_ActionLockPickNextUse = time + CTI_P_ActionLockPickDelay;

_skip = false;
for "_i" from 0 to 4 do {
	sleep 0.5;
	player playMove "AinvPknlMstpSlayWrflDnon_medic";
	sleep 0.5;
	waitUntil {animationState player == "ainvpknlmstpslaywrfldnon_amovpknlmstpsraswrfldnon" || !alive player || vehicle player != player || !alive _vehicle || _vehicle distance player > 5};
	if (!alive player || vehicle player != player || !alive _vehicle || _vehicle distance player > 5) exitWith {_skip = true};
};

if (locked _vehicle in [-1, 0, 1]) exitWith {};

if (!_skip) then {
	_min = 30;
	switch (typeOf _vehicle) do {
		case "Motorcycle": {_min = 45};
		case "Car": {_min = 35};
		case "Tank": {_min = 20};
		case "Ship": {_min = 25};
		case "Air": {_min = 15};
	};
	_ran = ((random 100)-CTI_P_ActionLockPickChance);
	if (_ran <= _min) then {
		//--- Unlocked, gain experience.
		if (CTI_P_ActionLockPickChance > -51) then {CTI_P_ActionLockPickChance = CTI_P_ActionLockPickChance - 1};
		["SERVER", "Server_RequestVehicleLock", [_vehicle, 0]] call CTI_CO_FNC_NetSend;
		hint "The vehicle has been lockedpicked!";
	} else {
		hint "Failed to lockpick the vehicle!";
	};
};
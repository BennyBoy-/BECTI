_vehicles = player nearEntities [["Car","Motorcycle","Tank","Ship","Air","StaticWeapon"],5];
if (count _vehicles < 1) exitWith {hint "There are no nearby vehicles to lockpick"};

_vehicle = [player, _vehicles] Call CTI_CO_FNC_GetClosestEntity;

if (locked _vehicle in [-1, 0, 1]) exitWith {hint "The vehicle is not locked"};
if (count crew _vehicle > 0) exitWith {hint "The vehicle is not empty!"};

CTI_P_ActionLockPickNextUse = time + CTI_P_ActionLockPickDelay;

player playMove "Acts_carFixingWheel";
sleep 3;
waitUntil {animationState player != "Acts_carFixingWheel" || !alive player || vehicle player != player || !alive _vehicle || _vehicle distance player > 5};

if (locked _vehicle in [-1, 0, 1]) exitWith {};

if (alive player && vehicle player == player && alive _vehicle && _vehicle distance player <= 5) then {
	_min = switch (typeOf _vehicle) do {
		case "Motorcycle": {45};
		case "Car": {35};
		case "Tank": {20};
		case "Ship": {25};
		case "Air": {15};
		default {30};
	};
	if (((random 100)-CTI_P_ActionLockPickChance) <= _min) then {
		//--- Unlocked, gain experience.
		if (CTI_P_ActionLockPickChance > -51) then {CTI_P_ActionLockPickChance = CTI_P_ActionLockPickChance - 1};
		["SERVER", "Server_RequestVehicleLock", [_vehicle, 0]] call CTI_CO_FNC_NetSend;
		hint "The vehicle has been lockedpicked!";
	} else {
		hint "Failed to lockpick the vehicle";
	};
} else {
	hint "Failed to lockpick the vehicle";
};
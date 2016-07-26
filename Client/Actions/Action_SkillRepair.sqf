_vehicles = player nearEntities [["Car","Motorcycle","Tank","Ship","Air","StaticWeapon"],5];
if (count _vehicles < 1) exitWith {hint "There are no nearby vehicles to repair"};

_vehicle = [player, _vehicles] Call CTI_CO_FNC_GetClosestEntity;
_dammages = getDammage _vehicle;

//--- Retrieve hitpoints for the given vehicle
_hitPoints = [];
configProperties [configFile >> "CfgVehicles" >> typeOf _vehicle >> "HitPoints", "_hitPoints pushBack configName _x; true", true]; 

CTI_P_ActionRepairNextUse = time + CTI_P_ActionRepairDelay;

player playMove "Acts_carFixingWheel";
sleep 3;
waitUntil {animationState player != "Acts_carFixingWheel" || !alive player || vehicle player != player || !alive _vehicle || _vehicle distance player > 5};

if (alive player && vehicle player == player && alive _vehicle && _vehicle distance player <= 5) then {
	//--- Overall repairs (no limit)
 		if (_dammages > 0) then {
		_dammages = _dammages - 0.15;
		if (_dammages < 0) then {_dammages = 0};
		_vehicle setDammage _dammages;
	};
	
	//--- Parts repairs (No limits)
	//--- TODO: If locality does not match the player's, delegate to the vehicle owner (like lockpick).
	{
		diag_log format ["temp debug (repair): dealing with hitpoint %1", _x];
		_damages = _vehicle getHit _x;
		if !(isNil '_damages') then {
			if (_dammages > 0) then {_vehicle setHit [_x, _damages - 0.10]};
		} else {
			diag_log format ["temp debug (repair): hitpoint %1 gethit is nil", _x];
		};
	} forEach _hitPoints;
	
	//--- Fuel
	if (fuel _vehicle < 0.10) then {_vehicle setFuel 0.10};
	
	hint "The vehicle has been partially repaired";
} else {
	hint "Unable to repair the vehicle";
};


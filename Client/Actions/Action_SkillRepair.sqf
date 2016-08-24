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
	//--- Overall repairs (Global Arg)
	_dammages = _dammages - .15;
	if (_dammages < 0) then {_dammages = 0};
	_vehicle setDammage _dammages;

	
	//--- Parts repairs (Local Arg)
	if (local _vehicle) then {
		[_vehicle, _hitPoints, .10] call CTI_PVF_CLT_RequestVehicleHitPointsRepair;
	} else {
		[_vehicle, _hitPoints, .10] remoteExec ["CTI_PVF_SRV_RequestVehicleHitPointsRepair", CTI_PV_SERVER];
	};
	
	_dammages = _dammages - .15;
	if (_dammages < 0) then {_dammages = 0};
	_vehicle setDammage _dammages;


	//--- Fuel (Local Arg)
	if (fuel _vehicle < .10) then {
		if (local _vehicle) then {
			_vehicle setFuel .10;
		} else {
			[_vehicle, .10] remoteExec ["CTI_PVF_SRV_RequestVehicleRefuel", CTI_PV_SERVER];
		};
	};
	
	hint "The vehicle has been partially repaired";
} else {
	hint "Unable to repair the vehicle";
};


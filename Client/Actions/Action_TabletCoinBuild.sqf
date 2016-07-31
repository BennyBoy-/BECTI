_source = "";

_areaSize = CTI_COIN_AREA_DEFAULT;
_origin = player;

_originnearrep = [vehicle player, CTI_SPECIAL_REPAIRTRUCK, CTI_SERVICE_REPAIR_TRUCK_RANGE] call CTI_CO_FNC_GetNearestSpecialVehicles;
_originrep = _originnearrep select 0;

if (CTI_Base_HQInRange)then {
	_source = "HQ";
}else {
	_source = "RepairTruck";
};

switch (_source) do {
	case "HQ": {
		_areaSize = if (CTI_P_SideJoined call CTI_CO_FNC_IsHQDeployed) then {CTI_COIN_AREA_HQ_DEPLOYED} else {CTI_COIN_AREA_HQ_MOBILIZED};
		_origin = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideHQ;
	};
	case "RepairTruck": {
		_areaSize = CTI_COIN_AREA_REPAIR;
		_origin = _originrep;
	};
};

[_origin, _source, _areaSize] execVM "Client\GUI\GUI_CoinMenu.sqf";
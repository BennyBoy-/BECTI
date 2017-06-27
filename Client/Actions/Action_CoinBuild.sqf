_source = _this select 3;

_areaSize = CTI_COIN_AREA_DEFAULT;
_origin = player;

switch (_source) do {
	case "HQ": {
		_areaSize = [CTI_COIN_AREA_HQ_MOBILIZED, CTI_COIN_AREA_HQ_DEPLOYED] select (CTI_P_SideJoined call CTI_CO_FNC_IsHQDeployed);
		_origin = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideHQ;
	};
	case "RepairTruck": {
		_areaSize = CTI_COIN_AREA_REPAIR;
		_origin = _this select 0;
	};
};

[_origin, _source, _areaSize] execVM "Client\GUI\GUI_CoinMenu.sqf";
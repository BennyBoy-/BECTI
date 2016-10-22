//--- PVF Are store within the mission namespace

with missionNamespace do {
	//--- Handle the tires damages 
	CTI_PVF_CO_AddVehicleHandleTiresDamages = {
		_this addEventHandler ["HandleDamage", {_this call CTI_CO_FNC_EXT_HandleTiresDamages}];
	};
};

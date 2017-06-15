with missionNamespace do {
	WEST_TOWN_MG = ["B_HMG_01_High_F"];
	WEST_TOWN_GL = ["B_GMG_01_high_F"];
	WEST_TOWN_AT = ["B_static_AT_F"];
	WEST_TOWN_AA = ["B_static_AA_F"];
	
	/*
	// Custom composition: 
	//  Parameters :
	//    0: Center (the marker)
	//    1: Direction (the marker dir)
	//  Returns :
	//    [the mannable defenses, the composition objects]
	
	WEST_TOWN_BUNKER = [{
		_t_center = _this select 0;
		_t_direction = _this select 1;
		
		_t_defenses = [];
		_t_composition = [];
		
		_t_pos = [_t_center, 5, _t_direction] call CTI_CO_FNC_GetPositionFrom;
		_object = createVehicle ["Land_HBarrier_1_F", _t_pos, [], 0, "CAN_COLLIDE"];
		_object setDir _t_direction;
		_object setPos _t_pos;
		_object enableSimulationGlobal false;
		_t_composition pushBack _object;
		
		_object = createVehicle ["B_HMG_01_High_F", _t_center, [], 0, "CAN_COLLIDE"];
		_object setDir _t_direction;
		_object setPos _t_pos;
		_object setVectorUp surfaceNormal position _object;
		_t_defenses pushBack _object;
		
		//--- Return the defenses objects and the composition
		[_t_defenses, _t_composition]
	}]
	*/
};
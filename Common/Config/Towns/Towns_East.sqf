with missionNamespace do {
	EAST_TOWNS_FLAG_TEXTURE = "\A3\Data_F\Flags\Flag_red_CO.paa";
	
	//--- Town Defenses
	EAST_TOWN_MG = ["O_HMG_01_High_F"];
	EAST_TOWN_GL = ["O_GMG_01_high_F"];
	EAST_TOWN_AT = ["O_static_AT_F"];
	EAST_TOWN_AA = ["O_static_AA_F"];
	
	/*
	// Custom composition: 
	//  Parameters :
	//    0: Center (the marker)
	//    1: Direction (the marker dir)
	//  Returns :
	//    [the mannable defenses, the composition objects]
	
	EAST_TOWN_BUNKER = [{
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
		
		_object = createVehicle ["O_HMG_01_High_F", _t_center, [], 0, "CAN_COLLIDE"];
		_object setDir _t_direction;
		_object setPos _t_pos;
		_object setVectorUp surfaceNormal position _object;
		_t_defenses pushBack _object;
		
		//--- Return the defenses objects and the composition
		[_t_defenses, _t_composition]
	}]
	*/
	
	switch (CTI_TOWNS_OCCUPATION_EAST) do {
		case 1: { //--- CUP - Russians TOWN OCCUPATION
			//--- Infantry
			EAST_SOLDIER = "CUP_O_RU_Soldier";
			EAST_SOLDIER_AA = "CUP_O_RU_Soldier_AA";
			EAST_SOLDIER_AR = "CUP_O_RU_Soldier_AR";
			EAST_SOLDIER_AT = "CUP_O_RU_Soldier_AT";
			EAST_SOLDIER_CREW = "CUP_O_RU_Crew";
			EAST_SOLDIER_LAT = "CUP_O_RU_Soldier_AT";
			EAST_SOLDIER_HAT = "CUP_O_RU_Soldier_HAT";
			EAST_SOLDIER_ENGINEER = "CUP_O_RU_Engineer";
			EAST_SOLDIER_GL = "CUP_O_RU_Soldier_TL";
			EAST_SOLDIER_MEDIC = "CUP_O_RU_Medic";
			EAST_SOLDIER_MG = "CUP_O_RU_Soldier_AR";
			EAST_SOLDIER_PILOT = "CUP_O_RU_Pilot";
			EAST_SOLDIER_SNIPER = "CUP_O_RU_Sniper_KSVK";
			EAST_SOLDIER_TEAMLEADER = "CUP_O_RU_Commander";
			EAST_SOLDIER_SQUADLEADER = "CUP_O_RU_Commander";
			//--- Naval Infantry
			EAST_SOLDIER_NAVAL_INFANTRY = "O_diver_F";
			EAST_SOLDIER_NAVAL_SQUADLEADER = "O_diver_TL_F";
			//--- Light Vehicles
			EAST_VEHICLE_LIGHT1 = ["OFPS_UAZ_MG"];
			EAST_VEHICLE_LIGHT2 = ["OFPS_LR_MG"];
			EAST_VEHICLE_LIGHT3 = ["CUP_O_BTR40_MG_TKA"];
			EAST_VEHICLE_LIGHT4 = ["CUP_O_GAZ_Vodnik_AGS_RU"];
			EAST_VEHICLE_LIGHT5 = ["OFPS_BRDM2"];
			EAST_VEHICLE_LIGHT6 = ["OFPS_BTR60"];
			EAST_VEHICLE_LIGHT7 = ["CUP_O_BTR90_RU"];
			//--- APCs
			EAST_VEHICLE_APC1 = ["OFPS_BMP1"];
			EAST_VEHICLE_APC2 = ["OFPS_BMP2"];
			EAST_VEHICLE_APC3 = ["OFPS_BMP3"];
			//--- Tanks
			EAST_VEHICLE_ARMORED1 = ["CUP_I_T34_NAPA"];	
			EAST_VEHICLE_ARMORED2 = ["OFPS_T55"];
			EAST_VEHICLE_ARMORED3 = ["OFPS_T72A"];
			//--- AA Vehicles
			EAST_VEHICLE_AA1 = ["OFPS_BMP2_ZSU"];
			EAST_VEHICLE_AA2 = ["OFPS_ZSU23"];
			EAST_VEHICLE_AA3 = ["CUP_O_2S6M_RU"];
			//--- Air
			EAST_AIR_HELI1 = ["CUP_O_UH1H_TKA"];
			EAST_AIR_HELI2 = [];
			EAST_AIR_HELI_ATTACK = [];
			EAST_AIR_AA = ["OFPS_SU25"];
			EAST_AIR_CAS = ["OFPS_SU34_AGM"];
			//--- Boats
			EAST_NAVAL_ASSAULT_BOAT1 = ["CUP_B_RHIB2Turret_USMC"];
			EAST_NAVAL_ASSAULT_BOAT2 = ["O_Boat_Armed_01_hmg_F"];
			EAST_NAVAL_MEDIUM_ASSAULT_BOAT = ["O_Boat_Armed_01_hmg_F"];
			EAST_NAVAL_LARGE_ASSAULT_BOAT = ["O_Boat_Armed_01_hmg_F"];
			//---Manual Set SQUAD - odd bug
			EAST_TOWNS_SQUAD_NAVAL1 = ["O_diver_TL_F", "O_diver_F", "O_diver_F", "O_diver_F", "O_diver_F", "O_diver_F"];
			EAST_TOWNS_SQUAD_NAVAL2 = ["O_diver_TL_F", "O_diver_F", "O_diver_F", "O_diver_F", "O_Soldier_AT_F", "O_Soldier_AA_F"];
			EAST_TOWNS_SQUAD_NAVAL3 = ["O_diver_TL_F", "O_diver_F", "O_Soldier_AT_F", "O_Soldier_AT_F", "O_Soldier_AA_F", "O_Soldier_AA_F"];
		};
		case 2: { //--- MIXED TOWN OCCUPATION - vanilla/cup/ofps/etc..
			//--- Infantry
			EAST_SOLDIER = "CUP_O_RU_Soldier";
			EAST_SOLDIER_AA = "CUP_O_RU_Soldier_AA";
			EAST_SOLDIER_AR = "CUP_O_RU_Soldier_AR";
			EAST_SOLDIER_AT = "CUP_O_RU_Soldier_AT";
			EAST_SOLDIER_CREW = "CUP_O_RU_Crew";
			EAST_SOLDIER_LAT = "CUP_O_RU_Soldier_AT";
			EAST_SOLDIER_HAT = "CUP_O_RU_Soldier_HAT";
			EAST_SOLDIER_ENGINEER = "CUP_O_RU_Engineer";
			EAST_SOLDIER_GL = "CUP_O_RU_Soldier_TL";
			EAST_SOLDIER_MEDIC = "CUP_O_RU_Medic";
			EAST_SOLDIER_MG = "CUP_O_RU_Soldier_AR";
			EAST_SOLDIER_PILOT = "CUP_O_RU_Pilot";
			EAST_SOLDIER_SNIPER = "CUP_O_RU_Sniper_KSVK";
			EAST_SOLDIER_TEAMLEADER = "O_Soldier_TL_F";
			EAST_SOLDIER_SQUADLEADER = "O_Soldier_SL_F";
			//--- Naval Infantry
			EAST_SOLDIER_NAVAL_INFANTRY = "O_diver_F";
			EAST_SOLDIER_NAVAL_SQUADLEADER = "O_diver_TL_F";
			//--- Light Vehicles
			EAST_VEHICLE_LIGHT1 = ["OFPS_UAZ_MG"];
			EAST_VEHICLE_LIGHT2 = ["OFPS_LR_MG"];
			EAST_VEHICLE_LIGHT3 = ["CUP_O_BTR40_MG_TKA"];
			EAST_VEHICLE_LIGHT4 = ["CUP_O_GAZ_Vodnik_AGS_RU"];
			EAST_VEHICLE_LIGHT5 = ["OFPS_BRDM2"];
			EAST_VEHICLE_LIGHT6 = ["OFPS_BTR60"];
			EAST_VEHICLE_LIGHT7 = ["CUP_O_BTR90_RU"];
			//--- APCs
			EAST_VEHICLE_APC1 = ["OFPS_BMP1"];
			EAST_VEHICLE_APC2 = ["OFPS_BMP2"];
			EAST_VEHICLE_APC3 = ["OFPS_BMP3"];
			//--- Tanks
			EAST_VEHICLE_ARMORED1 = ["OFPS_T55"];	
			EAST_VEHICLE_ARMORED2 = ["OFPS_T72A"];
			EAST_VEHICLE_ARMORED3 = ["O_MBT_02_cannon_F"];
			//--- AA Vehicles
			EAST_VEHICLE_AA1 = ["OFPS_BMP2_ZSU"];
			EAST_VEHICLE_AA2 = ["OFPS_ZSU23"];
			EAST_VEHICLE_AA3 = ["CUP_O_2S6M_RU"];
			//--- Air
			EAST_AIR_HELI1 = ["CUP_O_UH1H_TKA"];
			EAST_AIR_HELI2 = [];
			EAST_AIR_HELI_ATTACK = [];
			EAST_AIR_AA = ["OFPS_SU25"];
			EAST_AIR_CAS = ["OFPS_SU34_AGM"];
			//--- Boats
			EAST_NAVAL_ASSAULT_BOAT1 = ["CUP_B_RHIB2Turret_USMC"];
			EAST_NAVAL_ASSAULT_BOAT2 = ["O_Boat_Armed_01_hmg_F"];
			EAST_NAVAL_MEDIUM_ASSAULT_BOAT = ["rhsusf_mkvsoc"];
			EAST_NAVAL_LARGE_ASSAULT_BOAT = ["sfp_rbb_norrkoping"];
			//---Manual Set SQUAD - odd bug
			EAST_TOWNS_SQUAD_NAVAL1 = ["O_diver_TL_F", "O_diver_F", "O_diver_F", "O_diver_F", "O_diver_F", "O_diver_F"];
			EAST_TOWNS_SQUAD_NAVAL2 = ["O_diver_TL_F", "O_diver_F", "O_diver_F", "O_diver_F", "O_Soldier_AT_F", "O_Soldier_AA_F"];
			EAST_TOWNS_SQUAD_NAVAL3 = ["O_diver_TL_F", "O_diver_F", "O_Soldier_AT_F", "O_Soldier_AT_F", "O_Soldier_AA_F", "O_Soldier_AA_F"];
		};
		default { //--- VANILLA TOWN OCCUPATION
			//--- Infantry
			EAST_SOLDIER = "O_Soldier_F";
			EAST_SOLDIER_AA = "O_soldier_AA_F";
			EAST_SOLDIER_AR = "O_Soldier_AR_F";
			EAST_SOLDIER_AT = "O_Soldier_LAT_F";
			EAST_SOLDIER_CREW = "O_crew_F";
			EAST_SOLDIER_LAT = "O_Soldier_LAT_F";
			EAST_SOLDIER_HAT = "O_Soldier_AT_F";
			EAST_SOLDIER_ENGINEER = "O_engineer_F";
			EAST_SOLDIER_GL = "O_Soldier_GL_F";
			EAST_SOLDIER_MEDIC = "O_medic_F";
			EAST_SOLDIER_MG = "O_Soldier_AR_F";
			EAST_SOLDIER_PILOT = "O_helipilot_F";
			EAST_SOLDIER_SNIPER = "O_Soldier_M_F";
			EAST_SOLDIER_TEAMLEADER = "O_Soldier_TL_F";
			EAST_SOLDIER_SQUADLEADER = "O_Soldier_SL_F";
			//--- Naval Infantry
			EAST_SOLDIER_NAVAL_INFANTRY = "O_diver_F";
			EAST_SOLDIER_NAVAL_SQUADLEADER = "O_diver_TL_F";
			//--- Light Vehicles
			EAST_VEHICLE_LIGHT1 = ["O_G_Offroad_01_armed_F"];
			EAST_VEHICLE_LIGHT2 = ["O_MRAP_02_F"];
			EAST_VEHICLE_LIGHT3 = ["O_MRAP_02_hmg_F"];
			EAST_VEHICLE_LIGHT4 = ["O_MRAP_02_gmg_F"];
			EAST_VEHICLE_LIGHT5 = ["O_MRAP_02_gmg_F"];
			EAST_VEHICLE_LIGHT6 = ["O_MRAP_02_gmg_F"];
			EAST_VEHICLE_LIGHT7 = ["O_MRAP_02_gmg_F"];
			//--- APCs
			EAST_VEHICLE_APC1 = ["O_APC_Wheeled_02_rcws_F"];
			EAST_VEHICLE_APC2 = ["O_APC_Tracked_02_cannon_F"];
			EAST_VEHICLE_APC3 = ["O_APC_Tracked_02_cannon_F"];
			//--- Tanks
			EAST_VEHICLE_ARMORED1 = ["O_MBT_02_cannon_F"];	
			EAST_VEHICLE_ARMORED2 = ["O_MBT_02_cannon_F"];
			EAST_VEHICLE_ARMORED3 = ["O_MBT_02_cannon_F"];
			//--- AA Vehicles
			EAST_VEHICLE_AA1 = ["O_APC_Tracked_02_AA_F"];
			EAST_VEHICLE_AA2 = ["O_APC_Tracked_02_AA_F"];
			EAST_VEHICLE_AA3 = ["O_APC_Tracked_02_AA_F"];
			//--- Air
			EAST_AIR_HELI1 = ["O_Heli_Light_02_F"];
			EAST_AIR_HELI2 = ["O_Heli_Light_02_v2_F"];
			EAST_AIR_HELI_ATTACK = ["O_Heli_Attack_02_F"];
			EAST_AIR_AA = [];
			EAST_AIR_CAS = ["O_Plane_CAS_02_F"];
			//--- Boats
			EAST_NAVAL_ASSAULT_BOAT1 = ["O_Boat_Armed_01_hmg_F"];
			EAST_NAVAL_ASSAULT_BOAT2 = ["O_Boat_Armed_01_hmg_F"];
			EAST_NAVAL_MEDIUM_ASSAULT_BOAT = ["O_Boat_Armed_01_hmg_F"];
			EAST_NAVAL_LARGE_ASSAULT_BOAT = ["O_Boat_Armed_01_hmg_F"];
			//---Manual Set SQUAD - odd bug
			EAST_TOWNS_SQUAD_NAVAL1 = ["O_diver_TL_F", "O_diver_F", "O_diver_F", "O_diver_F", "O_diver_F", "O_diver_F"];
			EAST_TOWNS_SQUAD_NAVAL2 = ["O_diver_TL_F", "O_diver_F", "O_diver_F", "O_diver_F", "O_Soldier_AT_F", "O_Soldier_AA_F"];
			EAST_TOWNS_SQUAD_NAVAL3 = ["O_diver_TL_F", "O_diver_F", "O_Soldier_AT_F", "O_Soldier_AT_F", "O_Soldier_AA_F", "O_Soldier_AA_F"];
		};
	};
	
	//--- Town Teams Templates
	//--- Infantry Squads
	EAST_TOWNS_SQUAD_RIFLEMEN1 = [EAST_SOLDIER_SQUADLEADER, EAST_SOLDIER_AR, EAST_SOLDIER_AR, EAST_SOLDIER, EAST_SOLDIER, EAST_SOLDIER, EAST_SOLDIER, EAST_SOLDIER, EAST_SOLDIER];
	EAST_TOWNS_SQUAD_RIFLEMEN2 = [EAST_SOLDIER_SQUADLEADER, EAST_SOLDIER_AR, EAST_SOLDIER_AR, EAST_SOLDIER_MG, EAST_SOLDIER_MG, EAST_SOLDIER, EAST_SOLDIER, EAST_SOLDIER, EAST_SOLDIER];
	EAST_TOWNS_SQUAD_RIFLEMEN3 = [EAST_SOLDIER_SQUADLEADER, EAST_SOLDIER_AR, EAST_SOLDIER_AR, EAST_SOLDIER_GL, EAST_SOLDIER_GL, EAST_SOLDIER_MG, EAST_SOLDIER_MG, EAST_SOLDIER, EAST_SOLDIER];
	EAST_TOWNS_SQUAD_SNIPER = [EAST_SOLDIER_SQUADLEADER, EAST_SOLDIER_SNIPER, EAST_SOLDIER_SNIPER, EAST_SOLDIER_SNIPER, EAST_SOLDIER, EAST_SOLDIER];
	EAST_TOWNS_SQUAD_AT1 = [EAST_SOLDIER_SQUADLEADER, EAST_SOLDIER_LAT, EAST_SOLDIER_LAT, EAST_SOLDIER_LAT, EAST_SOLDIER_LAT, EAST_SOLDIER, EAST_SOLDIER, EAST_SOLDIER, EAST_SOLDIER];
	EAST_TOWNS_SQUAD_AT2 = [EAST_SOLDIER_SQUADLEADER, EAST_SOLDIER_HAT, EAST_SOLDIER_HAT, EAST_SOLDIER_HAT, EAST_SOLDIER_HAT, EAST_SOLDIER, EAST_SOLDIER, EAST_SOLDIER, EAST_SOLDIER];
	EAST_TOWNS_SQUAD_AA = [EAST_SOLDIER_SQUADLEADER, EAST_SOLDIER_AA, EAST_SOLDIER_AA, EAST_SOLDIER_AA, EAST_SOLDIER_AA, EAST_SOLDIER, EAST_SOLDIER, EAST_SOLDIER, EAST_SOLDIER];
	//EAST_TOWNS_SQUAD_NAVAL1 = [EAST_SOLDIER_NAVAL_SQUADLEADER, EAST_SOLDIER_NAVAL_INFANTRY, EAST_SOLDIER_NAVAL_INFANTRY, EAST_SOLDIER_NAVAL_INFANTRY, EAST_SOLDIER_NAVAL_INFANTRY, EAST_SOLDIER_NAVAL_INFANTRY];
	//EAST_TOWNS_SQUAD_NAVAL2 = [EAST_SOLDIER_NAVAL_SQUADLEADER, EAST_SOLDIER_NAVAL_INFANTRY, EAST_SOLDIER_NAVAL_INFANTRY, EAST_SOLDIER_NAVAL_INFANTRY, EAST_SOLDIER_HAT, EAST_SOLDIER_AA];
	//EAST_TOWNS_SQUAD_NAVAL3 = [EAST_SOLDIER_NAVAL_SQUADLEADER, EAST_SOLDIER_NAVAL_INFANTRY, EAST_SOLDIER_HAT, EAST_SOLDIER_HAT, EAST_SOLDIER_AA, EAST_SOLDIER_AA];
	//--- Vehicle Squads
	EAST_TOWNS_SQUAD_LIGHT1 = EAST_VEHICLE_LIGHT1 + EAST_VEHICLE_LIGHT1 + EAST_VEHICLE_LIGHT1;
	EAST_TOWNS_SQUAD_LIGHT2 = EAST_VEHICLE_LIGHT2 + EAST_VEHICLE_LIGHT2 + EAST_VEHICLE_LIGHT2;
	EAST_TOWNS_SQUAD_LIGHT3 = EAST_VEHICLE_LIGHT3 + EAST_VEHICLE_LIGHT3 + EAST_VEHICLE_LIGHT3;
	EAST_TOWNS_SQUAD_LIGHT4 = EAST_VEHICLE_LIGHT4 + EAST_VEHICLE_LIGHT4 + EAST_VEHICLE_LIGHT4;
	EAST_TOWNS_SQUAD_LIGHT5 = EAST_VEHICLE_LIGHT5 + EAST_VEHICLE_LIGHT5 + EAST_VEHICLE_LIGHT5;
	EAST_TOWNS_SQUAD_LIGHT6 = EAST_VEHICLE_LIGHT6 + EAST_VEHICLE_LIGHT6 + EAST_VEHICLE_LIGHT6;
	EAST_TOWNS_SQUAD_LIGHT7 = EAST_VEHICLE_LIGHT7 + EAST_VEHICLE_LIGHT7 + EAST_VEHICLE_LIGHT7;
	EAST_TOWNS_SQUAD_APC1 = EAST_VEHICLE_APC1 + EAST_VEHICLE_APC1 + EAST_VEHICLE_APC1;
	EAST_TOWNS_SQUAD_APC2 = EAST_VEHICLE_APC2 + EAST_VEHICLE_APC2 + EAST_VEHICLE_APC2;
	EAST_TOWNS_SQUAD_APC3 = EAST_VEHICLE_APC3 + EAST_VEHICLE_APC3 + EAST_VEHICLE_APC3;
	EAST_TOWNS_SQUAD_ARMORED1 = EAST_VEHICLE_ARMORED1 + EAST_VEHICLE_ARMORED1 + EAST_VEHICLE_ARMORED1;
	EAST_TOWNS_SQUAD_ARMORED2 = EAST_VEHICLE_ARMORED2 + EAST_VEHICLE_ARMORED2 + EAST_VEHICLE_ARMORED2;
	EAST_TOWNS_SQUAD_ARMORED3 = EAST_VEHICLE_ARMORED3 + EAST_VEHICLE_ARMORED3 + EAST_VEHICLE_ARMORED3;
	EAST_TOWNS_SQUAD_VEHICLE_AA1 = EAST_VEHICLE_AA1 + EAST_VEHICLE_AA1;
	EAST_TOWNS_SQUAD_VEHICLE_AA2 = EAST_VEHICLE_AA2 + EAST_VEHICLE_AA2;
	EAST_TOWNS_SQUAD_VEHICLE_AA3 = EAST_VEHICLE_AA3 + EAST_VEHICLE_AA3;
	EAST_TOWNS_SQUAD_ASSAULT_BOAT1 = EAST_NAVAL_ASSAULT_BOAT1 + EAST_NAVAL_ASSAULT_BOAT1 + EAST_NAVAL_ASSAULT_BOAT1;
	EAST_TOWNS_SQUAD_ASSAULT_BOAT2 = EAST_NAVAL_ASSAULT_BOAT2 + EAST_NAVAL_ASSAULT_BOAT2 + EAST_NAVAL_ASSAULT_BOAT2;
	EAST_TOWNS_SQUAD_MEDIUM_ASSAULT_BOAT = EAST_NAVAL_MEDIUM_ASSAULT_BOAT + EAST_NAVAL_MEDIUM_ASSAULT_BOAT;
	EAST_TOWNS_SQUAD_LARGE_ASSAULT_BOAT = EAST_NAVAL_LARGE_ASSAULT_BOAT;
	//--- Mixed Squads
	EAST_TOWNS_SQUAD_LIGHT1_MIXED = EAST_VEHICLE_LIGHT1 + EAST_TOWNS_SQUAD_AT1;
	EAST_TOWNS_SQUAD_LIGHT2_MIXED = EAST_VEHICLE_LIGHT2 + EAST_TOWNS_SQUAD_AT1;
	EAST_TOWNS_SQUAD_LIGHT3_MIXED = EAST_VEHICLE_LIGHT3 + EAST_TOWNS_SQUAD_AT1;
	EAST_TOWNS_SQUAD_LIGHT4_MIXED = EAST_VEHICLE_LIGHT4 + EAST_TOWNS_SQUAD_AT1;
	EAST_TOWNS_SQUAD_LIGHT5_MIXED = EAST_VEHICLE_LIGHT5 + EAST_TOWNS_SQUAD_AT2;
	EAST_TOWNS_SQUAD_LIGHT6_MIXED = EAST_VEHICLE_LIGHT6 + EAST_TOWNS_SQUAD_AT2;
	EAST_TOWNS_SQUAD_LIGHT7_MIXED = EAST_VEHICLE_LIGHT7 + EAST_TOWNS_SQUAD_AT2;
	EAST_TOWNS_SQUAD_APC1_MIXED = EAST_VEHICLE_APC1 + EAST_TOWNS_SQUAD_AT1;
	EAST_TOWNS_SQUAD_APC2_MIXED = EAST_VEHICLE_APC2 + EAST_TOWNS_SQUAD_AT2;
	EAST_TOWNS_SQUAD_APC3_MIXED = EAST_VEHICLE_APC3 + EAST_TOWNS_SQUAD_AT2;
	EAST_TOWNS_SQUAD_ARMORED1_MIXED = EAST_VEHICLE_ARMORED1 + EAST_TOWNS_SQUAD_AT1;
	EAST_TOWNS_SQUAD_ARMORED2_MIXED = EAST_VEHICLE_ARMORED2 + EAST_TOWNS_SQUAD_AT2;
	EAST_TOWNS_SQUAD_ARMORED3_MIXED = EAST_VEHICLE_ARMORED3 + EAST_TOWNS_SQUAD_AT2;
	EAST_TOWNS_SQUAD_VEHICLE_AA1_MIXED = EAST_VEHICLE_AA1 + EAST_TOWNS_SQUAD_AT1;
	EAST_TOWNS_SQUAD_VEHICLE_AA2_MIXED = EAST_VEHICLE_AA2 + EAST_TOWNS_SQUAD_AT2;
	EAST_TOWNS_SQUAD_VEHICLE_AA3_MIXED = EAST_VEHICLE_AA3 + EAST_TOWNS_SQUAD_AT2;
};
with missionNamespace do {
if (CTI_TOWNS_OCCUPATION_EAST = 0) then { 
//--- VANILLA TOWN OCCUPATION
	//--- Infantry
	EAST_SOLDIER = ["O_Soldier_F", 1];
	EAST_SOLDIER_AA = ["O_soldier_AA_F", 1];
	EAST_SOLDIER_AR = ["O_Soldier_AR_F", 1];
	EAST_SOLDIER_AT = ["O_Soldier_LAT_F", 1];
	EAST_SOLDIER_CREW = ["O_crew_F", 1];
	EAST_SOLDIER_LAT = ["O_Soldier_LAT_F", 1];
	EAST_SOLDIER_HAT = ["O_Soldier_AT_F", 1];
	EAST_SOLDIER_ENGINEER = ["O_engineer_F", 1];
	EAST_SOLDIER_GL = ["O_Soldier_GL_F", 1];
	EAST_SOLDIER_MEDIC = ["O_medic_F", 1];
	// EAST_SOLDIER_MG = "soldiermg";
	EAST_SOLDIER_PILOT = ["O_helipilot_F", 1];
	EAST_SOLDIER_SQUADLEADER = ["O_Soldier_SL_F", 1];
	EAST_SOLDIER_SNIPER = ["O_Soldier_M_F", 1];
	EAST_SOLDIER_TEAMLEADER = ["O_Soldier_TL_F", 1];
	
	//--- Vehicles
	EAST_MOTORIZED_MG = ["O_MRAP_02_hmg_F", 2];
	EAST_MOTORIZED_GL = ["O_MRAP_02_gmg_F", 2];

	//--- Infantry - Mixed
	// EAST_SOLDIERS_MG = [EAST_SOLDIER_MG, EAST_SOLDIER_AR];
	EAST_SOLDIERS_MG = [EAST_SOLDIER_AR];
	EAST_SOLDIERS_AT_LIGHT = [EAST_SOLDIER_LAT, EAST_SOLDIER_AT];
	EAST_SOLDIERS_AT_MEDIUM = [EAST_SOLDIER_AT, EAST_SOLDIER_AT, EAST_SOLDIER_HAT];
	EAST_SOLDIERS_AT_HEAVY = [EAST_SOLDIER_AT, EAST_SOLDIER_HAT];
	EAST_SOLDIERS_SPECOPS = [["O_Soldier_exp_F", 1]];
	EAST_SOLDIERS_ENGINEER = [EAST_SOLDIER_ENGINEER, ["O_Soldier_repair_F", 1]];
	EAST_SOLDIERS_SNIPERS = [EAST_SOLDIER_SNIPER, ["O_Spotter_F", 1], ["O_Sniper_F", 1]];

	//--- Vehicles
	EAST_VEHICLE_AA = [["O_APC_Tracked_02_AA_F", 1]];
	EAST_VEHICLE_APC = [["O_APC_Wheeled_02_rcws_F", 2], ["O_APC_Tracked_02_cannon_F", 2]];
	// EAST_VEHICLE_ARMORED_HEAVY = ["armoheavy1","armoheavy2"];
	EAST_VEHICLE_ARMORED_LIGHT = [["O_MBT_02_cannon_F", 2]];
	// EAST_VEHICLE_MECHANIZED = ["mechanized1","mechanized2"];
	EAST_VEHICLE_MOTORIZED = [EAST_MOTORIZED_MG, EAST_MOTORIZED_GL, EAST_MOTORIZED_MG];

	//--- Vehicles - Mixed
	EAST_VEHICLES_AA_LIGHT = EAST_VEHICLE_AA;
	// EAST_VEHICLES_LIGHT = EAST_VEHICLE_MECHANIZED + EAST_VEHICLE_MOTORIZED;
	EAST_VEHICLES_LIGHT = EAST_VEHICLE_MOTORIZED;
	EAST_VEHICLES_MEDIUM = EAST_VEHICLE_APC + EAST_VEHICLE_ARMORED_LIGHT;
	EAST_VEHICLES_HEAVY = EAST_VEHICLE_ARMORED_LIGHT;
	
	//--- Town Teams Templates
	EAST_TOWNS_AAV = ["O_APC_Tracked_02_AA_F"];
	EAST_TOWNS_AAV_HEAVY = ["O_APC_Tracked_02_AA_F", "O_APC_Tracked_02_AA_F"];
	EAST_TOWNS_APC_LIGHT = ["O_APC_Tracked_02_cannon_F"];
	EAST_TOWNS_APC_MEDIUM = ["O_APC_Tracked_02_cannon_F", "O_APC_Wheeled_02_rcws_F"];
	EAST_TOWNS_APC_HEAVY = ["O_APC_Tracked_02_cannon_F", "O_APC_Wheeled_02_rcws_F", "O_APC_Tracked_02_cannon_F"];
	EAST_TOWNS_MOTORIZED_MIXED_HEAVY = ["O_MRAP_02_hmg_F","O_MRAP_02_gmg_F","O_MRAP_02_hmg_F"];
	EAST_TOWNS_MOTORIZED_MIXED_LIGHT = ["O_MRAP_02_hmg_F","O_MRAP_02_gmg_F"];
	EAST_TOWNS_MOTORIZED_HMG = ["O_MRAP_02_hmg_F","O_MRAP_02_hmg_F"];
	EAST_TOWNS_MOTORIZED_GMG = ["O_MRAP_02_gmg_F","O_MRAP_02_gmg_F"];
	EAST_TOWNS_SPECIAL = ["O_Soldier_exp_F", "O_Soldier_exp_F", "O_Soldier_exp_F"];
	EAST_TOWNS_SQUAD_LIGHT = ["O_Soldier_SL_F", "O_Soldier_F", "O_Soldier_F", "O_Soldier_AR_F", "O_Soldier_LAT_F", "O_Soldier_GL_F", "O_medic_F"];
	EAST_TOWNS_SQUAD_LIGHT_2 = ["O_Soldier_SL_F", "O_Soldier_GL_F", "O_Soldier_GL_F", "O_Soldier_AR_F", "O_Soldier_F", "O_Soldier_LAT_F", "O_engineer_F", "O_medic_F"];
	EAST_TOWNS_SQUAD_MEDIUM = ["O_Soldier_SL_F", "O_Soldier_GL_F", "O_Soldier_GL_F", "O_Soldier_AR_F", "O_Soldier_AR_F", "O_Soldier_F", "O_Soldier_F", "O_Soldier_LAT_F", "O_Soldier_AT_F", "O_engineer_F", "O_medic_F"];
	EAST_TOWNS_SQUAD_AT = ["O_Soldier_SL_F", "O_Soldier_F", "O_Soldier_F", "O_Soldier_AR_F", "O_Soldier_LAT_F", "O_Soldier_AT_F", "O_Soldier_M_F", "O_medic_F"];
	EAST_TOWNS_SQUAD_AA = ["O_Soldier_SL_F", "O_Soldier_F", "O_Soldier_F", "O_Soldier_AR_F", "O_Soldier_AR_F", "O_soldier_AA_F", "O_soldier_AA_F", "O_engineer_F", "O_medic_F"];
	EAST_TOWNS_SQUAD_APC_1 = ["O_Soldier_SL_F", "O_Soldier_F", "O_Soldier_GL_F", "O_Soldier_AR_F", "O_Soldier_F", "O_Soldier_LAT_F", "O_APC_Wheeled_02_rcws_F", "O_medic_F", "O_Soldier_repair_F"];
	EAST_TOWNS_SQUAD_APC_2 = ["O_Soldier_SL_F", "O_Soldier_F", "O_Soldier_GL_F", "O_Soldier_AR_F", "O_Soldier_F", "O_Soldier_LAT_F", "O_APC_Tracked_02_cannon_F", "O_medic_F", "O_Soldier_repair_F"];
	EAST_TOWNS_SQUAD_MOTORIZED_1 = ["O_Soldier_SL_F", "O_Soldier_F", "O_Soldier_GL_F", "O_Soldier_AR_F", "O_Soldier_F", "O_Soldier_LAT_F", "O_MRAP_02_hmg_F", "O_medic_F", "O_Soldier_repair_F"];
	EAST_TOWNS_SQUAD_MOTORIZED_2 = ["O_Soldier_SL_F", "O_Soldier_F", "O_Soldier_AT_F", "O_Soldier_AR_F", "O_Soldier_F", "O_Soldier_LAT_F", "O_MRAP_02_hmg_F", "O_medic_F", "O_Soldier_repair_F"];
	EAST_TOWNS_SNIPERS_1 = ["O_Soldier_M_F", "O_Soldier_M_F", "O_Soldier_M_F", "O_Spotter_F"];
	EAST_TOWNS_SNIPERS_2 = ["O_Soldier_M_F", "O_Soldier_M_F", "O_Soldier_exp_F", "O_Spotter_F"];
	EAST_TOWNS_TANKS_LIGHT = ["O_MBT_02_cannon_F"];
	EAST_TOWNS_TANKS_MEDIUM = ["O_MBT_02_cannon_F", "O_MBT_02_cannon_F"];
	EAST_TOWNS_TANKS_HEAVY = ["O_MBT_02_cannon_F", "O_MBT_02_cannon_F", "O_MBT_02_cannon_F"];
	
	//--- Naval Units
	EAST_TOWNS_NAVAL_INFANTRY = ["O_diver_F"];
	EAST_TOWNS_NAVAL_SQUADLEADER = ["O_diver_TL_F"];
	EAST_TOWNS_NAVAL_ASSAULT_BOAT = ["O_Boat_Armed_01_hmg_F"];
	EAST_TOWNS_NAVAL_LARGE_ASSAULT_BOAT = ["rhsusf_mkvsoc"];
	//--- Naval Teams Templates
	EAST_TOWNS_NAVAL_SQUAD_1 = ["O_diver_TL_F", "O_diver_F", "O_diver_F", "O_diver_F", "O_diver_F", "O_diver_F"];
	EAST_TOWNS_NAVAL_SQUAD_2 = ["O_diver_TL_F", "O_diver_F", "O_diver_F", "O_diver_F", "O_Soldier_AT_F", "O_Soldier_AA_F"];
	EAST_TOWNS_NAVAL_SQUAD_3 = ["O_diver_TL_F", "O_diver_F", "O_Soldier_AT_F", "O_Soldier_AT_F", "O_Soldier_AA_F", "O_Soldier_AA_F"];
	EAST_TOWNS_NAVAL_SQUAD_ASSAULT_BOATS = ["O_Boat_Armed_01_hmg_F", "O_Boat_Armed_01_hmg_F", "O_Boat_Armed_01_hmg_F"];
	EAST_TOWNS_NAVAL_SQUAD_LARGE_ASSAULT_BOATS = ["rhsusf_mkvsoc", "rhsusf_mkvsoc"];
};
if (CTI_TOWNS_OCCUPATION_EAST = 1) then { 
//--- CUP TOWN OCCUPATION
	//--- Infantry
	EAST_SOLDIER = ["CUP_O_RU_Soldier", 1];
	EAST_SOLDIER_AA = ["CUP_O_RU_Soldier_AA", 1];
	EAST_SOLDIER_AR = ["CUP_O_RU_Soldier_AR", 1];
	EAST_SOLDIER_AT = ["CUP_O_RU_Soldier_AT", 1];
	EAST_SOLDIER_CREW = ["CUP_O_RU_Crew", 1];
	EAST_SOLDIER_LAT = ["CUP_O_RU_Soldier_AT", 1];
	EAST_SOLDIER_HAT = ["CUP_O_RU_Soldier_HAT", 1];
	EAST_SOLDIER_ENGINEER = ["CUP_O_RU_Engineer", 1];
	EAST_SOLDIER_GL = ["CUP_O_RU_Soldier_TL", 1];
	EAST_SOLDIER_MEDIC = ["CUP_O_RU_Medic", 1];
	// EAST_SOLDIER_MG = "soldiermg";
	EAST_SOLDIER_PILOT = ["CUP_O_RU_Pilot", 1];
	EAST_SOLDIER_SQUADLEADER = ["CUP_O_RU_Commander", 1];
	EAST_SOLDIER_SNIPER = ["CUP_O_RU_Sniper_KSVK", 1];
	EAST_SOLDIER_TEAMLEADER = ["CUP_O_RU_Commander", 1];
	
	//--- Vehicles
	EAST_MOTORIZED_MG = ["CUP_O_GAZ_Vodnik_PK_RU", 2];
	EAST_MOTORIZED_GL = ["CUP_O_GAZ_Vodnik_AGS_RU", 2];

	//--- Infantry - Mixed
	// EAST_SOLDIERS_MG = [EAST_SOLDIER_MG, EAST_SOLDIER_AR];
	EAST_SOLDIERS_MG = [EAST_SOLDIER_AR];
	EAST_SOLDIERS_AT_LIGHT = [EAST_SOLDIER_LAT, EAST_SOLDIER_AT];
	EAST_SOLDIERS_AT_MEDIUM = [EAST_SOLDIER_AT, EAST_SOLDIER_AT, EAST_SOLDIER_HAT];
	EAST_SOLDIERS_AT_HEAVY = [EAST_SOLDIER_AT, EAST_SOLDIER_HAT];
	EAST_SOLDIERS_SPECOPS = [["CUP_O_RU_Commander", 1]];
	EAST_SOLDIERS_ENGINEER = [EAST_SOLDIER_ENGINEER, ["CUP_O_RU_Engineer", 1]];
	EAST_SOLDIERS_SNIPERS = [EAST_SOLDIER_SNIPER, ["CUP_O_RU_Spotter", 1], ["CUP_O_RU_Sniper_KSVK", 1]];

	//--- Vehicles
	EAST_VEHICLE_AA = [["CUP_O_2S6M_RU", 1], ["CUP_O_Ural_ZU23_RU", 2]];
	EAST_VEHICLE_APC = [["CUP_O_BTR90_RU", 2], ["CUP_O_BMP3_RU", 2]];
	// EAST_VEHICLE_ARMORED_HEAVY = ["armoheavy1","armoheavy2"];
	EAST_VEHICLE_ARMORED_LIGHT = [["CUP_O_T72_RU", 2]];
	// EAST_VEHICLE_MECHANIZED = ["mechanized1","mechanized2"];
	EAST_VEHICLE_MOTORIZED = [EAST_MOTORIZED_MG, EAST_MOTORIZED_GL, EAST_MOTORIZED_MG];

	//--- Vehicles - Mixed
	EAST_VEHICLES_AA_LIGHT = EAST_VEHICLE_AA;
	// EAST_VEHICLES_LIGHT = EAST_VEHICLE_MECHANIZED + EAST_VEHICLE_MOTORIZED;
	EAST_VEHICLES_LIGHT = EAST_VEHICLE_MOTORIZED;
	EAST_VEHICLES_MEDIUM = EAST_VEHICLE_APC + EAST_VEHICLE_ARMORED_LIGHT;
	EAST_VEHICLES_HEAVY = EAST_VEHICLE_ARMORED_LIGHT;
	
	//--- Town Teams Templates
	EAST_TOWNS_AAV = ["CUP_O_2S6M_RU"];
	EAST_TOWNS_AAV_HEAVY = ["CUP_O_2S6M_RU", "CUP_O_2S6M_RU"];
	EAST_TOWNS_APC_LIGHT = ["CUP_O_BTR90_RU"];
	EAST_TOWNS_APC_MEDIUM = ["CUP_O_BTR90_RU", "CUP_O_BMP3_RU"];
	EAST_TOWNS_APC_HEAVY = ["CUP_O_BMP3_RU", "CUP_O_BMP3_RU", "CUP_O_BMP3_RU"];
	EAST_TOWNS_MOTORIZED_MIXED_HEAVY = ["CUP_O_GAZ_Vodnik_BPPU_RU","CUP_O_GAZ_Vodnik_AGS_RU","CUP_O_GAZ_Vodnik_PK_RU"];
	EAST_TOWNS_MOTORIZED_MIXED_LIGHT = ["CUP_O_GAZ_Vodnik_PK_RU","CUP_O_GAZ_Vodnik_AGS_RU"];
	EAST_TOWNS_MOTORIZED_HMG = ["CUP_O_GAZ_Vodnik_PK_RU","CUP_O_GAZ_Vodnik_PK_RU"];
	EAST_TOWNS_MOTORIZED_GMG = ["CUP_O_GAZ_Vodnik_AGS_RU","CUP_O_GAZ_Vodnik_AGS_RU"];
	EAST_TOWNS_SPECIAL = ["CUP_O_RU_Explosive_Specialist", "CUP_O_RU_Soldier_MG", "CUP_O_RU_Soldier_HAT"];
	EAST_TOWNS_SQUAD_LIGHT = ["CUP_O_RU_Commander", "CUP_O_RU_Soldier", "CUP_O_RU_Soldier", "CUP_O_RU_Soldier_AR", "CUP_O_RU_Soldier_AT", "CUP_O_RU_Soldier_TL", "CUP_O_RU_Medic"];
	EAST_TOWNS_SQUAD_LIGHT_2 = ["CUP_O_RU_Commander", "CUP_O_RU_Soldier_TL", "CUP_O_RU_Soldier_TL", "CUP_O_RU_Soldier_AR", "CUP_O_RU_Soldier", "CUP_O_RU_Soldier_AT", "CUP_O_RU_Engineer", "CUP_O_RU_Medic"];
	EAST_TOWNS_SQUAD_MEDIUM = ["CUP_O_RU_Commander", "CUP_O_RU_Soldier_TL", "CUP_O_RU_Soldier_TL", "CUP_O_RU_Soldier_AR", "CUP_O_RU_Soldier_AR", "CUP_O_RU_Soldier", "CUP_O_RU_Soldier", "O_Soldier_LAT_F", "CUP_O_RU_Soldier_AT", "CUP_O_RU_Engineer", "O_medic_F"];
	EAST_TOWNS_SQUAD_AT = ["CUP_O_RU_Commander", "CUP_O_RU_Soldier", "CUP_O_RU_Soldier", "CUP_O_RU_Soldier_AR", "CUP_O_RU_Soldier_AT", "CUP_O_RU_Soldier_AT", "O_Soldier_M_F", "CUP_O_RU_Medic"];
	EAST_TOWNS_SQUAD_AA = ["CUP_O_RU_Commander", "CUP_O_RU_Soldier", "CUP_O_RU_Soldier", "CUP_O_RU_Soldier_AR", "CUP_O_RU_Soldier_AR", "CUP_O_RU_Soldier_AA", "CUP_O_RU_Soldier_AA", "CUP_O_RU_Engineer", "CUP_O_RU_Medic"];
	EAST_TOWNS_SQUAD_APC_1 = ["CUP_O_RU_Commander", "CUP_O_RU_Soldier", "CUP_O_RU_Soldier_TL", "CUP_O_RU_Soldier_AR", "CUP_O_RU_Soldier", "CUP_O_RU_Soldier_AT", "O_APC_Wheeled_02_rcws_F", "CUP_O_RU_Medic", "CUP_O_RU_Engineer"];
	EAST_TOWNS_SQUAD_APC_2 = ["CUP_O_RU_Commander", "CUP_O_RU_Soldier", "CUP_O_RU_Soldier_TL", "CUP_O_RU_Soldier_AR", "CUP_O_RU_Soldier", "CUP_O_RU_Soldier_AT", "O_APC_Tracked_02_cannon_F", "CUP_O_RU_Medic", "CUP_O_RU_Engineer"];
	EAST_TOWNS_SQUAD_MOTORIZED_1 = ["CUP_O_RU_Commander", "CUP_O_RU_Soldier", "CUP_O_RU_Soldier_TL", "CUP_O_RU_Soldier_AR", "CUP_O_RU_Soldier", "CUP_O_RU_Soldier_AT", "CUP_O_GAZ_Vodnik_PK_RU", "CUP_O_RU_Medic", "CUP_O_RU_Engineer"];
	EAST_TOWNS_SQUAD_MOTORIZED_2 = ["CUP_O_RU_Commander", "CUP_O_RU_Soldier", "O_Soldier_AT_F", "CUP_O_RU_Soldier_AR", "CUP_O_RU_Soldier", "CUP_O_RU_Soldier_AT", "CUP_O_GAZ_Vodnik_PK_RU", "CUP_O_RU_Medic", "CUP_O_RU_Engineer"];
	EAST_TOWNS_SNIPERS_1 = ["CUP_O_RU_Sniper_KSVK", "CUP_O_RU_Sniper_KSVK", "CUP_O_RU_Sniper_KSVK", "CUP_O_RU_Spotter"];
	EAST_TOWNS_SNIPERS_2 = ["CUP_O_RU_Sniper_KSVK", "CUP_O_RU_Sniper_KSVK", "CUP_O_RU_Sniper_KSVK", "CUP_O_RU_Spotter"];
	EAST_TOWNS_TANKS_LIGHT = ["CUP_O_T72_RU", "CUP_O_T72_RU"];
	EAST_TOWNS_TANKS_MEDIUM = ["CUP_O_T72_RU", "CUP_O_T72_RU", "CUP_O_T72_RU", "CUP_O_T72_RU"];
	EAST_TOWNS_TANKS_HEAVY = ["CUP_O_T72_RU", "CUP_O_T72_RU", "CUP_O_T72_RU", "CUP_O_T72_RU", "CUP_O_T72_RU", "CUP_O_T72_RU"];
	
	//--- Naval Units
	EAST_TOWNS_NAVAL_INFANTRY = ["O_diver_F"];
	EAST_TOWNS_NAVAL_SQUADLEADER = ["O_diver_TL_F"];
	EAST_TOWNS_NAVAL_ASSAULT_BOAT = ["O_Boat_Armed_01_hmg_F"];
	EAST_TOWNS_NAVAL_LARGE_ASSAULT_BOAT = ["rhsusf_mkvsoc"];
	//--- Naval Teams Templates
	EAST_TOWNS_NAVAL_SQUAD_1 = ["O_diver_TL_F", "O_diver_F", "O_diver_F", "O_diver_F", "O_diver_F", "O_diver_F"];
	EAST_TOWNS_NAVAL_SQUAD_2 = ["O_diver_TL_F", "O_diver_F", "O_diver_F", "O_diver_F", "O_Soldier_AT_F", "O_Soldier_AA_F"];
	EAST_TOWNS_NAVAL_SQUAD_3 = ["O_diver_TL_F", "O_diver_F", "O_Soldier_AT_F", "O_Soldier_AT_F", "O_Soldier_AA_F", "O_Soldier_AA_F"];
	EAST_TOWNS_NAVAL_SQUAD_ASSAULT_BOATS = ["O_Boat_Armed_01_hmg_F", "O_Boat_Armed_01_hmg_F", "O_Boat_Armed_01_hmg_F"];
	EAST_TOWNS_NAVAL_SQUAD_LARGE_ASSAULT_BOATS = ["rhsusf_mkvsoc", "rhsusf_mkvsoc"];
};
if (CTI_TOWNS_OCCUPATION_EAST = 2) then { 
//--- MIXED TOWN OCCUPATION - vanilla/cup/ofps/etc..
	//--- Infantry
	EAST_SOLDIER = ["CUP_O_RU_Soldier", 1];
	EAST_SOLDIER_AA = ["CUP_O_RU_Soldier_AA", 1];
	EAST_SOLDIER_AR = ["CUP_O_RU_Soldier_AR", 1];
	EAST_SOLDIER_AT = ["CUP_O_RU_Soldier_AT", 1];
	EAST_SOLDIER_CREW = ["CUP_O_RU_Crew", 1];
	EAST_SOLDIER_LAT = ["CUP_O_RU_Soldier_AT", 1];
	EAST_SOLDIER_HAT = ["CUP_O_RU_Soldier_HAT", 1];
	EAST_SOLDIER_ENGINEER = ["CUP_O_RU_Engineer", 1];
	EAST_SOLDIER_GL = ["CUP_O_RU_Soldier_TL", 1];
	EAST_SOLDIER_MEDIC = ["CUP_O_RU_Medic", 1];
	// EAST_SOLDIER_MG = "soldiermg";
	EAST_SOLDIER_PILOT = ["CUP_O_RU_Pilot", 1];
	EAST_SOLDIER_SQUADLEADER = ["CUP_O_RU_Commander", 1];
	EAST_SOLDIER_SNIPER = ["CUP_O_RU_Sniper_KSVK", 1];
	EAST_SOLDIER_TEAMLEADER = ["CUP_O_RU_Commander", 1];
	
	//--- Vehicles
	EAST_MOTORIZED_MG = ["CUP_O_GAZ_Vodnik_PK_RU", 2];
	EAST_MOTORIZED_GL = ["CUP_O_GAZ_Vodnik_AGS_RU", 2];

	//--- Infantry - Mixed
	// EAST_SOLDIERS_MG = [EAST_SOLDIER_MG, EAST_SOLDIER_AR];
	EAST_SOLDIERS_MG = [EAST_SOLDIER_AR];
	EAST_SOLDIERS_AT_LIGHT = [EAST_SOLDIER_LAT, EAST_SOLDIER_AT];
	EAST_SOLDIERS_AT_MEDIUM = [EAST_SOLDIER_AT, EAST_SOLDIER_AT, EAST_SOLDIER_HAT];
	EAST_SOLDIERS_AT_HEAVY = [EAST_SOLDIER_AT, EAST_SOLDIER_HAT];
	EAST_SOLDIERS_SPECOPS = [["CUP_O_RU_Commander", 1]];
	EAST_SOLDIERS_ENGINEER = [EAST_SOLDIER_ENGINEER, ["CUP_O_RU_Engineer", 1]];
	EAST_SOLDIERS_SNIPERS = [EAST_SOLDIER_SNIPER, ["CUP_O_RU_Spotter", 1], ["CUP_O_RU_Sniper_KSVK", 1]];

	//--- Vehicles
	EAST_VEHICLE_AA = [["CUP_O_2S6M_RU", 1], ["CUP_O_Ural_ZU23_RU", 2]];
	EAST_VEHICLE_APC = [["CUP_O_BTR90_RU", 2], ["CUP_O_BMP3_RU", 2]];
	// EAST_VEHICLE_ARMORED_HEAVY = ["armoheavy1","armoheavy2"];
	EAST_VEHICLE_ARMORED_LIGHT = [["CUP_O_T72_RU", 2]];
	// EAST_VEHICLE_MECHANIZED = ["mechanized1","mechanized2"];
	EAST_VEHICLE_MOTORIZED = [EAST_MOTORIZED_MG, EAST_MOTORIZED_GL, EAST_MOTORIZED_MG];

	//--- Vehicles - Mixed
	EAST_VEHICLES_AA_LIGHT = EAST_VEHICLE_AA;
	// EAST_VEHICLES_LIGHT = EAST_VEHICLE_MECHANIZED + EAST_VEHICLE_MOTORIZED;
	EAST_VEHICLES_LIGHT = EAST_VEHICLE_MOTORIZED;
	EAST_VEHICLES_MEDIUM = EAST_VEHICLE_APC + EAST_VEHICLE_ARMORED_LIGHT;
	EAST_VEHICLES_HEAVY = EAST_VEHICLE_ARMORED_LIGHT;
	
	//--- Town Teams Templates
	EAST_TOWNS_AAV = ["CUP_O_2S6M_RU"];
	EAST_TOWNS_AAV_HEAVY = ["CUP_O_2S6M_RU", "O_APC_Tracked_02_AA_F"];
	EAST_TOWNS_APC_LIGHT = ["O_APC_Wheeled_02_rcws_F"];
	EAST_TOWNS_APC_MEDIUM = ["CUP_O_BTR90_RU", "O_APC_Tracked_02_cannon_F"];
	EAST_TOWNS_APC_HEAVY = ["CUP_O_BMP3_RU", "CUP_O_BMP3_RU", "O_APC_Tracked_02_cannon_F"];
	EAST_TOWNS_MOTORIZED_MIXED_HEAVY = ["CUP_O_GAZ_Vodnik_BPPU_RU","CUP_O_GAZ_Vodnik_AGS_RU","O_MRAP_02_gmg_F"];
	EAST_TOWNS_MOTORIZED_MIXED_LIGHT = ["O_MRAP_02_hmg_F","CUP_O_GAZ_Vodnik_AGS_RU"];
	EAST_TOWNS_MOTORIZED_HMG = ["CUP_O_GAZ_Vodnik_PK_RU","O_MRAP_02_hmg_F"];
	EAST_TOWNS_MOTORIZED_GMG = ["CUP_O_GAZ_Vodnik_AGS_RU","O_MRAP_02_gmg_F"];
	EAST_TOWNS_SPECIAL = ["CUP_O_RU_Explosive_Specialist", "CUP_O_RU_Soldier_MG", "CUP_O_RU_Soldier_HAT"];
	EAST_TOWNS_SQUAD_LIGHT = ["CUP_O_RU_Commander", "CUP_O_RU_Soldier", "CUP_O_RU_Soldier", "CUP_O_RU_Soldier_AR", "CUP_O_RU_Soldier_AT", "CUP_O_RU_Soldier_TL", "CUP_O_RU_Medic"];
	EAST_TOWNS_SQUAD_LIGHT_2 = ["CUP_O_RU_Commander", "CUP_O_RU_Soldier_TL", "CUP_O_RU_Soldier_TL", "CUP_O_RU_Soldier_AR", "CUP_O_RU_Soldier", "CUP_O_RU_Soldier_AT", "CUP_O_RU_Engineer", "CUP_O_RU_Medic"];
	EAST_TOWNS_SQUAD_MEDIUM = ["CUP_O_RU_Commander", "CUP_O_RU_Soldier_TL", "CUP_O_RU_Soldier_TL", "CUP_O_RU_Soldier_AR", "CUP_O_RU_Soldier_AR", "CUP_O_RU_Soldier", "CUP_O_RU_Soldier", "O_Soldier_LAT_F", "CUP_O_RU_Soldier_AT", "CUP_O_RU_Engineer", "O_medic_F"];
	EAST_TOWNS_SQUAD_AT = ["CUP_O_RU_Commander", "CUP_O_RU_Soldier", "CUP_O_RU_Soldier", "CUP_O_RU_Soldier_AR", "CUP_O_RU_Soldier_AT", "CUP_O_RU_Soldier_AT", "O_Soldier_M_F", "CUP_O_RU_Medic"];
	EAST_TOWNS_SQUAD_AA = ["CUP_O_RU_Commander", "CUP_O_RU_Soldier", "CUP_O_RU_Soldier", "CUP_O_RU_Soldier_AR", "CUP_O_RU_Soldier_AR", "CUP_O_RU_Soldier_AA", "CUP_O_RU_Soldier_AA", "CUP_O_RU_Engineer", "CUP_O_RU_Medic"];
	EAST_TOWNS_SQUAD_APC_1 = ["CUP_O_RU_Commander", "CUP_O_RU_Soldier", "CUP_O_RU_Soldier_TL", "CUP_O_RU_Soldier_AR", "CUP_O_RU_Soldier", "CUP_O_RU_Soldier_AT", "O_APC_Wheeled_02_rcws_F", "CUP_O_RU_Medic", "CUP_O_RU_Engineer"];
	EAST_TOWNS_SQUAD_APC_2 = ["CUP_O_RU_Commander", "CUP_O_RU_Soldier", "CUP_O_RU_Soldier_TL", "CUP_O_RU_Soldier_AR", "CUP_O_RU_Soldier", "CUP_O_RU_Soldier_AT", "O_APC_Tracked_02_cannon_F", "CUP_O_RU_Medic", "CUP_O_RU_Engineer"];
	EAST_TOWNS_SQUAD_MOTORIZED_1 = ["CUP_O_RU_Commander", "CUP_O_RU_Soldier", "CUP_O_RU_Soldier_TL", "CUP_O_RU_Soldier_AR", "CUP_O_RU_Soldier", "CUP_O_RU_Soldier_AT", "CUP_O_GAZ_Vodnik_PK_RU", "CUP_O_RU_Medic", "CUP_O_RU_Engineer"];
	EAST_TOWNS_SQUAD_MOTORIZED_2 = ["CUP_O_RU_Commander", "CUP_O_RU_Soldier", "O_Soldier_AT_F", "CUP_O_RU_Soldier_AR", "CUP_O_RU_Soldier", "CUP_O_RU_Soldier_AT", "O_APC_Wheeled_02_rcws_F", "CUP_O_RU_Medic", "CUP_O_RU_Engineer"];
	EAST_TOWNS_SNIPERS_1 = ["CUP_O_RU_Sniper_KSVK", "CUP_O_RU_Sniper_KSVK", "CUP_O_RU_Sniper_KSVK", "CUP_O_RU_Spotter"];
	EAST_TOWNS_SNIPERS_2 = ["CUP_O_RU_Sniper_KSVK", "CUP_O_RU_Sniper_KSVK", "CUP_O_RU_Sniper_KSVK", "CUP_O_RU_Spotter"];
	EAST_TOWNS_TANKS_LIGHT = ["CUP_O_T72_RU"];
	EAST_TOWNS_TANKS_MEDIUM = ["CUP_O_T72_RU", "O_APC_Tracked_02_cannon_F"];
	EAST_TOWNS_TANKS_HEAVY = ["O_MBT_02_cannon_F", "O_MBT_02_cannon_F", "O_MBT_02_cannon_F"];
	
	//--- Naval Units
	EAST_TOWNS_NAVAL_INFANTRY = ["O_diver_F"];
	EAST_TOWNS_NAVAL_SQUADLEADER = ["O_diver_TL_F"];
	EAST_TOWNS_NAVAL_ASSAULT_BOAT = ["O_Boat_Armed_01_hmg_F"];
	EAST_TOWNS_NAVAL_LARGE_ASSAULT_BOAT = ["rhsusf_mkvsoc"];
	//--- Naval Teams Templates
	EAST_TOWNS_NAVAL_SQUAD_1 = ["O_diver_TL_F", "O_diver_F", "O_diver_F", "O_diver_F", "O_diver_F", "O_diver_F"];
	EAST_TOWNS_NAVAL_SQUAD_2 = ["O_diver_TL_F", "O_diver_F", "O_diver_F", "O_diver_F", "O_Soldier_AT_F", "O_Soldier_AA_F"];
	EAST_TOWNS_NAVAL_SQUAD_3 = ["O_diver_TL_F", "O_diver_F", "O_Soldier_AT_F", "O_Soldier_AT_F", "O_Soldier_AA_F", "O_Soldier_AA_F"];
	EAST_TOWNS_NAVAL_SQUAD_ASSAULT_BOATS = ["O_Boat_Armed_01_hmg_F", "O_Boat_Armed_01_hmg_F", "O_Boat_Armed_01_hmg_F"];
	EAST_TOWNS_NAVAL_SQUAD_LARGE_ASSAULT_BOATS = ["rhsusf_mkvsoc", "rhsusf_mkvsoc"];
};
};

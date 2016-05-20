with missionNamespace do {
if (CTI_TOWNS_OCCUPATION_FORCES = 0) then { 
//--- VANILLA TOWN OCCUPATION
//--- Infantry
	WEST_SOLDIER = ["B_Soldier_F", 1];
	WEST_SOLDIER_AA = ["B_soldier_AA_F", 1];
	WEST_SOLDIER_AR = ["B_Soldier_AR_F", 1];
	WEST_SOLDIER_AT = ["B_Soldier_LAT_F", 1];
	WEST_SOLDIER_CREW = ["B_crew_F", 1];
	WEST_SOLDIER_LAT = ["B_Soldier_LAT_F", 1];
	WEST_SOLDIER_HAT = ["B_Soldier_AT_F", 1];
	WEST_SOLDIER_ENGINEER = ["B_engineer_F", 1];
	WEST_SOLDIER_GL = ["B_Soldier_GL_F", 1];
	WEST_SOLDIER_MEDIC = ["B_medic_F", 1];
	// WEST_SOLDIER_MG = "soldiermg";
	WEST_SOLDIER_PILOT = ["B_helipilot_F", 1];
	WEST_SOLDIER_SQUADLEADER = ["B_Soldier_SL_F", 1];
	WEST_SOLDIER_SNIPER = ["B_Soldier_M_F", 1];
	WEST_SOLDIER_TEAMLEADER = ["B_Soldier_TL_F", 1];
	
	//--- Vehicles
	WEST_MOTORIZED_MG = ["B_MRAP_01_hmg_F", 2];
	WEST_MOTORIZED_GL = ["B_MRAP_01_gmg_F", 2];

	//--- Infantry - Mixed
	// WEST_SOLDIERS_MG = [WEST_SOLDIER_MG, WEST_SOLDIER_AR];
	WEST_SOLDIERS_MG = [WEST_SOLDIER_AR];
	WEST_SOLDIERS_AT_LIGHT = [WEST_SOLDIER_LAT, WEST_SOLDIER_AT];
	WEST_SOLDIERS_AT_MEDIUM = [WEST_SOLDIER_AT, WEST_SOLDIER_AT, WEST_SOLDIER_HAT];
	WEST_SOLDIERS_AT_HEAVY = [WEST_SOLDIER_AT, WEST_SOLDIER_HAT];
	WEST_SOLDIERS_SPECOPS = [["B_Soldier_exp_F", 1]];
	WEST_SOLDIERS_ENGINEER = [WEST_SOLDIER_ENGINEER, ["B_Soldier_repair_F", 1]];
	WEST_SOLDIERS_SNIPERS = [WEST_SOLDIER_SNIPER, ["B_Spotter_F", 1], ["B_Sniper_F", 1]];

	//--- Vehicles
	WEST_VEHICLE_AA = [["B_APC_Tracked_01_AA_F", 1]];
	WEST_VEHICLE_APC = [["B_APC_Wheeled_01_cannon_F", 2], ["B_APC_Tracked_01_rcws_F", 2]];
	// WEST_VEHICLE_ARMORED_HEAVY = ["armoheavy1","armoheavy2"];
	WEST_VEHICLE_ARMORED_LIGHT = [["B_MBT_01_cannon_F", 2]];
	// WEST_VEHICLE_MECHANIZED = ["mechanized1","mechanized2"];
	WEST_VEHICLE_MOTORIZED = [WEST_MOTORIZED_MG, WEST_MOTORIZED_GL, WEST_MOTORIZED_MG];

	//--- Vehicles - Mixed
	WEST_VEHICLES_AA_LIGHT = WEST_VEHICLE_AA;
	// WEST_VEHICLES_LIGHT = WEST_VEHICLE_MECHANIZED + WEST_VEHICLE_MOTORIZED;
	WEST_VEHICLES_LIGHT = WEST_VEHICLE_MOTORIZED;
	WEST_VEHICLES_MEDIUM = WEST_VEHICLE_APC + WEST_VEHICLE_ARMORED_LIGHT;
	WEST_VEHICLES_HEAVY = WEST_VEHICLE_ARMORED_LIGHT;
	
	//--- Town Teams Templates
	WEST_TOWNS_AAV = ["B_APC_Tracked_01_AA_F"];
	WEST_TOWNS_AAV_HEAVY = ["B_APC_Tracked_01_AA_F", "B_APC_Tracked_01_AA_F"];
	WEST_TOWNS_APC_LIGHT = ["B_APC_Wheeled_01_cannon_F"];
	WEST_TOWNS_APC_MEDIUM = ["B_APC_Wheeled_01_cannon_F", "B_APC_Tracked_01_rcws_F"];
	WEST_TOWNS_APC_HEAVY = ["B_APC_Wheeled_01_cannon_F", "B_APC_Tracked_01_rcws_F", "B_APC_Wheeled_01_cannon_F"];
	WEST_TOWNS_MOTORIZED_MIXED_HEAVY = ["B_MRAP_01_hmg_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F"];
	WEST_TOWNS_MOTORIZED_MIXED_LIGHT = ["B_MRAP_01_hmg_F","B_MRAP_01_gmg_F"];
	WEST_TOWNS_MOTORIZED_HMG = ["B_MRAP_01_hmg_F","B_MRAP_01_hmg_F"];
	WEST_TOWNS_MOTORIZED_GMG = ["B_MRAP_01_gmg_F","B_MRAP_01_gmg_F"];
	WEST_TOWNS_SPECIAL = ["B_Soldier_exp_F", "B_Soldier_exp_F", "B_Soldier_exp_F"];
	WEST_TOWNS_SQUAD_LIGHT = ["B_Soldier_SL_F", "B_Soldier_F", "B_Soldier_F", "B_Soldier_AR_F", "B_Soldier_LAT_F", "B_Soldier_GL_F", "B_medic_F"];
	WEST_TOWNS_SQUAD_LIGHT_2 = ["B_Soldier_SL_F", "B_Soldier_GL_F", "B_Soldier_GL_F", "B_Soldier_AR_F", "B_Soldier_F", "B_Soldier_LAT_F", "B_engineer_F", "B_medic_F"];
	WEST_TOWNS_SQUAD_MEDIUM = ["B_Soldier_SL_F", "B_Soldier_GL_F", "B_Soldier_GL_F", "B_Soldier_AR_F", "B_Soldier_AR_F", "B_Soldier_F", "B_Soldier_F", "B_Soldier_LAT_F", "B_Soldier_AT_F", "B_engineer_F", "B_medic_F"];
	WEST_TOWNS_SQUAD_AT = ["B_Soldier_SL_F", "B_Soldier_F", "B_Soldier_F", "B_Soldier_AR_F", "B_Soldier_LAT_F", "B_Soldier_AT_F", "B_Soldier_M_F", "B_medic_F"];
	WEST_TOWNS_SQUAD_AA = ["B_Soldier_SL_F", "B_Soldier_F", "B_Soldier_F", "B_Soldier_AR_F", "B_Soldier_AR_F", "B_soldier_AA_F", "B_soldier_AA_F", "B_engineer_F", "B_medic_F"];
	WEST_TOWNS_SQUAD_APC_1 = ["B_Soldier_SL_F", "B_Soldier_F", "B_Soldier_GL_F", "B_Soldier_AR_F", "B_Soldier_F", "B_Soldier_LAT_F", "B_APC_Tracked_01_rcws_F", "B_medic_F", "B_Soldier_repair_F"];
	WEST_TOWNS_SQUAD_APC_2 = ["B_Soldier_SL_F", "B_Soldier_F", "B_Soldier_GL_F", "B_Soldier_AR_F", "B_Soldier_F", "B_Soldier_LAT_F", "B_APC_Wheeled_01_cannon_F", "B_medic_F", "B_Soldier_repair_F"];
	WEST_TOWNS_SQUAD_MOTORIZED_1 = ["B_Soldier_SL_F", "B_Soldier_F", "B_Soldier_GL_F", "B_Soldier_AR_F", "B_Soldier_F", "B_Soldier_LAT_F", "B_MRAP_01_hmg_F", "B_medic_F", "B_Soldier_repair_F"];
	WEST_TOWNS_SQUAD_MOTORIZED_2 = ["B_Soldier_SL_F", "B_Soldier_F", "B_Soldier_AT_F", "B_Soldier_AR_F", "B_Soldier_F", "B_Soldier_LAT_F", "B_MRAP_01_hmg_F", "B_medic_F", "B_Soldier_repair_F"];
	WEST_TOWNS_SNIPERS_1 = ["B_Soldier_M_F", "B_Soldier_M_F", "B_Soldier_M_F", "B_Spotter_F"];
	WEST_TOWNS_SNIPERS_2 = ["B_Soldier_M_F", "B_Soldier_M_F", "B_Soldier_exp_F", "B_Spotter_F"];
	WEST_TOWNS_TANKS_LIGHT = ["B_MBT_01_cannon_F"];
	WEST_TOWNS_TANKS_MEDIUM = ["B_MBT_01_cannon_F", "B_MBT_01_cannon_F"];
	WEST_TOWNS_TANKS_HEAVY = ["B_MBT_01_cannon_F", "B_MBT_01_cannon_F", "B_MBT_01_cannon_F"];
	
	//--- Naval Units
	WEST_TOWNS_NAVAL_INFANTRY = ["B_diver_F"];
	WEST_TOWNS_NAVAL_SQUADLEADER = ["B_diver_TL_F"];
	WEST_TOWNS_NAVAL_ASSAULT_BOATS = ["B_Boat_Armed_01_minigun_F"];
	WEST_TOWNS_NAVAL_LARGE_ASSAULT_BOATS = ["B_Boat_Armed_01_minigun_F"];
	//--- Naval Teams Templates
	WEST_TOWNS_NAVAL_SQUAD_1 = ["B_diver_TL_F", "B_diver_F", "B_diver_F", "B_diver_F", "B_diver_F", "B_diver_F"];
	WEST_TOWNS_NAVAL_SQUAD_2 = ["B_diver_TL_F", "B_diver_F", "B_diver_F", "B_diver_F", "B_Soldier_AT_F", "B_Soldier_AA_F"];
	WEST_TOWNS_NAVAL_SQUAD_3 = ["B_diver_TL_F", "B_diver_F", "B_Soldier_AT_F", "B_Soldier_AT_F", "B_Soldier_AA_F", "B_Soldier_AA_F"];
	WEST_TOWNS_NAVAL_SQUAD_ASSAULT_BOATS = ["B_Boat_Armed_01_minigun_F", "B_Boat_Armed_01_minigun_F", "B_Boat_Armed_01_minigun_F"];
	WEST_TOWNS_NAVAL_SQUAD_LARGE_ASSAULT_BOATS = ["rhsusf_mkvsoc", "rhsusf_mkvsoc"];
};
if (CTI_TOWNS_OCCUPATION_FORCES = 1) then { 
//--- CUP TOWN OCCUPATION
	//--- Infantry
	WEST_SOLDIER = ["CUP_B_US_Soldier", 1];
	WEST_SOLDIER_AA = ["CUP_B_US_Soldier_AA", 1];
	WEST_SOLDIER_AR = ["CUP_B_US_Soldier_AR", 1];
	WEST_SOLDIER_AT = ["CUP_B_US_Soldier_AT", 1];
	WEST_SOLDIER_CREW = ["CUP_B_US_Crew", 1];
	WEST_SOLDIER_LAT = ["CUP_B_US_Soldier_AT", 1];
	WEST_SOLDIER_HAT = ["CUP_B_US_Soldier_HAT", 1];
	WEST_SOLDIER_ENGINEER = ["CUP_B_US_Soldier_Engineer_EOD", 1];
	WEST_SOLDIER_GL = ["CUP_B_US_Soldier_GL", 1];
	WEST_SOLDIER_MEDIC = ["CUP_B_US_Medic", 1];
	// WEST_SOLDIER_MG = "soldiermg";
	WEST_SOLDIER_PILOT = ["CUP_B_US_Pilot", 1];
	WEST_SOLDIER_SQUADLEADER = ["CUP_B_US_Soldier_Marksman", 1];
	WEST_SOLDIER_SNIPER = ["CUP_B_US_Sniper_M107", 1];
	WEST_SOLDIER_TEAMLEADER = ["CUP_B_US_Officer", 1];
	
	//--- Vehicles
	WEST_MOTORIZED_MG = ["CUP_B_HMMWV_M2_GPK_USA", 2];
	WEST_MOTORIZED_GL = ["CUP_B_HMMWV_SOV_USA", 2];

	//--- Infantry - Mixed
	// WEST_SOLDIERS_MG = [WEST_SOLDIER_MG, WEST_SOLDIER_AR];
	WEST_SOLDIERS_MG = [WEST_SOLDIER_AR];
	WEST_SOLDIERS_AT_LIGHT = [WEST_SOLDIER_LAT, WEST_SOLDIER_AT];
	WEST_SOLDIERS_AT_MEDIUM = [WEST_SOLDIER_AT, WEST_SOLDIER_AT, WEST_SOLDIER_HAT];
	WEST_SOLDIERS_AT_HEAVY = [WEST_SOLDIER_AT, WEST_SOLDIER_HAT];
	WEST_SOLDIERS_SPECOPS = [["CUP_B_US_Soldier_Engineer_EOD", 1]];
	WEST_SOLDIERS_ENGINEER = [WEST_SOLDIER_ENGINEER, ["CUP_B_US_Soldier_Engineer_EOD", 1]];
	WEST_SOLDIERS_SNIPERS = [WEST_SOLDIER_SNIPER, ["CUP_B_US_Spotter", 1], ["CUP_B_US_Sniper_M107", 1]];

	//--- Vehicles
	WEST_VEHICLE_AA = [["CUP_B_M6LineBacker_USA_D", 1]];
	WEST_VEHICLE_APC = [["CUP_B_M2A3Bradley_USA_D", 2], ["CUP_B_M1135_ATGMV_Desert_Slat", 2]];
	// WEST_VEHICLE_ARMORED_HEAVY = ["armoheavy1","armoheavy2"];
	WEST_VEHICLE_ARMORED_LIGHT = [["CUP_B_M1A2_TUSK_MG_DES_US_Army", 2]];
	// WEST_VEHICLE_MECHANIZED = ["mechanized1","mechanized2"];
	WEST_VEHICLE_MOTORIZED = [WEST_MOTORIZED_MG, WEST_MOTORIZED_GL, WEST_MOTORIZED_MG];

	//--- Vehicles - Mixed
	WEST_VEHICLES_AA_LIGHT = WEST_VEHICLE_AA;
	// WEST_VEHICLES_LIGHT = WEST_VEHICLE_MECHANIZED + WEST_VEHICLE_MOTORIZED;
	WEST_VEHICLES_LIGHT = WEST_VEHICLE_MOTORIZED;
	WEST_VEHICLES_MEDIUM = WEST_VEHICLE_APC + WEST_VEHICLE_ARMORED_LIGHT;
	WEST_VEHICLES_HEAVY = WEST_VEHICLE_ARMORED_LIGHT;
	
	//--- Town Teams Templates
	WEST_TOWNS_AAV = ["CUP_B_M6LineBacker_USA_D"];
	WEST_TOWNS_AAV_HEAVY = ["CUP_B_M6LineBacker_USA_D", "CUP_B_HMMWV_Avenger_USA", "CUP_B_HMMWV_Avenger_USA"];
	WEST_TOWNS_APC_LIGHT = ["CUP_B_M1135_ATGMV_Desert_Slat"];
	WEST_TOWNS_APC_MEDIUM = ["CUP_B_M1135_ATGMV_Desert_Slat", "CUP_B_M2A3Bradley_USA_D"];
	WEST_TOWNS_APC_HEAVY = ["CUP_B_M2A3Bradley_USA_D", "CUP_B_M2A3Bradley_USA_D", "CUP_B_M2A3Bradley_USA_D"];
	WEST_TOWNS_MOTORIZED_MIXED_HEAVY = ["CUP_B_HMMWV_M2_GPK_USA","CUP_B_HMMWV_SOV_USA","CUP_B_HMMWV_M2_GPK_USA"];
	WEST_TOWNS_MOTORIZED_MIXED_LIGHT = ["CUP_B_HMMWV_M2_GPK_USA","CUP_B_HMMWV_SOV_USA"];
	WEST_TOWNS_MOTORIZED_HMG = ["CUP_B_HMMWV_M2_GPK_USA","CUP_B_HMMWV_M2_GPK_USA"];
	WEST_TOWNS_MOTORIZED_GMG = ["CUP_B_HMMWV_SOV_USA","CUP_B_HMMWV_SOV_USA"];
	WEST_TOWNS_SPECIAL = ["CUP_B_US_Soldier_Engineer_EOD", "CUP_B_US_Soldier_Engineer_EOD", "CUP_B_US_Soldier_Engineer_EOD"];
	WEST_TOWNS_SQUAD_LIGHT = ["CUP_B_US_Officer", "CUP_B_US_Soldier", "CUP_B_US_Soldier", "CUP_B_US_Soldier_AR", "CUP_B_US_Soldier_AT", "CUP_B_US_Soldier_GL", "CUP_B_US_Medic"];
	WEST_TOWNS_SQUAD_LIGHT_2 = ["CUP_B_US_Officer", "CUP_B_US_Soldier_GL", "CUP_B_US_Soldier_GL", "CUP_B_US_Soldier_AR", "CUP_B_US_Soldier", "CUP_B_US_Soldier_AT", "CUP_B_US_Soldier_Engineer_EOD", "CUP_B_US_Medic"];
	WEST_TOWNS_SQUAD_MEDIUM = ["CUP_B_US_Officer", "CUP_B_US_Soldier_GL", "CUP_B_US_Soldier_GL", "CUP_B_US_Soldier_AR", "CUP_B_US_Soldier_AR", "CUP_B_US_Soldier", "CUP_B_US_Soldier", "CUP_B_US_Soldier_HAT", "CUP_B_US_Soldier_AT", "CUP_B_US_Soldier_Engineer_EOD", "CUP_B_US_Medic"];
	WEST_TOWNS_SQUAD_AT = ["CUP_B_US_Officer", "CUP_B_US_Soldier", "CUP_B_US_Soldier", "CUP_B_US_Soldier_AR", "CUP_B_US_Soldier_AT", "CUP_B_US_Soldier_HAT", "CUP_B_US_Soldier_Marksman", "CUP_B_US_Medic"];
	WEST_TOWNS_SQUAD_AA = ["CUP_B_US_Officer", "CUP_B_US_Soldier", "CUP_B_US_Soldier", "CUP_B_US_Soldier_AR", "CUP_B_US_Soldier_AR", "CUP_B_US_Soldier_AA", "CUP_B_US_Soldier_AA", "CUP_B_US_Soldier_Engineer_EOD", "CUP_B_US_Medic"];
	WEST_TOWNS_SQUAD_APC_1 = ["CUP_B_US_Officer", "CUP_B_US_Soldier", "CUP_B_US_Soldier_GL", "CUP_B_US_Soldier_AR", "CUP_B_US_Soldier", "CUP_B_US_Soldier_AT", "CUP_B_M1126_ICV_M2_Desert_Slat", "CUP_B_US_Medic", "CUP_B_US_Soldier_Engineer_EOD"];
	WEST_TOWNS_SQUAD_APC_2 = ["CUP_B_US_Officer", "CUP_B_US_Soldier", "CUP_B_US_Soldier_GL", "CUP_B_US_Soldier_AR", "CUP_B_US_Soldier", "CUP_B_US_Soldier_AT", "CUP_B_M1126_ICV_MK19_Desert_Slat", "CUP_B_US_Medic", "CUP_B_US_Soldier_Engineer_EOD"];
	WEST_TOWNS_SQUAD_MOTORIZED_1 = ["CUP_B_US_Officer", "CUP_B_US_Soldier", "CUP_B_US_Soldier_GL", "CUP_B_US_Soldier_AR", "CUP_B_US_Soldier", "CUP_B_US_Soldier_AT", "CUP_B_HMMWV_M2_GPK_USA", "CUP_B_US_Medic", "CUP_B_US_Soldier_Engineer_EOD"];
	WEST_TOWNS_SQUAD_MOTORIZED_2 = ["CUP_B_US_Officer", "CUP_B_US_Soldier", "CUP_B_US_Soldier_HAT", "CUP_B_US_Soldier_AR", "CUP_B_US_Soldier", "CUP_B_US_Soldier_AT", "CUP_B_HMMWV_M2_GPK_USA", "CUP_B_US_Medic", "CUP_B_US_Soldier_Engineer_EOD"];
	WEST_TOWNS_SNIPERS_1 = ["CUP_B_US_Soldier_Marksman", "CUP_B_US_Soldier_Marksman", "CUP_B_US_Soldier_Marksman", "CUP_B_US_Spotter"];
	WEST_TOWNS_SNIPERS_2 = ["CUP_B_US_Sniper_M107", "CUP_B_US_Sniper_M107", "CUP_B_US_Spotter", "CUP_B_US_Spotter"];
	WEST_TOWNS_TANKS_LIGHT = ["CUP_B_M1A2_TUSK_MG_DES_US_Army"];
	WEST_TOWNS_TANKS_MEDIUM = ["CUP_B_M1A2_TUSK_MG_DES_US_Army", "CUP_B_M1A2_TUSK_MG_DES_US_Army"];
	WEST_TOWNS_TANKS_HEAVY = ["CUP_B_M1A2_TUSK_MG_DES_US_Army", "CUP_B_M1A2_TUSK_MG_DES_US_Army", "CUP_B_M1A2_TUSK_MG_DES_US_Army"];

	//--- Naval Units
	WEST_TOWNS_NAVAL_INFANTRY = ["B_diver_F"];
	WEST_TOWNS_NAVAL_SQUADLEADER = ["B_diver_TL_F"];
	WEST_TOWNS_NAVAL_ASSAULT_BOATS = ["B_Boat_Armed_01_minigun_F"];
	WEST_TOWNS_NAVAL_LARGE_ASSAULT_BOATS = ["B_Boat_Armed_01_minigun_F"];
	//--- Naval Teams Templates
	WEST_TOWNS_NAVAL_SQUAD_1 = ["B_diver_TL_F", "B_diver_F", "B_diver_F", "B_diver_F", "B_diver_F", "B_diver_F"];
	WEST_TOWNS_NAVAL_SQUAD_2 = ["B_diver_TL_F", "B_diver_F", "B_diver_F", "B_diver_F", "B_Soldier_AT_F", "B_Soldier_AA_F"];
	WEST_TOWNS_NAVAL_SQUAD_3 = ["B_diver_TL_F", "B_diver_F", "B_Soldier_AT_F", "B_Soldier_AT_F", "B_Soldier_AA_F", "B_Soldier_AA_F"];
	WEST_TOWNS_NAVAL_SQUAD_ASSAULT_BOATS = ["B_Boat_Armed_01_minigun_F", "B_Boat_Armed_01_minigun_F", "B_Boat_Armed_01_minigun_F"];
	WEST_TOWNS_NAVAL_SQUAD_LARGE_ASSAULT_BOATS = ["rhsusf_mkvsoc", "rhsusf_mkvsoc"];
};
if (CTI_TOWNS_OCCUPATION_FORCES = 2) then { 
//--- MIXED TOWN OCCUPATION - vanilla/cup/ofps/etc..
	//--- Infantry
	WEST_SOLDIER = ["CUP_B_US_Soldier", 1];
	WEST_SOLDIER_AA = ["CUP_B_US_Soldier_AA", 1];
	WEST_SOLDIER_AR = ["CUP_B_US_Soldier_AR", 1];
	WEST_SOLDIER_AT = ["CUP_B_US_Soldier_AT", 1];
	WEST_SOLDIER_CREW = ["CUP_B_US_Crew", 1];
	WEST_SOLDIER_LAT = ["CUP_B_US_Soldier_AT", 1];
	WEST_SOLDIER_HAT = ["CUP_B_US_Soldier_HAT", 1];
	WEST_SOLDIER_ENGINEER = ["CUP_B_US_Soldier_Engineer_EOD", 1];
	WEST_SOLDIER_GL = ["CUP_B_US_Soldier_GL", 1];
	WEST_SOLDIER_MEDIC = ["CUP_B_US_Medic", 1];
	// WEST_SOLDIER_MG = "soldiermg";
	WEST_SOLDIER_PILOT = ["CUP_B_US_Pilot", 1];
	WEST_SOLDIER_SQUADLEADER = ["CUP_B_US_Soldier_Marksman", 1];
	WEST_SOLDIER_SNIPER = ["CUP_B_US_Sniper_M107", 1];
	WEST_SOLDIER_TEAMLEADER = ["CUP_B_US_Officer", 1];
	
	//--- Vehicles
	WEST_MOTORIZED_MG = ["CUP_B_HMMWV_M2_GPK_USA", 2];
	WEST_MOTORIZED_GL = ["CUP_B_HMMWV_SOV_USA", 2];

	//--- Infantry - Mixed
	// WEST_SOLDIERS_MG = [WEST_SOLDIER_MG, WEST_SOLDIER_AR];
	WEST_SOLDIERS_MG = [WEST_SOLDIER_AR];
	WEST_SOLDIERS_AT_LIGHT = [WEST_SOLDIER_LAT, WEST_SOLDIER_AT];
	WEST_SOLDIERS_AT_MEDIUM = [WEST_SOLDIER_AT, WEST_SOLDIER_AT, WEST_SOLDIER_HAT];
	WEST_SOLDIERS_AT_HEAVY = [WEST_SOLDIER_AT, WEST_SOLDIER_HAT];
	WEST_SOLDIERS_SPECOPS = [["CUP_B_US_Soldier_Engineer_EOD", 1]];
	WEST_SOLDIERS_ENGINEER = [WEST_SOLDIER_ENGINEER, ["CUP_B_US_Soldier_Engineer_EOD", 1]];
	WEST_SOLDIERS_SNIPERS = [WEST_SOLDIER_SNIPER, ["CUP_B_US_Spotter", 1], ["CUP_B_US_Sniper_M107", 1]];

	//--- Vehicles
	WEST_VEHICLE_AA = [["CUP_B_M6LineBacker_USA_D", 1]];
	WEST_VEHICLE_APC = [["CUP_B_M2A3Bradley_USA_D", 2], ["CUP_B_M1135_ATGMV_Desert_Slat", 2]];
	// WEST_VEHICLE_ARMORED_HEAVY = ["armoheavy1","armoheavy2"];
	WEST_VEHICLE_ARMORED_LIGHT = [["CUP_B_M1A2_TUSK_MG_DES_US_Army", 2]];
	// WEST_VEHICLE_MECHANIZED = ["mechanized1","mechanized2"];
	WEST_VEHICLE_MOTORIZED = [WEST_MOTORIZED_MG, WEST_MOTORIZED_GL, WEST_MOTORIZED_MG];

	//--- Vehicles - Mixed
	WEST_VEHICLES_AA_LIGHT = WEST_VEHICLE_AA;
	// WEST_VEHICLES_LIGHT = WEST_VEHICLE_MECHANIZED + WEST_VEHICLE_MOTORIZED;
	WEST_VEHICLES_LIGHT = WEST_VEHICLE_MOTORIZED;
	WEST_VEHICLES_MEDIUM = WEST_VEHICLE_APC + WEST_VEHICLE_ARMORED_LIGHT;
	WEST_VEHICLES_HEAVY = WEST_VEHICLE_ARMORED_LIGHT;
	
	//--- Town Teams Templates
	WEST_TOWNS_AAV = ["CUP_B_M6LineBacker_USA_D"];
	WEST_TOWNS_AAV_HEAVY = ["CUP_B_M6LineBacker_USA_D", "CUP_B_HMMWV_Avenger_USA", "CUP_B_HMMWV_Avenger_USA"];
	WEST_TOWNS_APC_LIGHT = ["CUP_B_M1135_ATGMV_Desert_Slat", B_APC_Wheeled_01_cannon_F];
	WEST_TOWNS_APC_MEDIUM = ["CUP_B_M1135_ATGMV_Desert_Slat", "CUP_B_M2A3Bradley_USA_D"];
	WEST_TOWNS_APC_HEAVY = ["CUP_B_M2A3Bradley_USA_D", "CUP_B_M2A3Bradley_USA_D", "CUP_B_M2A3Bradley_USA_D"];
	WEST_TOWNS_MOTORIZED_MIXED_HEAVY = ["CUP_B_HMMWV_M2_GPK_USA","CUP_B_HMMWV_SOV_USA","CUP_B_HMMWV_M2_GPK_USA"];
	WEST_TOWNS_MOTORIZED_MIXED_LIGHT = ["CUP_B_HMMWV_M2_GPK_USA","CUP_B_HMMWV_SOV_USA"];
	WEST_TOWNS_MOTORIZED_HMG = ["CUP_B_HMMWV_M2_GPK_USA","CUP_B_HMMWV_M2_GPK_USA"];
	WEST_TOWNS_MOTORIZED_GMG = ["CUP_B_HMMWV_SOV_USA","CUP_B_HMMWV_SOV_USA"];
	WEST_TOWNS_SPECIAL = ["CUP_B_US_Soldier_Engineer_EOD", "CUP_B_US_Soldier_Engineer_EOD", "CUP_B_US_Soldier_Engineer_EOD"];
	WEST_TOWNS_SQUAD_LIGHT = ["CUP_B_US_Officer", "CUP_B_US_Soldier", "CUP_B_US_Soldier", "CUP_B_US_Soldier_AR", "CUP_B_US_Soldier_AT", "CUP_B_US_Soldier_GL", "CUP_B_US_Medic"];
	WEST_TOWNS_SQUAD_LIGHT_2 = ["CUP_B_US_Officer", "CUP_B_US_Soldier_GL", "CUP_B_US_Soldier_GL", "CUP_B_US_Soldier_AR", "CUP_B_US_Soldier", "CUP_B_US_Soldier_AT", "CUP_B_US_Soldier_Engineer_EOD", "CUP_B_US_Medic"];
	WEST_TOWNS_SQUAD_MEDIUM = ["CUP_B_US_Officer", "CUP_B_US_Soldier_GL", "CUP_B_US_Soldier_GL", "CUP_B_US_Soldier_AR", "CUP_B_US_Soldier_AR", "CUP_B_US_Soldier", "CUP_B_US_Soldier", "CUP_B_US_Soldier_HAT", "CUP_B_US_Soldier_AT", "CUP_B_US_Soldier_Engineer_EOD", "CUP_B_US_Medic"];
	WEST_TOWNS_SQUAD_AT = ["CUP_B_US_Officer", "CUP_B_US_Soldier", "CUP_B_US_Soldier", "CUP_B_US_Soldier_AR", "CUP_B_US_Soldier_AT", "CUP_B_US_Soldier_HAT", "CUP_B_US_Soldier_Marksman", "CUP_B_US_Medic"];
	WEST_TOWNS_SQUAD_AA = ["CUP_B_US_Officer", "CUP_B_US_Soldier", "CUP_B_US_Soldier", "CUP_B_US_Soldier_AR", "CUP_B_US_Soldier_AR", "CUP_B_US_Soldier_AA", "CUP_B_US_Soldier_AA", "CUP_B_US_Soldier_Engineer_EOD", "CUP_B_US_Medic"];
	WEST_TOWNS_SQUAD_APC_1 = ["CUP_B_US_Officer", "CUP_B_US_Soldier", "CUP_B_US_Soldier_GL", "CUP_B_US_Soldier_AR", "CUP_B_US_Soldier", "CUP_B_US_Soldier_AT", "CUP_B_M1126_ICV_M2_Desert_Slat", "CUP_B_US_Medic", "CUP_B_US_Soldier_Engineer_EOD"];
	WEST_TOWNS_SQUAD_APC_2 = ["CUP_B_US_Officer", "CUP_B_US_Soldier", "CUP_B_US_Soldier_GL", "CUP_B_US_Soldier_AR", "CUP_B_US_Soldier", "CUP_B_US_Soldier_AT", "B_MRAP_01_hmg_F", "CUP_B_US_Medic", "CUP_B_US_Soldier_Engineer_EOD"];
	WEST_TOWNS_SQUAD_MOTORIZED_1 = ["CUP_B_US_Officer", "CUP_B_US_Soldier", "CUP_B_US_Soldier_GL", "CUP_B_US_Soldier_AR", "CUP_B_US_Soldier", "CUP_B_US_Soldier_AT", "CUP_B_HMMWV_M2_GPK_USA", "CUP_B_US_Medic", "CUP_B_US_Soldier_Engineer_EOD"];
	WEST_TOWNS_SQUAD_MOTORIZED_2 = ["CUP_B_US_Officer", "CUP_B_US_Soldier", "CUP_B_US_Soldier_HAT", "CUP_B_US_Soldier_AR", "CUP_B_US_Soldier", "CUP_B_US_Soldier_AT", "CUP_B_HMMWV_M2_GPK_USA", "CUP_B_US_Medic", "CUP_B_US_Soldier_Engineer_EOD"];
	WEST_TOWNS_SNIPERS_1 = ["CUP_B_US_Soldier_Marksman", "CUP_B_US_Soldier_Marksman", "CUP_B_US_Soldier_Marksman", "CUP_B_US_Spotter"];
	WEST_TOWNS_SNIPERS_2 = ["CUP_B_US_Sniper_M107", "CUP_B_US_Sniper_M107", "CUP_B_US_Spotter", "CUP_B_US_Spotter"];
	WEST_TOWNS_TANKS_LIGHT = ["B_MBT_01_cannon_F"];
	WEST_TOWNS_TANKS_MEDIUM = ["B_MBT_01_cannon_F", "B_MBT_01_cannon_F"];
	WEST_TOWNS_TANKS_HEAVY = ["CUP_B_M1A2_TUSK_MG_DES_US_Army", "CUP_B_M1A2_TUSK_MG_DES_US_Army", "CUP_B_M1A2_TUSK_MG_DES_US_Army"];

	//--- Naval Units
	WEST_TOWNS_NAVAL_INFANTRY = ["B_diver_F"];
	WEST_TOWNS_NAVAL_SQUADLEADER = ["B_diver_TL_F"];
	WEST_TOWNS_NAVAL_ASSAULT_BOATS = ["B_Boat_Armed_01_minigun_F"];
	WEST_TOWNS_NAVAL_LARGE_ASSAULT_BOATS = ["B_Boat_Armed_01_minigun_F"];
	//--- Naval Teams Templates
	WEST_TOWNS_NAVAL_SQUAD_1 = ["B_diver_TL_F", "B_diver_F", "B_diver_F", "B_diver_F", "B_diver_F", "B_diver_F"];
	WEST_TOWNS_NAVAL_SQUAD_2 = ["B_diver_TL_F", "B_diver_F", "B_diver_F", "B_diver_F", "B_Soldier_AT_F", "B_Soldier_AA_F"];
	WEST_TOWNS_NAVAL_SQUAD_3 = ["B_diver_TL_F", "B_diver_F", "B_Soldier_AT_F", "B_Soldier_AT_F", "B_Soldier_AA_F", "B_Soldier_AA_F"];
	WEST_TOWNS_NAVAL_SQUAD_ASSAULT_BOATS = ["B_Boat_Armed_01_minigun_F", "B_Boat_Armed_01_minigun_F", "B_Boat_Armed_01_minigun_F"];
	WEST_TOWNS_NAVAL_SQUAD_LARGE_ASSAULT_BOATS = ["rhsusf_mkvsoc", "rhsusf_mkvsoc"];
};
};

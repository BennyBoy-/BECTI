with missionNamespace do {

if (CTI_TOWNS_OCCUPATION_FORCES = 0) then { 
//--- VANILLA TOWN OCCUPATION
	//--- Infantry
	GUER_SOLDIER = "I_soldier_F";
	GUER_SOLDIER_AA = "I_Soldier_AA_F";
	GUER_SOLDIER_AR = "I_Soldier_AR_F";
	GUER_SOLDIER_AT = "I_Soldier_LAT_F";
	GUER_SOLDIER_CREW = "I_crew_F";
	GUER_SOLDIER_LAT = "I_Soldier_LAT_F";
	GUER_SOLDIER_HAT = "I_Soldier_AT_F";
	GUER_SOLDIER_ENGINEER = "I_engineer_F";
	GUER_SOLDIER_GL = "I_Soldier_GL_F";
	GUER_SOLDIER_MEDIC = "I_medic_F";
	// GUER_SOLDIER_MG = "soldiermg";
	GUER_SOLDIER_PILOT = "I_helipilot_F";
	GUER_SOLDIER_SQUADLEADER = "I_Soldier_SL_F";
	GUER_SOLDIER_SNIPER = "I_Soldier_M_F";
	GUER_SOLDIER_TEAMLEADER = "I_Soldier_TL_F";

	//--- Infantry - Mixed
	// GUER_SOLDIERS_MG = [GUER_SOLDIER_MG, GUER_SOLDIER_AR];
	GUER_SOLDIERS_MG = [GUER_SOLDIER_AR];
	GUER_SOLDIERS_AT_LIGHT = [GUER_SOLDIER_LAT, GUER_SOLDIER_AT];
	GUER_SOLDIERS_AT_MEDIUM = [GUER_SOLDIER_AT, GUER_SOLDIER_AT, GUER_SOLDIER_HAT];
	GUER_SOLDIERS_AT_HEAVY = [GUER_SOLDIER_AT, GUER_SOLDIER_HAT];
	GUER_SOLDIERS_SPECOPS = ["I_Soldier_exp_F"];
	GUER_SOLDIERS_ENGINEER = [GUER_SOLDIER_ENGINEER, "I_Soldier_repair_F"];
	GUER_SOLDIERS_SNIPERS = [GUER_SOLDIER_SNIPER, "I_Spotter_F", "I_Sniper_F"];

	//--- Vehicles
	// GUER_VEHICLE_AA = ["aa1","aa2"];
	GUER_VEHICLE_APC = ["I_APC_Wheeled_03_cannon_F"]; //todo: replace with real veh later on
	// GUER_VEHICLE_APC = ["B_APC_Wheeled_01_cannon_F", "O_APC_Wheeled_02_rcws_F", "B_APC_Tracked_01_rcws_F", "O_APC_Wheeled_02_rcws_F"]; //todo: replace with real veh later on
	// GUER_VEHICLE_ARMORED_HEAVY = ["armoheavy1","armoheavy2"];
	// GUER_VEHICLE_ARMORED_LIGHT = ["armorlight1","armorlight2"];
	// GUER_VEHICLE_MECHANIZED = ["mechanized1","mechanized2"];
	GUER_VEHICLE_MOTORIZED = ["I_MRAP_03_hmg_F","I_MRAP_03_gmg_F","I_MRAP_03_hmg_F"];

	//--- Vehicles - Mixed
	// GUER_VEHICLES_AA_LIGHT = GUER_VEHICLE_AA;
	// GUER_VEHICLES_LIGHT = GUER_VEHICLE_MECHANIZED + GUER_VEHICLE_MOTORIZED;
	GUER_VEHICLES_LIGHT = GUER_VEHICLE_MOTORIZED;
	// GUER_VEHICLES_MEDIUM = GUER_VEHICLE_ARMORED_LIGHT + GUER_VEHICLE_APC;
	GUER_VEHICLES_MEDIUM = GUER_VEHICLE_APC;
	// GUER_VEHICLES_MEDIUM = GUER_VEHICLE_MOTORIZED;
	// GUER_VEHICLES_HEAVY = GUER_VEHICLE_ARMORED_LIGHT + GUER_VEHICLE_ARMORED_HEAVY;
	
	//--- Town Teams Templates
	GUER_TOWNS_APC_LIGHT = ["I_APC_Wheeled_03_cannon_F"];
	GUER_TOWNS_APC_MEDIUM = ["I_APC_Wheeled_03_cannon_F", "I_APC_Wheeled_03_cannon_F"];
	GUER_TOWNS_APC_HEAVY = ["I_APC_Wheeled_03_cannon_F", "I_APC_Wheeled_03_cannon_F", "I_APC_Wheeled_03_cannon_F"];
	GUER_TOWNS_MOTORIZED_MIXED_HEAVY = ["I_MRAP_03_hmg_F","I_MRAP_03_gmg_F","I_MRAP_03_hmg_F"];
	GUER_TOWNS_MOTORIZED_MIXED_LIGHT = ["I_MRAP_03_hmg_F","I_MRAP_03_gmg_F"];
	GUER_TOWNS_MOTORIZED_HMG = ["I_MRAP_03_hmg_F","I_MRAP_03_hmg_F"];
	GUER_TOWNS_MOTORIZED_GMG = ["I_MRAP_03_gmg_F","I_MRAP_03_gmg_F"];
	GUER_TOWNS_SPECIAL = ["I_Soldier_exp_F", "I_Soldier_exp_F", "I_Soldier_exp_F"];
	GUER_TOWNS_SQUAD_LIGHT = ["I_Soldier_SL_F", "I_soldier_F", "I_soldier_F", "I_Soldier_AR_F", "I_Soldier_LAT_F", "I_Soldier_GL_F", "I_medic_F"];
	GUER_TOWNS_SQUAD_LIGHT_2 = ["I_Soldier_SL_F", "I_Soldier_GL_F", "I_Soldier_GL_F", "I_Soldier_AR_F", "I_soldier_F", "I_Soldier_LAT_F", "I_engineer_F", "I_medic_F"];
	GUER_TOWNS_SQUAD_MEDIUM = ["I_Soldier_SL_F", "I_Soldier_GL_F", "I_Soldier_GL_F", "I_Soldier_AR_F", "I_Soldier_AR_F", "I_soldier_F", "I_soldier_F", "I_Soldier_LAT_F", "I_Soldier_AT_F", "I_engineer_F", "I_medic_F"];
	GUER_TOWNS_SQUAD_AT = ["I_Soldier_SL_F", "I_soldier_F", "I_soldier_F", "I_Soldier_AR_F", "I_Soldier_LAT_F", "I_Soldier_AT_F", "I_Soldier_M_F", "I_medic_F"];
	GUER_TOWNS_SQUAD_AA = ["I_Soldier_SL_F", "I_soldier_F", "I_soldier_F", "I_Soldier_AR_F", "I_Soldier_AR_F", "I_Soldier_AA_F", "I_Soldier_AA_F", "I_engineer_F", "I_medic_F"];
	GUER_TOWNS_SQUAD_APC_1 = ["I_Soldier_SL_F", "I_soldier_F", "I_Soldier_GL_F", "I_Soldier_AR_F", "I_soldier_F", "I_Soldier_LAT_F", "I_APC_Wheeled_03_cannon_F", "I_medic_F"];
	GUER_TOWNS_SQUAD_MOTORIZED_1 = ["I_Soldier_SL_F", "I_soldier_F", "I_Soldier_GL_F", "I_Soldier_AR_F", "I_soldier_F", "I_Soldier_LAT_F", "I_MRAP_03_hmg_F", "I_medic_F"];
	GUER_TOWNS_SQUAD_MOTORIZED_2 = ["I_Soldier_SL_F", "I_soldier_F", "I_Soldier_AT_F", "I_Soldier_AR_F", "I_soldier_F", "I_Soldier_LAT_F", "I_MRAP_03_hmg_F", "I_medic_F"];
	GUER_TOWNS_SNIPERS_1 = ["I_Soldier_M_F", "I_Soldier_M_F", "I_Soldier_M_F", "I_Spotter_F"];
	GUER_TOWNS_SNIPERS_2 = ["I_Soldier_M_F", "I_Soldier_M_F", "I_Soldier_exp_F", "I_Spotter_F"];
	
	//--- Naval Units
	GUER_TOWNS_NAVAL_INFANTRY = ["I_diver_F"];
	GUER_TOWNS_NAVAL_SQUADLEADER = ["I_diver_TL_F"];
	GUER_TOWNS_NAVAL_ASSAULT_BOAT = ["I_Boat_Armed_01_minigun_F"];
	GUER_TOWNS_NAVAL_LARGE_ASSAULT_BOAT = ["rhsusf_mkvsoc"];
	//--- Naval Teams Templates
	GUER_TOWNS_NAVAL_SQUAD_1 = ["I_diver_TL_F", "I_diver_F", "I_diver_F", "I_diver_F", "I_diver_F", "I_diver_F"];
	GUER_TOWNS_NAVAL_SQUAD_2 = ["I_diver_TL_F", "I_diver_F", "I_diver_F", "I_diver_F", "I_Soldier_AT_F", "I_Soldier_AA_F"];
	GUER_TOWNS_NAVAL_SQUAD_3 = ["I_diver_TL_F", "I_diver_F", "I_Soldier_AT_F", "I_Soldier_AT_F", "I_Soldier_AA_F", "I_Soldier_AA_F"];
	GUER_TOWNS_NAVAL_SQUAD_ASSAULT_BOATS = ["I_Boat_Armed_01_minigun_F", "I_Boat_Armed_01_minigun_F", "I_Boat_Armed_01_minigun_F"];
	GUER_TOWNS_NAVAL_SQUAD_LARGE_ASSAULT_BOATS = ["rhsusf_mkvsoc", "rhsusf_mkvsoc"];
};
if (CTI_TOWNS_OCCUPATION_FORCES = 1) then { 
//--- CUP TOWN OCCUPATION
	//--- Infantry
	GUER_SOLDIER = "CUP_I_TK_GUE_Guerilla_Enfield";
	GUER_SOLDIER_AA = "CUP_I_TK_GUE_Soldier_AA";
	GUER_SOLDIER_AR = "CUP_I_TK_GUE_Soldier_MG";
	GUER_SOLDIER_AT = "CUP_I_TK_GUE_Soldier_HAT";
	GUER_SOLDIER_CREW = "CUP_I_TK_GUE_Commander";
	GUER_SOLDIER_LAT = "CUP_I_TK_GUE_Soldier_AT";
	GUER_SOLDIER_HAT = "CUP_I_TK_GUE_Soldier_HAT";
	GUER_SOLDIER_ENGINEER = "CUP_I_TK_GUE_Mechanic";
	GUER_SOLDIER_GL = "CUP_I_TK_GUE_Soldier_GL";
	GUER_SOLDIER_MEDIC = "CUP_I_TK_GUE_Guerilla_Medic";
	// GUER_SOLDIER_MG = "";
	GUER_SOLDIER_PILOT = "CUP_I_TK_GUE_Commander";
	GUER_SOLDIER_SQUADLEADER = "CUP_I_TK_GUE_Demo";
	GUER_SOLDIER_SNIPER = "CUP_I_TK_GUE_Sniper";
	GUER_SOLDIER_TEAMLEADER = "CUP_I_TK_GUE_Soldier_TL";

	//--- Infantry - Mixed
	// GUER_SOLDIERS_MG = [GUER_SOLDIER_MG, GUER_SOLDIER_AR];
	GUER_SOLDIERS_MG = [GUER_SOLDIER_AR];
	GUER_SOLDIERS_AT_LIGHT = [GUER_SOLDIER_LAT, GUER_SOLDIER_AT];
	GUER_SOLDIERS_AT_MEDIUM = [GUER_SOLDIER_AT, GUER_SOLDIER_AT, GUER_SOLDIER_HAT];
	GUER_SOLDIERS_AT_HEAVY = [GUER_SOLDIER_AT, GUER_SOLDIER_HAT];
	GUER_SOLDIERS_SPECOPS = ["CUP_I_TK_GUE_Demo"];
	GUER_SOLDIERS_ENGINEER = [GUER_SOLDIER_ENGINEER];
	GUER_SOLDIERS_SNIPERS = [GUER_SOLDIER_SNIPER];

	//--- Vehicles
	// GUER_VEHICLE_AA = ["aa1","aa2"];
	GUER_VEHICLE_APC = ["CUP_I_BMP1_TK_GUE", "CUP_I_BTR40_MG_TKG"]; //todo: replace with real veh later on
	// GUER_VEHICLE_APC = ["B_APC_Wheeled_01_cannon_F", "O_APC_Wheeled_02_rcws_F", "B_APC_Tracked_01_rcws_F", "O_APC_Wheeled_02_rcws_F"]; //todo: replace with real veh later on
	// GUER_VEHICLE_ARMORED_HEAVY = ["armoheavy1","armoheavy2"];
	// GUER_VEHICLE_ARMORED_LIGHT = ["armorlight1","armorlight2"];
	// GUER_VEHICLE_MECHANIZED = ["mechanized1","mechanized2"];
	GUER_VEHICLE_MOTORIZED = ["CUP_I_BRDM2_HQ_TK_Gue", "CUP_I_BRDM2_ATGM_TK_Gue", "CUP_I_BRDM2_TK_Gue"];

	//--- Vehicles - Mixed
	// GUER_VEHICLES_AA_LIGHT = GUER_VEHICLE_AA;
	// GUER_VEHICLES_LIGHT = GUER_VEHICLE_MECHANIZED + GUER_VEHICLE_MOTORIZED;
	GUER_VEHICLES_LIGHT = GUER_VEHICLE_MOTORIZED;
	// GUER_VEHICLES_MEDIUM = GUER_VEHICLE_ARMORED_LIGHT + GUER_VEHICLE_APC;
	GUER_VEHICLES_MEDIUM = GUER_VEHICLE_APC;
	// GUER_VEHICLES_MEDIUM = GUER_VEHICLE_MOTORIZED;
	// GUER_VEHICLES_HEAVY = GUER_VEHICLE_ARMORED_LIGHT + GUER_VEHICLE_ARMORED_HEAVY;
	
	//--- Town Teams Templates
        GUER_TOWNS_APC_LIGHT = ["CUP_I_BTR40_TKG"];
	GUER_TOWNS_APC_MEDIUM = ["CUP_I_BTR40_MG_TKG"];
	GUER_TOWNS_APC_HEAVY = ["CUP_I_BMP1_TK_GUE"];
	GUER_TOWNS_MOTORIZED_MIXED_HEAVY = ["CUP_I_BRDM2_HQ_TK_Gue", "CUP_I_BRDM2_ATGM_TK_Gue", "CUP_I_BRDM2_TK_Gue"];
	GUER_TOWNS_MOTORIZED_MIXED_LIGHT = ["CUP_I_BRDM2_HQ_TK_Gue", "CUP_I_BRDM2_ATGM_TK_Gue", "CUP_I_BRDM2_TK_Gue"];
	GUER_TOWNS_MOTORIZED_HMG = ["CUP_I_BRDM2_TK_Gue"];
	GUER_TOWNS_MOTORIZED_GMG = ["CUP_I_BRDM2_ATGM_TK_Gue"];
	GUER_TOWNS_SPECIAL = ["CUP_I_TK_GUE_Demo", "CUP_I_TK_GUE_Commander", "CUP_I_TK_GUE_Sniper"];
	GUER_TOWNS_SQUAD_LIGHT = ["CUP_I_TK_GUE_Guerilla_Enfield", "CUP_I_TK_GUE_Soldier_TL", "CUP_I_TK_GUE_Mechanic", "CUP_I_TK_GUE_Guerilla_Enfield", "CUP_I_TK_GUE_Soldier_AT", "CUP_I_TK_GUE_Guerilla_Enfield", "CUP_I_TK_GUE_Guerilla_Medic"];
	GUER_TOWNS_SQUAD_LIGHT_2 = ["CUP_I_TK_GUE_Soldier_GL", "CUP_I_TK_GUE_Soldier_TL", "CUP_I_TK_GUE_Mechanic", "CUP_I_TK_GUE_Soldier_MG", "CUP_I_TK_GUE_Soldier_AT", "CUP_I_TK_GUE_Guerilla_Enfield", "CUP_I_TK_GUE_Guerilla_Medic"];
	GUER_TOWNS_SQUAD_MEDIUM = ["CUP_I_TK_GUE_Soldier_GL", "CUP_I_TK_GUE_Soldier_TL", "CUP_I_TK_GUE_Soldier_HAT", "CUP_I_TK_GUE_Soldier_MG", "CUP_I_TK_GUE_Soldier_GL", "CUP_I_TK_GUE_Sniper", "CUP_I_TK_GUE_Mechanic", "CUP_I_TK_GUE_Soldier_AA", "CUP_I_TK_GUE_Soldier_AT", "CUP_I_TK_GUE_Guerilla_Enfield", "CUP_I_TK_GUE_Guerilla_Medic"];
	GUER_TOWNS_SQUAD_AT = ["I_Soldier_SL_F", "I_soldier_F", "I_soldier_F", "I_Soldier_AR_F", "I_Soldier_LAT_F", "I_Soldier_AT_F", "I_Soldier_M_F", "I_medic_F"];
	GUER_TOWNS_SQUAD_AA = ["I_Soldier_SL_F", "I_soldier_F", "I_soldier_F", "I_Soldier_AR_F", "I_Soldier_AR_F", "I_Soldier_AA_F", "I_Soldier_AA_F", "I_engineer_F", "I_medic_F"];
	GUER_TOWNS_SQUAD_APC_1 = ["CUP_I_TK_GUE_Soldier_GL", "CUP_I_TK_GUE_Soldier_TL", "CUP_I_TK_GUE_Mechanic", "CUP_I_TK_GUE_Soldier_MG", "CUP_I_TK_GUE_Soldier_AT", "CUP_I_BMP1_TK_GUE", "CUP_I_TK_GUE_Guerilla_Medic"];
	GUER_TOWNS_SQUAD_MOTORIZED_1 = ["CUP_I_TK_GUE_Soldier_GL", "CUP_I_TK_GUE_Soldier_TL", "CUP_I_TK_GUE_Mechanic", "CUP_I_TK_GUE_Soldier_MG", "CUP_I_TK_GUE_Soldier_AT", "CUP_I_BTR40_MG_TKG", "CUP_I_TK_GUE_Guerilla_Medic"];
	GUER_TOWNS_SQUAD_MOTORIZED_2 = ["CUP_I_TK_GUE_Soldier_GL", "CUP_I_TK_GUE_Soldier_TL", "CUP_I_TK_GUE_Mechanic", "CUP_I_TK_GUE_Soldier_MG", "CUP_I_TK_GUE_Soldier_AT", "CUP_I_BTR40_TKG", "CUP_I_TK_GUE_Guerilla_Medic"];
	GUER_TOWNS_SNIPERS_1 = ["CUP_I_TK_GUE_Commander", "CUP_I_TK_GUE_Sniper", "CUP_I_TK_GUE_Sniper", "CUP_I_TK_GUE_Sniper"];
	GUER_TOWNS_SNIPERS_2 = ["CUP_I_TK_GUE_Commander", "CUP_I_TK_GUE_Sniper", "CUP_I_TK_GUE_Sniper", "CUP_I_TK_GUE_Sniper"];
	
	//--- Naval Units
	GUER_TOWNS_NAVAL_INFANTRY = ["I_diver_F"];
	GUER_TOWNS_NAVAL_SQUADLEADER = ["I_diver_TL_F"];
	GUER_TOWNS_NAVAL_ASSAULT_BOAT = ["I_Boat_Armed_01_minigun_F"];
	GUER_TOWNS_NAVAL_LARGE_ASSAULT_BOAT = ["rhsusf_mkvsoc"];
	//--- Naval Teams Templates
	GUER_TOWNS_NAVAL_SQUAD_1 = ["I_diver_TL_F", "I_diver_F", "I_diver_F", "I_diver_F", "I_diver_F", "I_diver_F"];
	GUER_TOWNS_NAVAL_SQUAD_2 = ["I_diver_TL_F", "I_diver_F", "I_diver_F", "I_diver_F", "I_Soldier_AT_F", "I_Soldier_AA_F"];
	GUER_TOWNS_NAVAL_SQUAD_3 = ["I_diver_TL_F", "I_diver_F", "I_Soldier_AT_F", "I_Soldier_AT_F", "I_Soldier_AA_F", "I_Soldier_AA_F"];
	GUER_TOWNS_NAVAL_SQUAD_ASSAULT_BOATS = ["I_Boat_Armed_01_minigun_F", "I_Boat_Armed_01_minigun_F", "I_Boat_Armed_01_minigun_F"];
	GUER_TOWNS_NAVAL_SQUAD_LARGE_ASSAULT_BOATS = ["rhsusf_mkvsoc", "rhsusf_mkvsoc"];
};
if (CTI_TOWNS_OCCUPATION_FORCES = 2) then { 
//--- MIXED TOWN OCCUPATION - vanilla/cup/ofps/etc..
	//--- Infantry
	GUER_SOLDIER = "CUP_I_TK_GUE_Guerilla_Enfield";
	GUER_SOLDIER_AA = "CUP_I_TK_GUE_Soldier_AA";
	GUER_SOLDIER_AR = "CUP_I_TK_GUE_Soldier_MG";
	GUER_SOLDIER_AT = "CUP_I_TK_GUE_Soldier_HAT";
	GUER_SOLDIER_CREW = "CUP_I_TK_GUE_Commander";
	GUER_SOLDIER_LAT = "CUP_I_TK_GUE_Soldier_AT";
	GUER_SOLDIER_HAT = "CUP_I_TK_GUE_Soldier_HAT";
	GUER_SOLDIER_ENGINEER = "CUP_I_TK_GUE_Mechanic";
	GUER_SOLDIER_GL = "CUP_I_TK_GUE_Soldier_GL";
	GUER_SOLDIER_MEDIC = "CUP_I_TK_GUE_Guerilla_Medic";
	// GUER_SOLDIER_MG = "";
	GUER_SOLDIER_PILOT = "CUP_I_TK_GUE_Commander";
	GUER_SOLDIER_SQUADLEADER = "CUP_I_TK_GUE_Demo";
	GUER_SOLDIER_SNIPER = "CUP_I_TK_GUE_Sniper";
	GUER_SOLDIER_TEAMLEADER = "CUP_I_TK_GUE_Soldier_TL";

	//--- Infantry - Mixed
	// GUER_SOLDIERS_MG = [GUER_SOLDIER_MG, GUER_SOLDIER_AR];
	GUER_SOLDIERS_MG = [GUER_SOLDIER_AR];
	GUER_SOLDIERS_AT_LIGHT = [GUER_SOLDIER_LAT, GUER_SOLDIER_AT];
	GUER_SOLDIERS_AT_MEDIUM = [GUER_SOLDIER_AT, GUER_SOLDIER_AT, GUER_SOLDIER_HAT];
	GUER_SOLDIERS_AT_HEAVY = [GUER_SOLDIER_AT, GUER_SOLDIER_HAT];
	GUER_SOLDIERS_SPECOPS = ["CUP_I_TK_GUE_Demo"];
	GUER_SOLDIERS_ENGINEER = [GUER_SOLDIER_ENGINEER];
	GUER_SOLDIERS_SNIPERS = [GUER_SOLDIER_SNIPER];

	//--- Vehicles
	// GUER_VEHICLE_AA = ["aa1","aa2"];
	GUER_VEHICLE_APC = ["CUP_I_BMP1_TK_GUE", "CUP_I_BTR40_MG_TKG"]; //todo: replace with real veh later on
	// GUER_VEHICLE_APC = ["B_APC_Wheeled_01_cannon_F", "O_APC_Wheeled_02_rcws_F", "B_APC_Tracked_01_rcws_F", "O_APC_Wheeled_02_rcws_F"]; //todo: replace with real veh later on
	// GUER_VEHICLE_ARMORED_HEAVY = ["armoheavy1","armoheavy2"];
	// GUER_VEHICLE_ARMORED_LIGHT = ["armorlight1","armorlight2"];
	// GUER_VEHICLE_MECHANIZED = ["mechanized1","mechanized2"];
	GUER_VEHICLE_MOTORIZED = ["CUP_I_BRDM2_HQ_TK_Gue", "CUP_I_BRDM2_ATGM_TK_Gue", "CUP_I_BRDM2_TK_Gue", "I_MRAP_03_hmg_F", "I_MRAP_03_gmg_F"];

	//--- Vehicles - Mixed
	// GUER_VEHICLES_AA_LIGHT = GUER_VEHICLE_AA;
	// GUER_VEHICLES_LIGHT = GUER_VEHICLE_MECHANIZED + GUER_VEHICLE_MOTORIZED;
	GUER_VEHICLES_LIGHT = GUER_VEHICLE_MOTORIZED;
	// GUER_VEHICLES_MEDIUM = GUER_VEHICLE_ARMORED_LIGHT + GUER_VEHICLE_APC;
	GUER_VEHICLES_MEDIUM = GUER_VEHICLE_APC;
	// GUER_VEHICLES_MEDIUM = GUER_VEHICLE_MOTORIZED;
	// GUER_VEHICLES_HEAVY = GUER_VEHICLE_ARMORED_LIGHT + GUER_VEHICLE_ARMORED_HEAVY;
	
	//--- Town Teams Templates
        GUER_TOWNS_APC_LIGHT = ["CUP_I_BTR40_TKG"];
	GUER_TOWNS_APC_MEDIUM = ["CUP_I_BTR40_MG_TKG"];
	GUER_TOWNS_APC_HEAVY = ["CUP_I_BMP1_TK_GUE"];
	GUER_TOWNS_MOTORIZED_MIXED_HEAVY = ["CUP_I_BRDM2_HQ_TK_Gue", "CUP_I_BRDM2_ATGM_TK_Gue", "CUP_I_BRDM2_TK_Gue"];
	GUER_TOWNS_MOTORIZED_MIXED_LIGHT = ["CUP_I_BRDM2_HQ_TK_Gue", "CUP_I_BRDM2_ATGM_TK_Gue", "CUP_I_BRDM2_TK_Gue"];
	GUER_TOWNS_MOTORIZED_HMG = ["CUP_I_BRDM2_TK_Gue"];
	GUER_TOWNS_MOTORIZED_GMG = ["I_MRAP_03_gmg_F","I_MRAP_03_gmg_F"];
	GUER_TOWNS_SPECIAL = ["CUP_I_TK_GUE_Demo", "CUP_I_TK_GUE_Commander", "CUP_I_TK_GUE_Sniper"];
	GUER_TOWNS_SQUAD_LIGHT = ["CUP_I_TK_GUE_Guerilla_Enfield", "CUP_I_TK_GUE_Soldier_TL", "CUP_I_TK_GUE_Mechanic", "CUP_I_TK_GUE_Guerilla_Enfield", "CUP_I_TK_GUE_Soldier_AT", "CUP_I_TK_GUE_Guerilla_Enfield", "CUP_I_TK_GUE_Guerilla_Medic"];
	GUER_TOWNS_SQUAD_LIGHT_2 = ["I_Soldier_SL_F", "I_Soldier_GL_F", "I_Soldier_GL_F", "I_Soldier_AR_F", "I_soldier_F", "I_Soldier_LAT_F", "I_engineer_F", "I_medic_F"];
	GUER_TOWNS_SQUAD_MEDIUM = ["CUP_I_TK_GUE_Soldier_GL", "CUP_I_TK_GUE_Soldier_TL", "CUP_I_TK_GUE_Soldier_HAT", "CUP_I_TK_GUE_Soldier_MG", "CUP_I_TK_GUE_Soldier_GL", "CUP_I_TK_GUE_Sniper", "CUP_I_TK_GUE_Mechanic", "CUP_I_TK_GUE_Soldier_AA", "CUP_I_TK_GUE_Soldier_AT", "CUP_I_TK_GUE_Guerilla_Enfield", "CUP_I_TK_GUE_Guerilla_Medic"];
	GUER_TOWNS_SQUAD_AT = ["CUP_I_TK_GUE_Soldier_TL", "CUP_I_TK_GUE_Guerilla_Enfield", "CUP_I_TK_GUE_Guerilla_Enfield", "CUP_I_TK_GUE_Soldier_MG", "CUP_I_TK_GUE_Soldier_AT", "CUP_I_TK_GUE_Soldier_HAT", "CUP_I_TK_GUE_Guerilla_Medic", "CUP_I_TK_GUE_Guerilla_Medic"];
	GUER_TOWNS_SQUAD_AA = ["CUP_I_TK_GUE_Soldier_TL", "CUP_I_TK_GUE_Guerilla_Enfield", "CUP_I_TK_GUE_Guerilla_Enfield", "CUP_I_TK_GUE_Soldier_MG", "CUP_I_TK_GUE_Soldier_AA", "CUP_I_TK_GUE_Soldier_AA", "CUP_I_TK_GUE_Guerilla_Medic", "CUP_I_TK_GUE_Mechanic"];
	GUER_TOWNS_SQUAD_APC_1 = ["CUP_I_TK_GUE_Soldier_GL", "CUP_I_TK_GUE_Soldier_TL", "CUP_I_TK_GUE_Mechanic", "CUP_I_TK_GUE_Soldier_MG", "CUP_I_TK_GUE_Soldier_AT", "CUP_I_BMP1_TK_GUE", "CUP_I_TK_GUE_Guerilla_Medic"];
	GUER_TOWNS_SQUAD_MOTORIZED_1 = ["I_Soldier_SL_F", "I_soldier_F", "I_Soldier_GL_F", "I_Soldier_AR_F", "I_soldier_F", "I_Soldier_LAT_F", "I_MRAP_03_hmg_F", "I_medic_F"];
	GUER_TOWNS_SQUAD_MOTORIZED_2 = ["CUP_I_TK_GUE_Soldier_GL", "CUP_I_TK_GUE_Soldier_TL", "CUP_I_TK_GUE_Mechanic", "CUP_I_TK_GUE_Soldier_MG", "CUP_I_TK_GUE_Soldier_AT", "CUP_I_BTR40_TKG", "CUP_I_TK_GUE_Guerilla_Medic"];
	GUER_TOWNS_SNIPERS_1 = ["I_Soldier_M_F", "I_Soldier_M_F", "I_Soldier_M_F", "I_Spotter_F"];
	GUER_TOWNS_SNIPERS_2 = ["CUP_I_TK_GUE_Commander", "CUP_I_TK_GUE_Sniper", "CUP_I_TK_GUE_Sniper", "CUP_I_TK_GUE_Sniper"];
	
	//--- Naval Units
	GUER_TOWNS_NAVAL_INFANTRY = ["I_diver_F"];
	GUER_TOWNS_NAVAL_SQUADLEADER = ["I_diver_TL_F"];
	GUER_TOWNS_NAVAL_ASSAULT_BOAT = ["I_Boat_Armed_01_minigun_F"];
	GUER_TOWNS_NAVAL_LARGE_ASSAULT_BOAT = ["rhsusf_mkvsoc"];
	//--- Naval Teams Templates
	GUER_TOWNS_NAVAL_SQUAD_1 = ["I_diver_TL_F", "I_diver_F", "I_diver_F", "I_diver_F", "I_diver_F", "I_diver_F"];
	GUER_TOWNS_NAVAL_SQUAD_2 = ["I_diver_TL_F", "I_diver_F", "I_diver_F", "I_diver_F", "I_Soldier_AT_F", "I_Soldier_AA_F"];
	GUER_TOWNS_NAVAL_SQUAD_3 = ["I_diver_TL_F", "I_diver_F", "I_Soldier_AT_F", "I_Soldier_AT_F", "I_Soldier_AA_F", "I_Soldier_AA_F"];
	GUER_TOWNS_NAVAL_SQUAD_ASSAULT_BOATS = ["I_Boat_Armed_01_minigun_F", "I_Boat_Armed_01_minigun_F", "I_Boat_Armed_01_minigun_F"];
	GUER_TOWNS_NAVAL_SQUAD_LARGE_ASSAULT_BOATS = ["rhsusf_mkvsoc", "rhsusf_mkvsoc"];
};
};

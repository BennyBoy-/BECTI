private ["_side", "_u"];

_side = _this;

missionNamespace setVariable [format["CTI_%1_Commander", _side], "O_officer_F"];
missionNamespace setVariable [format["CTI_%1_Worker", _side], "O_Soldier_lite_F"];

missionNamespace setVariable [format["CTI_%1_Diver", _side], "O_diver_F"];
missionNamespace setVariable [format["CTI_%1_Soldier", _side], "O_Soldier_F"];
missionNamespace setVariable [format["CTI_%1_Crew", _side], "O_crew_F"];
missionNamespace setVariable [format["CTI_%1_Pilot", _side], "O_Helipilot_F"];

missionNamespace setVariable [format["CTI_%1_Vehicles_Startup", _side], [ 
	["O_Truck_03_medical_F", [
		["CUP_arifle_AK74_GL", 4], ["CUP_30Rnd_762x39_AK47_M", 50],
		["CUP_launch_RPG18", 5], ["CUP_RPG18_M", 20],
		["CUP_HandGrenade_M67", 20],
		["CUP_30Rnd_545x39_AK_M", 30],
		["CUP_30Rnd_TE1_Red_Tracer_545x39_AK_M", 10],
		["CUP_1Rnd_HE_GP25_M", 24],
		["CUP_FlareRed_GP25_M", 27],
		["CUP_1Rnd_SmokeRed_GP25_M", 9],
		["SmokeShellRed", 8],
		["firstaidkit", 20],
		["Chemlight_red", 36],
		["Toolkit", 4],
		["B_Kitbag_cbr", 4]
	]],
	["O_MRAP_02_F", [
		["Toolkit", 2],
		["firstaidkit", 10],
		["CUP_30Rnd_762x39_AK47_M", 25],
		["CUP_launch_RPG18", 5],
		["CUP_RPG18_M", 10]
	]],
	["OFPS_BRDM2", [
		["Toolkit", 2],
		["firstaidkit", 10],
		["CUP_30Rnd_762x39_AK47_M", 25],
		["CUP_launch_RPG18", 5],
		["CUP_RPG18_M", 10]
	]],
	["OFPS_BTR60", [
		["Toolkit", 2],
		["firstaidkit", 10],
		["CUP_30Rnd_762x39_AK47_M", 25],
		["CUP_launch_RPG18", 5],
		["CUP_RPG18_M", 10]
	]]
	//,	["O_Heli_Light_02_unarmed_F", []]
]];

//--- Units - Barracks
_u = [];
_u pushBack 'O_soldier_AR_F';
_u pushBack 'O_Soldier_A_F';
_u pushBack 'O_soldier_exp_F';
_u pushBack 'O_Soldier_GL_F';
_u pushBack 'O_soldier_M_F';
_u pushBack 'O_medic_F';
_u pushBack 'O_Soldier_F';
_u pushBack 'O_soldier_PG_F';
_u pushBack 'O_engineer_F';
_u pushBack 'O_sniper_F';
_u pushBack 'O_soldier_repair_F';
_u pushBack 'O_soldier_LAT_F';
_u pushBack 'O_soldier_AA_F';
_u pushBack 'O_soldier_AT_F';
_u pushBack 'O_spotter_F';
_u pushBack 'O_soldier_UAV_F';
_u pushBack 'O_Helipilot_F';
_u pushBack 'O_crew_F';
_u pushBack 'O_Soldier_TL_F';
_u pushBack 'O_Soldier_SL_F';
//--- APEX UNITS
if (CTI_APEX_ADDON > 0) then { 
	//CAST Pacfic
	_u pushBack 'O_T_soldier_AR_F';
	_u pushBack 'O_T_Soldier_A_F';
	_u pushBack 'O_T_Soldier_exp_F';
	_u pushBack 'O_T_Soldier_GL_F';
	_u pushBack 'O_T_Soldier_M_F';
	_u pushBack 'O_T_Medic_F';
	_u pushBack 'O_T_Soldier_F';
	_u pushBack 'O_T_Soldier_PG_F';
	_u pushBack 'O_T_Engineer_F';
	_u pushBack 'O_T_Soldier_repair_F';
	_u pushBack 'O_T_Soldier_LAT_F';
	_u pushBack 'O_T_Soldier_AA_F';
	_u pushBack 'O_T_Soldier_AT_F';
	_u pushBack 'O_T_Soldier_UAV_F';
	_u pushBack 'O_T_Helipilot_F';
	_u pushBack 'O_T_Crew_F';
	_u pushBack 'O_T_Soldier_TL_F';
	_u pushBack 'O_T_Soldier_SL_F';
	//Special Forces
	_u pushBack 'O_T_Diver_F';
	_u pushBack 'O_T_Diver_TL_F';
	_u pushBack 'O_T_Recon_Exp_F';
	_u pushBack 'O_T_Recon_JTAC_F';
	_u pushBack 'O_T_Recon_Medic_F';
	_u pushBack 'O_T_Recon_F';
	_u pushBack 'O_T_Recon_LAT_F';
	_u pushBack 'O_T_Recon_TL_F';
	_u pushBack 'O_T_Sniper_F';
	_u pushBack 'O_T_ghillie_tna_F';
	_u pushBack 'O_T_Spotter_F';
	//PACIFIC Viper
	_u pushBack 'O_V_Soldier_Exp_ghex_F';
	_u pushBack 'O_V_Soldier_JTAC_ghex_F';
	_u pushBack 'O_V_Soldier_M_ghex_F';
	_u pushBack 'O_V_Soldier_ghex_F';
	_u pushBack 'O_V_Soldier_Medic_ghex_F';
	_u pushBack 'O_V_Soldier_LAT_ghex_F';
	_u pushBack 'O_V_Soldier_TL_ghex_F';
};
//--- CUP UNITS
if (CTI_CUP_ADDON > 0) then { 
_u pushBack 'CUP_O_RU_Soldier';
_u pushBack 'CUP_O_RU_Soldier_AA';
_u pushBack 'CUP_O_RU_Soldier_AR';
_u pushBack 'CUP_O_RU_Crew';
_u pushBack 'CUP_O_RU_Soldier_AT';
_u pushBack 'CUP_O_RU_Soldier_HAT';
_u pushBack 'CUP_O_RU_Engineer';
_u pushBack 'CUP_O_RU_Soldier_TL';
_u pushBack 'CUP_O_RU_Medic';
_u pushBack 'CUP_O_RU_Pilot';
_u pushBack 'CUP_O_RU_Sniper_KSVK';
};

missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_BARRACKS], _u];

_u = [];
_u pushBack 'O_Quadbike_01_F';
_u pushBack "O_G_Offroad_01_F";
_u pushBack "O_G_Offroad_01_armed_F";
_u pushBack 'C_Van_01_transport_F';
_u pushBack 'O_Truck_02_transport_F';
_u pushBack 'O_Truck_03_transport_F';
_u pushBack 'O_MRAP_02_F';
_u pushBack 'O_MRAP_02_hmg_F';
_u pushBack 'O_MRAP_02_gmg_F';
_u pushBack 'O_UGV_01_F';
_u pushBack 'O_UGV_01_rcws_F';
_u pushBack 'O_Truck_02_medical_F';
_u pushBack 'O_Truck_03_medical_F';
_u pushBack 'Land_Pod_Heli_Transport_04_medevac_F';

//--- APEX UNITS
if (CTI_APEX_ADDON > 0) then { 
	_u pushback 'I_C_Offroad_02_unarmed_F';
	_u pushBack 'O_T_LSV_02_unarmed_F';
	_u pushBack 'O_T_LSV_02_armed_F';
};

//--- CUP UNITS
if (CTI_CUP_ADDON > 0) then { 
	_u pushBack 'CUP_M1030';
	_u pushBack 'CUP_B_TowingTractor_USMC';
	_u pushBack 'CUP_C_Skoda_White_CIV';
	_u pushBack 'CUP_C_SUV_TK';
	_u pushBack 'CUP_I_SUV_Armored_ION';
	_u pushBack 'CUP_C_Datsun';
	_u pushBack 'CUP_O_Datsun_PK_Random';
	_u pushBack 'OFPS_BRDM2';
	_u pushBack 'OFPS_BRDM2ATGM';
	_u pushBack 'OFPS_BRDM2HQ';
	_u pushBack 'OFPS_BTR60';
	_u pushBack 'CUP_O_BTR90_RU';
	_u pushBack 'CUP_O_BTR90_HQ_RU';
	_u pushBack 'CUP_B_LR_Ambulance_CZ_W';
	_u pushBack 'OFPS_LR_MG';
	_u pushBack 'OFPS_LR_S';
	_u pushBack 'OFPS_LR_SPG9';
	_u pushBack 'OFPS_LR_SX';
	_u pushBack 'CUP_C_LR_Transport_CTK';
	_u pushBack 'CUP_B_UAZ_Unarmed_CDF';
	_u pushBack 'OFPS_UAZ_AGS30';
	_u pushBack 'OFPS_UAZ_MG';
	_u pushBack 'OFPS_UAZ_METIS';
	_u pushBack 'OFPS_UAZ';
	_u pushBack 'OFPS_UAZ_SPG9';
	_u pushBack 'CUP_O_Ural_RU';
	_u pushBack 'CUP_O_Ural_Empty_RU';
	_u pushBack 'CUP_O_Ural_Open_RU';
	_u pushBack 'CUP_O_Ural_ZU23_RU';
	_u pushBack 'CUP_O_BTR40_TKA';
	_u pushBack 'CUP_O_BTR40_MG_TKA';
	_u pushBack 'CUP_O_GAZ_Vodnik_PK_RU';
	_u pushBack 'CUP_O_GAZ_Vodnik_AGS_RU';
	_u pushBack 'CUP_O_GAZ_Vodnik_BPPU_RU';
	_u pushBack 'CUP_O_GAZ_Vodnik_MedEvac_RU';
};
//--- OFPS UNITS
if (CTI_OFPS_ADDON > 0) then { 
	_u pushBack 'dbo_CIV_new_bike';
	_u pushBack 'dbo_CIV_ol_bike';
};

missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_LIGHT], _u];

_u = [];
_u pushBack "O_APC_Wheeled_02_rcws_F";
_u pushBack "O_APC_Tracked_02_cannon_F";
_u pushBack "O_MBT_02_cannon_F";
_u pushBack "O_APC_Tracked_02_AA_F";
_u pushBack "O_MBT_02_arty_F";

//--- CUP UNITS
if (CTI_CUP_ADDON > 0) then { 
	_u pushBack 'OFPS_BMP1';
	_u pushBack 'OFPS_BMP1P';
	_u pushBack 'OFPS_BMP2';
	_u pushBack 'OFPS_BMP2_HQ';
	_u pushBack 'OFPS_BMP2_M';
	_u pushBack 'OFPS_BMP2_ZSU';
	_u pushBack 'OFPS_T55';
	_u pushBack 'OFPS_T72A';
	_u pushBack 'OFPS_ZSU23';
	_u pushBack 'CUP_O_BM21_RU';
	_u pushBack 'CUP_O_2S6M_RU';
	_u pushBack 'OFPS_BMP3';
};
//--- OFPS UNITS
if (CTI_OFPS_ADDON > 0) then { 
	_u pushBack 'sfp_ikv91';
};

missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_HEAVY], _u];

_u = [];
_u pushBack 'O_Heli_Transport_04_F'; 
_u pushBack 'O_Heli_Light_02_unarmed_F';
_u pushBack "O_Heli_Transport_04_ammo_F";
_u pushBack "O_Heli_Transport_04_bench_F";
_u pushBack "O_Heli_Transport_04_covered_F";
_u pushBack "O_Heli_Transport_04_medevac_F";
_u pushBack "O_Heli_Transport_04_repair_F";
_u pushBack 'O_Heli_Light_02_F';
_u pushBack 'O_Heli_Attack_02_F';
_u pushBack 'O_Heli_Attack_02_black_F';
_u pushBack 'O_UAV_02_CAS_F';
_u pushBack 'O_UAV_02_F';
_u pushBack 'O_Plane_CAS_02_F';

//--- APEX UNITS
if (CTI_APEX_ADDON > 0) then { 
	_u pushBack "C_Plane_Civil_01_F";
	_u pushBack "O_T_UAV_04_CAS_F";
	_u pushBack "O_T_VTOL_02_infantry_F";
	_u pushBack "O_T_VTOL_02_vehicle_F";
};

//--- CUP UNITS
if (CTI_CUP_ADDON > 0) then { 
	_u pushBack 'CUP_O_UH1H_TKA';
	_u pushBack 'CUP_O_Mi8_CHDKZ';
	_u pushBack 'CUP_O_Mi8_SLA_2';
	_u pushBack 'CUP_B_MI6T_CDF';
	_u pushBack 'CUP_C_Mi17_Civilian_RU';
	_u pushBack 'CUP_B_Mi171Sh_ACR';
	_u pushBack 'CUP_B_Mi24_D_CDF';
	_u pushBack 'CUP_O_Mi24_P_RU';
	_u pushBack 'CUP_O_Mi24_V_RU';
	_u pushBack 'CUP_I_Mi24_Mk3_AT_ION';
	_u pushBack 'CUP_O_Ka50_SLA';
	_u pushBack 'CUP_O_Ka52_RU';
	_u pushBack 'CUP_O_Ka60_Hex_CSAT';
	_u pushBack 'CUP_O_Ka60_GL_Hex_CSAT';
	_u pushBack 'CUP_C_DC3_CIV';
	_u pushBack 'CUP_O_C130J_TKA';
	_u pushBack 'CUP_O_C130J_Cargo_TKA';
	_u pushBack 'OFPS_SU25';
	_u pushBack 'OFPS_SU34_LGB';
	_u pushBack 'OFPS_SU34_AGM';
};
//--- OFPS UNITS
if (CTI_OFPS_ADDON > 0) then { 
	_u pushBack 'sfp_bo105_unarmed';
	_u pushBack 'sfp_bo105';
	_u pushBack 'O_UCSV_01';
	_u pushBack 'globemaster_c17_Qatar';
	_u pushBack 'LDL_C130J';
	_u pushBack 'bwi_a3_t6a_5';
	_u pushBack 'bwi_a3_at6b_2';
	_u pushBack 'bwi_a3_at6b_4';
	_u pushBack 'sab_alphajet8';
	_u pushBack 'sfp_j12';
	_u pushBack 'sfp_j12_rb15';
	_u pushBack 'sfp_j12_cap';
	_u pushBack 'OFPS_BUZAA_O';
	_u pushBack 'O_PAKFA_F';
	_u pushBack 'usaf_b1b';
	_u pushBack 'pook_tu953M80';
	_u pushBack 'pook_tu95ms';
	_u pushBack 'pook_tu95ms16';
	_u pushBack 'pook_tu95MSM';
};

missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_AIR], _u];

_u = [];
_u pushBack "O_Truck_02_box_F";
_u pushBack "O_Truck_03_repair_F";
_u pushBack "CTI_Salvager_East";
_u pushBack "O_Truck_02_fuel_F";
_u pushBack "O_Truck_03_fuel_F";
_u pushBack "Land_Pod_Heli_Transport_04_repair_F";
_u pushBack "Land_Pod_Heli_Transport_04_fuel_F";

//--- CUP UNITS
if (CTI_CUP_ADDON > 0) then { 
	_u pushBack 'CUP_O_Ural_Refuel_RU';
	_u pushBack 'CUP_O_Ural_Repair_RU';
};
//--- OFPS UNITS
if (CTI_OFPS_ADDON > 0) then { 

};

missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_REPAIR], _u];

_u = [];
_u pushBack "O_Truck_02_Ammo_F";
_u pushBack "O_Truck_03_Ammo_F";
_u pushBack "Box_East_Wps_F";
_u pushBack "O_supplyCrate_F";
_u pushBack "Land_Pod_Heli_Transport_04_ammo_F";

//--- CUP UNITS
if (CTI_CUP_ADDON > 0) then { 
	_u pushBack 'CUP_O_Ural_Reammo_RU';
};
//--- OFPS UNITS
if (CTI_OFPS_ADDON > 0) then { 

};

missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_AMMO], _u];

_u = [];
_u pushBack 'C_Boat_Civil_01_F';
_u pushBack 'O_Boat_Transport_01_F';
_u pushBack 'O_Boat_Armed_01_hmg_F';
_u pushBack 'C_Boat_Civil_01_rescue_F';
_u pushBack 'O_SDV_01_F';

//--- APEX UNITS
if (CTI_APEX_ADDON > 0) then { 
	_u pushBack "C_Scooter_Transport_01_F";
	_u pushBack "I_C_Boat_Transport_02_F";
};

//--- CUP UNITS
if (CTI_CUP_ADDON > 0) then { 
	_u pushBack "CUP_B_RHIB_USMC";
	_u pushBack "CUP_B_RHIB2Turret_USMC";
};
//--- OFPS UNITS
if (CTI_OFPS_ADDON > 0) then { 
	_u pushBack "Burnes_LCAC_1";
	_u pushBack "sfp_gruppbat";
	_u pushBack "rhsusf_mkvsoc";
	_u pushBack "sfp_rbb_norrkoping";
	_u pushBack "OFPS_Frigate_CSAT";
};

missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_NAVAL], _u];

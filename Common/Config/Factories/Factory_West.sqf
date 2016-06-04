private ["_side", "_u"];

_side = _this;

missionNamespace setVariable [format["CTI_%1_Commander", _side], "B_officer_F"];
missionNamespace setVariable [format["CTI_%1_Worker", _side], "B_Soldier_lite_F"];

missionNamespace setVariable [format["CTI_%1_Diver", _side], "B_diver_f"];
missionNamespace setVariable [format["CTI_%1_Soldier", _side], "B_Soldier_F"];
missionNamespace setVariable [format["CTI_%1_Crew", _side], "B_crew_F"];
missionNamespace setVariable [format["CTI_%1_Pilot", _side], "B_Helipilot_F"];

missionNamespace setVariable [format["CTI_%1_Vehicles_Startup", _side], [ 
	["B_Truck_01_medical_F", [
		["CUP_arifle_M16A2_GL", 2], ["CUP_30Rnd_556x45_Stanag", 50],
		["CUP_launch_M136", 5], 
		["CUP_M136_M", 20],
		["CUP_30Rnd_TE1_Red_Tracer_556x45_G36", 15],
		["CUP_1Rnd_HE_M203", 8],
		["CUP_FlareWhite_M203", 9],
		["CUP_1Rnd_Smoke_M203", 3],
		["CUP_1Rnd_SmokeGreen_M203", 8],
		["firstaidkit", 20],
		["Chemlight_blue", 36],
		["acc_flashlight", 5],
		["Toolkit", 4],
		["B_Bergen_sgg", 4]
	]],
	["B_MRAP_01_F", [
		["Toolkit", 2],
		["firstaidkit", 10],
		["CUP_30Rnd_556x45_Stanag", 15],
		["CUP_launch_M136", 5],
		["CUP_M136_M", 10]
	]],
	["CUP_B_HMMWV_M2_GPK_USA", [
		["Toolkit", 2],
		["firstaidkit", 10],
		["CUP_30Rnd_556x45_Stanag", 15],
		["CUP_launch_M136", 5],
		["CUP_M136_M", 10]
	]],
	["CUP_B_HMMWV_M2_GPK_USA", [
		["Toolkit", 2],
		["firstaidkit", 10],
		["CUP_30Rnd_556x45_Stanag", 15],
		["CUP_launch_M136", 5],
		["CUP_M136_M", 10]
	]]
	//,	["B_Heli_Transport_01_F", []]

]];

//--- Units - Barracks
_u = [];
_u pushBack "B_soldier_AR_F";
_u pushBack "B_HeavyGunner_F";
_u pushBack "B_Soldier_A_F";
_u pushBack "B_soldier_exp_F";
_u pushBack "B_Soldier_GL_F";
_u pushBack "B_soldier_M_F";
_u pushBack "B_medic_F";
_u pushBack "B_Soldier_F";
_u pushBack "B_soldier_PG_F";
_u pushBack "B_engineer_F";
_u pushBack "B_sniper_F";
_u pushBack "B_soldier_repair_F";
_u pushBack "B_soldier_LAT_F";
_u pushBack "B_soldier_AA_F";
_u pushBack "B_soldier_AT_F";
_u pushBack "B_spotter_F";
_u pushBack "B_soldier_UAV_F";
_u pushBack "B_Helipilot_F";
_u pushBack "B_crew_F";
_u pushBack "B_Soldier_TL_F";
_u pushBack "B_Soldier_SL_F";
//--- CUP UNITS
if (CTI_CUP_ADDON > 0) then { 
_u pushBack 'CUP_B_US_Soldier';
_u pushBack 'CUP_B_US_Soldier_AA';
_u pushBack 'CUP_B_US_Soldier_AR';
_u pushBack 'CUP_B_US_Crew';
_u pushBack 'CUP_B_US_Soldier_AT';
_u pushBack 'CUP_B_US_Soldier_HAT';
_u pushBack 'CUP_B_US_Soldier_Engineer_EOD';
_u pushBack 'CUP_B_US_Soldier_GL';
_u pushBack 'CUP_B_US_Medic';
_u pushBack 'CUP_B_US_Pilot';
_u pushBack 'CUP_B_US_Sniper_M107';
};
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_BARRACKS], _u];

_u = [];
_u pushBack "B_Quadbike_01_F";
_u pushBack "B_G_Offroad_01_F";
_u pushBack "B_G_Offroad_01_armed_F";
_u pushBack "C_Van_01_transport_F";
_u pushBack "B_Truck_01_transport_F";
_u pushBack "B_MRAP_01_F";
_u pushBack "B_MRAP_01_hmg_F";
_u pushBack "B_MRAP_01_gmg_F";
_u pushBack "B_UGV_01_F";
_u pushBack "B_UGV_01_rcws_F";
_u pushBack "B_Truck_01_medical_F";
_u pushBack 'B_Slingload_01_Medevac_F';

//--- CUP UNITS
if (CTI_CUP_ADDON > 0) then { 
	_u pushBack 'CUP_B_M1030';
	_u pushBack 'CUP_B_TowingTractor_USMC';
	_u pushBack 'CUP_B_Dingo_GL_CZ_Wdl';
	_u pushBack 'CUP_B_Dingo_CZ_Wdl';
	_u pushBack 'CUP_B_HMMWV_Ambulance_USMC';
	_u pushBack 'CUP_B_HMMWV_Avenger_USMC';
	_u pushBack 'CUP_B_HMMWV_Crows_M2_USA';
	_u pushBack 'CUP_B_HMMWV_Crows_MK19_USA';
	_u pushBack 'CUP_B_HMMWV_AGS_GPK_ACR';
	_u pushBack 'CUP_B_HMMWV_DSHKM_GPK_ACR';
	_u pushBack 'CUP_B_HMMWV_M2_GPK_USA';
	_u pushBack 'CUP_B_HMMWV_M2_USMC';
	_u pushBack 'CUP_B_HMMWV_M1114_USMC';
	_u pushBack 'CUP_B_HMMWV_MK19_USMC';
	_u pushBack 'CUP_B_HMMWV_SOV_USA';
	_u pushBack 'CUP_B_HMMWV_TOW_USMC';
	_u pushBack 'CUP_B_HMMWV_Transport_USA';
	_u pushBack 'CUP_B_HMMWV_Terminal_USA';
	_u pushBack 'CUP_B_Jackal2_GMG_GB_D';
	_u pushBack 'CUP_B_Jackal2_GMG_GB_W';
	_u pushBack 'CUP_B_Jackal2_L2A1_GB_D';
	_u pushBack 'CUP_B_Jackal2_L2A1_GB_W';
	_u pushBack 'CUP_B_LAV25_USMC';
	_u pushBack 'CUP_B_LAV25M240_USMC';
	_u pushBack 'CUP_B_M1126_ICV_M2_Desert';
	_u pushBack 'CUP_B_M1126_ICV_MK19_Desert';
	_u pushBack 'CUP_B_M1128_MGS_Desert';
	_u pushBack 'CUP_B_M1129_MC_MK19_Desert';
	_u pushBack 'CUP_B_M1130_CV_M2_Desert';
	_u pushBack 'CUP_B_M1133_MEV_Desert';
	_u pushBack 'CUP_B_M1135_ATGMV_Desert';
	_u pushBack 'CUP_RG31_M2';
	_u pushBack 'CUP_RG31_M2_GC';
	_u pushBack 'CUP_RG31_M2_OD';
	_u pushBack 'CUP_RG31_Mk19';
	_u pushBack 'CUP_RG31_Mk19_OD';
	_u pushBack 'CUP_RG31E_M2';
	_u pushBack 'CUP_B_BAF_Coyote_GMG_D';
	_u pushBack 'CUP_B_BAF_Coyote_L2A1_D';
	_u pushBack 'CUP_B_Mastiff_GMG_GB_D';
	_u pushBack 'CUP_B_Mastiff_HMG_GB_D';
	_u pushBack 'CUP_B_Ridgback_GMG_GB_D';
	_u pushBack 'CUP_B_Ridgback_HMG_GB_D';
};
//--- OFPS UNITS
if (CTI_OFPS_ADDON > 0) then { 
	_u pushBack 'dbo_CIV_new_bike';
	_u pushBack 'dbo_CIV_ol_bike';
};

missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_LIGHT], _u];

_u = [];
_u pushBack "B_APC_Wheeled_01_cannon_F";
_u pushBack "B_APC_Tracked_01_rcws_F";
_u pushBack "B_APC_Tracked_01_AA_F";
_u pushBack "B_MBT_01_cannon_F";
_u pushBack "B_MBT_01_arty_F";
_u pushBack "B_MBT_01_mlrs_F";

//--- CUP UNITS
if (CTI_CUP_ADDON > 0) then { 
	_u pushBack 'CUP_B_AAV_USMC';
	_u pushBack 'CUP_B_M113_USA';
	_u pushBack 'CUP_B_M113_Med_USA';
	_u pushBack 'CUP_B_M163_USA';
	_u pushBack 'CUP_B_M1A1_Woodland_US_Army';
	_u pushBack 'CUP_B_M1A2_TUSK_MG_US_Army';
	_u pushBack 'CUP_B_M270_HE_USMC';
	_u pushBack 'CUP_B_M2Bradley_USA_D';
	_u pushBack 'CUP_B_M2A3Bradley_USA_D';
	_u pushBack 'CUP_B_M6LineBacker_USA_W';
	_u pushBack 'CUP_B_FV432_Bulldog_GB_D';
	_u pushBack 'CUP_B_FV432_Bulldog_GB_D_RWS';
	_u pushBack 'CUP_B_FV510_GB_D_SLAT';
	_u pushBack 'CUP_B_MCV80_GB_D_SLAT';
};
//--- OFPS UNITS
if (CTI_OFPS_ADDON > 0) then { 

};

missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_HEAVY], _u];

_u = [];
_u pushBack "B_Heli_Light_01_F";
_u pushBack "B_Heli_Transport_01_F";
_u pushBack "B_Heli_Transport_03_F";
_u pushBack "B_Heli_Light_01_armed_F";
_u pushBack "B_Heli_Attack_01_F";
_u pushBack "B_UAV_02_CAS_F";
_u pushBack "B_UAV_02_F";
_u pushBack "B_Plane_CAS_01_F";

//--- CUP UNITS
if (CTI_CUP_ADDON > 0) then { 
	_u pushBack 'CUP_B_MH6J_USA';
	_u pushBack 'CUP_B_AH6X_USA';
	_u pushBack 'CUP_B_AH6J_Escort_USA';
	_u pushBack 'CUP_B_AH6J_Escort19_USA';
	_u pushBack 'CUP_B_AH6J_AT_USA';
	_u pushBack 'CUP_B_AH6J_MP_USA';
	_u pushBack 'CUP_B_UH1D_GER_KSK';
	_u pushBack 'CUP_B_UH1Y_UNA_USMC';
	_u pushBack 'CUP_B_UH1Y_MEV_USMC';
	_u pushBack 'CUP_B_UH1Y_GUNSHIP_USMC';
	_u pushBack 'CUP_B_AW159_Unarmed_GB';
	_u pushBack 'CUP_B_AW159_Cannon_GB';
	_u pushBack 'CUP_B_AW159_Hellfire_GB';
	_u pushBack 'CUP_B_UH60M_Unarmed_US';
	_u pushBack 'CUP_B_UH60M_US';
	_u pushBack 'CUP_B_Merlin_HC3A_GB';
	_u pushBack 'CUP_B_CH53E_USMC';
	_u pushBack 'CUP_B_MH60S_USMC';
	_u pushBack 'CUP_B_SA330_Puma_HC2_BAF';
	_u pushBack 'CUP_B_CH47F_USA';
	_u pushBack 'CUP_B_AH64D_MR_USA';
	_u pushBack 'CUP_B_AH64D_AT_USA';
	_u pushBack 'CUP_B_AH1Z';
	_u pushBack 'CUP_B_AH1Z_Escort';
	_u pushBack 'CUP_B_AH64D_ES_USA';
	_u pushBack 'CUP_C_C47_CIV';
	_u pushBack 'CUP_B_C130J_USMC';
	_u pushBack 'CUP_B_C130J_Cargo_USMC';
	_u pushBack 'CUP_B_MV22_USMC';
	_u pushBack 'CUP_B_MV22_USMC_RAMPGUN';
	_u pushBack 'CUP_USMC_MQ9';
	_u pushBack 'CUP_B_A10_CAS_USA';
	_u pushBack 'CUP_B_AV8B_CAP_USMC';
	_u pushBack 'CUP_B_AV8B_MK82_USMC';
	_u pushBack 'CUP_B_AV8B_GBU12_USMC';
	_u pushBack 'CUP_B_F35B_AA_USMC';
	_u pushBack 'CUP_B_F35B_LGB_USMC';
};
//--- OFPS UNITS
if (CTI_OFPS_ADDON > 0) then { 
	_u pushBack 'B_UCSV_01';
	_u pushBack 'B_UCSV_02';
	_u pushBack 'globemaster_c17_NATO';
	_u pushBack 'LDL_C130J';
	_u pushBack 'bwi_a3_t6a';
	_u pushBack 'bwi_a3_t6c';
	_u pushBack 'bwi_a3_at6b';
	_u pushBack 'bwi_a3_at6b_3';
	_u pushBack 'sab_alphajet';
	_u pushBack 'sab_alphajet2';
	_u pushBack 'OFPS_BUZZA_B';
	_u pushBack 'usaf_b1b';
};

missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_AIR], _u];

_u = [];
_u pushBack "B_Truck_01_Repair_F";
_u pushBack "CTI_Salvager_West";
_u pushBack "B_Truck_01_fuel_F";
_u pushBack 'B_Slingload_01_Repair_F';
_u pushBack 'B_Slingload_01_Fuel_F';

//--- CUP UNITS
if (CTI_CUP_ADDON > 0) then { 

};
//--- OFPS UNITS
if (CTI_OFPS_ADDON > 0) then { 

};

missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_REPAIR], _u];

_u = [];
_u pushBack "B_Truck_01_ammo_F";
_u pushBack 'B_Slingload_01_Ammo_F';
_u pushBack "Box_NATO_Wps_F";
_u pushBack "B_supplyCrate_F";

//--- CUP UNITS
if (CTI_CUP_ADDON > 0) then { 

};
//--- OFPS UNITS
if (CTI_OFPS_ADDON > 0) then { 

};

missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_AMMO], _u];

_u = [];
_u pushBack "C_Boat_Civil_01_F";
_u pushBack "B_Boat_Transport_01_F";
_u pushBack "B_Boat_Armed_01_minigun_F";
_u pushBack 'C_Boat_Civil_01_police_F';
_u pushBack "B_SDV_01_F";

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
	_u pushBack "OFPS_Frigate_Blu";
};

missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_NAVAL], _u];

private ["_side", "_u"];
_side = _this;
if (CTI_FACTION_WEST == 0) then {
	//NATO Arid Vanilla
	missionNamespace setVariable [format["CTI_%1_Commander", _side], "B_officer_F"];
	missionNamespace setVariable [format["CTI_%1_Worker", _side], "B_Soldier_lite_F"];
	missionNamespace setVariable [format["CTI_%1_Diver", _side], "B_diver_f"];
	missionNamespace setVariable [format["CTI_%1_Soldier", _side], "B_Soldier_F"];
	missionNamespace setVariable [format["CTI_%1_Crew", _side], "B_crew_F"];
	missionNamespace setVariable [format["CTI_%1_Pilot", _side], "B_Helipilot_F"];
	missionNamespace setVariable [format["CTI_%1_Static", _side], "B_spotter_F"];
};
if (CTI_FACTION_WEST == 1) then {
	//NATO Tropic Vanilla
	missionNamespace setVariable [format["CTI_%1_Commander", _side], "B_T_officer_F"];
	missionNamespace setVariable [format["CTI_%1_Worker", _side], "B_T_Soldier_lite_F"];
	missionNamespace setVariable [format["CTI_%1_Diver", _side], "B_T_diver_f"];
	missionNamespace setVariable [format["CTI_%1_Soldier", _side], "B_T_Soldier_F"];
	missionNamespace setVariable [format["CTI_%1_Crew", _side], "B_T_crew_F"];
	missionNamespace setVariable [format["CTI_%1_Pilot", _side], "B_T_Helipilot_F"];
	missionNamespace setVariable [format["CTI_%1_Static", _side], "B_T_spotter_F"];
};
if (CTI_FACTION_WEST == 2) then {
	//NATO Winter Vanilla
	missionNamespace setVariable [format["CTI_%1_Commander", _side], "sfp_m90s_squadleader"];
	missionNamespace setVariable [format["CTI_%1_Worker", _side], "sfp_m90s_rifleman_ak5"];
	missionNamespace setVariable [format["CTI_%1_Diver", _side], "B_diver_f"];
	missionNamespace setVariable [format["CTI_%1_Soldier", _side], "sfp_m90s_rifleman_ak5"];
	missionNamespace setVariable [format["CTI_%1_Crew", _side], "sfp_m90s_crew"];
	missionNamespace setVariable [format["CTI_%1_Pilot", _side], "sfp_m90s_pilot"];
	missionNamespace setVariable [format["CTI_%1_Static", _side], "sfp_m90s_rifleman_ag90"];
};
if (CTI_CUP_ADDON > 0) then {
	if (CTI_OFPS_ADDON > 0) then {
		if (CTI_FACTION_WEST == 0) then {
			//ARID SET
			missionNamespace setVariable [format["CTI_%1_Vehicles_Startup", _side], [
				["CUP_B_HMMWV_Ambulance_USMC", [
					["CUP_launch_M136", 5], 
					["CUP_M136_M", 20],
					["CUP_8Rnd_B_Beneli_74Slug", 20],
					["CUP_8Rnd_B_Beneli_74Pellets", 20],
					["CUP_sgun_M1014", 10],
					["CUP_30Rnd_9x19_MP5", 20],
					["acc_flashlight", 10],
					["Toolkit", 1]
				]],
				["CUP_B_M113_USA", [
					["CUP_launch_M136", 5], 
					["CUP_M136_M", 20],
					["CUP_8Rnd_B_Beneli_74Slug", 20],
					["CUP_8Rnd_B_Beneli_74Pellets", 20],
					["CUP_sgun_M1014", 10],
					["CUP_30Rnd_9x19_MP5", 20],
					["acc_flashlight", 10],
					["Toolkit", 1]
				]],
				["CUP_B_LR_Special_GMG_GB_W", [
					["CUP_launch_M136", 5], 
					["CUP_M136_M", 20],
					["CUP_8Rnd_B_Beneli_74Slug", 20],
					["CUP_8Rnd_B_Beneli_74Pellets", 20],
					["CUP_sgun_M1014", 10],
					["CUP_30Rnd_9x19_MP5", 20],
					["acc_flashlight", 10],
					["Toolkit", 1]
				]],
				["CUP_B_HMMWV_M1114_USMC", [
					["CUP_launch_M136", 5], 
					["CUP_M136_M", 20],
					["CUP_8Rnd_B_Beneli_74Slug", 20],
					["CUP_8Rnd_B_Beneli_74Pellets", 20],
					["CUP_sgun_M1014", 10],
					["CUP_30Rnd_9x19_MP5", 20],
					["acc_flashlight", 10],
					["Toolkit", 1]
				]]
			]];
		};
		if (CTI_FACTION_WEST == 1) then {
			//JUNGLE SET
			missionNamespace setVariable [format["CTI_%1_Vehicles_Startup", _side], [
				["B_Truck_01_medical_F", [
					["CUP_launch_M136", 5], 
					["CUP_M136_M", 20],
					["CUP_8Rnd_B_Beneli_74Slug", 20],
					["CUP_8Rnd_B_Beneli_74Pellets", 20],
					["CUP_sgun_M1014", 10],
					["CUP_30Rnd_9x19_MP5", 20],
					["acc_flashlight", 10],
					["Toolkit", 1]
				]],
				["OFPS_HUNTER_HMG", [
					["CUP_launch_M136", 5], 
					["CUP_M136_M", 20],
					["CUP_8Rnd_B_Beneli_74Slug", 20],
					["CUP_8Rnd_B_Beneli_74Pellets", 20],
					["CUP_sgun_M1014", 10],
					["CUP_30Rnd_9x19_MP5", 20],
					["acc_flashlight", 10],
					["Toolkit", 1]
				]],
				["OFPS_HUNTER_GMG", [
					["CUP_launch_M136", 5], 
					["CUP_M136_M", 20],
					["CUP_8Rnd_B_Beneli_74Slug", 20],
					["CUP_8Rnd_B_Beneli_74Pellets", 20],
					["CUP_sgun_M1014", 10],
					["CUP_30Rnd_9x19_MP5", 20],
					["acc_flashlight", 10],
					["Toolkit", 1]
				]]
			]];
		};
		if (CTI_FACTION_WEST == 2) then {
			//WINTER SET
			missionNamespace setVariable [format["CTI_%1_Vehicles_Startup", _side], [
				["AAF_D_Truck_02_medical_F", [
					["CUP_launch_M136", 5], 
					["CUP_M136_M", 20],
					["CUP_8Rnd_B_Beneli_74Slug", 20],
					["CUP_8Rnd_B_Beneli_74Pellets", 20],
					["CUP_sgun_M1014", 10],
					["CUP_30Rnd_9x19_MP5", 20],
					["acc_flashlight", 10],
					["Toolkit", 1]
				]],
				["AAF_D_MRAP_03_hmg_F", [
					["CUP_launch_M136", 5], 
					["CUP_M136_M", 20],
					["CUP_8Rnd_B_Beneli_74Slug", 20],
					["CUP_8Rnd_B_Beneli_74Pellets", 20],
					["CUP_sgun_M1014", 10],
					["CUP_30Rnd_9x19_MP5", 20],
					["acc_flashlight", 10],
					["Toolkit", 1]
				]],
				["AAF_D_MRAP_03_gmg_F", [
					["CUP_launch_M136", 5], 
					["CUP_M136_M", 20],
					["CUP_8Rnd_B_Beneli_74Slug", 20],
					["CUP_8Rnd_B_Beneli_74Pellets", 20],
					["CUP_sgun_M1014", 10],
					["CUP_30Rnd_9x19_MP5", 20],
					["acc_flashlight", 10],
					["Toolkit", 1]
				]]
			]];
		};
	} else {
		//DEFUALT CUP SET
		missionNamespace setVariable [format["CTI_%1_Vehicles_Startup", _side], [
			["CUP_B_HMMWV_Ambulance_USMC", [
				["CUP_launch_M136", 5], 
				["CUP_M136_M", 20],
				["CUP_8Rnd_B_Beneli_74Slug", 20],
				["CUP_8Rnd_B_Beneli_74Pellets", 20],
				["CUP_sgun_M1014", 10],
				["CUP_30Rnd_9x19_MP5", 20],
				["acc_flashlight", 10],
				["Toolkit", 1]
			]],
			["CUP_B_M113_USA", [
				["CUP_launch_M136", 5], 
				["CUP_M136_M", 20],
				["CUP_8Rnd_B_Beneli_74Slug", 20],
				["CUP_8Rnd_B_Beneli_74Pellets", 20],
				["CUP_sgun_M1014", 10],
				["CUP_30Rnd_9x19_MP5", 20],
				["acc_flashlight", 10],
				["Toolkit", 1]
			]],
			["CUP_B_LR_Special_GMG_GB_W", [
				["CUP_launch_M136", 5], 
				["CUP_M136_M", 20],
				["CUP_8Rnd_B_Beneli_74Slug", 20],
				["CUP_8Rnd_B_Beneli_74Pellets", 20],
				["CUP_sgun_M1014", 10],
				["CUP_30Rnd_9x19_MP5", 20],
				["acc_flashlight", 10],
				["Toolkit", 1]
			]],
			["CUP_B_HMMWV_M1114_USMC", [
				["CUP_launch_M136", 5], 
				["CUP_M136_M", 20],
				["CUP_8Rnd_B_Beneli_74Slug", 20],
				["CUP_8Rnd_B_Beneli_74Pellets", 20],
				["CUP_sgun_M1014", 10],
				["CUP_30Rnd_9x19_MP5", 20],
				["acc_flashlight", 10],
				["Toolkit", 1]
			]]
			//,	["B_Heli_Transport_01_F", []]
		]];
	};
} else {
missionNamespace setVariable [format["CTI_%1_Vehicles_Startup", _side], [ 
	["B_Truck_01_medical_F", [
		["arifle_mx_gl_f", 2], ["30Rnd_65x39_caseless_mag", 50],
		["arifle_MXM_F", 1],
		["launch_NLAW_F", 5], ["NLAW_F", 20],
		["HandGrenade", 20],
		["30Rnd_556x45_Stanag", 15],
		["30Rnd_65x39_caseless_mag_Tracer", 6],
		["3rnd_he_grenade_shell", 8],
		["firstaidkit", 20],
		["optic_ACO_grn", 3],
		["acc_flashlight", 10],
		["Toolkit", 1]
	]],
	["B_MRAP_01_hmg_F", [
		["Toolkit", 1],["firstaidkit", 10],
		["30Rnd_556x45_Stanag", 15],
		["launch_NLAW_F", 5], 
		["acc_flashlight", 10],
		["NLAW_F", 20]]]
]];
};

//--- Units - Barracks
_u = [];

//Universal Vanilla

if (CTI_FACTION_WEST == 0) then {
	//NATO Arid Vanilla
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
	_u pushBack 'B_Diver_F';
	_u pushBack 'B_Diver_TL_F';
	_u pushBack 'B_Recon_Exp_F';
	_u pushBack 'B_Recon_JTAC_F';
	_u pushBack 'B_Recon_Medic_F';
	_u pushBack 'B_Recon_F';
	_u pushBack 'B_Recon_LAT_F';
	_u pushBack 'B_Recon_TL_F';
	
};
if (CTI_FACTION_WEST == 1) then {
	//NATO Tropic Vanilla
	
};
if (CTI_FACTION_WEST == 2) then {
	//NATO Winter Vanilla
	
};
//--- APEX UNITS
if (CTI_APEX_ADDON > 0) then { 
	//Universal APEX
	

	if (CTI_FACTION_WEST == 0) then {
		//NATO Arid APEX
		
	};
	if (CTI_FACTION_WEST == 1) then {
		//NATO Tropic APEX
		//NATO Pacific
		_u pushBack 'B_T_soldier_AR_F';
		_u pushBack 'B_T_Soldier_A_F';
		_u pushBack 'B_T_Soldier_exp_F';
		_u pushBack 'B_T_Soldier_GL_F';
		_u pushBack 'B_T_Soldier_M_F';
		_u pushBack 'B_T_Medic_F';
		_u pushBack 'B_T_Soldier_F';
		_u pushBack 'B_T_Soldier_PG_F';
		_u pushBack 'B_T_Engineer_F';
		_u pushBack 'B_T_Soldier_repair_F';
		_u pushBack 'B_T_Soldier_LAT_F';
		_u pushBack 'B_T_Soldier_AA_F';
		_u pushBack 'B_T_Soldier_AT_F';
		_u pushBack 'B_T_Soldier_UAV_F';
		_u pushBack 'B_T_Helipilot_F';
		_u pushBack 'B_T_Crew_F';
		_u pushBack 'B_T_Soldier_TL_F';
		_u pushBack 'B_T_Soldier_SL_F';
		//Special Forces
		_u pushBack 'B_T_Diver_F';
		_u pushBack 'B_T_Diver_TL_F';
		_u pushBack 'B_T_Recon_Exp_F';
		_u pushBack 'B_T_Recon_JTAC_F';
		_u pushBack 'B_T_Recon_Medic_F';
		_u pushBack 'B_T_Recon_F';
		_u pushBack 'B_T_Recon_LAT_F';
		_u pushBack 'B_T_Recon_TL_F';
		_u pushBack 'B_T_Sniper_F';
		_u pushBack 'B_T_ghillie_tna_F';
		_u pushBack 'B_T_Spotter_F';
		//--- Infantry CTRG Special
		_u pushBack 'B_CTRG_Soldier_AR_tna_F';
		_u pushBack 'B_CTRG_Soldier_Exp_tna_F';
		_u pushBack 'B_CTRG_Soldier_JTAC_tna_F';
		_u pushBack 'B_CTRG_Soldier_M_tna_F';
		_u pushBack 'B_CTRG_Soldier_Medic_tna_F';
		_u pushBack 'B_CTRG_Soldier_tna_F';
		_u pushBack 'B_CTRG_Soldier_LAT_tna_F';
		_u pushBack 'B_CTRG_Soldier_TL_tna_F';
	};
	if (CTI_FACTION_WEST == 2) then {
		//NATO Winter APEX
		
	};
};
//--- CUP UNITS
if (CTI_CUP_ADDON > 0) then { 
	//Universal CUP


	if (CTI_FACTION_WEST == 0) then {
		//NATO Arid CUP
	_u pushBack 'CUP_B_US_Soldier';
	_u pushBack 'CUP_B_US_Soldier_AA';
	_u pushBack 'CUP_B_USMC_Soldier_MG';
	_u pushBack 'CUP_B_US_Crew';
	_u pushBack 'CUP_B_US_Soldier_AT';
	_u pushBack 'CUP_B_US_Soldier_HAT';
	_u pushBack 'CUP_B_USMC_Engineer';
	_u pushBack 'CUP_B_US_Soldier_GL';
	_u pushBack 'CUP_B_US_Medic';
	_u pushBack 'CUP_B_US_Pilot';
	_u pushBack 'CUP_B_US_Sniper_M107';
    _u pushBack 'CUP_B_USMC_Spotter';
		
	};
	if (CTI_FACTION_WEST == 1) then {
		//NATO Tropic CUP
		
	};
	if (CTI_FACTION_WEST == 2) then {
		//NATO Winter CUP
		
	};
};
//--- OFPS UNITS
if (CTI_OFPS_ADDON > 0) then { 
	//Universal OFPS
	

	if (CTI_FACTION_WEST == 0) then {
		//NATO Arid OFPS
		
	};
	if (CTI_FACTION_WEST == 1) then {
		//NATO Tropic OFPS
		
	};
	if (CTI_FACTION_WEST == 2) then {
		//NATO Winter OFPS
		_u pushBack 'sfp_m90s_rifleman_ak5';
		_u pushBack 'sfp_m90s_automaticrifleman_ksp90';
		_u pushBack 'sfp_m90s_gr';
		_u pushBack 'sfp_m90s_explosive_specialist';
		_u pushBack 'sfp_m90s_engineer';
		_u pushBack 'sfp_1990_m90s_marksman';
		_u pushBack 'sfp_m90s_aa_specialist_rbs69';
		_u pushBack 'sfp_m90s_at_specialist_grg86';
		_u pushBack 'sfp_m90s_crew';
		_u pushBack 'sfp_m90s_pilot';
		_u pushBack 'sfp_m90s_medic';

		//Special Forces
		_u pushBack 'Meaty_Soldier_B_Sn';
		_u pushBack 'Meaty_teamlead_B_Sn';
		_u pushBack 'Meaty_SoldierGL_B_Sn';
		_u pushBack 'Meaty_SoldierAA_B_Sn';
		_u pushBack 'Meaty_AT_NLAW_B_Sn';
		_u pushBack 'Meaty_Medic_B_Sn';
		_u pushBack 'Meaty_SoldierMK_B_Sn';
		_u pushBack 'Meaty_AR_B_Sn';

	};
};

missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_BARRACKS], _u];
_u = [];

//Universal Vanilla
_u pushBack 'B_G_Offroad_01_F';		
_u pushBack 'C_Quadbike_01_F';			
_u pushBack "B_Quadbike_01_F";
_u pushBack "B_G_Offroad_01_F";
_u pushBack "B_G_Offroad_01_armed_F";
_u pushBack "C_Van_01_transport_F";
_u pushBack "B_Truck_01_transport_F";
_u pushBack "B_Truck_01_medical_F";
_u pushBack 'B_Slingload_01_Medevac_F';
_u pushBack 'O_Truck_03_device_F';
_u pushBack "B_UGV_01_F";
_u pushBack "B_UGV_01_rcws_F";
_u pushback 'I_C_Offroad_02_unarmed_F';

if (CTI_FACTION_WEST == 0) then {
	//NATO Arid Vanilla
	_u pushBack "B_MRAP_01_F";
	_u pushBack "B_MRAP_01_hmg_F";
	_u pushBack "B_MRAP_01_gmg_F";
	_u pushBack "B_Truck_01_medical_F";
	_u pushBack 'B_Slingload_01_Medevac_F';
	_u pushBack 'O_Truck_03_device_F';
	
};
if (CTI_FACTION_WEST == 1) then {
	//NATO Tropic Vanilla
	
};
if (CTI_FACTION_WEST == 2) then {
	//NATO Winter Vanilla
	
};
//--- APEX UNITS
if (CTI_APEX_ADDON > 0) then { 
	//Universal APEX



	if (CTI_FACTION_WEST == 0) then {
		//NATO Arid APEX
		
	};
	if (CTI_FACTION_WEST == 1) then {
		//NATO Tropic APEX
		_u pushBack "OFPS_HUNTER";
		_u pushBack "OFPS_HUNTER_HMG";
		_u pushBack "OFPS_HUNTER_GMG";
		_u pushBack 'B_T_LSV_01_unarmed_F';
		_u pushBack 'B_T_LSV_01_armed_F';
		
	};
	if (CTI_FACTION_WEST == 2) then {
		//NATO Winter APEX
		
	};
};
//--- CUP UNITS
if (CTI_CUP_ADDON > 0) then { 
	//Universal CUP
	_u pushBack 'CUP_C_SUV_CIV';			
	_u pushBack 'CUP_B_HMMWV_Unarmed_USMC';		
	_u pushBack 'CUP_B_HMMWV_M2_USMC';		
	_u pushBack 'CUP_B_HMMWV_DSHKM_GPK_ACR';	
	_u pushBack 'CUP_B_HMMWV_MK19_USMC';		
	_u pushBack 'CUP_I_SUV_Armored_ION';	
	_u pushBack 'CUP_B_HMMWV_Ambulance_USMC';	
	_u pushBack 'CUP_B_MTVR_Refuel_USA';		
	_u pushBack 'CUP_B_Jackal2_GMG_GB_W';
	_u pushBack 'CUP_B_HMMWV_Crows_M2_USA';		
	_u pushBack 'CUP_B_HMMWV_Crows_MK19_USA';	
	_u pushBack 'CUP_B_MTVR_USA';			
	_u pushBack 'CUP_B_M1135_ATGMV_Woodland';	
	_u pushBack 'CUP_B_LR_Special_CZ_W';		
	_u pushBack 'CUP_B_HMMWV_TOW_USMC';		
	_u pushBack 'CUP_B_HMMWV_Avenger_USMC';		
	_u pushBack 'CUP_B_M1129_MC_MK19_Desert';				
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
//	_u pushBack 'CUP_B_HMMWV_M2_USMC';
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
	_u pushBack 'CUP_B_Wolfhound_GMG_GB_W';
	_u pushBack 'CUP_B_Wolfhound_HMG_GB_W';
	_u pushBack 'sfp_dakota';
	_u pushBack 'sfp_mercedes';

	if (CTI_FACTION_WEST == 0) then {
		//NATO Arid CUP
		
	};
	if (CTI_FACTION_WEST == 1) then {
		//NATO Tropic CUP
		_u pushBack 'OFPS_HMMWV_GPK';		
		_u pushBack 'OFPS_HMMWV_AA';		
		_u pushBack 'OFPS_HMMWV_TOW';	
		_u pushBack 'OFPS_HMMWV_SOV';
		
	};
	if (CTI_FACTION_WEST == 2) then {
		//NATO Winter CUP
		
	};
};
//--- OFPS UNITS
if (CTI_OFPS_ADDON > 0) then { 
	//Universal OFPS
		_u pushBack 'dbo_CIV_new_bike';
	//	_u pushBack 'dbo_CIV_ol_bike';

	if (CTI_FACTION_WEST == 0) then {
		//NATO Arid OFPS
		
	};
	if (CTI_FACTION_WEST == 1) then {
		//NATO Tropic OFPS
		
	};
	if (CTI_FACTION_WEST == 2) then {
		//NATO Winter OFPS
		_u pushBack 'sfp_bv206_winter';
		_u pushBack 'Meaty_Hunter_Sn';		
		_u pushBack 'Meaty_HunterHMG_Sn';	
		_u pushBack 'Meaty_HunterGMG_Sn';
	};
};

missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_LIGHT], _u];
_u = [];

//Universal Vanilla



if (CTI_FACTION_WEST == 0) then {
	//NATO Arid Vanilla
	_u pushBack "B_APC_Wheeled_01_cannon_F";
	_u pushBack "B_APC_Tracked_01_rcws_F";
	_u pushBack "B_APC_Tracked_01_AA_F";
	_u pushBack "B_MBT_01_cannon_F";
	_u pushBack "B_MBT_01_arty_F";
	_u pushBack "B_MBT_01_mlrs_F";

	
};
if (CTI_FACTION_WEST == 1) then {
	//NATO Tropic Vanilla
	
};
if (CTI_FACTION_WEST == 2) then {
	//NATO Winter Vanilla
	
};
//--- APEX UNITS
if (CTI_APEX_ADDON > 0) then { 
	//Universal APEX
	

	if (CTI_FACTION_WEST == 0) then {
		//NATO Arid APEX
		
	};
	if (CTI_FACTION_WEST == 1) then {
		//NATO Tropic APEX
		_u pushBack "OFPS_MARSHALL";
		_u pushBack "OFPS_PANTHER";
		_u pushBack "OFPS_CHEETAH";
		_u pushBack "OFPS_SLAMMER";
		_u pushBack "OFPS_SCORCHER";
		_u pushBack "OFPS_SANDSTORM";
		_u pushBack "OFPS_BOBCAT";
		
	};
	if (CTI_FACTION_WEST == 2) then {
		//NATO Winter APEX
		
	};
};
//--- CUP UNITS
if (CTI_CUP_ADDON > 0) then { 
	//Universal CUP
	_u pushBack 'CUP_B_AAV_USMC';		
	_u pushBack 'CUP_B_MCV80_GB_W_SLAT';	
	_u pushBack 'CUP_B_M113_Med_USA';	
	_u pushBack 'CUP_B_M2A3Bradley_USA_W';  
	_u pushBack 'CUP_B_M1128_MGS_Woodland'; 
	_u pushBack 'CUP_B_M163_USA';   	
	_u pushBack 'CUP_B_M6LineBacker_USA_W'; 
	_u pushBack 'CUP_B_M1A2_TUSK_MG_US_Army';  
	_u pushBack 'CUP_B_M270_DPICM_USMC';
        _u pushBack 'CUP_B_FV510_GB_W';
        _u pushBack 'CUP_B_LAV25M240_USMC';
/*
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
*/

	if (CTI_FACTION_WEST == 0) then {
		//NATO Arid CUP
		
	};
	if (CTI_FACTION_WEST == 1) then {
		//NATO Tropic CUP
	_u pushBack 'OFPS_M1A1';
        _u pushBack 'OFPS_M2';	
		
	};
	if (CTI_FACTION_WEST == 2) then {
		//NATO Winter CUP
		
	};
};
//--- OFPS UNITS
if (CTI_OFPS_ADDON > 0) then { 
	//Universal OFPS
	

	if (CTI_FACTION_WEST == 0) then {
		//NATO Arid OFPS
		
	};
	if (CTI_FACTION_WEST == 1) then {
		//NATO Tropic OFPS
		
	};
	if (CTI_FACTION_WEST == 2) then {
		//NATO Winter OFPS
	_u pushBack 'Meaty_Marshall_Sn';		
	_u pushBack 'Meaty_cheetah_Sn';	
	_u pushBack 'Meaty_Bobcat_Sn';	
	_u pushBack 'Meaty_Panther_Sn';  
	_u pushBack 'Meaty_slammer_Sn'; 
	_u pushBack 'Meaty_Scorcher_Sn';   	
	_u pushBack 'Meaty_Sandstorm_Sn';  
		
	};
};

missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_HEAVY], _u];
_u = [];

//Universal Vanilla
_u pushBack "B_Heli_Light_01_F";
_u pushBack "B_Heli_Transport_01_F";
_u pushBack "B_Heli_Transport_03_F";
_u pushBack "B_Heli_Light_01_armed_F";
_u pushBack "B_Heli_Attack_01_F";
_u pushBack "B_UAV_02_CAS_F";
_u pushBack "B_UAV_02_F";
_u pushBack "B_Plane_CAS_01_F";

if (CTI_FACTION_WEST == 0) then {
	//NATO Arid Vanilla

	
};
if (CTI_FACTION_WEST == 1) then {
	//NATO Tropic Vanilla
	
};
if (CTI_FACTION_WEST == 2) then {
	//NATO Winter Vanilla
	
};
//--- APEX UNITS
if (CTI_APEX_ADDON > 0) then { 
	//Universal APEX
	_u pushBack 'B_T_VTOL_01_infantry_F';
	_u pushBack 'B_T_VTOL_01_vehicle_F';
	_u pushBack 'B_T_VTOL_01_armed_F';
	if (CTI_FACTION_WEST == 0) then {
		//NATO Arid APEX
		
	};
	if (CTI_FACTION_WEST == 1) then {
		//NATO Tropic APEX

		
	};
	if (CTI_FACTION_WEST == 2) then {
		//NATO Winter APEX
		
	};
};
//--- CUP UNITS
if (CTI_CUP_ADDON > 0) then { 
	//Universal CUP
	_u pushBack 'CUP_B_AH64D_NO_USA';	
	_u pushBack 'CUP_B_AH64D_ES_USA';	
	_u pushBack 'CUP_B_AH64D_AT_USA';	
	_u pushBack 'CUP_B_AH1Z_NoWeapons_USMC';	
	_u pushBack 'CUP_B_AH1Z_Escort_USMC';	
	_u pushBack 'CUP_B_AH1Z_AT_USMC';	
	_u pushBack 'CUP_B_C130J_USMC';
	_u pushBack 'CUP_B_C130J_Cargo_USMC';	
	_u pushBack 'CUP_B_MH6J_USA';		
	_u pushBack 'CUP_B_UH1Y_GUNSHIP_USMC';	
	_u pushBack 'CUP_B_AH6J_AT_USA';	
	_u pushBack 'CUP_B_AH6J_MP_USA';	
	_u pushBack 'CUP_B_CH47F_USA';		
	_u pushBack 'CUP_B_UH60M_FFV_US';	
	_u pushBack 'CUP_B_UH1D_GER_KSK';	
	_u pushBack 'CUP_B_CH53E_GER';		
	_u pushBack 'CUP_B_UH1Y_MEV_USMC';	
	_u pushBack 'CUP_B_A10_CAS_USA';	
	_u pushBack 'CUP_B_A10_AT_USA';		
	_u pushBack 'CUP_B_F35B_AA_USMC';	
	_u pushBack 'CUP_B_AV8B_GBU12_USMC';
	_u pushBack 'CUP_B_AV8B_CAP_USMC';
	_u pushBack 'CUP_B_AV8B_MK82_USMC';	
	_u pushBack 'CUP_B_MV22_USMC_RAMPGUN';  
	_u pushBack 'CUP_B_AC47_Spooky_USA';	
	_u pushBack 'CUP_C_DC3_TanoAir_CIV';
        _u pushBack 'CUP_B_AW159_Cannon_RN_Grey';
			_u pushBack 'CUP_B_F35B_LGB_USMC';
	_u pushBack 'CUP_B_AH6J_Escort_USA';
	_u pushBack 'CUP_B_AH6J_Escort19_USA';
	
/*
	_u pushBack 'CUP_B_MH6J_USA';
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
	_u pushBack 'CUP_C_C47_CIV';
	_u pushBack 'CUP_B_MV22_USMC';
	_u pushBack 'CUP_B_MV22_USMC_RAMPGUN';
	_u pushBack 'CUP_USMC_MQ9';
	_u pushBack 'CUP_B_A10_CAS_USA';
	_u pushBack 'CUP_B_AC47_Spooky_USA';
*/

	if (CTI_FACTION_WEST == 0) then {
		//NATO Arid CUP
		
	};
	if (CTI_FACTION_WEST == 1) then {
		//NATO Tropic CUP
		
	};
	if (CTI_FACTION_WEST == 2) then {
		//NATO Winter CUP
		
	};
};
//--- OFPS UNITS
if (CTI_OFPS_ADDON > 0) then { 
	//Universal OFPS
	_u pushBack 'O_UAV_02_F';
	_u pushBack 'usaf_b1b';			
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
	_u pushBack 'pook_tu953M80_CDF';
	_u pushBack 'pook_tu95ms_CDF';
	_u pushBack 'pook_tu95ms16_CDF';
	_u pushBack 'pook_tu95MSM_CDF';
	_u pushBack 'JS_JC_FA18F';
	_u pushBack "sab_l19_sea_2";


	if (CTI_FACTION_WEST == 0) then {
		//NATO Arid OFPS
		
	};
	if (CTI_FACTION_WEST == 1) then {
		//NATO Tropic OFPS
		
	};
	if (CTI_FACTION_WEST == 2) then {
		//NATO Winter OFPS
_u pushBack "AAF_D_Heli_Transport_02_F";
_u pushBack "AAF_D_Heli_light_03_F";
_u pushBack "AAF_D_Heli_light_03_unarmed_F";
		
	};
};

missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_AIR], _u];
_u = [];

//Universal Vanilla
_u pushBack "B_Truck_01_Repair_F";
_u pushBack "CTI_Salvager_West";
_u pushBack 'B_Slingload_01_Repair_F';
_u pushBack "B_Truck_01_fuel_F";
_u pushBack 'B_Slingload_01_Fuel_F';

if (CTI_FACTION_WEST == 0) then {
	//NATO Arid Vanilla



	
};
if (CTI_FACTION_WEST == 1) then {
	//NATO Tropic Vanilla
	
};
if (CTI_FACTION_WEST == 2) then {
	//NATO Winter Vanilla
	
};
//--- APEX UNITS
if (CTI_APEX_ADDON > 0) then { 
	//Universal APEX
	

	if (CTI_FACTION_WEST == 0) then {
		//NATO Arid APEX
		
	};
	if (CTI_FACTION_WEST == 1) then {
		//NATO Tropic APEX

		
	};
	if (CTI_FACTION_WEST == 2) then {
		//NATO Winter APEX
		
	};
};
//--- CUP UNITS
if (CTI_CUP_ADDON > 0) then { 
	//Universal CUP
	

	if (CTI_FACTION_WEST == 0) then {
		//NATO Arid CUP
		
	};
	if (CTI_FACTION_WEST == 1) then {
		//NATO Tropic CUP
		
	};
	if (CTI_FACTION_WEST == 2) then {
		//NATO Winter CUP
		
	};
};
//--- OFPS UNITS
if (CTI_OFPS_ADDON > 0) then { 
	//Universal OFPS
	

	if (CTI_FACTION_WEST == 0) then {
		//NATO Arid OFPS
		
	};
	if (CTI_FACTION_WEST == 1) then {
		//NATO Tropic OFPS
		
	};
	if (CTI_FACTION_WEST == 2) then {
		//NATO Winter OFPS
		
	};
};

missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_REPAIR], _u];
_u = [];

//Universal Vanilla
_u pushBack "B_Truck_01_ammo_F";
_u pushBack 'B_Slingload_01_Ammo_F';
_u pushBack "Box_NATO_Wps_F";
_u pushBack "B_supplyCrate_F";

if (CTI_FACTION_WEST == 0) then {
	//NATO Arid Vanilla

	
};
if (CTI_FACTION_WEST == 1) then {
	//NATO Tropic Vanilla

	
};
if (CTI_FACTION_WEST == 2) then {
	//NATO Winter Vanilla
	
};
//--- APEX UNITS
if (CTI_APEX_ADDON > 0) then { 
	//Universal APEX
	

	if (CTI_FACTION_WEST == 0) then {
		//NATO Arid APEX
		
	};
	if (CTI_FACTION_WEST == 1) then {
		//NATO Tropic APEX
		
	};
	if (CTI_FACTION_WEST == 2) then {
		//NATO Winter APEX
		
	};
};
//--- CUP UNITS
if (CTI_CUP_ADDON > 0) then { 
	//Universal CUP
	

	if (CTI_FACTION_WEST == 0) then {
		//NATO Arid CUP
		
	};
	if (CTI_FACTION_WEST == 1) then {
		//NATO Tropic CUP
		
	};
	if (CTI_FACTION_WEST == 2) then {
		//NATO Winter CUP
		
	};
};
//--- OFPS UNITS
if (CTI_OFPS_ADDON > 0) then { 
	//Universal OFPS
	

	if (CTI_FACTION_WEST == 0) then {
		//NATO Arid OFPS
		
	};
	if (CTI_FACTION_WEST == 1) then {
		//NATO Tropic OFPS
		
	};
	if (CTI_FACTION_WEST == 2) then {
		//NATO Winter OFPS
		
	};
};

missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_AMMO], _u];
_u = [];

//Universal Vanilla
_u pushBack "C_Boat_Civil_01_F";
_u pushBack "B_Boat_Transport_01_F";
_u pushBack "B_Boat_Armed_01_minigun_F";
_u pushBack 'C_Boat_Civil_01_police_F';
_u pushBack "B_SDV_01_F";


if (CTI_FACTION_WEST == 0) then {
	//NATO Arid Vanilla

	
};
if (CTI_FACTION_WEST == 1) then {
	//NATO Tropic Vanilla

	
};
if (CTI_FACTION_WEST == 2) then {
	//NATO Winter Vanilla
	
};
//--- APEX UNITS
if (CTI_APEX_ADDON > 0) then { 
	//Universal APEX
	_u pushBack "C_Scooter_Transport_01_F";
	_u pushBack "I_C_Boat_Transport_02_F";

	if (CTI_FACTION_WEST == 0) then {
		//NATO Arid APEX
		
	};
	if (CTI_FACTION_WEST == 1) then {
		//NATO Tropic APEX
		
	};
	if (CTI_FACTION_WEST == 2) then {
		//NATO Winter APEX
		
	};
};
//--- CUP UNITS
if (CTI_CUP_ADDON > 0) then { 
	//Universal CUP
	_u pushBack "CUP_B_RHIB_USMC";
	_u pushBack "CUP_B_RHIB2Turret_USMC";
	_u pushBack "CUP_B_Zodiac_USMC";

	if (CTI_FACTION_WEST == 0) then {
		//NATO Arid CUP
		
	};
	if (CTI_FACTION_WEST == 1) then {
		//NATO Tropic CUP
		
	};
	if (CTI_FACTION_WEST == 2) then {
		//NATO Winter CUP
		
	};
};
//--- OFPS UNITS
if (CTI_OFPS_ADDON > 0) then { 
	//Universal OFPS
	_u pushBack "Burnes_LCAC_1";
	_u pushBack "sfp_svavare2000";
	_u pushBack "sfp_svavare2000_transport";
	_u pushBack "sfp_gruppbat";
	_u pushBack "rhsusf_mkvsoc";
	_u pushBack "sfp_rbb_norrkoping";
	_u pushBack "OFPS_Frigate_Blu";

	if (CTI_FACTION_WEST == 0) then {
		//NATO Arid OFPS
		
	};
	if (CTI_FACTION_WEST == 1) then {
		//NATO Tropic OFPS
		
	};
	if (CTI_FACTION_WEST == 2) then {
		//NATO Winter OFPS
		
	};
};

missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_NAVAL], _u];
_u = [];

//Universal Vanilla
_u pushBack "B_Quadbike_01_F";
_u pushBack "B_G_Offroad_01_F";
_u pushBack "B_G_Offroad_01_armed_F";
_u pushBack "C_Van_01_transport_F";
_u pushBack "B_Truck_01_transport_F";

if (CTI_FACTION_WEST == 0) then {
	//NATO Arid Vanilla
	_u pushBack "B_Soldier_F";
	_u pushBack "B_crew_F";
	_u pushBack "B_MRAP_01_F";
	_u pushBack "B_MRAP_01_hmg_F";

};
if (CTI_FACTION_WEST == 1) then {
	//NATO Tropic Vanilla

};
if (CTI_FACTION_WEST == 2) then {
	//NATO Winter Vanilla
	
};
//--- APEX UNITS
if (CTI_APEX_ADDON > 0) then { 
	//Universal APEX
_u pushBack 'B_T_LSV_01_unarmed_F';
_u pushBack 'B_T_LSV_01_armed_F';
	
	if (CTI_FACTION_WEST == 0) then {
		//NATO Arid APEX
		
	};
	if (CTI_FACTION_WEST == 1) then {
		//NATO Tropic APEX
		_u pushBack "B_T_Soldier_F";
		_u pushBack "B_T_crew_F";
		_u pushBack "OFPS_HUNTER";
		_u pushBack "OFPS_HUNTER_HMG";

	};
	if (CTI_FACTION_WEST == 2) then {
		//NATO Winter APEX
		
	};
};
//--- CUP UNITS
if (CTI_CUP_ADDON > 0) then { 
	//Universal CUP
	_u pushBack 'CUP_B_HMMWV_Unarmed_USMC';		
	_u pushBack 'CUP_B_HMMWV_M2_GPK_USA';
	_u pushBack 'CUP_B_HMMWV_MK19_USMC';	
	
	if (CTI_FACTION_WEST == 0) then {
		//NATO Arid CUP
		_u pushBack 'CUP_B_US_Soldier';
	};
	if (CTI_FACTION_WEST == 1) then {
		//NATO Tropic CUP
		
	};
	if (CTI_FACTION_WEST == 2) then {
		//NATO Winter CUP
		
	};
};
//--- OFPS UNITS
if (CTI_OFPS_ADDON > 0) then { 
	//Universal OFPS
	_u pushBack 'sfp_dakota';
	_u pushBack 'sfp_mercedes';

	if (CTI_FACTION_WEST == 0) then {
		//NATO Arid OFPS
		
	};
	if (CTI_FACTION_WEST == 1) then {
		//NATO Tropic OFPS
		
	};
	if (CTI_FACTION_WEST == 2) then {
		//NATO Winter OFPS
		_u pushBack 'sfp_m90s_rifleman_ak5';
		_u pushBack 'sfp_m90s_crew';
		_u pushBack 'sfp_bv206_winter';
		_u pushBack 'Meaty_Hunter_Sn';		
		_u pushBack 'Meaty_HunterHMG_Sn';
	};
};

missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_DEPOT], _u];
_u = [];

//Universal Vanilla
_u pushBack "C_Boat_Civil_01_F";
_u pushBack "B_Boat_Transport_01_F";

if (CTI_FACTION_WEST == 0) then {
	//NATO Arid Vanilla
	
};
if (CTI_FACTION_WEST == 1) then {
	//NATO Tropic Vanilla
	
};
if (CTI_FACTION_WEST == 2) then {
	//NATO Winter Vanilla
	
};
//--- APEX UNITS
if (CTI_APEX_ADDON > 0) then { 
	//Universal APEX
	

	if (CTI_FACTION_WEST == 0) then {
		//NATO Arid APEX
		
	};
	if (CTI_FACTION_WEST == 1) then {
		//NATO Tropic APEX
		
	};
	if (CTI_FACTION_WEST == 2) then {
		//NATO Winter APEX
		
	};
};
//--- CUP UNITS
if (CTI_CUP_ADDON > 0) then { 
	//Universal CUP
	

	if (CTI_FACTION_WEST == 0) then {
		//NATO Arid CUP
		
	};
	if (CTI_FACTION_WEST == 1) then {
		//NATO Tropic CUP
		
	};
	if (CTI_FACTION_WEST == 2) then {
		//NATO Winter CUP
		
	};
};
//--- OFPS UNITS
if (CTI_OFPS_ADDON > 0) then { 
	//Universal OFPS
	

	if (CTI_FACTION_WEST == 0) then {
		//NATO Arid OFPS
		
	};
	if (CTI_FACTION_WEST == 1) then {
		//NATO Tropic OFPS
		
	};
	if (CTI_FACTION_WEST == 2) then {
		//NATO Winter OFPS
		
	};
};

missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_DEPOT_NAVAL], _u];

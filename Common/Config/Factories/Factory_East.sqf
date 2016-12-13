private ["_side", "_u"];
_side = _this;
if (CTI_FACTION_EAST == 0) then {
	//CSAT Arid Vanilla
	missionNamespace setVariable [format["CTI_%1_Commander", _side], "O_officer_F"];
	missionNamespace setVariable [format["CTI_%1_Worker", _side], "O_Soldier_lite_F"];
	missionNamespace setVariable [format["CTI_%1_Diver", _side], "O_diver_F"];
	missionNamespace setVariable [format["CTI_%1_Soldier", _side], "O_Soldier_F"];
	missionNamespace setVariable [format["CTI_%1_Crew", _side], "O_crew_F"];
	missionNamespace setVariable [format["CTI_%1_Pilot", _side], "O_Helipilot_F"];
	missionNamespace setVariable [format["CTI_%1_Static", _side], "O_spotter_F"];
};
if (CTI_FACTION_EAST == 1) then {
	//CSAT Tropic Vanilla
	missionNamespace setVariable [format["CTI_%1_Commander", _side], "O_T_officer_F"];
	missionNamespace setVariable [format["CTI_%1_Worker", _side], "O_T_Soldier_lite_F"];
	missionNamespace setVariable [format["CTI_%1_Diver", _side], "O_diver_F"];
	missionNamespace setVariable [format["CTI_%1_Soldier", _side], "O_T_Soldier_F"];
	missionNamespace setVariable [format["CTI_%1_Crew", _side], "O_T_crew_F"];
	missionNamespace setVariable [format["CTI_%1_Pilot", _side], "O_T_Helipilot_F"];
	missionNamespace setVariable [format["CTI_%1_Static", _side], "O_T_spotter_F"];
};
if (CTI_FACTION_EAST == 2) then {
	//CSAT Winter Vanilla
	missionNamespace setVariable [format["CTI_%1_Commander", _side], "IP_O_recon_TL_FST"];
	missionNamespace setVariable [format["CTI_%1_Worker", _side], "IP_O_Soldier_FST"];
	missionNamespace setVariable [format["CTI_%1_Diver", _side], "O_diver_F"];
	missionNamespace setVariable [format["CTI_%1_Soldier", _side], "IP_O_Soldier_FST"];
	missionNamespace setVariable [format["CTI_%1_Crew", _side], "IP_O_crew_FST"];
	missionNamespace setVariable [format["CTI_%1_Pilot", _side], "IP_O_HeliCrew_FST"];
	missionNamespace setVariable [format["CTI_%1_Static", _side], "IP_O_Sharpshooter_FST"];
};
if (CTI_FACTION_WEST == 3) then {
	//IF3 SOV/USA 
	missionNamespace setVariable [format["CTI_%1_Commander", _side], "LIB_US_captain"];
	missionNamespace setVariable [format["CTI_%1_Worker", _side], "LIB_US_rifleman"];
	missionNamespace setVariable [format["CTI_%1_Diver", _side], "LIB_US_rifleman"];
	missionNamespace setVariable [format["CTI_%1_Soldier", _side], "LIB_US_rifleman"];
	missionNamespace setVariable [format["CTI_%1_Crew", _side], "LIB_US_tank_crew"];
	missionNamespace setVariable [format["CTI_%1_Pilot", _side], "LIB_US_pilot"];
	missionNamespace setVariable [format["CTI_%1_Static", _side], "LIB_US_rifleman"];
};
if (CTI_CUP_ADDON > 0) then {
	if (CTI_OFPS_ADDON > 0) then {
		if (CTI_FACTION_WEST == 0) then {
			//ARID SET
			missionNamespace setVariable [format["CTI_%1_Vehicles_Startup", _side], [
				["CUP_O_GAZ_Vodnik_MedEvac_RU", [
					["CUP_launch_RPG18", 5], 
					["CUP_RPG18_M", 20],
					["Toolkit", 1],
					["acc_flashlight", 10],
					["CUP_sgun_Saiga12K", 10],
					["CUP_8Rnd_B_Saiga12_74Slug_M", 20],
					["30Rnd_9x21_Mag", 20]
				]],
				["CUP_B_UAZ_SPG9_CDF", [
					["CUP_launch_RPG18", 5], 
					["CUP_RPG18_M", 20],
					["Toolkit", 1],
					["acc_flashlight", 10],
					["CUP_sgun_Saiga12K", 10],
					["CUP_8Rnd_B_Saiga12_74Slug_M", 10],
					["30Rnd_9x21_Mag", 20]
				]],
				["CUP_O_GAZ_Vodnik_AGS_RU", [
					["CUP_launch_RPG18", 5], 
					["CUP_RPG18_M", 20],
					["Toolkit", 1],
					["acc_flashlight", 10],
					["CUP_sgun_Saiga12K", 10],
					["CUP_8Rnd_B_Saiga12_74Slug_M", 20],
					["30Rnd_9x21_Mag", 20]
				]],
				["CUP_O_BTR60_CSAT", [
					["CUP_launch_RPG18", 5], 
					["CUP_RPG18_M", 20],
					["Toolkit", 1],
					["acc_flashlight", 10],
					["CUP_sgun_Saiga12K", 10],
					["CUP_8Rnd_B_Saiga12_74Slug_M", 20],
					["30Rnd_9x21_Mag", 20]
				]]
				//,	["O_Heli_Light_02_unarmed_F", []]
			]];
		};
		if (CTI_FACTION_WEST == 1) then {
			//JUNGLE SET
			missionNamespace setVariable [format["CTI_%1_Vehicles_Startup", _side], [
				["O_T_Truck_03_medical_ghex_F", [
					["CUP_launch_RPG18", 5], 
					["CUP_RPG18_M", 20],
					["Toolkit", 1],
					["acc_flashlight", 10],
					["CUP_sgun_Saiga12K", 10],
					["CUP_8Rnd_B_Saiga12_74Slug_M", 20],
					["30Rnd_9x21_Mag", 20]
				]],
				["O_T_MRAP_02_hmg_ghex_F", [
					["CUP_launch_RPG18", 5], 
					["CUP_RPG18_M", 20],
					["Toolkit", 1],
					["acc_flashlight", 10],
					["CUP_sgun_Saiga12K", 10],
					["CUP_8Rnd_B_Saiga12_74Slug_M", 10],
					["30Rnd_9x21_Mag", 20]
				]],
				["O_T_MRAP_02_gmg_ghex_F", [
					["CUP_launch_RPG18", 5], 
					["CUP_RPG18_M", 20],
					["Toolkit", 1],
					["acc_flashlight", 10],
					["CUP_sgun_Saiga12K", 10],
					["CUP_8Rnd_B_Saiga12_74Slug_M", 20],
					["30Rnd_9x21_Mag", 20]
				]]
			]];
		};
		if (CTI_FACTION_WEST == 2) then {
			//WINTER SET
			missionNamespace setVariable [format["CTI_%1_Vehicles_Startup", _side], [
				["AAF_D_Truck_02_medical_F", [
					["CUP_launch_RPG18", 5], 
					["CUP_RPG18_M", 20],
					["Toolkit", 1],
					["acc_flashlight", 10],
					["CUP_sgun_Saiga12K", 10],
					["CUP_8Rnd_B_Saiga12_74Slug_M", 20],
					["30Rnd_9x21_Mag", 20]
				]],
				["AAF_D_MRAP_03_hmg_F", [
					["CUP_launch_RPG18", 5], 
					["CUP_RPG18_M", 20],
					["Toolkit", 1],
					["acc_flashlight", 10],
					["CUP_sgun_Saiga12K", 10],
					["CUP_8Rnd_B_Saiga12_74Slug_M", 10],
					["30Rnd_9x21_Mag", 20]
				]],
				["AAF_D_MRAP_03_gmg_F", [
					["CUP_launch_RPG18", 5], 
					["CUP_RPG18_M", 20],
					["Toolkit", 1],
					["acc_flashlight", 10],
					["CUP_sgun_Saiga12K", 10],
					["CUP_8Rnd_B_Saiga12_74Slug_M", 20],
					["30Rnd_9x21_Mag", 20]
				]]
			]];
		};		
	} else {
		//DEFAULT CUP SET
		missionNamespace setVariable [format["CTI_%1_Vehicles_Startup", _side], [
			["CUP_O_GAZ_Vodnik_MedEvac_RU", [
				["CUP_launch_RPG18", 5], 
				["CUP_RPG18_M", 20],
				["Toolkit", 1],
				["acc_flashlight", 10],
				["CUP_sgun_Saiga12K", 10],
				["CUP_8Rnd_B_Saiga12_74Slug_M", 20],
				["30Rnd_9x21_Mag", 20]
			]],
			["CUP_B_UAZ_SPG9_CDF", [
				["CUP_launch_RPG18", 5], 
				["CUP_RPG18_M", 20],
				["Toolkit", 1],
				["acc_flashlight", 10],
				["CUP_sgun_Saiga12K", 10],
				["CUP_8Rnd_B_Saiga12_74Slug_M", 10],
				["30Rnd_9x21_Mag", 20]
			]],
			["CUP_O_GAZ_Vodnik_AGS_RU", [
				["CUP_launch_RPG18", 5], 
				["CUP_RPG18_M", 20],
				["Toolkit", 1],
				["acc_flashlight", 10],
				["CUP_sgun_Saiga12K", 10],
				["CUP_8Rnd_B_Saiga12_74Slug_M", 20],
				["30Rnd_9x21_Mag", 20]
			]],
			["CUP_O_BTR60_CSAT", [
				["CUP_launch_RPG18", 5], 
				["CUP_RPG18_M", 20],
				["Toolkit", 1],
				["acc_flashlight", 10],
				["CUP_sgun_Saiga12K", 10],
				["CUP_8Rnd_B_Saiga12_74Slug_M", 20],
				["30Rnd_9x21_Mag", 20]
			]]
			//,	["O_Heli_Light_02_unarmed_F", []]
		]];
	};
} else {
missionNamespace setVariable [format["CTI_%1_Vehicles_Startup", _side], [ 
	["LIB_US_GMC_Ambulance", [
		["LIB_PPSh41_m", 2], ["lib_35Rnd_762x25", 20],
		["LIB_M1_Garand", 2],
		["LIB_8Rnd_762x63", 10], ["", 0],
		["LIB_1Rnd_60mm_M6", 20],
		["LIB_M1A1_Bazooka", 5],
		["lib_35Rnd_762x25_t", 6],
		["LIB_US_M18", 8],
		["firstaidkit", 20],
		["lib_8Rnd_762x25", 15],
		["B_LIB_SOV_RA_Rucksack2", 10],
		["Toolkit", 2]
	]],
	["LIB_US_M3_Halftrack", [
		["Toolkit", 1],["firstaidkit", 10],
		["LIB_8Rnd_762x63", 15],
		["LIB_M1A1_Bazooka", 5], 
		["LIB_1Rnd_60mm_M6", 10],
		["lib_8Rnd_762x25", 20]]]
]];
};

//--- Units - Barracks
_u = [];

//Universal Vanilla

	
if (CTI_FACTION_EAST == 0) then {
//CSAT Arid Vanilla
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
_u pushBack 'O_Diver_F';
_u pushBack 'O_Diver_TL_F';
_u pushBack 'O_Recon_Exp_F';
_u pushBack 'O_Recon_JTAC_F';
_u pushBack 'O_Recon_Medic_F';
_u pushBack 'O_Recon_F';
_u pushBack 'O_Recon_LAT_F';
_u pushBack 'O_Recon_TL_F';
_u pushBack 'O_Sniper_F';
_u pushBack 'O_ghillie_tna_F';
_u pushBack 'O_Spotter_F';
};
if (CTI_FACTION_EAST == 1) then {
	//CSAT Tropic Vanilla

};
if (CTI_FACTION_EAST == 2) then {
	//CSAT Winter Vanilla
};
//--- APEX UNITS
if (CTI_APEX_ADDON > 0) then { 
	//Universal APEX

	if (CTI_FACTION_EAST == 0) then {
		//CSAT Arid APEX
	};
	if (CTI_FACTION_EAST == 1) then {
		//CSAT Tropic APEX
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
	if (CTI_FACTION_EAST == 2) then {
		//CSAT Winter APEX
	};
};
//--- CUP UNITS
if (CTI_CUP_ADDON > 0) then { 
	//Universal CUP

	if (CTI_FACTION_EAST == 0) then {
		//CSAT Arid CUP
	_u pushBack 'CUP_O_RU_Soldier';
	_u pushBack 'CUP_O_RU_Soldier_AA';
	_u pushBack 'CUP_O_RU_Soldier_MG';
	_u pushBack 'CUP_O_RU_Crew';
	_u pushBack 'CUP_O_RU_Soldier_AT';
	_u pushBack 'CUP_O_RU_Soldier_HAT';
	_u pushBack 'CUP_O_RU_Engineer';
	_u pushBack 'CUP_O_RU_Soldier_GL';
	_u pushBack 'CUP_O_RU_Medic';
	_u pushBack 'CUP_O_RU_Pilot';
	_u pushBack 'CUP_O_RU_Sniper_KSVK';
    _u pushBack 'CUP_O_RU_Spotter';
	};
	if (CTI_FACTION_EAST == 1) then {
		//CSAT Tropic CUP
			_u pushBack 'CUP_O_RU_Soldier_VDV_EMR';
	_u pushBack 'CUP_O_RU_Soldier_AA_VDV_EMR';
	_u pushBack 'CUP_O_RU_Soldier_MG_VDV_EMR';
	_u pushBack 'CUP_O_RU_Crew_VDV_EMR';
	_u pushBack 'CUP_O_RU_Soldier_AT_VDV_EMR';
	_u pushBack 'CUP_O_RU_Soldier_HAT_VDV_EMR';
	_u pushBack 'CUP_O_RU_Engineer_VDV_EMR';
	_u pushBack 'CUP_O_RU_Soldier_GL_VDV_EMR';
	_u pushBack 'CUP_O_RU_Medic_VDV_EMR';
	_u pushBack 'CUP_O_RU_Pilot_VDV_EMR';
	_u pushBack 'CUP_O_RU_Sniper_KSVK_VDV_EMR';
    _u pushBack 'CUP_O_RU_Spotter_VDV_EMR';
	};
	if (CTI_FACTION_EAST == 2) then {
		//CSAT Winter CUP
	};
};
//--- OFPS UNITS
if (CTI_OFPS_ADDON > 0) then { 
	//Universal OFPS

	if (CTI_FACTION_EAST == 0) then {
		//CSAT Arid OFPS
	};
	if (CTI_FACTION_EAST == 1) then {
		//CSAT Tropic OFPS
	};
	if (CTI_FACTION_EAST == 2) then {
		//CSAT Winter OFPS
	_u pushBack 'IP_O_Soldier_FST';
	_u pushBack 'IP_O_Soldier_LAT_FST';
	_u pushBack 'IP_O_HeavyGunner_FST';
	_u pushBack 'IP_O_Sharpshooter_FST';
	_u pushBack 'IP_O_Medic_FST';
	_u pushBack 'IP_O_Soldier_GL_FST';
	_u pushBack 'IP_O_Soldier_AA_FST';
	_u pushBack 'IP_O_Soldier_AT_FST';
	_u pushBack 'IP_O_Soldier_repair_FST';
	_u pushBack 'IP_O_Soldier_exp_FST';
	_u pushBack 'IP_O_Engineer_FST';
	_u pushBack 'IP_O_crew_FST';
	_u pushBack 'IP_O_HeliCrew_FST';
	_u pushBack 'IP_O_Officer_hex_FST';
	//Special Forces
	_u pushBack 'IP_O_recon_exp_FST';
	_u pushBack 'IP_O_recon_JTAC_FST';
	_u pushBack 'IP_O_recon_M_FST';
	_u pushBack 'IP_O_recon_medic_FST';
	_u pushBack 'IP_O_pathfinder_FST';
	_u pushBack 'IP_O_recon_FST';
	_u pushBack 'IP_O_recon_LAT_FST';
	_u pushBack 'IP_O_recon_TL_FST';
	};
};

if (CTI_IF3_ADDON > 0) then { 
//-- IF3 UNITS
  _u pushBack 'LIB_US_rifleman';
  _u pushBack 'LIB_SOV_smgunner';
  _u pushBack 'LIB_US_AT_soldier';
  _u pushBack 'LIB_US_tank_crew';
  _u pushBack 'LIB_SOV_AT_grenadier';
  _u pushBack 'LIB_SOV_sapper';
  _u pushBack 'LIB_wp_medic';
  _u pushBack 'LIB_SOV_assault_mgunner';
  _u pushBack 'LIB_US_pilot';
  _u pushBack 'LIB_SOV_scout_sniper';
  _u pushBack 'LIB_US_captain';
  
};


missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_BARRACKS], _u];
_u = [];

if (CTI_VANILLA_ADDON > 0) then {
//Universal Vanilla
_u pushBack 'I_C_Offroad_02_unarmed_F';		
_u pushBack 'O_G_Offroad_01_F';	
_u pushBack 'O_Truck_02_medical_F';
_u pushBack 'O_Truck_03_medical_F';
_u pushBack 'Land_Pod_Heli_Transport_04_medevac_F';
_u pushBack 'O_Truck_03_device_F';
_u pushBack 'O_Quadbike_01_F';
_u pushBack "O_G_Offroad_01_armed_F";
_u pushBack 'C_Van_01_transport_F';
};



if (CTI_FACTION_EAST == 0) then {
	//CSAT Arid Vanilla
	_u pushBack 'O_MRAP_02_gmg_F';	
	_u pushBack 'O_MRAP_02_hmg_F';			
	_u pushBack 'O_Truck_02_transport_F';
	_u pushBack 'O_Truck_03_transport_F';
	_u pushBack 'O_MRAP_02_F';
	_u pushBack 'O_MRAP_02_hmg_F';
	_u pushBack 'O_MRAP_02_gmg_F';
	_u pushBack 'O_UGV_01_F';
	_u pushBack 'O_UGV_01_rcws_F';

};
if (CTI_FACTION_EAST == 1) then {
	//CSAT Tropic Vanilla
	
};
if (CTI_FACTION_EAST == 2) then {
	//CSAT Winter Vanilla
	
};
//--- APEX UNITS
if (CTI_APEX_ADDON > 0) then { 
	//Universal APEX



	if (CTI_FACTION_EAST == 0) then {
		//CSAT Arid APEX
		
	};
	if (CTI_FACTION_EAST == 1) then {
		//CSAT Tropic APEX
	_u pushBack 'O_T_LSV_02_armed_F';		
	_u pushBack 'O_T_LSV_02_unarmed_F';		
	_u pushBack 'O_T_Quadbike_01_ghex_F';
	_u pushBack 'O_T_Truck_03_transport_ghex_F';
	_u pushBack 'O_T_Truck_03_covered_ghex_F';
	_u pushBack 'O_T_MRAP_02_ghex_F';
	_u pushBack 'O_T_MRAP_02_gmg_ghex_F';
	_u pushBack 'O_T_MRAP_02_hmg_ghex_F';
	_u pushBack 'O_T_UGV_01_ghex_F';
	_u pushBack 'O_T_UGV_01_rcws_ghex_F';
	_u pushBack 'O_T_Truck_03_medical_ghex_F';
		
	};
	if (CTI_FACTION_EAST == 2) then {
		//CSAT Winter APEX
		
	};
};
//--- CUP UNITS
if (CTI_CUP_ADDON > 0) then { 
	//Universal CUP
	_u pushBack 'CUP_B_Dingo_GER_Wdl';		
	_u pushBack 'CUP_B_Dingo_GL_GER_Wdl';		
	_u pushBack 'CUP_O_Ural_RU';			
	_u pushBack 'CUP_O_BRDM2_ATGM_RUS';  
        _u pushBack 'CUP_O_BTR60_CSAT';   		
	_u pushBack 'CUP_O_GAZ_Vodnik_AGS_RU';		
	_u pushBack 'CUP_O_UAZ_METIS_RU';		
	_u pushBack 'CUP_O_GAZ_Vodnik_BPPU_RU';		
	_u pushBack 'CUP_O_Ural_ZU23_RU';		
	_u pushBack 'CUP_O_GAZ_Vodnik_MedEvac_RU';	
	_u pushBack 'CUP_B_UAZ_MG_CDF';			
	_u pushBack 'CUP_I_BTR40_MG_TKG';		
	_u pushBack 'CUP_O_UAZ_AGS30_RU';		
	_u pushBack 'CUP_I_SUV_Armored_ION';  
	_u pushBack 'CUP_B_UAZ_Unarmed_CDF';		
        _u pushBack 'CUP_O_Ural_Refuel_RU';		
	_u pushBack 'CUP_O_BTR90_RU';	
	_u pushBack 'CUP_O_LR_SPG9_TKA';
	_u pushBack 'CUP_M1030';
	_u pushBack 'CUP_B_TowingTractor_USMC';
	_u pushBack 'CUP_C_Skoda_White_CIV';
	_u pushBack 'CUP_C_SUV_TK';
	_u pushBack 'CUP_I_SUV_Armored_ION';
	_u pushBack 'CUP_C_Datsun';
	_u pushBack 'CUP_O_Datsun_PK_Random';
	_u pushBack 'CUP_O_BRDM2_CSAT';
	_u pushBack 'CUP_O_BRDM2_ATGM_CSAT';
	_u pushBack 'CUP_O_BRDM2_HQ_CSAT';
	_u pushBack 'CUP_O_BTR60_CSAT';
	_u pushBack 'CUP_O_BTR90_RU';
	_u pushBack 'CUP_O_BTR90_HQ_RU';
	_u pushBack 'CUP_B_LR_Ambulance_CZ_W';
	_u pushBack 'OFPS_LR_MG';
	_u pushBack 'OFPS_LR_S';
	_u pushBack 'OFPS_LR_SPG9';
	_u pushBack 'OFPS_LR_SX';
	_u pushBack 'CUP_C_LR_Transport_CTK';
	_u pushBack 'CUP_B_UAZ_Unarmed_CDF';
	_u pushBack 'CUP_O_UAZ_AGS30_CSAT';
	_u pushBack 'CUP_O_UAZ_MG_CSAT';
	_u pushBack 'CUP_O_UAZ_METIS_CSAT';
	_u pushBack 'CUP_O_UAZ_Open_CSAT';
	_u pushBack 'CUP_O_UAZ_SPG9_CSAT';
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
	_u pushBack 'CUP_I_Datsun_PK';



	if (CTI_FACTION_EAST == 0) then {
		//CSAT Arid CUP
		
	};
	if (CTI_FACTION_EAST == 1) then {
		//CSAT Tropic CUP
	_u pushBack 'OFPS_BRDM2_T';
	_u pushBack 'OFPS_BRDM2HQ_T';
	_u pushBack 'OFPS_BRDM2ATGM_T';
		
	};
	if (CTI_FACTION_EAST == 2) then {
		//CSAT Winter CUP
		
	};
};
//--- OFPS UNITS
if (CTI_OFPS_ADDON > 0) then { 
	//Universal OFPS
	_u pushBack 'dbo_CIV_new_bike';
	_u pushBack 'OFPS_BRDM2';
	_u pushBack 'OFPS_BRDM2ATGM';
	_u pushBack 'OFPS_BRDM2HQ';
	_u pushBack 'OFPS_BTR60';
	_u pushBack 'OFPS_UAZ_AGS30';
	_u pushBack 'OFPS_UAZ_MG';
	_u pushBack 'OFPS_UAZ_METIS';
	_u pushBack 'OFPS_UAZ';
	_u pushBack 'OFPS_UAZ_SPG9';
	_u pushBack 'sfp_dakota';
	//_u pushBack 'sfp_mercedes';
//	_u pushBack 'dbo_CIV_ol_bike';

	if (CTI_FACTION_EAST == 0) then {
		//CSAT Arid OFPS
		
	};
	if (CTI_FACTION_EAST == 1) then {
		//CSAT Tropic OFPS
		
	};
	if (CTI_FACTION_EAST == 2) then {
		//CSAT Winter OFPS
		_u pushBack 'sfp_bv206_winter';
		_u pushBack 'AAF_D_Truck_02_covered_F';
		_u pushBack 'AAF_D_MRAP_03_F';
		_u pushBack 'AAF_D_MRAP_03_hmg_F';
		_u pushBack 'AAF_D_MRAP_03_gmg_F';
		_u pushBack 'AAF_D_Truck_02_medical_F';
	};
};

if (CTI_IF3_ADDON > 0) then { 
//-- IF3 UNITS
  _u pushBack 'LIB_US_Willys_MB';
  _u pushBack 'LIB_US_GMC_Open';
  _u pushBack 'LIB_US_Scout_m3';
  _u pushBack 'LIB_US_GMC_Tent';
  _u pushBack 'LIB_US_M3_Halftrack';
  
};

missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_LIGHT], _u];
_u = [];

//Universal Vanilla


if (CTI_FACTION_EAST == 0) then {
	//CSAT Arid Vanilla
	_u pushBack "O_APC_Wheeled_02_rcws_F";
	_u pushBack "O_APC_Tracked_02_cannon_F";
	_u pushBack "O_MBT_02_cannon_F";
	_u pushBack "O_APC_Tracked_02_AA_F";
	_u pushBack "O_MBT_02_arty_F";

};
if (CTI_FACTION_EAST == 1) then {
	//CSAT Tropic Vanilla
	
};
if (CTI_FACTION_EAST == 2) then {
	//CSAT Winter Vanilla
	
};
//--- APEX UNITS
if (CTI_APEX_ADDON > 0) then { 
	//Universal APEX


	if (CTI_FACTION_EAST == 0) then {
		//CSAT Arid APEX
		
	};
	if (CTI_FACTION_EAST == 1) then {
		//CSAT Tropic APEX
	_u pushBack 'O_T_APC_Wheeled_02_rcws_ghex_F';
	_u pushBack 'O_T_APC_Tracked_02_cannon_ghex_F';
	_u pushBack 'O_T_MBT_02_cannon_ghex_F';
	_u pushBack 'O_T_APC_Tracked_02_AA_ghex_F';
	_u pushBack 'O_T_MBT_02_arty_ghex_F';
		
	};
	if (CTI_FACTION_EAST == 2) then {
		//CSAT Winter APEX
		
	};
};
//--- CUP UNITS
if (CTI_CUP_ADDON > 0) then { 
	//Universal CUP
	_u pushBack 'CUP_O_BMP1P_TKA';		
	_u pushBack 'CUP_O_BMP2_RU';			
	_u pushBack 'CUP_O_BMP3_RU';		
	_u pushBack 'CUP_O_T55_CSAT';		
	_u pushBack 'CUP_O_BMP2_AMB_RU';	
	_u pushBack 'CUP_O_ZSU23_SLA';		
	_u pushBack 'CUP_O_2S6_RU';
	_u pushBack 'CUP_O_2S6M_RU';	
	_u pushBack 'CUP_B_T72_CZ';		
	_u pushBack 'CUP_O_BM21_RU';
	_u pushBack 'CUP_O_T90_RU';
/* 
	_u pushBack 'CUP_O_BMP1_CSAT';
	_u pushBack 'CUP_O_BMP1P_CSAT';
	_u pushBack 'CUP_O_BMP2_CSAT';
	_u pushBack 'CUP_O_BMP_HQ_CSAT';
	_u pushBack 'CUP_O_BMP2_AMB_CSAT';
	_u pushBack 'CUP_O_BMP2_ZU_CSAT';
	_u pushBack 'CUP_O_T55_CSAT';
	_u pushBack 'CUP_O_ZSU23_CSAT';
	_u pushBack 'CUP_O_2S6M_RU';
	_u pushBack 'OFPS_BMP3';
	_u pushBack 'OFPS_BMP3_T';
*/

	if (CTI_FACTION_EAST == 0) then {
		//CSAT Arid CUP
		
	};
	if (CTI_FACTION_EAST == 1) then {
		//CSAT Tropic CUP
	_u pushBack 'OFPS_T55_T';		
	_u pushBack 'OFPS_BMP1_T';
	_u pushBack 'OFPS_BMP1P_T';
	_u pushBack 'OFPS_BMP2_T';
	_u pushBack 'OFPS_BMP2_HQ_T';
	_u pushBack 'OFPS_BMP2_M_T';
	_u pushBack 'OFPS_BMP2_ZSU_T';
	_u pushBack 'OFPS_BMP3';
	_u pushBack 'OFPS_BMP3_T';
		
	};
	if (CTI_FACTION_EAST == 2) then {
		//CSAT Winter CUP
		
	};
};
//--- OFPS UNITS
if (CTI_OFPS_ADDON > 0) then { 
	//Universal OFPS
	_u pushBack 'OFPS_BMP1P';		
	_u pushBack 'OFPS_BMP2';			
	_u pushBack 'CUP_O_BMP3_RU';		
	_u pushBack 'OFPS_T55';		
	_u pushBack 'OFPS_BMP2_M';			
	_u pushBack 'CUP_O_2S6M_RU';				
    _u pushBack 'OFPS_BMP2_ZSU';

	if (CTI_FACTION_EAST == 0) then {
		//CSAT Arid OFPS
		
	};
	if (CTI_FACTION_EAST == 1) then {
		//CSAT Tropic OFPS
		
	};
	if (CTI_FACTION_EAST == 2) then {
		//CSAT Winter OFPS
	_u pushBack "AAF_D_APC_tracked_03_cannon_F";
	_u pushBack "AAF_D_MBT_03_cannon_F";
	_u pushBack "AAF_D_APC_Wheeled_03_cannon_F";
		
	};
};

if (CTI_IF3_ADDON > 0) then { 
//-- IF3 UNITS
  _u pushBack 'LIB_SU85';
  _u pushBack 'LIB_M4A3_75';
  _u pushBack 'LIB_M4A3_75_Tubes';
  _u pushBack 'LIB_JS2_43';

  
};

missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_HEAVY], _u];
_u = [];



if (CTI_VANILLA_ADDON > 0) then {
//Universal Vanilla
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
};	

if (CTI_FACTION_EAST == 0) then {
	//CSAT Arid Vanilla


	
};
if (CTI_FACTION_EAST == 1) then {
	//CSAT Tropic Vanilla

	
};
if (CTI_FACTION_EAST == 2) then {
	//CSAT Winter Vanilla
	
};
//--- APEX UNITS
if (CTI_APEX_ADDON > 0) then { 
	//Universal APEX
	_u pushBack "O_T_UAV_04_CAS_F";
	
	if (CTI_FACTION_EAST == 0) then {
		//CSAT Arid APEX
	_u pushBack "O_T_VTOL_02_infantry_hex_F";
	_u pushBack "O_T_VTOL_02_vehicle_hex_F";
		
	};
	if (CTI_FACTION_EAST == 1) then {
		//CSAT Tropic APEX
	_u pushBack "O_T_VTOL_02_infantry_F";
	_u pushBack "O_T_VTOL_02_vehicle_F";

	};
	if (CTI_FACTION_EAST == 2) then {
		//CSAT Winter APEX
	_u pushBack "O_T_VTOL_02_infantry_grey_F";
	_u pushBack "O_T_VTOL_02_vehicle_grey_F";
		
	};
};
//--- CUP UNITS
if (CTI_CUP_ADDON > 0) then { 
	//Universal CUP
//	_u pushBack 'CUP_B_AW159_Cannon_RN_Grey';	
        _u pushBack 'CUP_O_Ka52_GreyCamo_RU';		
	_u pushBack 'CUP_B_Mi171Sh_ACR';
	_u pushBack 'CUP_O_Mi8_SLA_1';
	_u pushBack 'CUP_I_Ka60_GL_Blk_ION';		
	_u pushBack 'CUP_O_Su25_RU_3';	
	_u pushBack 'CUP_O_Su25_RU_1';
	_u pushBack 'CUP_O_C130J_TKA';
	_u pushBack 'CUP_O_C130J_Cargo_TKA';
	_u pushBack 'CUP_O_Su25_RU_2';	
	_u pushBack 'CUP_B_L39_BMB_CZ';			
	_u pushBack 'CUP_O_SU34_LGB_CSAT';	
	_u pushBack 'CUP_O_SU34_AGM_CSAT';	
	_u pushBack 'CUP_O_AN2_TK';
/*
	_u pushBack 'CUP_RU_Pchela1T';
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
	_u pushBack 'OFPS_SU25';
*/

	if (CTI_FACTION_EAST == 0) then {
		//CSAT Arid CUP
	_u pushBack 'CUP_O_MI6T_TKA';			
	_u pushBack 'CUP_B_Mi24_D_MEV_CDF';		
	_u pushBack 'CUP_O_Mi24_P_RU';		
	_u pushBack 'CUP_O_Mi24_V_RU';
	_u pushBack 'CUP_I_Mi24_Mk4_Empty_ION';		
	_u pushBack 'CUP_I_Mi24_Mk4_ION';		
	_u pushBack 'CUP_I_Mi24_Mk4_AT_ION';
	};
	if (CTI_FACTION_EAST == 1) then {
		//CSAT Tropic CUP
	_u pushBack 'OFPS_MI6T';			
	_u pushBack 'OFPS_MI24';		
	_u pushBack 'OFPS_MI24P';		
	_u pushBack 'OFPS_MI24V';
	_u pushBack 'OFPS_MI24Mk4';		
	_u pushBack 'OFPS_MI24Mk4_R';		
	_u pushBack 'OFPS_MI24Mk4_AT';
	_u pushBack 'OFPS_SU25T';
	};
	if (CTI_FACTION_EAST == 2) then {
		//CSAT Winter CUP
			_u pushBack 'CUP_O_MI6T_TKA';			
	_u pushBack 'CUP_B_Mi24_D_MEV_CDF';		
	_u pushBack 'CUP_O_Mi24_P_RU';		
	_u pushBack 'CUP_O_Mi24_V_RU';
	_u pushBack 'CUP_I_Mi24_Mk4_Empty_ION';		
	_u pushBack 'CUP_I_Mi24_Mk4_ION';		
	_u pushBack 'CUP_I_Mi24_Mk4_AT_ION';
	};
};
//--- OFPS UNITS
if (CTI_OFPS_ADDON > 0) then { 
	//Universal OFPS
	_u pushBack 'O_T_UAV_04_CAS_F';			
    _u pushBack 'O_UCSV_01';
	_u pushBack 'sfp_bo105_unarmed';
	_u pushBack 'sfp_bo105';
	_u pushBack 'O_UCSV_01';
	//_u pushBack 'USAF_C17';
	_u pushBack 'usaf_c5';
	_u pushBack 'LDL_C130J';
	_u pushBack 'bwi_a3_t6a_5';
	_u pushBack 'bwi_a3_at6b_2';
	_u pushBack 'bwi_a3_at6b_4';
	_u pushBack 'sab_alphajet8';
	_u pushBack 'sfp_j12';
	_u pushBack 'sfp_j12_rb15';
	_u pushBack 'sfp_j12_cap';
	_u pushBack 'OFPS_BUZAA_O';
	_u pushBack 'usaf_b1b';
	_u pushBack 'pook_tu953M80';
	_u pushBack 'pook_tu95ms';
	_u pushBack 'pook_tu95ms16';
	_u pushBack 'pook_tu95MSM';
	_u pushBack 'JS_JC_SU35';
	_u pushBack "sab_l19_sea_1";


	if (CTI_FACTION_EAST == 0) then {
		//CSAT Arid OFPS
		
	};
	if (CTI_FACTION_EAST == 1) then {
		//CSAT Tropic OFPS
		
	};
	if (CTI_FACTION_EAST == 2) then {
		//CSAT Winter OFPS
	_u pushBack "IP_O_Plane_CAS_02_FSnowHex";
	_u pushBack 'IP_O_Heli_Attack_02_SnowHex_FST';
	_u pushBack 'IP_O_Heli_Light_02_FST';
	_u pushBack 'IP_O_Heli_Light_02_unarmed_FST';
		
	};
};

if (CTI_IF3_ADDON > 0) then { 
//-- IF3 UNITS
  _u pushBack 'LIB_US_NAC_P39_2';
  _u pushBack 'LIB_P47';
  _u pushBack 'LIB_Pe2';
  
};

missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_AIR], _u];
_u = [];



if (CTI_VANILLA_ADDON > 0) then {
//Universal Vanilla

_u pushBack "Land_Pod_Heli_Transport_04_repair_F";
_u pushBack "Land_Pod_Heli_Transport_04_fuel_F";
_u pushBack "O_Truck_03_fuel_F";

};	

if (CTI_FACTION_EAST == 0) then {
	//CSAT Arid Vanilla
	_u pushBack "O_Truck_02_box_F";
	//_u pushBack "O_Truck_03_repair_F";
	_u pushBack "CTI_Salvager_East";
	_u pushBack "O_Truck_02_fuel_F";

	
};
if (CTI_FACTION_EAST == 1) then {
	//CSAT Tropic Vanilla

};
if (CTI_FACTION_EAST == 2) then {
	//CSAT Winter Vanilla
	
};
//--- APEX UNITS
if (CTI_APEX_ADDON > 0) then { 
	//Universal APEX


	if (CTI_FACTION_EAST == 0) then {
		//CSAT Arid APEX
		
	};
	if (CTI_FACTION_EAST == 1) then {
		//CSAT Tropic APEX
_u pushBack 'O_T_Truck_03_fuel_ghex_F';
_u pushBack 'O_T_Truck_03_repair_ghex_F';

		
	};
	if (CTI_FACTION_EAST == 2) then {
		//CSAT Winter APEX
		
	};
};
//--- CUP UNITS
if (CTI_CUP_ADDON > 0) then { 
	//Universal CUP
	_u pushBack 'CUP_O_Ural_Refuel_RU';
	_u pushBack 'CUP_O_Ural_Repair_RU';

	if (CTI_FACTION_EAST == 0) then {
		//CSAT Arid CUP
		
	};
	if (CTI_FACTION_EAST == 1) then {
		//CSAT Tropic CUP
		
	};
	if (CTI_FACTION_EAST == 2) then {
		//CSAT Winter CUP
		
	};
};
//--- OFPS UNITS
if (CTI_OFPS_ADDON > 0) then { 
	//Universal OFPS
	

	if (CTI_FACTION_EAST == 0) then {
		//CSAT Arid OFPS
		
	};
	if (CTI_FACTION_EAST == 1) then {
		//CSAT Tropic OFPS
		
	};
	if (CTI_FACTION_EAST == 2) then {
		//CSAT Winter OFPS
			_u pushBack 'AAF_D_Truck_02_box_F';
		
	};
};

if (CTI_IF3_ADDON > 0) then { 
//-- IF3 UNITS
  _u pushBack 'LIB_US_GMC_Parm';
  _u pushBack 'lib_zis5v_fuel';
  
};

missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_REPAIR], _u];
_u = [];



if (CTI_VANILLA_ADDON > 0) then {
//Universal Vanilla

//Universal Vanilla
_u pushBack "Box_East_Wps_F";
_u pushBack "O_supplyCrate_F";
_u pushBack "Land_Pod_Heli_Transport_04_ammo_F";

};	

if (CTI_FACTION_EAST == 0) then {
	//CSAT Arid Vanilla
_u pushBack "O_Truck_02_Ammo_F";

	
};
if (CTI_FACTION_EAST == 1) then {
	//CSAT Tropic Vanilla
	
};
if (CTI_FACTION_EAST == 2) then {
	//CSAT Winter Vanilla
	
};
//--- APEX UNITS
if (CTI_APEX_ADDON > 0) then { 
	//Universal APEX


	if (CTI_FACTION_EAST == 0) then {
		//CSAT Arid APEX

		
	};
	if (CTI_FACTION_EAST == 1) then {
		//CSAT Tropic APEX
			_u pushBack 'O_T_Truck_03_ammo_ghex_F';

		
	};
	if (CTI_FACTION_EAST == 2) then {
		//CSAT Winter APEX
		
	};
};
//--- CUP UNITS
if (CTI_CUP_ADDON > 0) then { 
	//Universal CUP
	_u pushBack 'CUP_O_Ural_Reammo_RU';

	if (CTI_FACTION_EAST == 0) then {
		//CSAT Arid CUP
		
	};
	if (CTI_FACTION_EAST == 1) then {
		//CSAT Tropic CUP
		
	};
	if (CTI_FACTION_EAST == 2) then {
		//CSAT Winter CUP
		
	};
};
//--- OFPS UNITS
if (CTI_OFPS_ADDON > 0) then { 
	//Universal OFPS
	

	if (CTI_FACTION_EAST == 0) then {
		//CSAT Arid OFPS
		
	};
	if (CTI_FACTION_EAST == 1) then {
		//CSAT Tropic OFPS
		
	};
	if (CTI_FACTION_EAST == 2) then {
		//CSAT Winter OFPS
					_u pushBack 'AAF_D_Truck_02_box_F';
		
	};
};

if (CTI_IF3_ADDON > 0) then { 
//-- IF3 UNITS
  _u pushBack 'LIB_US_GMC_Ammo';
  
};

missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_AMMO], _u];
_u = [];



if (CTI_VANILLA_ADDON > 0) then {
//Universal Vanilla
_u pushBack 'C_Boat_Civil_01_F';
_u pushBack 'O_Boat_Transport_01_F';
_u pushBack 'O_Boat_Armed_01_hmg_F';
_u pushBack 'B_Boat_Armed_01_minigun_F';
_u pushBack 'C_Boat_Civil_01_rescue_F';
_u pushBack 'O_SDV_01_F';

};	

if (CTI_FACTION_EAST == 0) then {
	//CSAT Arid Vanilla

	
};
if (CTI_FACTION_EAST == 1) then {
	//CSAT Tropic Vanilla

	
};
if (CTI_FACTION_EAST == 2) then {
	//CSAT Winter Vanilla
	
};
//--- APEX UNITS
if (CTI_APEX_ADDON > 0) then { 
	//Universal APEX
	_u pushBack "C_Scooter_Transport_01_F";
	_u pushBack "I_C_Boat_Transport_02_F";

	if (CTI_FACTION_EAST == 0) then {
		//CSAT Arid APEX
		
	};
	if (CTI_FACTION_EAST == 1) then {
		//CSAT Tropic APEX
		_u pushBack 'O_T_Boat_Transport_01_F';
		_u pushBack 'O_T_Boat_Armed_01_hmg_F';
	};
	if (CTI_FACTION_EAST == 2) then {
		//CSAT Winter APEX
		
	};
};
//--- CUP UNITS
if (CTI_CUP_ADDON > 0) then { 
	//Universal CUP
	_u pushBack "CUP_B_RHIB_USMC";
	_u pushBack "CUP_B_RHIB2Turret_USMC";
	_u pushBack "CUP_B_Zodiac_USMC";

	if (CTI_FACTION_EAST == 0) then {
		//CSAT Arid CUP
		
	};
	if (CTI_FACTION_EAST == 1) then {
		//CSAT Tropic CUP
		
	};
	if (CTI_FACTION_EAST == 2) then {
		//CSAT Winter CUP
		
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
	_u pushBack "OFPS_Frigate_CSAT";

	if (CTI_FACTION_EAST == 0) then {
		//CSAT Arid OFPS
		
	};
	if (CTI_FACTION_EAST == 1) then {
		//CSAT Tropic OFPS
		
	};
	if (CTI_FACTION_EAST == 2) then {
		//CSAT Winter OFPS
		
	};
};

missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_NAVAL], _u];
_u = [];



if (CTI_VANILLA_ADDON > 0) then {
//Universal Vanilla
_u pushBack "B_Quadbike_01_F";
_u pushBack "O_G_Offroad_01_F";
_u pushBack "O_G_Offroad_01_armed_F";
_u pushBack 'C_Van_01_transport_F';
_u pushBack 'O_Truck_02_transport_F';
_u pushBack 'C_Boat_Civil_01_F';
_u pushBack 'O_Boat_Transport_01_F';

};	


if (CTI_FACTION_EAST == 0) then {
	//CSAT Arid Vanilla
	_u pushBack 'O_Soldier_F';
	_u pushBack 'O_crew_F';
	_u pushBack 'O_MRAP_02_F';
	_u pushBack 'O_MRAP_02_hmg_F';

	
};
if (CTI_FACTION_EAST == 1) then {
	//CSAT Tropic Vanilla


	
};
if (CTI_FACTION_EAST == 2) then {
	//CSAT Winter Vanilla
	
};
//--- APEX UNITS
if (CTI_APEX_ADDON > 0) then { 
	//Universal APEX
	_u pushBack 'O_T_LSV_02_armed_F';		
	_u pushBack 'O_T_LSV_02_unarmed_F';	
	_u pushBack "C_Scooter_Transport_01_F";
	_u pushBack "I_C_Boat_Transport_02_F";

	if (CTI_FACTION_EAST == 0) then {
		//CSAT Arid APEX
		
	};
	if (CTI_FACTION_EAST == 1) then {
		//CSAT Tropic APEX
	_u pushBack 'O_T_Soldier_F';
	_u pushBack 'O_T_crew_F';
	_u pushBack 'O_T_Truck_03_transport_ghex_F';
	_u pushBack 'O_T_MRAP_02_ghex_F';
	_u pushBack 'O_T_MRAP_02_hmg_ghex_F';
		
	};
	if (CTI_FACTION_EAST == 2) then {
		//CSAT Winter APEX
		
	};
};
//--- CUP UNITS
if (CTI_CUP_ADDON > 0) then { 
	//Universal CUP
	_u pushBack "CUP_B_RHIB_USMC";
	_u pushBack "CUP_B_RHIB2Turret_USMC";
	_u pushBack "CUP_B_Zodiac_USMC";
	_u pushBack "CUP_C_Ikarus_TKC";

	if (CTI_FACTION_EAST == 0) then {
		//CSAT Arid CUP
		_u pushBack 'CUP_O_RU_Soldier';
	};
	if (CTI_FACTION_EAST == 1) then {
		//CSAT Tropic CUP
		
	};
	if (CTI_FACTION_EAST == 2) then {
		//CSAT Winter CUP
		
	};
};
//--- OFPS UNITS
if (CTI_OFPS_ADDON > 0) then { 
	//Universal OFPS
	_u pushBack 'sfp_dakota';
	_u pushBack 'sfp_mercedes';
	_u pushBack 'OFPS_UAZ';
	_u pushBack 'OFPS_UAZ_MG';
	_u pushBack 'OFPS_UAZ_AGS30';
	_u pushBack 'usaf_police_car2';
	_u pushBack 'usaf_police_offroad';
	

	if (CTI_FACTION_EAST == 0) then {
		//CSAT Arid OFPS
		
	};
	if (CTI_FACTION_EAST == 1) then {
		//CSAT Tropic OFPS
		
	};
	if (CTI_FACTION_EAST == 2) then {
		//CSAT Winter OFPS
		_u pushBack 'IP_O_Soldier_FST';
		_u pushBack 'IP_O_crew_FST';
		_u pushBack 'sfp_bv206_winter';
		_u pushBack 'AAF_D_MRAP_03_F';
		_u pushBack 'AAF_D_MRAP_03_hmg_F';
	};
};

if (CTI_IF3_ADDON > 0) then { 
//-- IF3 UNITS
  _u pushBack '';
  
};

missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_DEPOT], _u];
_u = [];



if (CTI_VANILLA_ADDON > 0) then {
//Universal Vanilla
_u pushBack 'C_Boat_Civil_01_F';
_u pushBack 'O_Boat_Transport_01_F';
_u pushBack 'O_Boat_Armed_01_hmg_F';
_u pushBack 'B_Boat_Armed_01_minigun_F';
_u pushBack 'C_Boat_Civil_01_rescue_F';
_u pushBack 'O_SDV_01_F';

};	

if (CTI_FACTION_EAST == 0) then {
	//CSAT Arid Vanilla
	
};
if (CTI_FACTION_EAST == 1) then {
	//CSAT Tropic Vanilla
	
};
if (CTI_FACTION_EAST == 2) then {
	//CSAT Winter Vanilla
	
};
//--- APEX UNITS
if (CTI_APEX_ADDON > 0) then { 
	//Universal APEX
	_u pushBack "C_Scooter_Transport_01_F";
	_u pushBack "I_C_Boat_Transport_02_F";

	if (CTI_FACTION_EAST == 0) then {
		//CSAT Arid APEX
		
	};
	if (CTI_FACTION_EAST == 1) then {
		//CSAT Tropic APEX
		
	};
	if (CTI_FACTION_EAST == 2) then {
		//CSAT Winter APEX
		
	};
};
//--- CUP UNITS
if (CTI_CUP_ADDON > 0) then { 
	//Universal CUP
	_u pushBack "CUP_B_RHIB_USMC";
	_u pushBack "CUP_B_RHIB2Turret_USMC";
	_u pushBack "CUP_B_Zodiac_USMC";

	if (CTI_FACTION_EAST == 0) then {
		//CSAT Arid CUP
		
	};
	if (CTI_FACTION_EAST == 1) then {
		//CSAT Tropic CUP
		
	};
	if (CTI_FACTION_EAST == 2) then {
		//CSAT Winter CUP
		
	};
};
//--- OFPS UNITS
if (CTI_OFPS_ADDON > 0) then { 
	//Universal OFPS
	_u pushBack "sfp_svavare2000";
	_u pushBack "sfp_svavare2000_transport";
	_u pushBack "sfp_gruppbat";

	if (CTI_FACTION_EAST == 0) then {
		//CSAT Arid OFPS
		
	};
	if (CTI_FACTION_EAST == 1) then {
		//CSAT Tropic OFPS
		
	};
	if (CTI_FACTION_EAST == 2) then {
		//CSAT Winter OFPS
		
	};
};

missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_DEPOT_NAVAL], _u];

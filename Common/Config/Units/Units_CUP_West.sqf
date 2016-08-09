_side = _this;
_faction = "West";

_c = []; //--- Classname
_p = []; //--- Picture. 				'' = auto generated.
_n = []; //--- Name. 					'' = auto generated.
_o = []; //--- Price.
_t = []; //--- Build time.
_u = []; //--- Upgrade level needed.    0 1 2 3...
_f = []; //--- Built from Factory.
_s = []; //--- Script
_d = []; //--- Extra Distance (From Factory)

//--- Infantry

_c pushBack 'CUP_B_US_Soldier';
_p pushBack '';
_n pushBack 'Soldier'; 
_o pushBack 100;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_US_Soldier_AA';
_p pushBack '';
_n pushBack 'Soldier Stinger'; 
_o pushBack 500;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_USMC_Soldier_MG';
_p pushBack '';
_n pushBack 'Soldier MG'; 
_o pushBack 150;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_US_Crew';
_p pushBack '';
_n pushBack 'Crew'; 
_o pushBack 100;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_US_Soldier_AT';
_p pushBack '';
_n pushBack 'Soldier SMAW'; 
_o pushBack 250;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_US_Soldier_HAT';
_p pushBack '';
_n pushBack 'Soldier Javeline'; 
_o pushBack 500;
_t pushBack 5;
_u pushBack 1;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_USMC_Engineer';
_p pushBack '';
_n pushBack 'Soldier Repair Specialist'; 
_o pushBack 600;
_t pushBack 5;
_u pushBack 1;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_US_Soldier_GL';
_p pushBack '';
_n pushBack 'Soldier Grenadier'; 
_o pushBack 250;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_USMC_Spotter';
_p pushBack '';
_n pushBack 'Soldier Spotter'; 
_o pushBack 150;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_US_Medic';
_p pushBack '';
_n pushBack 'Soldier Corpsman'; 
_o pushBack 400;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_US_Pilot';
_p pushBack '';
_n pushBack 'Pilot'; 
_o pushBack 100;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_US_Sniper_M107';
_p pushBack '';
_n pushBack 'Soldier M107'; 
_o pushBack 200;
_t pushBack 5;
_u pushBack 1;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

//_c pushBack 'CUP_B_USMC_Pilot';
//_p pushBack '';
//_n pushBack ''; 
//_o pushBack 100;
//_t pushBack 5;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_B_USMC_Crew';
//_p pushBack '';
//_n pushBack ''; 
//_o pushBack 100;
//_t pushBack 5;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_B_USMC_Soldier';
//_p pushBack '';
//_n pushBack ''; 
//_o pushBack 150;
//_t pushBack 5;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_B_USMC_Soldier_GL';
//_p pushBack '';
//_n pushBack ''; 
//_o pushBack 250;
//_t pushBack 5;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_B_USMC_Medic';
//_p pushBack '';
//_n pushBack ''; 
//_o pushBack 200;
//_t pushBack 5;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_B_USMC_Engineer';
//_p pushBack '';
//_n pushBack ''; 
//_o pushBack 600;
//_t pushBack 5;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_B_USMC_Soldier_Marksman';
//_p pushBack '';
//_n pushBack ''; 
//_o pushBack 200;
//_t pushBack 5;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_B_USMC_Sniper_M107';
//_p pushBack '';
//_n pushBack ''; 
//_o pushBack 400;
//_t pushBack 5;
//_u pushBack 2;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_B_USMC_Soldier_AA';
//_p pushBack '';
//_n pushBack ''; 
//_o pushBack 900;
//_t pushBack 5;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_B_USMC_Soldier_AT';
//_p pushBack '';
//_n pushBack ''; 
//_o pushBack 350;
//_t pushBack 5;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_B_USMC_Soldier_MG';
//_p pushBack '';
//_n pushBack ''; 
//_o pushBack 300;
//_t pushBack 5;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_B_USMC_Soldier_HAT';
//_p pushBack '';
//_n pushBack 'Javeline'; 
//_o pushBack 700;
//_t pushBack 5;
//_u pushBack 2;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_B_FR_Saboteur';
//_p pushBack '';
//_n pushBack ''; 
//_o pushBack 250;
//_t pushBack 5;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//--- Light Vehicles

_c pushBack 'CUP_B_HMMWV_Unarmed_USMC';
_p pushBack '';
_n pushBack 'HMMV Unarmed';
_o pushBack 300;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_HMMWV_Transport_USA';
_p pushBack '';
_n pushBack 'HMMV Transport';
_o pushBack 300;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_I_SUV_Armored_ION';
_p pushBack '';
_n pushBack 'SUV Armed';
_o pushBack 2000;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_C_SUV_CIV';
_p pushBack '';
_n pushBack 'Civil SUV';
_o pushBack 350;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

//_c pushBack 'CUP_B_Dingo_GL_CZ_Wdl';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 800;
//_t pushBack 10;
//_u pushBack 2;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_B_Dingo_CZ_Wdl';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 700;
//_t pushBack 10;
//_u pushBack 2;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_B_HMMWV_Unarmed_USMC';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 200;
//_t pushBack 10;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'CUP_B_HMMWV_Ambulance_USMC';
_p pushBack '';
_n pushBack (format ["Mobile Respawn - Range %1 m",CTI_RESPAWN_MOBILE_RANGE]);
_o pushBack 5000;
_t pushBack 10;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "service-medic";
_d pushBack 0;

_c pushBack 'CUP_B_HMMWV_Avenger_USMC';
_p pushBack '';
_n pushBack 'HMMV AA';
_o pushBack 8000;
_t pushBack 10;
_u pushBack 2;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_HMMWV_Crows_M2_USA';
_p pushBack '';
_n pushBack 'HMMV FLIR, HMG';
_o pushBack 1300;
_t pushBack 10;
_u pushBack 3;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_HMMWV_Crows_MK19_USA';
_p pushBack '';
_n pushBack 'HMMV FLIR, GMG';
_o pushBack 1800;
_t pushBack 10;
_u pushBack 3;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

//_c pushBack 'CUP_B_HMMWV_AGS_GPK_ACR';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 500;
//_t pushBack 10;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'CUP_B_HMMWV_DSHKM_GPK_ACR';
_p pushBack '';
_n pushBack 'HMMV DSHKM';
_o pushBack 650;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

//_c pushBack 'CUP_B_HMMWV_M2_GPK_USA';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 400;
//_t pushBack 10;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'CUP_B_HMMWV_M2_USMC';
_p pushBack '';
_n pushBack 'HMMV HMG';
_o pushBack 600;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

//_c pushBack 'CUP_B_HMMWV_M1114_USMC';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 500;
//_t pushBack 10;
//_u pushBack 2;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'CUP_B_HMMWV_MK19_USMC';
_p pushBack '';
_n pushBack 'HMMV GMG';
_o pushBack 900;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

//_c pushBack 'CUP_B_HMMWV_SOV_USA';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 600;
//_t pushBack 10;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'CUP_B_HMMWV_TOW_USMC';
_p pushBack '';
_n pushBack 'HMMV FLIR, ATGM';
_o pushBack 5500;
_t pushBack 10;
_u pushBack 2;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

//_c pushBack 'CUP_B_HMMWV_Transport_USA';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 100;
//_t pushBack 10;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_B_HMMWV_Terminal_USA';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 300;
//_t pushBack 10;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_B_Jackal2_GMG_GB_D';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 1300;
//_t pushBack 10;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'CUP_B_Jackal2_GMG_GB_D';
_p pushBack '';
_n pushBack 'Jackal SOP GMG, MG';
_o pushBack 1300;
_t pushBack 10;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

//_c pushBack 'CUP_B_Jackal2_L2A1_GB_D';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 400;
//_t pushBack 10;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_B_Jackal2_L2A1_GB_W';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 400;
//_t pushBack 10;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_B_LAV25_USMC';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 8000;
//_t pushBack 10;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'CUP_B_LAV25M240_USMC';
_p pushBack '';
_n pushBack 'LAV FLIR, Autocannon, MG';
_o pushBack 7000;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

//_c pushBack 'CUP_B_M1126_ICV_M2_Desert';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 2000;
//_t pushBack 10;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_B_M1126_ICV_MK19_Desert';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 2200;
//_t pushBack 10;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'CUP_B_M1128_MGS_Woodland';
_p pushBack '';
_n pushBack 'Stryker Cannon';
_o pushBack 14000;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_M1129_MC_MK19_Desert';
_p pushBack '';
_n pushBack 'Stryker Mortar, GMG';
_o pushBack 15000;
_t pushBack 10;
_u pushBack 4;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

//_c pushBack 'CUP_B_M1130_CV_M2_Desert';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 2000;
//_t pushBack 10;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_B_M1133_MEV_Desert';
//_p pushBack '';
//_n pushBack (format ["Mobile Respawn - Range %1 m",CTI_RESPAWN_MOBILE_RANGE]);
//_o pushBack 5000;
//_t pushBack 10;
//_u pushBack 2;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "service-medic";
//_d pushBack 0;

_c pushBack 'CUP_B_M1135_ATGMV_Woodland';
_p pushBack '';
_n pushBack 'Stryker FLIR, ATGM';
_o pushBack 6500;
_t pushBack 10;
_u pushBack 2;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

//_c pushBack 'CUP_RG31_M2';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 800;
//_t pushBack 10;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_RG31_M2_GC';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 800;
//_t pushBack 10;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_RG31_M2_OD';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 800;
//_t pushBack 10;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_RG31_Mk19';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 900;
//_t pushBack 10;
//_u pushBack 2;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_RG31_Mk19_OD';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 900;
//_t pushBack 10;
//_u pushBack 2;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_RG31E_M2';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 700;
//_t pushBack 10;
//_u pushBack 2;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_B_TowingTractor_USMC';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 50;
//_t pushBack 10;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_B_BAF_Coyote_GMG_D';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 700;
//_t pushBack 10;
//_u pushBack 2;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_B_BAF_Coyote_L2A1_D';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 600;
//_t pushBack 10;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_B_Mastiff_GMG_GB_D';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 800;
//_t pushBack 10;
//_u pushBack 2;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_B_Mastiff_HMG_GB_D';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 900;
//_t pushBack 10;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_B_Wolfhound_GMG_GB_W';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 800;
//_t pushBack 10;
//_u pushBack 2;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_B_Wolfhound_HMG_GB_W';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 800;
//_t pushBack 10;
//_u pushBack 2;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_B_Ridgback_GMG_GB_D';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 800;
//_t pushBack 10;
//_u pushBack 2;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_B_Ridgback_HMG_GB_D';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 900;
//_t pushBack 10;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'O_T_LSV_02_armed_F';
_p pushBack '';
_n pushBack 'Prowler Armed';
_o pushBack 700;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'C_Quadbike_01_F';
_p pushBack '';
_n pushBack 'Quad';
_o pushBack 200;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_MTVR_USA';
_p pushBack '';
_n pushBack 'MTVR Transport';
_o pushBack 400;
_t pushBack 10;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_LR_Special_CZ_W';
_p pushBack '';
_n pushBack 'Land Rover SOP GMG, MG';
_o pushBack 1200;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'B_MRAP_01_gmg_F';
_p pushBack '';
_n pushBack 'Hunter FLIR, GMG';
_o pushBack 2000;
_t pushBack 10;
_u pushBack 3;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'B_MRAP_01_hmg_F';
_p pushBack '';
_n pushBack 'Hunter FLIR, HMG';
_o pushBack 1500;
_t pushBack 10;
_u pushBack 3;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'O_T_Truck_03_device_ghex_F';
_p pushBack '';
_n pushBack 'Nuke Truck';
_o pushBack 100000;
_t pushBack 10;
_u pushBack 5;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

//--- Heavy Vehicles

_c pushBack 'CUP_B_AAV_USMC';
_p pushBack '';
_n pushBack 'AAV FLIR, GMG, HMG';
_o pushBack 3500;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

//_c pushBack 'CUP_B_M113_USA';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 1000;
//_t pushBack 20;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_HEAVY;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'CUP_B_M113_Med_USA';
_p pushBack '';
_n pushBack (format ["Mobile Respawn - Range %1 m",CTI_RESPAWN_MOBILE_RANGE]);
_o pushBack 7500;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "service-medic";
_d pushBack 0;

_c pushBack 'CUP_B_M163_USA';
_p pushBack '';
_n pushBack 'M113 Vulcan AA';
_o pushBack 14000;
_t pushBack 20;
_u pushBack 3;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

//_c pushBack 'CUP_B_M1A1_Woodland_US_Army';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 30000;
//_t pushBack 20;
//_u pushBack 2;
//_f pushBack CTI_FACTORY_HEAVY;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'CUP_B_M1A2_TUSK_MG_US_Army';
_p pushBack '';
_n pushBack 'MBT M1A3 Abrams';
_o pushBack 30000;
_t pushBack 20;
_u pushBack 3;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'B_MBT_01_TUSK_F';
_p pushBack '';
_n pushBack 'MBT Slammer';
_o pushBack 35000;
_t pushBack 20;
_u pushBack 3;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_M270_DPICM_USMC';
_p pushBack '';
_n pushBack 'M270 MLRS (DPICM)';
_o pushBack 200000;
_t pushBack 20;
_u pushBack 4;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_M7Bradley_USA_D';
_p pushBack '';
_n pushBack 'M7 Bradley FLIR, Autocannon, MG';
_o pushBack 8000;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_M2A3Bradley_USA_W';
_p pushBack '';
_n pushBack 'M2A3 Bradley FLIR, Autocannon, ATGM, MG';
_o pushBack 12000;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_M6LineBacker_USA_W';
_p pushBack '';
_n pushBack 'M6 Linebacker FLIR, Autocannon, AA, MG';
_o pushBack 15000;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

//_c pushBack 'CUP_B_FV432_Bulldog_GB_D_RWS';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 4000;
//_t pushBack 20;
//_u pushBack 2;
//_f pushBack CTI_FACTORY_HEAVY;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_B_FV432_Bulldog_GB_D';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 3000;
//_t pushBack 20;
//_u pushBack 2;
//_f pushBack CTI_FACTORY_HEAVY;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_B_FV510_GB_D_SLAT';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 8000;
//_t pushBack 20;
//_u pushBack 3;
//_f pushBack CTI_FACTORY_HEAVY;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'CUP_B_MCV80_GB_W_SLAT';
_p pushBack '';
_n pushBack 'APC FLIR, 30mm Autocannon, MG';
_o pushBack 20000;
_t pushBack 20;
_u pushBack 3;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'B_APC_Tracked_01_AA_F';
_p pushBack '';
_n pushBack 'Cheetah';
_o pushBack 11000;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'B_MBT_01_arty_F';
_p pushBack '';
_n pushBack 'M4 Scorcher Artillery';
_o pushBack 150000;
_t pushBack 20;
_u pushBack 4;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

//--- Repair Vehicles

_c pushBack 'CUP_B_MTVR_Refuel_USA';
_p pushBack '';
_n pushBack 'MTVR Fuel';
_o pushBack 5000;
_t pushBack 10;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;


//--- Ammo Vehicles

_c pushBack "Box_NATO_Wps_F";
_p pushBack '';
_n pushBack 'Empty Crate';
_o pushBack 5;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_AMMO;
_s pushBack "";
_d pushBack 0;

_c pushBack "B_supplyCrate_F";
_p pushBack '';
_n pushBack 'Mobile Gear access Crate';
_o pushBack 2000;
_t pushBack 15;
_u pushBack 0;
_f pushBack CTI_FACTORY_AMMO;
_s pushBack "service-gear";
_d pushBack 0;

//--- Air Vehicles

_c pushBack 'CUP_B_AH64D_MR_USA';
_p pushBack '';
_n pushBack 'AH64 Mulitrole';
_o pushBack 40000;
_t pushBack 20;
_u pushBack 4;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

//_c pushBack 'CUP_B_AH64D_AT_USA';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 60000;
//_t pushBack 20;
//_u pushBack 3;
//_f pushBack CTI_FACTORY_AIR;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'CUP_B_AW159_Cannon_RN_Grey';
_p pushBack '';
_n pushBack 'Hellcat Cannon and Rockets';
_o pushBack 16000;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

//_c pushBack 'CUP_B_AH1Z';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 50000;
//_t pushBack 20;
//_u pushBack 2;
//_f pushBack CTI_FACTORY_AIR;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'CUP_B_AH1_AT_BAF';
_p pushBack '';
_n pushBack 'AH1 AT';
_o pushBack 60000;
_t pushBack 20;
_u pushBack 5;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

//_c pushBack 'CUP_B_Merlin_HC3A_GB';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 10000;
//_t pushBack 20;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_AIR;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_B_AW159_Cannon_GB';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 12000;
//_t pushBack 20;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_AIR;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_B_AW159_Hellfire_GB';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 15000;
//_t pushBack 20;
//_u pushBack 3;
//_f pushBack CTI_FACTORY_AIR;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_B_AW159_Unarmed_GB';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 4000;
//_t pushBack 20;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_AIR;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'CUP_B_CH47F_USA';
_p pushBack '';
_n pushBack 'CH47 Vehicle Transport';
_o pushBack 5000;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_CH53E_GER';
_p pushBack '';
_n pushBack 'CH53 Transport';
_o pushBack 6000;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

//_c pushBack 'CUP_B_MH60S_USMC';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 7000;
//_t pushBack 20;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_AIR;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_B_SA330_Puma_HC2_BAF';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 5000;
//_t pushBack 20;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_AIR;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'CUP_B_UH1Y_GUNSHIP_USMC';
_p pushBack '';
_n pushBack 'UH1 GAU, Rockets';
_o pushBack 14000;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_UH1Y_MEV_USMC';
_p pushBack '';
_n pushBack (format ["Mobile Respawn - Range %1 m",CTI_RESPAWN_MOBILE_RANGE]);
_o pushBack 15000;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "service-medic";
_d pushBack 0;

_c pushBack 'CUP_B_UH1D_GER_KSK';
_p pushBack '';
_n pushBack 'UH1 Transport MG';
_o pushBack 3000;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_UH60M_US';
_p pushBack '';
_n pushBack (format ["Mobile Respawn - Range %1 m",CTI_RESPAWN_MOBILE_RANGE]);
_o pushBack 15000;
_t pushBack 20;
_u pushBack 3;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "service-medic";
_d pushBack 0;

_c pushBack 'CUP_B_UH60M_FFV_US';
_p pushBack '';
_n pushBack 'UH60 Transport MG';
_o pushBack 4000;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

//_c pushBack 'CUP_B_UH60M_Unarmed_US';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 6000;
//_t pushBack 20;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_AIR;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'CUP_B_A10_CAS_USA';
_p pushBack '';
_n pushBack 'A10 LGB';
_o pushBack 50000;
_t pushBack 20;
_u pushBack 5;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_A10_AT_USA';
_p pushBack '';
_n pushBack 'A10 AGM';
_o pushBack 55000;
_t pushBack 20;
_u pushBack 5;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

//_c pushBack 'CUP_B_AV8B_CAP_USMC';
//_p pushBack '';
//_n pushBack 'Harrier GBU';
//_o pushBack 35000;
//_t pushBack 20;
//_u pushBack 2;
//_f pushBack CTI_FACTORY_AIR;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'CUP_B_F35B_AA_BAF';
_p pushBack '';
_n pushBack 'F35 CAP';
_o pushBack 35000;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

//_c pushBack 'CUP_USMC_MQ9';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 35000;
//_t pushBack 20;
//_u pushBack 2;
//_f pushBack CTI_FACTORY_AIR;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_B_MV22_USMC';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 7000;
//_t pushBack 20;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_AIR;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'CUP_B_MV22_USMC_RAMPGUN';
_p pushBack '';
_n pushBack 'Osprey Transport MG';
_o pushBack 5000;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

//_c pushBack 'CUP_B_C47_USA';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 2000;
//_t pushBack 20;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_AIR;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'CUP_B_AC47_Spooky_USA';
_p pushBack '';
_n pushBack 'AC47 Spooky';
_o pushBack 10000;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'USAF_AC130U';
_p pushBack '';
_n pushBack 'AC130 Spooky';
_o pushBack 40000;
_t pushBack 20;
_u pushBack 4;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

//_c pushBack 'CUP_B_C130J_USMC';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 15000;
//_t pushBack 20;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_AIR;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_B_C130J_Cargo_USMC';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 15000;
//_t pushBack 20;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_AIR;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'CUP_B_MH6J_USA';
_p pushBack '';
_n pushBack 'AH6 Unarmed';
_o pushBack 2000;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

//_c pushBack 'CUP_B_AH6X_USA';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 9000;
//_t pushBack 20;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_AIR;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_B_AH6J_Escort_USA';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 9000;
//_t pushBack 20;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_AIR;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_B_AH6J_Escort19_USA';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 10000;
//_t pushBack 20;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_AIR;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'CUP_B_AH6J_AT_USA';
_p pushBack '';
_n pushBack 'AH6 AT';
_o pushBack 20000;
_t pushBack 20;
_u pushBack 3;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_AH6J_MP_USA';
_p pushBack '';
_n pushBack 'AH6 Multirole';
_o pushBack 17500;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_AH1Z_Escort_USMC';
_p pushBack '';
_n pushBack 'AH1 Rockets';
_o pushBack 25000;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

//_c pushBack 'CUP_B_AH64D_ES_USA';
//_p pushBack '';
//_n pushBack 'AH-64 Apache (Rocket Pods)';
//_o pushBack 30000;
//_t pushBack 50;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_AIR;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'CUP_B_AV8B_GBU12_USMC';
_p pushBack '';
_n pushBack 'Harrier GBU';
_o pushBack 40000;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

//_c pushBack 'CUP_B_AV8B_MK82_USMC';
//_p pushBack '';
//_n pushBack 'AV8B Harrier (Rocket Pods)';
//_o pushBack 30000;
//_t pushBack 50;
//_u pushBack 2;
//_f pushBack CTI_FACTORY_AIR;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_B_F35B_LGB_USMC';
//_p pushBack '';
//_n pushBack 'F-35B (GBU)';
//_o pushBack 80000;
//_t pushBack 50;
//_u pushBack 3;
//_f pushBack CTI_FACTORY_AIR;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'B_Heli_Light_01_armed_F';
_p pushBack '';
_n pushBack 'AH6 Pawnee';
_o pushBack 12000;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_C_DC3_TanoAir_CIV';
_p pushBack '';
_n pushBack 'DC3 Transport';
_o pushBack 3000;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'B_Heli_Attack_01_F';
_p pushBack '';
_n pushBack 'AH-99 Blackfoot';
_o pushBack 55000;
_t pushBack 20;
_u pushBack 5;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'B_T_UAV_03_F';
_p pushBack '';
_n pushBack 'UAV AGM, Rockets';
_o pushBack 40000;
_t pushBack 20;
_u pushBack 4;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

//--- Naval Vehicles

//_c pushBack 'CUP_B_RHIB_USMC';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 500;
//_t pushBack 25;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_NAVAL;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'CUP_B_RHIB2Turret_USMC';
_p pushBack '';
_n pushBack '';
_o pushBack 2000;
_t pushBack 25;
_u pushBack 0;
_f pushBack CTI_FACTORY_NAVAL;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_Zodiac_USMC';
_p pushBack '';
_n pushBack '';
_o pushBack 100;
_t pushBack 25;
_u pushBack 0;
_f pushBack CTI_FACTORY_NAVAL;
_s pushBack "";
_d pushBack 0;

[_side, _faction, _c, _p, _n, _o, _t, _u, _f, _s, _d] call compile preprocessFileLineNumbers "Common\Config\Units\Set_Units.sqf";







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
_n pushBack ["%1 (USMC)"]; 
_o pushBack 50;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_US_Soldier_AA';
_p pushBack '';
_n pushBack ["%1 (USMC)"]; 
_o pushBack 500;
_t pushBack 5;
_u pushBack 1;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_US_Soldier_AR';
_p pushBack '';
_n pushBack ["%1 (USMC)"]; 
_o pushBack 100;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_US_Crew';
_p pushBack '';
_n pushBack ["%1 (USMC)"]; 
_o pushBack 25;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_US_Soldier_AT';
_p pushBack '';
_n pushBack ["%1 (USMC)"]; 
_o pushBack 250;
_t pushBack 5;
_u pushBack 1;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_US_Soldier_HAT';
_p pushBack '';
_n pushBack ["%1 (USMC)"]; 
_o pushBack 500;
_t pushBack 5;
_u pushBack 2;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_US_Soldier_Engineer_EOD';
_p pushBack '';
_n pushBack ["%1 (USMC)"]; 
_o pushBack 120;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_US_Soldier_GL';
_p pushBack '';
_n pushBack ["%1 (USMC)"]; 
_o pushBack 75;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_US_Medic';
_p pushBack '';
_n pushBack ["%1 (USMC)"]; 
_o pushBack 100;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_US_Pilot';
_p pushBack '';
_n pushBack ["%1 (USMC)"]; 
_o pushBack 75;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_US_Sniper_M107';
_p pushBack '';
_n pushBack ["%1 (USMC)"]; 
_o pushBack 125;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

//--- Light Vehicles

_c pushBack 'CUP_I_SUV_Armored_ION';
_p pushBack '';
_n pushBack '';
_o pushBack 500;
_t pushBack 10;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_Dingo_GL_CZ_Wdl';
_p pushBack '';
_n pushBack '';
_o pushBack 800;
_t pushBack 10;
_u pushBack 2;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_Dingo_CZ_Wdl';
_p pushBack '';
_n pushBack '';
_o pushBack 700;
_t pushBack 10;
_u pushBack 2;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_HMMWV_Unarmed_USMC';
_p pushBack '';
_n pushBack '';
_o pushBack 200;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_HMMWV_Ambulance_USMC';
_p pushBack '';
_n pushBack (format ["Mobile Respawn - Range %1 m",CTI_RESPAWN_MOBILE_RANGE]);
_o pushBack 2000;
_t pushBack 10;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "service-medic";
_d pushBack 0;

_c pushBack 'CUP_B_HMMWV_Avenger_USMC';
_p pushBack '';
_n pushBack '';
_o pushBack 5000;
_t pushBack 10;
_u pushBack 3;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_HMMWV_Crows_M2_USA';
_p pushBack '';
_n pushBack '';
_o pushBack 800;
_t pushBack 10;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_HMMWV_Crows_MK19_USA';
_p pushBack '';
_n pushBack '';
_o pushBack 900;
_t pushBack 10;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_HMMWV_AGS_GPK_ACR';
_p pushBack '';
_n pushBack '';
_o pushBack 500;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_HMMWV_DSHKM_GPK_ACR';
_p pushBack '';
_n pushBack '';
_o pushBack 500;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_HMMWV_M2_GPK_USA';
_p pushBack '';
_n pushBack '';
_o pushBack 400;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_HMMWV_M2_USMC';
_p pushBack '';
_n pushBack '';
_o pushBack 300;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_HMMWV_M1114_USMC';
_p pushBack '';
_n pushBack '';
_o pushBack 500;
_t pushBack 10;
_u pushBack 2;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_HMMWV_MK19_USMC';
_p pushBack '';
_n pushBack '';
_o pushBack 500;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_HMMWV_SOV_USA';
_p pushBack '';
_n pushBack '';
_o pushBack 600;
_t pushBack 10;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_HMMWV_TOW_USMC';
_p pushBack '';
_n pushBack '';
_o pushBack 2000;
_t pushBack 10;
_u pushBack 2;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_HMMWV_Transport_USA';
_p pushBack '';
_n pushBack '';
_o pushBack 100;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_HMMWV_Terminal_USA';
_p pushBack '';
_n pushBack '';
_o pushBack 300;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_Jackal2_GMG_GB_D';
_p pushBack '';
_n pushBack '';
_o pushBack 300;
_t pushBack 10;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_Jackal2_GMG_GB_W';
_p pushBack '';
_n pushBack '';
_o pushBack 300;
_t pushBack 10;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_Jackal2_L2A1_GB_D';
_p pushBack '';
_n pushBack '';
_o pushBack 400;
_t pushBack 10;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_Jackal2_L2A1_GB_W';
_p pushBack '';
_n pushBack '';
_o pushBack 400;
_t pushBack 10;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_LAV25_USMC';
_p pushBack '';
_n pushBack '';
_o pushBack 8000;
_t pushBack 10;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_LAV25M240_USMC';
_p pushBack '';
_n pushBack '';
_o pushBack 8500;
_t pushBack 10;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_M1126_ICV_M2_Desert';
_p pushBack '';
_n pushBack '';
_o pushBack 1500;
_t pushBack 10;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_M1126_ICV_MK19_Desert';
_p pushBack '';
_n pushBack '';
_o pushBack 1800;
_t pushBack 10;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_M1128_MGS_Desert';
_p pushBack '';
_n pushBack '';
_o pushBack 9000;
_t pushBack 10;
_u pushBack 3;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_M1129_MC_MK19_Desert';
_p pushBack '';
_n pushBack '';
_o pushBack 15000;
_t pushBack 10;
_u pushBack 3;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_M1130_CV_M2_Desert';
_p pushBack '';
_n pushBack '';
_o pushBack 1500;
_t pushBack 10;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_M1133_MEV_Desert';
_p pushBack '';
_n pushBack '';
_o pushBack 1000;
_t pushBack 10;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_M1135_ATGMV_Desert';
_p pushBack '';
_n pushBack '';
_o pushBack 5000;
_t pushBack 10;
_u pushBack 2;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_RG31_M2';
_p pushBack '';
_n pushBack '';
_o pushBack 800;
_t pushBack 10;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_RG31_M2_GC';
_p pushBack '';
_n pushBack '';
_o pushBack 800;
_t pushBack 10;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_RG31_M2_OD';
_p pushBack '';
_n pushBack '';
_o pushBack 800;
_t pushBack 10;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_RG31_Mk19';
_p pushBack '';
_n pushBack '';
_o pushBack 900;
_t pushBack 10;
_u pushBack 2;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_RG31_Mk19_OD';
_p pushBack '';
_n pushBack '';
_o pushBack 900;
_t pushBack 10;
_u pushBack 2;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_RG31E_M2';
_p pushBack '';
_n pushBack '';
_o pushBack 700;
_t pushBack 10;
_u pushBack 2;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_TowingTractor_USMC';
_p pushBack '';
_n pushBack '';
_o pushBack 50;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_BAF_Coyote_GMG_D';
_p pushBack '';
_n pushBack '';
_o pushBack 700;
_t pushBack 10;
_u pushBack 2;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_BAF_Coyote_L2A1_D';
_p pushBack '';
_n pushBack '';
_o pushBack 600;
_t pushBack 10;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_Mastiff_GMG_GB_D';
_p pushBack '';
_n pushBack '';
_o pushBack 800;
_t pushBack 10;
_u pushBack 2;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_Mastiff_HMG_GB_D';
_p pushBack '';
_n pushBack '';
_o pushBack 900;
_t pushBack 10;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_Wolfhound_GMG_GB_W';
_p pushBack '';
_n pushBack '';
_o pushBack 800;
_t pushBack 10;
_u pushBack 2;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;


_c pushBack 'CUP_B_Wolfhound_HMG_GB_W';
_p pushBack '';
_n pushBack '';
_o pushBack 800;
_t pushBack 10;
_u pushBack 2;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_Ridgback_GMG_GB_D';
_p pushBack '';
_n pushBack '';
_o pushBack 800;
_t pushBack 10;
_u pushBack 2;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_Ridgback_HMG_GB_D';
_p pushBack '';
_n pushBack '';
_o pushBack 900;
_t pushBack 10;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

//--- Heavy Vehicles

_c pushBack 'CUP_B_AAV_USMC';
_p pushBack '';
_n pushBack '';
_o pushBack 2000;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_M113_USA';
_p pushBack '';
_n pushBack '';
_o pushBack 1000;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_M113_Med_USA';
_p pushBack '';
_n pushBack (format ["Mobile Respawn - Range %1 m",CTI_RESPAWN_MOBILE_RANGE]);
_o pushBack 5000;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "service-medic";
_d pushBack 0;

_c pushBack 'CUP_B_M163_USA';
_p pushBack '';
_n pushBack '';
_o pushBack 3000;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_M1A1_Woodland_US_Army';
_p pushBack '';
_n pushBack '';
_o pushBack 30000;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_M1A2_TUSK_MG_US_Army';
_p pushBack '';
_n pushBack '';
_o pushBack 32000;
_t pushBack 20;
_u pushBack 3;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_M270_HE_USMC';
_p pushBack '';
_n pushBack '';
_o pushBack 100000;
_t pushBack 20;
_u pushBack 3;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_M2Bradley_USA_D';
_p pushBack '';
_n pushBack '';
_o pushBack 12000;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_M2A3Bradley_USA_D';
_p pushBack '';
_n pushBack '';
_o pushBack 14000;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_M6LineBacker_USA_W';
_p pushBack '';
_n pushBack '';
_o pushBack 9000;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_FV432_Bulldog_GB_D_RWS';
_p pushBack '';
_n pushBack '';
_o pushBack 4000;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_FV432_Bulldog_GB_D';
_p pushBack '';
_n pushBack '';
_o pushBack 3000;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_FV510_GB_D_SLAT';
_p pushBack '';
_n pushBack '';
_o pushBack 8000;
_t pushBack 20;
_u pushBack 3;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_MCV80_GB_D_SLAT';
_p pushBack '';
_n pushBack '';
_o pushBack 8000;
_t pushBack 20;
_u pushBack 3;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

//--- Repair Vehicles

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
_n pushBack '';
_o pushBack 60000;
_t pushBack 20;
_u pushBack 3;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_AH64D_AT_USA';
_p pushBack '';
_n pushBack '';
_o pushBack 60000;
_t pushBack 20;
_u pushBack 3;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_AH1Z';
_p pushBack '';
_n pushBack '';
_o pushBack 50000;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_Merlin_HC3A_GB';
_p pushBack '';
_n pushBack '';
_o pushBack 10000;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_AW159_Cannon_GB';
_p pushBack '';
_n pushBack '';
_o pushBack 12000;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_AW159_Hellfire_GB';
_p pushBack '';
_n pushBack '';
_o pushBack 15000;
_t pushBack 20;
_u pushBack 3;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_AW159_Unarmed_GB';
_p pushBack '';
_n pushBack '';
_o pushBack 4000;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_CH47F_USA';
_p pushBack '';
_n pushBack '';
_o pushBack 6500;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_CH53E_USMC';
_p pushBack '';
_n pushBack '';
_o pushBack 9000;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_MH60S_USMC';
_p pushBack '';
_n pushBack '';
_o pushBack 7000;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_SA330_Puma_HC2_BAF';
_p pushBack '';
_n pushBack '';
_o pushBack 5000;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_UH1Y_GUNSHIP_USMC';
_p pushBack '';
_n pushBack '';
_o pushBack 9000;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_UH1Y_MEV_USMC';
_p pushBack '';
_n pushBack (format ["Mobile Respawn - Range %1 m",CTI_RESPAWN_MOBILE_RANGE]);
_o pushBack 6000;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "service-medic";
_d pushBack 0;

_c pushBack 'CUP_B_UH1Y_UNA_USMC';
_p pushBack '';
_n pushBack '';
_o pushBack 6000;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_UH60M_US';
_p pushBack '';
_n pushBack (format ["Mobile Respawn - Range %1 m",CTI_RESPAWN_MOBILE_RANGE]);
_o pushBack 6000;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "service-medic";
_d pushBack 0;

_c pushBack 'CUP_B_UH60M_Unarmed_US';
_p pushBack '';
_n pushBack '';
_o pushBack 6000;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_A10_CAS_USA';
_p pushBack '';
_n pushBack '';
_o pushBack 70000;
_t pushBack 20;
_u pushBack 3;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_AV8B_CAP_USMC';
_p pushBack '';
_n pushBack '';
_o pushBack 35000;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_F35B_AA_USMC';
_p pushBack '';
_n pushBack '';
_o pushBack 80000;
_t pushBack 20;
_u pushBack 3;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_USMC_MQ9';
_p pushBack '';
_n pushBack '';
_o pushBack 35000;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_MV22_USMC';
_p pushBack '';
_n pushBack '';
_o pushBack 7000;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_MV22_USMC_RAMPGUN';
_p pushBack '';
_n pushBack '';
_o pushBack 7600;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_C47_USA';
_p pushBack '';
_n pushBack '';
_o pushBack 2000;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_AC47_Spooky_USA';
_p pushBack '';
_n pushBack '';
_o pushBack 30000;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_C130J_USMC';
_p pushBack '';
_n pushBack '';
_o pushBack 15000;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_C130J_Cargo_USMC';
_p pushBack '';
_n pushBack '';
_o pushBack 15000;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_UH1D_GER_KSK';
_p pushBack '';
_n pushBack '';
_o pushBack 4000;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_MH6J_USA';
_p pushBack '';
_n pushBack '';
_o pushBack 2000;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_AH6X_USA';
_p pushBack '';
_n pushBack '';
_o pushBack 9000;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_AH6J_Escort_USA';
_p pushBack '';
_n pushBack '';
_o pushBack 9000;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_AH6J_Escort19_USA';
_p pushBack '';
_n pushBack '';
_o pushBack 10000;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_AH6J_AT_USA';
_p pushBack '';
_n pushBack '';
_o pushBack 30000;
_t pushBack 20;
_u pushBack 3;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_AH6J_MP_USA';
_p pushBack '';
_n pushBack '';
_o pushBack 20000;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;


_c pushBack 'CUP_B_AH1Z_Escort';
_p pushBack '';
_n pushBack 'AH-1Z Cobra (Rocket Pods)';
_o pushBack 30000;
_t pushBack 50;
_u pushBack 1;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_AH64D_ES_USA';
_p pushBack '';
_n pushBack 'AH-64 Apache (Rocket Pods)';
_o pushBack 30000;
_t pushBack 50;
_u pushBack 1;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_AV8B_GBU12_USMC';
_p pushBack '';
_n pushBack 'AV8B Harrier (GBU)';
_o pushBack 40000;
_t pushBack 50;
_u pushBack 3;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_AV8B_MK82_USMC';
_p pushBack '';
_n pushBack 'AV8B Harrier (Rocket Pods)';
_o pushBack 30000;
_t pushBack 50;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_F35B_LGB_USMC';
_p pushBack '';
_n pushBack 'F-35B (GBU)';
_o pushBack 80000;
_t pushBack 50;
_u pushBack 3;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

//--- Naval Vehicles

_c pushBack 'CUP_B_RHIB_USMC';
_p pushBack '';
_n pushBack '';
_o pushBack 500;
_t pushBack 25;
_u pushBack 0;
_f pushBack CTI_FACTORY_NAVAL;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_RHIB2Turret_USMC';
_p pushBack '';
_n pushBack '';
_o pushBack 1000;
_t pushBack 25;
_u pushBack 1;
_f pushBack CTI_FACTORY_NAVAL;
_s pushBack "";
_d pushBack 0;


[_side, _faction, _c, _p, _n, _o, _t, _u, _f, _s, _d] call compile preprocessFileLineNumbers "Common\Config\Units\Set_Units.sqf";

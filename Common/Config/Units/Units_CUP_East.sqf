_side = _this;
_faction = "East";

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
_c pushBack 'CUP_O_RU_Soldier';
_p pushBack '';
_n pushBack 'Russian Army Soldier'; 
_o pushBack 300;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_RU_Soldier_AA';
_p pushBack '';
_n pushBack 'Russian Army Soldier (AA)'; 
_o pushBack 900;
_t pushBack 5;
_u pushBack 1;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_RU_Soldier_MG';
_p pushBack '';
_n pushBack 'Russian Army Soldier (MG)'; 
_o pushBack 550;
_t pushBack 5;
_u pushBack 1;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_RU_soldier_GL';
_p pushBack '';
_n pushBack 'Russian Army Soldier (GL)'; 
_o pushBack 375;
_t pushBack 5;
_u pushBack 1;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_RU_Spotter';
_p pushBack '';
_n pushBack 'Russian Army Spotter'; 
_o pushBack 350;
_t pushBack 5;
_u pushBack 1;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_RU_Crew';
_p pushBack '';
_n pushBack 'Russian Army Crew'; 
_o pushBack 150;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_RU_Soldier_AT';
_p pushBack '';
_n pushBack 'Russian Army Soldier (AT)'; 
_o pushBack 550;
_t pushBack 5;
_u pushBack 1;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_RU_Soldier_HAT';
_p pushBack '';
_n pushBack 'Russian Army Soldier (Metis)'; 
_o pushBack 1400;
_t pushBack 5;
_u pushBack 3;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_RU_Engineer';
_p pushBack '';
_n pushBack 'Russian Army Engineer'; 
_o pushBack 600;
_t pushBack 5;
_u pushBack 1;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

/*
_c pushBack 'CUP_O_RU_Soldier_TL';
_p pushBack '';
_n pushBack ["%1 (Russian)"]; 
_o pushBack 100;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;
*/

_c pushBack 'CUP_O_RU_Medic';
_p pushBack '';
_n pushBack 'Russian Army Medic'; 
_o pushBack 300;
_t pushBack 5;
_u pushBack 1;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_RU_Pilot';
_p pushBack '';
_n pushBack 'Russian Army Pilot'; 
_o pushBack 150;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_RU_Sniper_KSVK';
_p pushBack '';
_n pushBack 'Russian Army Sniper'; 
_o pushBack 1000;
_t pushBack 5;
_u pushBack 3;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_RU_Soldier_VDV_EMR';
_p pushBack '';
_n pushBack 'Russian Airborne Soldier'; 
_o pushBack 300;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_RU_Soldier_AA_VDV_EMR';
_p pushBack '';
_n pushBack 'Russian Airborne Soldier (AA)'; 
_o pushBack 900;
_t pushBack 5;
_u pushBack 1;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_RU_Soldier_MG_VDV_EMR';
_p pushBack '';
_n pushBack 'Russian Airborne Soldier (MG)'; 
_o pushBack 550;
_t pushBack 5;
_u pushBack 1;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_RU_Soldier_GL_VDV_EMR';
_p pushBack '';
_n pushBack 'Russian Airborne Soldier (GL)'; 
_o pushBack 375;
_t pushBack 5;
_u pushBack 1;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_RU_Spotter_VDV_EMR';
_p pushBack '';
_n pushBack 'Russian Airborne Spotter'; 
_o pushBack 350;
_t pushBack 5;
_u pushBack 1;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_RU_Crew_VDV_EMR';
_p pushBack '';
_n pushBack 'Russian Airborne Crew'; 
_o pushBack 150;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_RU_Soldier_AT_VDV_EMR';
_p pushBack '';
_n pushBack 'Russian Airborne Soldier (AT)'; 
_o pushBack 550;
_t pushBack 5;
_u pushBack 1;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_RU_Soldier_HAT_VDV_EMR';
_p pushBack '';
_n pushBack 'Russian Airborne Soldier (Metis)'; 
_o pushBack 1400;
_t pushBack 5;
_u pushBack 3;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_RU_Engineer_VDV_EMR';
_p pushBack '';
_n pushBack 'Russian Airborne Engineer'; 
_o pushBack 600;
_t pushBack 5;
_u pushBack 1;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

/*
_c pushBack 'CUP_O_RU_Soldier_TL_VDV_EMR';
_p pushBack '';
_n pushBack ["%1 (Russian)"]; 
_o pushBack 100;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;
*/

_c pushBack 'CUP_O_RU_Medic_VDV_EMR';
_p pushBack '';
_n pushBack 'Russian Airborne Medic'; 
_o pushBack 300;
_t pushBack 5;
_u pushBack 1;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_RU_Pilot_VDV_EMR';
_p pushBack '';
_n pushBack 'Russian Airborne Pilot'; 
_o pushBack 150;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_RU_Sniper_VDV_EMR';
_p pushBack '';
_n pushBack 'Russian Airborne Sniper'; 
_o pushBack 900;
_t pushBack 5;
_u pushBack 1;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

//--- Light Vehicles
/*
_c pushBack 'CUP_M1030';
_p pushBack '';
_n pushBack '';
_o pushBack 50;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_I_Datsun_PK';
_p pushBack '';
_n pushBack '';
_o pushBack 150;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;*/

_c pushBack 'CUP_I_SUV_Armored_ION';
_p pushBack '';
_n pushBack 'SUV Armed';
_o pushBack 1650;
_t pushBack 30;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'OFPS_BRDM2';
_p pushBack '';
_n pushBack '';
_o pushBack 1200;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'OFPS_BRDM2_T';
_p pushBack '';
_n pushBack 'BRDM2 (Pacific)';
_o pushBack 1200;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'OFPS_BRDM2ATGM';
_p pushBack '';
_n pushBack 'BRDM ATGM';
_o pushBack 4700;
_t pushBack 30;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'OFPS_BRDM2ATGM_T';
_p pushBack '';
_n pushBack 'BRDM ATGM (Pacific)';
_o pushBack 4700;
_t pushBack 30;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_BRDM2_TK';
_p pushBack '';
_n pushBack 'BRDM HMG';
_o pushBack 2000;
_t pushBack 30;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'OFPS_BRDM2HQ';
_p pushBack '';
_n pushBack '';
_o pushBack 1000;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'OFPS_BRDM2HQ_T';
_p pushBack '';
_n pushBack 'BRDM2 HQ (Pacific)';
_o pushBack 1000;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'OFPS_BTR60';
_p pushBack '';
_n pushBack 'BTR60 HMG, MG';
_o pushBack 2700;
_t pushBack 10;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_BTR90_RU';
_p pushBack '';
_n pushBack 'BTR90';
_o pushBack 8700;
_t pushBack 30;
_u pushBack 2;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

/*_c pushBack 'CUP_O_BTR90_HQ_RU';
_p pushBack '';
_n pushBack (format ["Mobile Respawn - Range %1 m",CTI_RESPAWN_MOBILE_RANGE]);
_o pushBack 6000;
_t pushBack 10;
_u pushBack 2;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "service-medic";
_d pushBack 0;

_c pushBack 'CUP_B_LR_Ambulance_CZ_W';
_p pushBack '';
_n pushBack (format ["Mobile Respawn - Range %1 m",CTI_RESPAWN_MOBILE_RANGE]);
_o pushBack 2000;
_t pushBack 10;
_u pushBack 2;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "service-medic";
_d pushBack 0;

_c pushBack 'OFPS_LR_MG';
_p pushBack '';
_n pushBack '';
_o pushBack 400;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'OFPS_LR_S';
_p pushBack '';
_n pushBack '';
_o pushBack 600;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;
*/
_c pushBack 'OFPS_LR_SPG9';
_p pushBack '';
_n pushBack 'UAZ SPG9';
_o pushBack 3000;
_t pushBack 30;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

/*_c pushBack 'OFPS_LR_SX';
_p pushBack '';
_n pushBack '';
_o pushBack 700;
_t pushBack 10;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_C_LR_Transport_CTK';
_p pushBack '';
_n pushBack '';
_o pushBack 300;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;*/

_c pushBack 'OFPS_UAZ';
_p pushBack '';
_n pushBack 'UAZ Unarmed';
_o pushBack 750;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;


_c pushBack 'OFPS_UAZ_AGS30';
_p pushBack '';
_n pushBack 'UAZ GMG';
_o pushBack 1850;
_t pushBack 30;
_u pushBack 2;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'OFPS_UAZ_MG';
_p pushBack '';
_n pushBack 'UAZ MG';
_o pushBack 1150;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'OFPS_UAZ_METIS';
_p pushBack '';
_n pushBack 'UAZ Metis';
_o pushBack 5300;
_t pushBack 30;
_u pushBack 2;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

/*_c pushBack 'CUP_O_UAZ_Open_CSAT';
_p pushBack '';
_n pushBack '';
_o pushBack 150;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;*/

_c pushBack 'OFPS_UAZ_SPG9';
_p pushBack '';
_n pushBack '';
_o pushBack 1800;
_t pushBack 10;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_Ural_RU';
_p pushBack '';
_n pushBack 'Ural Transport';
_o pushBack 800;
_t pushBack 30;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

/*_c pushBack 'CUP_O_Ural_Empty_RU';
_p pushBack '';
_n pushBack '';
_o pushBack 200;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_Ural_Open_RU';
_p pushBack '';
_n pushBack '';
_o pushBack 200;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;
*/
_c pushBack 'CUP_O_Ural_ZU23_RU';
_p pushBack '';
_n pushBack 'Ural ZU23';
_o pushBack 2550;
_t pushBack 30;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

/*_c pushBack 'CUP_B_TowingTractor_USMC';
_p pushBack '';
_n pushBack '';
_o pushBack 50;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_BTR40_TKA';
_p pushBack '';
_n pushBack '';
_o pushBack 150;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;*/

_c pushBack 'CUP_I_BTR40_MG_TKG';
_p pushBack '';
_n pushBack 'BTR40 MG';
_o pushBack 1350;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

/*_c pushBack 'CUP_O_GAZ_Vodnik_PK_RU';
_p pushBack '';
_n pushBack '';
_o pushBack 400;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_LR_Special_GMG_GB_W';
_p pushBack '';
_n pushBack 'SOP Vehicle';
_o pushBack 1300;
_t pushBack 30;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;*/

_c pushBack 'CUP_O_GAZ_Vodnik_AGS_RU';
_p pushBack '';
_n pushBack 'Vodnik SOP';
_o pushBack 2650;
_t pushBack 30;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_GAZ_Vodnik_BPPU_RU';
_p pushBack '';
_n pushBack 'Vodnik BPPU';
_o pushBack 3950;
_t pushBack 30;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_GAZ_Vodnik_MedEvac_RU';
_p pushBack '';
_n pushBack (format ["Wheeled Respawn - Range %1 m",CTI_RESPAWN_MOBILE_RANGE]);
_o pushBack 5550;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "service-medic";
_d pushBack 0;

_c pushBack 'CUP_B_Dingo_GER_Wdl';
_p pushBack '';
_n pushBack 'Dingo FLIR, MG';
_o pushBack 2150;
_t pushBack 30;
_u pushBack 3;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_Dingo_GL_GER_Wdl';
_p pushBack '';
_n pushBack 'Dingo FLIR, GMG';
_o pushBack 3050;
_t pushBack 30;
_u pushBack 3;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

//--- Heavy Vehicles

_c pushBack 'CUP_O_BM21_RU';
_p pushBack '';
_n pushBack 'Ural Grad (MLRS)';
_o pushBack 160000;
_t pushBack 30;
_u pushBack 4;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

/*_c pushBack 'CUP_O_BMP1_CSAT';
_p pushBack '';
_n pushBack '';
_o pushBack 3000;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;*/

_c pushBack 'OFPS_BMP1';
_p pushBack '';
_n pushBack 'BMP1-P';
_o pushBack 5500;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'OFPS_BMP1_T';
_p pushBack '';
_n pushBack 'BMP1-P (Pacific)';
_o pushBack 5500;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'OFPS_BMP2';
_p pushBack '';
_n pushBack 'BMP2';
_o pushBack 6800;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'OFPS_BMP2_T';
_p pushBack '';
_n pushBack 'BMP2 (Pacific)';
_o pushBack 6800;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'OFPS_BMP2_M';
_p pushBack '';
_n pushBack (format ["Mobile Respawn - Range %1 m",CTI_RESPAWN_MOBILE_RANGE]);
_o pushBack 6400;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "service-medic";
_d pushBack 0;

_c pushBack 'OFPS_BMP2_M_T';
_p pushBack '';
_n pushBack (format ["Mobile Respawn - Range %1 m",CTI_RESPAWN_MOBILE_RANGE]);
_o pushBack 6400;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "service-medic";
_d pushBack 0;

_c pushBack 'CUP_O_BMP2_AMB_CSAT';
_p pushBack '';
_n pushBack (format ["Mobile Respawn - Range %1 m",CTI_RESPAWN_MOBILE_RANGE]);
_o pushBack 5000;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "service-medic";
_d pushBack 0;

_c pushBack 'OFPS_BMP2_ZSU';
_p pushBack '';
_n pushBack '';
_o pushBack 3000;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'OFPS_BMP2_ZSU_T';
_p pushBack '';
_n pushBack 'BMP2 ZSU AA (Pacific)';
_o pushBack 3000;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'OFPS_T55';
_p pushBack '';
_n pushBack 'T-55';
_o pushBack 7000;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'OFPS_T55_T';
_p pushBack '';
_n pushBack 'T-55 (Pacific)';
_o pushBack 7000;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_T72_CZ';
_p pushBack '';
_n pushBack 'T-72';
_o pushBack 18000;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'OFPS_ZSU23';
_p pushBack '';
_n pushBack 'ZSU23 Shilka';
_o pushBack 4350;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'OFPS_ZSU23_T';
_p pushBack '';
_n pushBack 'ZSU23 Shilka';
_o pushBack 4350;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

/*_c pushBack 'sfp_ikv91';
_p pushBack '';
_n pushBack 'AP Tank';
_o pushBack 10000;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;*/

_c pushBack 'CUP_O_2S6M_RU';
_p pushBack '';
_n pushBack '2S6M Tunguska';
_o pushBack 19150;
_t pushBack 20;
_u pushBack 4;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'OFPS_BMP3';
_p pushBack '';
_n pushBack 'BMP3';
_o pushBack 12200;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'OFPS_BMP3_T';
_p pushBack '';
_n pushBack 'BMP3';
_o pushBack 12200;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

//--- Repair Vehicles

_c pushBack 'CUP_O_Ural_Refuel_RU';
_p pushBack '';
_n pushBack 'Ural Refuel';
_o pushBack 2850;
_t pushBack 30;
_u pushBack 0;
_f pushBack CTI_FACTORY_REPAIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_Ural_Repair_RU';
_p pushBack '';
_n pushBack 'Ural Repair';
_o pushBack 6850;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_REPAIR;
_s pushBack "service-repairtruck";
_d pushBack 0;


//--- Ammo Vehicles

_c pushBack 'CUP_O_Ural_Reammo_RU';
_p pushBack '';
_n pushBack 'Ural Ammo';
_o pushBack 8750;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_AMMO;
_s pushBack "service-ammotruck";
_d pushBack 0;

//--- Air Vehicles

_c pushBack 'CUP_O_Ka50_SLA';
_p pushBack '';
_n pushBack '';
_o pushBack 55000;
_t pushBack 20;
_u pushBack 4;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

/*_c pushBack 'CUP_C_Mi17_Civilian_RU';
_p pushBack '';
_n pushBack '';
_o pushBack 3000;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_RU_Pchela1T';
_p pushBack '';
_n pushBack '';
_o pushBack 5000;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;*/

_c pushBack 'CUP_O_Mi8_SLA_1';
_p pushBack '';
_n pushBack 'Mi-8 MT';
_o pushBack 3700;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_Mi171Sh_ACR';
_p pushBack '';
_n pushBack 'Mi-17 Rockets';
_o pushBack 25400;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_I_Mi24_Mk3_Empty_ION';
_p pushBack '';
_n pushBack 'Mi-24 SuperHind Mk.III (20mm Chin Cannon)';
_o pushBack 15000;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_I_Mi24_Mk3_ION';
_p pushBack '';
_n pushBack 'Mi-24 SuperHind Mk.III (Rocket Pods)';
_o pushBack 20000;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_I_Mi24_Mk3_AT_ION';
_p pushBack '';
_n pushBack 'Mi-24 SuperHind Mk.III (AT)';
_o pushBack 40000;
_t pushBack 20;
_u pushBack 4;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_I_Mi24_Mk4_Empty_ION';
_p pushBack '';
_n pushBack 'Mi-24 SuperHind Mk.IV (20mm Chin Cannon)';
_o pushBack 16000;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_I_Mi24_Mk4_ION';
_p pushBack '';
_n pushBack 'Mi-24 SuperHind Mk.IV (Rocket Pods)';
_o pushBack 21000;
_t pushBack 20;
_u pushBack 3;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_I_Mi24_Mk4_AT_ION';
_p pushBack '';
_n pushBack 'Mi-24 SuperHind Mk.IV (AT)';
_o pushBack 41000;
_t pushBack 20;
_u pushBack 5;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_MI6T_TKA';
_p pushBack '';
_n pushBack '';
_o pushBack 6000;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

/*_c pushBack 'CUP_O_Mi8_medevac_CHDKZ';
_p pushBack '';
_n pushBack (format ["Slingload Respawn - Range %1 m",CTI_RESPAWN_MOBILE_RANGE]);
_o pushBack 8000;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "service-medic";
_d pushBack 0;

_c pushBack 'CUP_O_Mi8_CHDKZ';
_p pushBack '';
_n pushBack '';
_o pushBack 5000;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_Mi8_SLA_2';
_p pushBack '';
_n pushBack '';
_o pushBack 15000;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;*/

_c pushBack 'CUP_O_AN2_TK';
_p pushBack '';
_n pushBack 'Antonov Transport';
_o pushBack 3000;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_L39_BMB_CZ';
_p pushBack '';
_n pushBack 'L39 FAB250';
_o pushBack 12300;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_Su25_RU_3';
_p pushBack '';
_n pushBack 'SU-25 (Unguided Bombs, Rocket Pods)';
_o pushBack 30000;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_Su25_RU_1';
_p pushBack '';
_n pushBack 'SU-25 (1000lb JDAMs, Rocket Pods)';
_o pushBack 35000;
_t pushBack 20;
_u pushBack 3;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_Su25_RU_2';
_p pushBack '';
_n pushBack 'SU-25 (ATGMs, Rocket Pods)';
_o pushBack 45000;
_t pushBack 20;
_u pushBack 4;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_SU34_LGB_CSAT';
_p pushBack '';
_n pushBack 'SU-34 LGB';
_o pushBack 56300;
_t pushBack 20;
_u pushBack 5;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_SU34_AGM_CSAT';
_p pushBack '';
_n pushBack 'SU-34 AGM';
_o pushBack 60000;
_t pushBack 20;
_u pushBack 5;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

/*_c pushBack 'CUP_O_C47_SLA';
_p pushBack '';
_n pushBack '';
_o pushBack 2000;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_UH1H_TKA';
_p pushBack '';
_n pushBack '';
_o pushBack 4000;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;*/

_c pushBack 'CUP_O_C130J_TKA';
_p pushBack '';
_n pushBack '';
_o pushBack 4000;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_C130J_Cargo_TKA';
_p pushBack '';
_n pushBack '';
_o pushBack 4000;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_Ka52_GreyCamo_RU';
_p pushBack '';
_n pushBack 'KA-52 AT';
_o pushBack 60000;
_t pushBack 20;
_u pushBack 5;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_I_Ka60_GL_Blk_ION';
_p pushBack '';
_n pushBack 'Ka-60 Black (Rocket Pods, 40mm GL Door Gun)';
_o pushBack 12000;
_t pushBack 20;
_u pushBack 1;
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
_n pushBack 'Attack Boat GMG, HMG, GAU';
_o pushBack 2000;
_t pushBack 25;
_u pushBack 0;
_f pushBack CTI_FACTORY_NAVAL;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_Zodiac_USMC';
_p pushBack '';
_n pushBack 'Zodiac';
_o pushBack 100;
_t pushBack 25;
_u pushBack 0;
_f pushBack CTI_FACTORY_NAVAL;
_s pushBack "";
_d pushBack 0;

[_side, _faction, _c, _p, _n, _o, _t, _u, _f, _s, _d] call compile preprocessFileLineNumbers "Common\Config\Units\Set_Units.sqf";



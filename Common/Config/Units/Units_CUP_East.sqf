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
_p pushBack 'Rifle';
_n pushBack ''; 
_o pushBack 100;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_RU_Soldier_AA';
_p pushBack '';
_n pushBack 'AA'; 
_o pushBack 900;
_t pushBack 5;
_u pushBack 1;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_RU_Soldier_AR';
_p pushBack '';
_n pushBack 'AR'; 
_o pushBack 150;
_t pushBack 5;
_u pushBack 1;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_RU_soldier_GL';
_p pushBack '';
_n pushBack 'Rifle UGL'; 
_o pushBack 150;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_RU_Crew';
_p pushBack '';
_n pushBack 'Crew'; 
_o pushBack 50;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_RU_Soldier_AT';
_p pushBack '';
_n pushBack 'AT'; 
_o pushBack 350;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_RU_Soldier_HAT';
_p pushBack '';
_n pushBack 'HAT'; 
_o pushBack 700;
_t pushBack 5;
_u pushBack 2;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_RU_Engineer';
_p pushBack '';
_n pushBack 'Engineer'; 
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
_n pushBack 'Medic'; 
_o pushBack 200;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_RU_Pilot';
_p pushBack '';
_n pushBack 'Pilot'; 
_o pushBack 50;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_RU_Sniper_KSVK';
_p pushBack '';
_n pushBack 'KSVK'; 
_o pushBack 400;
_t pushBack 5;
_u pushBack 2;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

//_c pushBack 'CUP_O_RU_Crew_EMR';
//_p pushBack '';
//_n pushBack ''; 
//_o pushBack 100;
//_t pushBack 5;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_O_RU_Pilot_EMR';
//_p pushBack '';
//_n pushBack ''; 
//_o pushBack 100;
//_t pushBack 5;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_O_RU_Soldier_EMR';
//_p pushBack '';
//_n pushBack ''; 
//_o pushBack 150;
//_t pushBack 5;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_O_RU_Soldier_GL_EMR';
//_p pushBack '';
//_n pushBack ''; 
//_o pushBack 250;
//_t pushBack 5;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_O_RU_Soldier_MG_EMR';
//_p pushBack '';
//_n pushBack ''; 
//_o pushBack 300;
//_t pushBack 5;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_O_RU_Sniper_KSVK_EMR';
//_p pushBack '';
//_n pushBack ''; 
//_o pushBack 400;
//_t pushBack 5;
//_u pushBack 2;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_O_RU_Sniper_EMR';
//_p pushBack '';
//_n pushBack ''; 
//_o pushBack 200;
//_t pushBack 5;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_O_RU_Engineer_EMR';
//_p pushBack '';
//_n pushBack ''; 
//_o pushBack 600;
//_t pushBack 5;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_O_RU_Soldier_AT_EMR';
//_p pushBack '';
//_n pushBack ''; 
//_o pushBack 350;
//_t pushBack 5;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_O_RU_Soldier_HAT_EMR';
//_p pushBack '';
//_n pushBack 'Metis'; 
//_o pushBack 700;
//_t pushBack 5;
//_u pushBack 2;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_O_RU_Medic_EMR';
//_p pushBack '';
//_n pushBack ''; 
//_o pushBack 200;
//_t pushBack 5;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_O_RU_Sabotuer';
//_p pushBack '';
//_n pushBack 'Speznaz'; 
//_o pushBack 250;
//_t pushBack 5;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_O_RU_Soldier_Marksman';
//_p pushBack '';
//_n pushBack 'Speznaz'; 
//_o pushBack 350;
//_t pushBack 5;
//_u pushBack 2;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_O_RU_Soldier_AA_EMR';
//_p pushBack '';
//_n pushBack ''; 
//_o pushBack 900;
//_t pushBack 5;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//--- Light Vehicles

//_c pushBack 'CUP_M1030';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 50;
//_t pushBack 10;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_I_Datsun_PK';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 150;
//_t pushBack 10;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'CUP_I_SUV_Armored_ION';
_p pushBack '';
_n pushBack 'SUV Armed';
_o pushBack 2000;
_t pushBack 30;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

//_c pushBack 'CUP_O_BRDM2_CSAT';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 1200;
//_t pushBack 10;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'CUP_O_BRDM2_ATGM_RUS';
_p pushBack '';
_n pushBack 'BRDM ATGM';
_o pushBack 5000;
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

//_c pushBack 'CUP_O_BRDM2_HQ_CSAT';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 1000;
//_t pushBack 10;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'CUP_O_BTR60_CSAT';
_p pushBack '';
_n pushBack 'BTR60 HMG, MG';
_o pushBack 2000;
_t pushBack 10;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_BTR90_RU';
_p pushBack '';
_n pushBack 'Attack APC';
_o pushBack 10000;
_t pushBack 30;
_u pushBack 2;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

//_c pushBack 'CUP_O_BTR90_HQ_RU';
//_p pushBack '';
//_n pushBack (format ["Mobile Respawn - Range %1 m",CTI_RESPAWN_MOBILE_RANGE]);
//_o pushBack 6000;
//_t pushBack 10;
//_u pushBack 2;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "service-medic";
//_d pushBack 0;

//_c pushBack 'CUP_B_LR_Ambulance_CZ_W';
//_p pushBack '';
//_n pushBack (format ["Mobile Respawn - Range %1 m",CTI_RESPAWN_MOBILE_RANGE]);
//_o pushBack 2000;
//_t pushBack 10;
//_u pushBack 2;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "service-medic";
//_d pushBack 0;

//_c pushBack 'OFPS_LR_MG';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 400;
//_t pushBack 10;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'OFPS_LR_S';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 600;
//_t pushBack 10;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'CUP_O_LR_SPG9_TKA';
_p pushBack '';
_n pushBack 'UAZ SPG9';
_o pushBack 900;
_t pushBack 30;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

//_c pushBack 'OFPS_LR_SX';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 700;
//_t pushBack 10;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_C_LR_Transport_CTK';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 300;
//_t pushBack 10;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'CUP_B_UAZ_Unarmed_CDF';
_p pushBack '';
_n pushBack 'UAZ Transport';
_o pushBack 300;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;


_c pushBack 'CUP_O_UAZ_AGS30_RU';
_p pushBack '';
_n pushBack 'UAZ GMG';
_o pushBack 900;
_t pushBack 30;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_UAZ_MG_CDF';
_p pushBack '';
_n pushBack 'UAZ MG';
_o pushBack 600;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_UAZ_METIS_RU';
_p pushBack '';
_n pushBack 'UAZ ATGM';
_o pushBack 4000;
_t pushBack 30;
_u pushBack 2;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

//_c pushBack 'CUP_O_UAZ_Open_CSAT';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 150;
//_t pushBack 10;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_O_UAZ_SPG9_CSAT';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 800;
//_t pushBack 10;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'CUP_O_Ural_RU';
_p pushBack '';
_n pushBack 'Ural Transport';
_o pushBack 400;
_t pushBack 30;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

//_c pushBack 'CUP_O_Ural_Empty_RU';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 200;
//_t pushBack 10;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_O_Ural_Open_RU';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 200;
//_t pushBack 10;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'CUP_O_Ural_ZU23_RU';
_p pushBack '';
_n pushBack 'Ural AA';
_o pushBack 4500;
_t pushBack 30;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

//_c pushBack 'CUP_B_TowingTractor_USMC';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 50;
//_t pushBack 10;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_O_BTR40_TKA';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 150;
//_t pushBack 10;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'CUP_I_BTR40_MG_TKG';
_p pushBack '';
_n pushBack 'MG Transport';
_o pushBack 600;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "service-medic";
_d pushBack 0;

//_c pushBack 'CUP_O_GAZ_Vodnik_PK_RU';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 400;
//_t pushBack 10;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_B_LR_Special_GMG_GB_W';
//_p pushBack '';
//_n pushBack 'SOP Vehicle';
//_o pushBack 1300;
//_t pushBack 30;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'CUP_O_GAZ_Vodnik_AGS_RU';
_p pushBack '';
_n pushBack 'Vodnik GMG, MG';
_o pushBack 1200;
_t pushBack 30;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_GAZ_Vodnik_BPPU_RU';
_p pushBack '';
_n pushBack 'Vodnik Autocannon';
_o pushBack 6000;
_t pushBack 30;
_u pushBack 3;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_GAZ_Vodnik_MedEvac_RU';
_p pushBack '';
_n pushBack (format ["Wheeled Respawn - Range %1 m",CTI_RESPAWN_MOBILE_RANGE]);
_o pushBack 5000;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "service-medic";
_d pushBack 0;

_c pushBack 'CUP_B_Dingo_GER_Wdl';
_p pushBack '';
_n pushBack 'Dingo FLIR, MG';
_o pushBack 1300;
_t pushBack 30;
_u pushBack 3;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_Dingo_GL_GER_Wdl';
_p pushBack '';
_n pushBack 'Dingo FLIR, GMG';
_o pushBack 1800;
_t pushBack 30;
_u pushBack 3;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

//--- Heavy Vehicles

_c pushBack 'CUP_O_BM21_RU';
_p pushBack '';
_n pushBack 'Ural MLRS';
_o pushBack 100000;
_t pushBack 30;
_u pushBack 4;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

//_c pushBack 'CUP_O_BMP1_CSAT';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 3000;
//_t pushBack 20;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_HEAVY;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'CUP_O_BMP1P_TKA';
_p pushBack '';
_n pushBack 'BMP Cannon';
_o pushBack 3000;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_BMP2_RU';
_p pushBack '';
_n pushBack 'BMP Autocannon';
_o pushBack 4000;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_BMP2_AMB_RU';
_p pushBack '';
_n pushBack (format ["Mobile Respawn - Range %1 m",CTI_RESPAWN_MOBILE_RANGE]);
_o pushBack 7500;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "service-medic";
_d pushBack 0;

//_c pushBack 'CUP_O_BMP2_AMB_CSAT';
//_p pushBack '';
//_n pushBack (format ["Mobile Respawn - Range %1 m",CTI_RESPAWN_MOBILE_RANGE]);
//_o pushBack 5000;
//_t pushBack 20;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_HEAVY;
//_s pushBack "service-medic";
//_d pushBack 0;

//_c pushBack 'CUP_O_BMP2_ZU_CSAT';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 3000;
//_t pushBack 20;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_HEAVY;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'CUP_O_T55_CSAT';
_p pushBack '';
_n pushBack 'T55 Light Tank';
_o pushBack 10000;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

//_c pushBack 'CUP_O_T72_CSAT';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 18000;
//_t pushBack 20;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_HEAVY;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'CUP_B_T72_CZ';
_p pushBack '';
_n pushBack 'T72 Medium Tank';
_o pushBack 20000;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_ZSU23_SLA';
_p pushBack '';
_n pushBack 'Shilka AA';
_o pushBack 6500;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

//_c pushBack 'sfp_ikv91';
//_p pushBack '';
//_n pushBack 'AP Tank';
//_o pushBack 10000;
//_t pushBack 20;
//_u pushBack 2;
//_f pushBack CTI_FACTORY_HEAVY;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'CUP_O_2S6M_RU';
_p pushBack '';
_n pushBack 'Tunguska AA';
_o pushBack 20000;
_t pushBack 20;
_u pushBack 4;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_BMP3_RU';
_p pushBack '';
_n pushBack 'BMP3 AT';
_o pushBack 12000;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

//--- Repair Vehicles

_c pushBack 'CUP_O_Ural_Refuel_RU';
_p pushBack '';
_n pushBack 'Refuel Truck';
_o pushBack 5000;
_t pushBack 30;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_Ural_Repair_RU';
_p pushBack '';
_n pushBack 'Repair Truck';
_o pushBack 10000;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_REPAIR;
_s pushBack "service-repairtruck";
_d pushBack 0;


//--- Ammo Vehicles

_c pushBack 'CUP_O_Ural_Reammo_RU';
_p pushBack '';
_n pushBack 'Ammo Truck';
_o pushBack 8000;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_AMMO;
_s pushBack "service-ammotruck";
_d pushBack 0;

//--- Air Vehicles

//_c pushBack 'CUP_O_Ka50_SLA';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 60000;
//_t pushBack 20;
//_u pushBack 3;
//_f pushBack CTI_FACTORY_AIR;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_C_Mi17_Civilian_RU';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 3000;
//_t pushBack 20;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_AIR;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_RU_Pchela1T';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 5000;
//_t pushBack 20;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_AIR;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'CUP_B_Mi171Sh_ACR';
_p pushBack '';
_n pushBack 'Mi-17 Rockets';
_o pushBack 20000;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

//_c pushBack 'CUP_B_Mi24_D_CDF';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 23000;
//_t pushBack 20;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_AIR;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'CUP_O_Mi24_P_RU';
_p pushBack '';
_n pushBack 'Mi-24 Gun, Rockets, Bomb';
_o pushBack 25000;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_Mi24_V_RU';
_p pushBack '';
_n pushBack 'Mi-24 Gun, Rockets, 4x Light AT';
_o pushBack 30000;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_I_Mi24_Mk3_FAB_AAF';
_p pushBack '';
_n pushBack 'Mi-24 MK3 Gun, Bomb';
_o pushBack 20000;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_I_Mi24_Mk4_AT_AAF';
_p pushBack '';
_n pushBack 'Mi-24 MK4 AT, Rockets';
_o pushBack 45000;
_t pushBack 20;
_u pushBack 4;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_I_Mi24_Mk3_S8_GSh_AAF';
_p pushBack '';
_n pushBack 'Mi-24 MK3 Gun, Rockets, Cannon';
_o pushBack 28000;
_t pushBack 20;
_u pushBack 3;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

//_c pushBack 'CUP_B_MI6T_CDF';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 9000;
//_t pushBack 20;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_AIR;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_O_Mi8_medevac_CHDKZ';
//_p pushBack '';
//_n pushBack (format ["Slingload Respawn - Range %1 m",CTI_RESPAWN_MOBILE_RANGE]);
//_o pushBack 8000;
//_t pushBack 20;
//_u pushBack 2;
//_f pushBack CTI_FACTORY_AIR;
//_s pushBack "service-medic";
//_d pushBack 0;

//_c pushBack 'CUP_O_Mi8_CHDKZ';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 5000;
//_t pushBack 20;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_AIR;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_O_Mi8_SLA_2';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 15000;
//_t pushBack 20;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_AIR;
//_s pushBack "";
//_d pushBack 0;

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
_n pushBack 'Bomb Plane';
_o pushBack 15000;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_Su25_RU_1';
_p pushBack '';
_n pushBack 'SU-25 Multi';
_o pushBack 35000;
_t pushBack 20;
_u pushBack 3;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_SU34_LGB_CSAT';
_p pushBack '';
_n pushBack 'SU-34 LGB';
_o pushBack 50000;
_t pushBack 20;
_u pushBack 4;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_O_SU34_AGM_CSAT';
_p pushBack '';
_n pushBack 'SU-34 AGM';
_o pushBack 60000;
_t pushBack 20;
_u pushBack 4;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

//_c pushBack 'CUP_O_C47_SLA';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 2000;
//_t pushBack 20;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_AIR;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_O_C130J_TKA';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 6000;
//_t pushBack 20;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_AIR;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_O_C130J_Cargo_TKA';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 6000;
//_t pushBack 20;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_AIR;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_O_UH1H_TKA';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 4000;
//_t pushBack 20;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_AIR;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'CUP_O_Ka52_GreyCamo_RU';
_p pushBack '';
_n pushBack 'KA-52 Gun, AT, Rockets';
_o pushBack 50000;
_t pushBack 20;
_u pushBack 4;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

//_c pushBack 'CUP_O_Ka60_GL_Hex_CSAT';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 6000;
//_t pushBack 20;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_AIR;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_O_Ka60_Hex_CSAT';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 5500;
//_t pushBack 20;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_AIR;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'CUP_I_Mi24_Mk3_AT_ION';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 60000;
//_t pushBack 20;
//_u pushBack 3;
//_f pushBack CTI_FACTORY_AIR;
//_s pushBack "";
//_d pushBack 0;

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
_n pushBack 'Attack Boat GMG, HMG, GAU';
_o pushBack 2000;
_t pushBack 25;
_u pushBack 0;
_f pushBack CTI_FACTORY_NAVAL;
_s pushBack "";
_d pushBack 0;

_c pushBack 'CUP_B_Zodiac_USMC';
_p pushBack '';
_n pushBack 'Small Transport';
_o pushBack 100;
_t pushBack 25;
_u pushBack 0;
_f pushBack CTI_FACTORY_NAVAL;
_s pushBack "";
_d pushBack 0;

[_side, _faction, _c, _p, _n, _o, _t, _u, _f, _s, _d] call compile preprocessFileLineNumbers "Common\Config\Units\Set_Units.sqf";



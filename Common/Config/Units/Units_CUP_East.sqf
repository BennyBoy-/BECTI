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

//--- Light Vehicles
_c = _c + ['CUP_M1030'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [50];
_t = _t + [10];
_u = _u + [0];
_f = _f + [CTI_FACTORY_LIGHT];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['CUP_I_SUV_Armored_ION'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [900];
_t = _t + [10];
_u = _u + [1];
_f = _f + [CTI_FACTORY_LIGHT];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['OFPS_BRDM2'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [1200];
_t = _t + [10];
_u = _u + [0];
_f = _f + [CTI_FACTORY_LIGHT];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['OFPS_BRDM2ATGM'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [1800];
_t = _t + [10];
_u = _u + [0];
_f = _f + [CTI_FACTORY_LIGHT];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['OFPS_BRDM2HQ'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [1000];
_t = _t + [10];
_u = _u + [0];
_f = _f + [CTI_FACTORY_LIGHT];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['OFPS_BTR60'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [1200];
_t = _t + [10];
_u = _u + [0];
_f = _f + [CTI_FACTORY_LIGHT];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['CUP_O_BTR90_RU'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [5000];
_t = _t + [10];
_u = _u + [2];
_f = _f + [CTI_FACTORY_LIGHT];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['CUP_O_BTR90_HQ_RU'];
_p = _p + [''];
_n = _n + [(format ["Mobile Respawn - Range %1 m",CTI_RESPAWN_MOBILE_RANGE])];
_o = _o + [8000];
_t = _t + [10];
_u = _u + [2];
_f = _f + [CTI_FACTORY_LIGHT];
_s = _s + ["service-medic"];
_d = _d + [0];

_c = _c + ['CUP_B_LR_Ambulance_CZ_W'];
_p = _p + [''];
_n = _n + [(format ["Mobile Respawn - Range %1 m",CTI_RESPAWN_MOBILE_RANGE])];
_o = _o + [3000];
_t = _t + [10];
_u = _u + [2];
_f = _f + [CTI_FACTORY_LIGHT];
_s = _s + ["service-medic"];
_d = _d + [0];

_c = _c + ['OFPS_LR_MG'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [700];
_t = _t + [10];
_u = _u + [0];
_f = _f + [CTI_FACTORY_LIGHT];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['OFPS_LR_S'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [800];
_t = _t + [10];
_u = _u + [0];
_f = _f + [CTI_FACTORY_LIGHT];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['OFPS_LR_SPG9'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [800];
_t = _t + [10];
_u = _u + [1];
_f = _f + [CTI_FACTORY_LIGHT];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['OFPS_LR_SX'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [700];
_t = _t + [10];
_u = _u + [1];
_f = _f + [CTI_FACTORY_LIGHT];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['CUP_C_LR_Transport_CTK'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [300];
_t = _t + [10];
_u = _u + [0];
_f = _f + [CTI_FACTORY_LIGHT];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['CUP_B_UAZ_Unarmed_CDF'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [150];
_t = _t + [10];
_u = _u + [0];
_f = _f + [CTI_FACTORY_LIGHT];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['OFPS_UAZ_AGS30'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [800];
_t = _t + [10];
_u = _u + [1];
_f = _f + [CTI_FACTORY_LIGHT];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['OFPS_UAZ_MG'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [700];
_t = _t + [10];
_u = _u + [1];
_f = _f + [CTI_FACTORY_LIGHT];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['OFPS_UAZ_METIS'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [1100];
_t = _t + [10];
_u = _u + [2];
_f = _f + [CTI_FACTORY_LIGHT];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['OFPS_UAZ'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [150];
_t = _t + [10];
_u = _u + [0];
_f = _f + [CTI_FACTORY_LIGHT];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['OFPS_UAZ_SPG9'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [900];
_t = _t + [10];
_u = _u + [1];
_f = _f + [CTI_FACTORY_LIGHT];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['CUP_O_Ural_RU'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [300];
_t = _t + [10];
_u = _u + [0];
_f = _f + [CTI_FACTORY_LIGHT];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['CUP_O_Ural_Empty_RU'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [300];
_t = _t + [10];
_u = _u + [0];
_f = _f + [CTI_FACTORY_LIGHT];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['CUP_O_Ural_Open_RU'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [300];
_t = _t + [10];
_u = _u + [0];
_f = _f + [CTI_FACTORY_LIGHT];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['CUP_O_Ural_ZU23_RU'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [3000];
_t = _t + [10];
_u = _u + [1];
_f = _f + [CTI_FACTORY_LIGHT];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['CUP_B_TowingTractor_USMC'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [100];
_t = _t + [10];
_u = _u + [0];
_f = _f + [CTI_FACTORY_LIGHT];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['CUP_O_BTR40_TKA'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [225];
_t = _t + [10];
_u = _u + [0];
_f = _f + [CTI_FACTORY_LIGHT];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['CUP_O_BTR40_MG_TKA'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [250];
_t = _t + [10];
_u = _u + [0];
_f = _f + [CTI_FACTORY_LIGHT];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['CUP_O_GAZ_Vodnik_PK_RU'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [600];
_t = _t + [10];
_u = _u + [0];
_f = _f + [CTI_FACTORY_LIGHT];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['CUP_O_GAZ_Vodnik_AGS_RU'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [700];
_t = _t + [10];
_u = _u + [1];
_f = _f + [CTI_FACTORY_LIGHT];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['CUP_O_GAZ_Vodnik_BPPU_RU'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [1000];
_t = _t + [10];
_u = _u + [3];
_f = _f + [CTI_FACTORY_LIGHT];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['CUP_O_GAZ_Vodnik_MedEvac_RU'];
_p = _p + [''];
_n = _n + [(format ["Mobile Respawn - Range %1 m",CTI_RESPAWN_MOBILE_RANGE])];
_o = _o + [3000];
_t = _t + [10];
_u = _u + [2];
_f = _f + [CTI_FACTORY_LIGHT];
_s = _s + ["service-medic"];
_d = _d + [0];

//--- Heavy Vehicles

_c = _c + ['CUP_O_BM21_RU'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [100000];
_t = _t + [30];
_u = _u + [3];
_f = _f + [CTI_FACTORY_HEAVY];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['OFPS_BMP1'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [3000];
_t = _t + [20];
_u = _u + [0];
_f = _f + [CTI_FACTORY_HEAVY];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['OFPS_BMP1P'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [3500];
_t = _t + [20];
_u = _u + [0];
_f = _f + [CTI_FACTORY_HEAVY];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['OFPS_BMP2'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [7500];
_t = _t + [20];
_u = _u + [1];
_f = _f + [CTI_FACTORY_HEAVY];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['OFPS_BMP2_HQ'];
_p = _p + [''];
_n = _n + [(format ["Mobile Respawn - Range %1 m",CTI_RESPAWN_MOBILE_RANGE])];
_o = _o + [5000];
_t = _t + [20];
_u = _u + [1];
_f = _f + [CTI_FACTORY_HEAVY];
_s = _s + ["service-medic"];
_d = _d + [0];

_c = _c + ['OFPS_BMP2_M'];
_p = _p + [''];
_n = _n + [(format ["Mobile Respawn - Range %1 m",CTI_RESPAWN_MOBILE_RANGE])];
_o = _o + [8000];
_t = _t + [20];
_u = _u + [1];
_f = _f + [CTI_FACTORY_HEAVY];
_s = _s + ["service-medic"];
_d = _d + [0];

_c = _c + ['OFPS_BMP2_ZSU'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [3500];
_t = _t + [20];
_u = _u + [2];
_f = _f + [CTI_FACTORY_HEAVY];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['OFPS_T55'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [10000];
_t = _t + [20];
_u = _u + [0];
_f = _f + [CTI_FACTORY_HEAVY];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['OFPS_T72A'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [16000];
_t = _t + [20];
_u = _u + [1];
_f = _f + [CTI_FACTORY_HEAVY];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['OFPS_ZSU23'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [5000];
_t = _t + [20];
_u = _u + [0];
_f = _f + [CTI_FACTORY_HEAVY];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['sfp_ikv91'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [13000];
_t = _t + [20];
_u = _u + [2];
_f = _f + [CTI_FACTORY_HEAVY];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['CUP_O_2S6M_RU'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [18000];
_t = _t + [20];
_u = _u + [2];
_f = _f + [CTI_FACTORY_HEAVY];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['OFPS_BMP3'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [6000];
_t = _t + [20];
_u = _u + [2];
_f = _f + [CTI_FACTORY_HEAVY];
_s = _s + [""];
_d = _d + [0];

//--- Repair Vehicles

_c = _c + ['CUP_O_Ural_Refuel_RU'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [400];
_t = _t + [10];
_u = _u + [0];
_f = _f + [CTI_FACTORY_REPAIR];
_s = _s + ["service-fueltruck"];
_d = _d + [0];

_c = _c + ['CUP_O_Ural_Repair_RU'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [3000];
_t = _t + [10];
_u = _u + [0];
_f = _f + [CTI_FACTORY_REPAIR];
_s = _s + ["service-repairtruck"];
_d = _d + [0];


//--- Ammo Vehicles

_c = _c + ['CUP_O_Ural_Reammo_RU'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [3000];
_t = _t + [10];
_u = _u + [0];
_f = _f + [CTI_FACTORY_AMMO];
_s = _s + ["service-ammotruck"];
_d = _d + [0];

//--- Air Vehicles

_c = _c + ['CUP_O_Ka50_SLA'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [60000];
_t = _t + [20];
_u = _u + [3];
_f = _f + [CTI_FACTORY_AIR];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['CUP_C_Mi17_Civilian_RU'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [3000];
_t = _t + [20];
_u = _u + [0];
_f = _f + [CTI_FACTORY_AIR];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['CUP_B_Mi171Sh_ACR'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [18000];
_t = _t + [20];
_u = _u + [1];
_f = _f + [CTI_FACTORY_AIR];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['CUP_B_Mi24_D_CDF'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [25000];
_t = _t + [20];
_u = _u + [2];
_f = _f + [CTI_FACTORY_AIR];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['CUP_O_Mi24_P_RU'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [25000];
_t = _t + [20];
_u = _u + [2];
_f = _f + [CTI_FACTORY_AIR];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['CUP_O_Mi24_V_RU'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [25000];
_t = _t + [20];
_u = _u + [1];
_f = _f + [CTI_FACTORY_AIR];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['CUP_B_MI6T_CDF'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [9000];
_t = _t + [20];
_u = _u + [1];
_f = _f + [CTI_FACTORY_AIR];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['CUP_O_Mi8_medevac_CHDKZ'];
_p = _p + [''];
_n = _n + [(format ["Slingload Respawn - Range %1 m",CTI_RESPAWN_MOBILE_RANGE])];
_o = _o + [8000];
_t = _t + [20];
_u = _u + [2];
_f = _f + [CTI_FACTORY_AIR];
_s = _s + ["service-medic"];
_d = _d + [0];

_c = _c + ['CUP_O_Mi8_CHDKZ'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [5000];
_t = _t + [20];
_u = _u + [0];
_f = _f + [CTI_FACTORY_AIR];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['CUP_O_Mi8_SLA_2'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [15000];
_t = _t + [20];
_u = _u + [1];
_f = _f + [CTI_FACTORY_AIR];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['OFPS_SU25'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [30000];
_t = _t + [20];
_u = _u + [2];
_f = _f + [CTI_FACTORY_AIR];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['OFPS_SU34_LGB'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [70000];
_t = _t + [20];
_u = _u + [3];
_f = _f + [CTI_FACTORY_AIR];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['OFPS_SU34_AGM'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [70000];
_t = _t + [20];
_u = _u + [3];
_f = _f + [CTI_FACTORY_AIR];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['CUP_C_DC3_CIV'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [2000];
_t = _t + [20];
_u = _u + [0];
_f = _f + [CTI_FACTORY_AIR];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['CUP_O_C130J_TKA'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [6000];
_t = _t + [20];
_u = _u + [1];
_f = _f + [CTI_FACTORY_AIR];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['CUP_O_C130J_Cargo_TKA'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [6000];
_t = _t + [20];
_u = _u + [1];
_f = _f + [CTI_FACTORY_AIR];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['CUP_O_UH1H_TKA'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [4000];
_t = _t + [20];
_u = _u + [0];
_f = _f + [CTI_FACTORY_AIR];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['CUP_O_Ka52_RU'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [70000];
_t = _t + [20];
_u = _u + [3];
_f = _f + [CTI_FACTORY_AIR];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['CUP_O_Ka60_GL_Hex_CSAT'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [70000];
_t = _t + [20];
_u = _u + [3];
_f = _f + [CTI_FACTORY_AIR];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['CUP_O_Ka60_Hex_CSAT'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [70000];
_t = _t + [20];
_u = _u + [3];
_f = _f + [CTI_FACTORY_AIR];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['CUP_I_Mi24_Mk3_AT_ION'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [70000];
_t = _t + [20];
_u = _u + [3];
_f = _f + [CTI_FACTORY_AIR];
_s = _s + [""];
_d = _d + [0];

//--- Naval Vehicles

_c = _c + ['CUP_B_RHIB_USMC'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [500];
_t = _t + [25];
_u = _u + [0];
_f = _f + [CTI_FACTORY_NAVAL];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['CUP_B_RHIB2Turret_USMC'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [1000];
_t = _t + [25];
_u = _u + [1];
_f = _f + [CTI_FACTORY_NAVAL];
_s = _s + [""];
_d = _d + [0];

[_side, _faction, _c, _p, _n, _o, _t, _u, _f, _s] call compile preprocessFileLineNumbers "Common\Config\Units\Set_Units.sqf";

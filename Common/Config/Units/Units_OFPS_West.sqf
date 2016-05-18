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

//--- Light Vehicles
_c = _c + ['dbo_CIV_new_bike'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [20];
_t = _t + [10];
_u = _u + [0];
_f = _f + [CTI_FACTORY_LIGHT];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['dbo_CIV_ol_bike'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [20];
_t = _t + [10];
_u = _u + [0];
_f = _f + [CTI_FACTORY_LIGHT];
_s = _s + [""];
_d = _d + [0];


//--- Heavy Vehicles

//--- Repair Vehicles

//--- Ammo Vehicles

//--- Air Vehicles

_c = _c + ['globemaster_c17_NATO'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [15000];
_t = _t + [50];
_u = _u + [2];
_f = _f + [CTI_FACTORY_AIR];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['usaf_b1b'];
_p = _p + [''];
_n = _n + ['B1B Lancer (Mk82)'];
_o = _o + [80000];
_t = _t + [50];
_u = _u + [3];
_f = _f + [CTI_FACTORY_AIR];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['bwi_a3_at6b'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [18000];
_t = _t + [50];
_u = _u + [2];
_f = _f + [CTI_FACTORY_AIR];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['bwi_a3_at6b_3'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [18000];
_t = _t + [50];
_u = _u + [2];
_f = _f + [CTI_FACTORY_AIR];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['bwi_a3_t6c'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [5000];
_t = _t + [50];
_u = _u + [1];
_f = _f + [CTI_FACTORY_AIR];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['B_UCSV_01'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [4000];
_t = _t + [20];
_u = _u + [0];
_f = _f + [CTI_FACTORY_AIR];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['B_UCSV_02'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [4000];
_t = _t + [20];
_u = _u + [0];
_f = _f + [CTI_FACTORY_AIR];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['LDL_C130J'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [40000];
_t = _t + [50];
_u = _u + [3];
_f = _f + [CTI_FACTORY_AIR];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['sab_alphajet'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [30000];
_t = _t + [20];
_u = _u + [2];
_f = _f + [CTI_FACTORY_AIR];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['sab_alphajet2'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [30000];
_t = _t + [20];
_u = _u + [2];
_f = _f + [CTI_FACTORY_AIR];
_s = _s + [""];
_d = _d + [0];

//--- Naval Vehicles

_c = _c + ['Burnes_LCAC_1'];
_p = _p + [''];
_n = _n + [(format ["Respawn - Range %1 m",CTI_RESPAWN_MOBILE_RANGE])];
_o = _o + [3000];
_t = _t + [25];
_u = _u + [1];
_f = _f + [CTI_FACTORY_NAVAL];
_s = _s + ["service-medic"];
_d = _d + [50];

_c = _c + ['sfp_gruppbat'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [300];
_t = _t + [25];
_u = _u + [0];
_f = _f + [CTI_FACTORY_NAVAL];
_s = _s + [""];
_d = _d + [0];

_c = _c + ['rhsusf_mkvsoc'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [5000];
_t = _t + [25];
_u = _u + [0];
_f = _f + [CTI_FACTORY_NAVAL];
_s = _s + [""];
_d = _d + [1];

_c = _c + ['sfp_rbb_norrkoping'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [30000];
_t = _t + [25];
_u = _u + [2];
_f = _f + [CTI_FACTORY_NAVAL];
_s = _s + [""];
_d = _d + [70];

_c = _c + ['OFPS_Frigate_Blu'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [80000];
_t = _t + [25];
_u = _u + [2];
_f = _f + [CTI_FACTORY_NAVAL];
_s = _s + ["service-ammotruck"];
_d = _d + [100];


[_side, _faction, _c, _p, _n, _o, _t, _u, _f, _s] call compile preprocessFileLineNumbers "Common\Config\Units\Set_Units.sqf";

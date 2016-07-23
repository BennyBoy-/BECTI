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
_c pushBack 'dbo_CIV_new_bike';
_p pushBack '';
_n pushBack '';
_o pushBack 20;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'dbo_CIV_ol_bike';
_p pushBack '';
_n pushBack '';
_o pushBack 20;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;


//--- Heavy Vehicles

//--- Repair Vehicles

//--- Ammo Vehicles

//--- Air Vehicles

_c pushBack 'globemaster_c17_NATO';
_p pushBack '';
_n pushBack '';
_o pushBack 15000;
_t pushBack 50;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 50;

_c pushBack 'usaf_b1b';
_p pushBack '';
_n pushBack 'B1B Lancer (Mk82)';
_o pushBack 80000;
_t pushBack 50;
_u pushBack 3;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 50;

_c pushBack 'bwi_a3_at6b';
_p pushBack '';
_n pushBack '';
_o pushBack 18000;
_t pushBack 50;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'bwi_a3_at6b_3';
_p pushBack '';
_n pushBack '';
_o pushBack 18000;
_t pushBack 50;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'bwi_a3_t6c';
_p pushBack '';
_n pushBack '';
_o pushBack 5000;
_t pushBack 50;
_u pushBack 1;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'B_UCSV_01';
_p pushBack '';
_n pushBack '';
_o pushBack 4000;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'B_UCSV_02';
_p pushBack '';
_n pushBack '';
_o pushBack 4000;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'LDL_C130J';
_p pushBack '';
_n pushBack '';
_o pushBack 40000;
_t pushBack 50;
_u pushBack 3;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'sab_alphajet';
_p pushBack '';
_n pushBack '';
_o pushBack 20000;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'sab_alphajet2';
_p pushBack '';
_n pushBack '';
_o pushBack 20000;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'pook_tu953M80_CDF';
_p pushBack '';
_n pushBack '';
_o pushBack 40000;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 20;

_c pushBack 'pook_tu95ms_CDF';
_p pushBack '';
_n pushBack '';
_o pushBack 40000;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 20;

_c pushBack 'pook_tu95ms16_CDF';
_p pushBack '';
_n pushBack '';
_o pushBack 40000;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 20;

_c pushBack 'pook_tu95MSM_CDF';
_p pushBack '';
_n pushBack '';
_o pushBack 40000;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 20;

//--- Naval Vehicles

_c pushBack 'Burnes_LCAC_1';
_p pushBack '';
_n pushBack (format ["Respawn - Range %1 m",CTI_RESPAWN_MOBILE_RANGE]);
_o pushBack 3000;
_t pushBack 25;
_u pushBack 1;
_f pushBack CTI_FACTORY_NAVAL;
_s pushBack "service-medic";
_d pushBack 50;

_c pushBack 'sfp_gruppbat';
_p pushBack '';
_n pushBack '';
_o pushBack 300;
_t pushBack 25;
_u pushBack 0;
_f pushBack CTI_FACTORY_NAVAL;
_s pushBack "";
_d pushBack 0;

_c pushBack 'rhsusf_mkvsoc';
_p pushBack '';
_n pushBack '';
_o pushBack 5000;
_t pushBack 25;
_u pushBack 0;
_f pushBack CTI_FACTORY_NAVAL;
_s pushBack "";
_d pushBack 5;

_c pushBack 'sfp_rbb_norrkoping';
_p pushBack '';
_n pushBack '';
_o pushBack 40000;
_t pushBack 25;
_u pushBack 2;
_f pushBack CTI_FACTORY_NAVAL;
_s pushBack "";
_d pushBack 50;


_c pushBack 'OFPS_Frigate_Blu';
_p pushBack '';
_n pushBack '';
_o pushBack 100000;
_t pushBack 25;
_u pushBack 2;
_f pushBack CTI_FACTORY_NAVAL;
_s pushBack "service-medic";
_d pushBack 130;


[_side, _faction, _c, _p, _n, _o, _t, _u, _f, _s, _d] call compile preprocessFileLineNumbers "Common\Config\Units\Set_Units.sqf";

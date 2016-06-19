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

_c pushBack 'OFPS_BUZAA_O';
_p pushBack '';
_n pushBack '';
_o pushBack 40000;
_t pushBack 50;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'globemaster_c17_Qatar';
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
_n pushBack 'Tu-160 Blackjack';
_o pushBack 80000;
_t pushBack 50;
_u pushBack 3;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 50;

_c pushBack 'bwi_a3_t6a_5';
_p pushBack '';
_n pushBack '';
_o pushBack 5000;
_t pushBack 50;
_u pushBack 1;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'bwi_a3_at6b_2';
_p pushBack '';
_n pushBack '';
_o pushBack 18000;
_t pushBack 50;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'bwi_a3_at6b_4';
_p pushBack '';
_n pushBack '';
_o pushBack 18000;
_t pushBack 50;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'O_UCSV_01';
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

_c pushBack 'O_PAKFA_F';
_p pushBack '';
_n pushBack '';
_o pushBack 70000;
_t pushBack 20;
_u pushBack 3;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'sab_alphajet8';
_p pushBack '';
_n pushBack '';
_o pushBack 30000;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'sfp_j12';
_p pushBack '';
_n pushBack '';
_o pushBack 40000;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'sfp_j12_rb15';
_p pushBack '';
_n pushBack '';
_o pushBack 50000;
_t pushBack 20;
_u pushBack 3;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'sfp_j12_cap';
_p pushBack '';
_n pushBack '';
_o pushBack 50000;
_t pushBack 20;
_u pushBack 3;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'sfp_bo105_unarmed';
_p pushBack '';
_n pushBack '';
_o pushBack 2000;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'sfp_bo105';
_p pushBack '';
_n pushBack '';
_o pushBack 8000;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'pook_tu953M80';
_p pushBack '';
_n pushBack '';
_o pushBack 20000;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 20;

_c pushBack 'pook_tu95ms';
_p pushBack '';
_n pushBack '';
_o pushBack 20000;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 20;

_c pushBack 'pook_tu95ms16';
_p pushBack '';
_n pushBack '';
_o pushBack 20000;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 20;

_c pushBack 'pook_tu95MSM';
_p pushBack '';
_n pushBack '';
_o pushBack 20000;
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
_d pushBack 1;

_c pushBack 'sfp_rbb_norrkoping';
_p pushBack '';
_n pushBack '';
_o pushBack 30000;
_t pushBack 25;
_u pushBack 2;
_f pushBack CTI_FACTORY_NAVAL;
_s pushBack "";
_d pushBack 50;

_c pushBack 'OFPS_Frigate_CSAT';
_p pushBack '';
_n pushBack '';
_o pushBack 80000;
_t pushBack 25;
_u pushBack 2;
_f pushBack CTI_FACTORY_NAVAL;
_s pushBack "service-ammotruck";
_d pushBack 130;

[_side, _faction, _c, _p, _n, _o, _t, _u, _f, _s, _d] call compile preprocessFileLineNumbers "Common\Config\Units\Set_Units.sqf";

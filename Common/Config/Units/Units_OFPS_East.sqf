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
_n pushBack 'Bike';
_o pushBack 100;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

/*_c pushBack 'dbo_CIV_ol_bike';
_p pushBack '';
_n pushBack '';
_o pushBack 20;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;*/

//Snow truck
_c pushBack 'sfp_bv206_winter';
_p pushBack '';
_n pushBack '';
_o pushBack 200;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

//--- Heavy Vehicles


_c pushBack 'OFPS_BMP2_ZSU';
_p pushBack '';
_n pushBack 'BMP2 ZSU';
_o pushBack 3200;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'sfp_ikv91';
_p pushBack '';
_n pushBack 'IKV91 (90mm)';
_o pushBack 10400;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

//--- Repair Vehicles

//--- Ammo Vehicles

//--- Air Vehicles

_c pushBack 'JS_JC_SU35';
_p pushBack '';
_n pushBack '';
_o pushBack 68000;
_t pushBack 50;
_u pushBack 4;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'OFPS_BUZAA_O';
_p pushBack '';
_n pushBack 'A143 Buzzard CAP';
_o pushBack 18000;
_t pushBack 50;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

/*_c pushBack 'globemaster_c17_Qatar';
_p pushBack '';
_n pushBack '';
_o pushBack 15000;
_t pushBack 50;
_u pushBack 2;
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
*/
_c pushBack 'O_UCSV_01';
_p pushBack '';
_n pushBack 'UCSV Transport';
_o pushBack 8000;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

/*_c pushBack 'LDL_C130J';
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
_o pushBack 20000;
_t pushBack 20;
_u pushBack 1;
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
_d pushBack 0;*/

_c pushBack 'sfp_j12_rb15';
_p pushBack '';
_n pushBack 'J12 AntiShip';
_o pushBack 43500;
_t pushBack 20;
_u pushBack 3;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'sfp_j12_cap';
_p pushBack '';
_n pushBack 'J12 CAP';
_o pushBack 40000;
_t pushBack 20;
_u pushBack 3;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'sfp_bo105_unarmed';
_p pushBack '';
_n pushBack 'BO-105 Unarmed';
_o pushBack 2000;
_t pushBack 20;
_u pushBack 0;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'sfp_bo105';
_p pushBack '';
_n pushBack 'B0-105 Armed';
_o pushBack 14000;
_t pushBack 20;
_u pushBack 3;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'usaf_b1b';
_p pushBack '';
_n pushBack 'B-1B Blackjack';
_o pushBack 109350;
_t pushBack 50;
_u pushBack 5;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 50;

/*_c pushBack 'pook_tu953M80';
_p pushBack '';
_n pushBack '';
_o pushBack 60000;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 20;*/

_c pushBack 'pook_tu95ms';
_p pushBack '';
_n pushBack 'TU-95 FAB250';
_o pushBack 29500;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 20;

/*_c pushBack 'pook_tu95ms16';
_p pushBack '';
_n pushBack '';
_o pushBack 100000;
_t pushBack 20;
_u pushBack 3;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 20;

_c pushBack 'pook_tu95MSM';
_p pushBack '';
_n pushBack '';
_o pushBack 100000;
_t pushBack 20;
_u pushBack 3;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 20;*/

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

_c pushBack 'sfp_svavare2000';
_p pushBack '';
_n pushBack (format ["Respawn - Range %1 m",CTI_RESPAWN_MOBILE_RANGE]);
_o pushBack 3000;
_t pushBack 25;
_u pushBack 1;
_f pushBack CTI_FACTORY_NAVAL;
_s pushBack "service-medic";
_d pushBack 10;

_c pushBack 'sfp_svavare2000_transport';
_p pushBack '';
_n pushBack (format ["Respawn - Range %1 m",CTI_RESPAWN_MOBILE_RANGE]);
_o pushBack 3000;
_t pushBack 25;
_u pushBack 1;
_f pushBack CTI_FACTORY_NAVAL;
_s pushBack "service-medic";
_d pushBack 10;

/*_c pushBack 'sfp_gruppbat';
_p pushBack '';
_n pushBack '';
_o pushBack 300;
_t pushBack 25;
_u pushBack 0;
_f pushBack CTI_FACTORY_NAVAL;
_s pushBack "";
_d pushBack 0;*/

_c pushBack 'rhsusf_mkvsoc';
_p pushBack '';
_n pushBack 'Sppedboat - GMG, HMG, GAU';
_o pushBack 3900;
_t pushBack 25;
_u pushBack 1;
_f pushBack CTI_FACTORY_NAVAL;
_s pushBack "";
_d pushBack 5;

_c pushBack 'sfp_rbb_norrkoping';
_p pushBack '';
_n pushBack 'Norrkoping - Aegis Cruiser';
_o pushBack 48000;
_t pushBack 25;
_u pushBack 2;
_f pushBack CTI_FACTORY_NAVAL;
_s pushBack "";
_d pushBack 50;

_c pushBack 'OFPS_Frigate_CSAT';
_p pushBack '';
_n pushBack 'NAZAC - Frigate';
_o pushBack 120000;
_t pushBack 25;
_u pushBack 3;
_f pushBack CTI_FACTORY_NAVAL;
_s pushBack "service-medic";
_d pushBack 130;

_c pushBack 'sab_l19_sea_1';
_p pushBack '';
_n pushBack '';
_o pushBack 15000;
_t pushBack 25;
_u pushBack 2;
_f pushBack CTI_FACTORY_NAVAL;
_s pushBack "service-medic";
_d pushBack 13;


[_side, _faction, _c, _p, _n, _o, _t, _u, _f, _s, _d] call compile preprocessFileLineNumbers "Common\Config\Units\Set_Units.sqf";

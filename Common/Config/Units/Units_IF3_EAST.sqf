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

_c pushBack 'LIB_US_rifleman';
_p pushBack '';
_n pushBack ''; 
_o pushBack 500;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'LIB_SOV_smgunner';
_p pushBack '';
_n pushBack ''; 
_o pushBack 1200;
_t pushBack 5;
_u pushBack 2;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'LIB_US_AT_soldier';
_p pushBack '';
_n pushBack ''; 
_o pushBack 2000;
_t pushBack 5;
_u pushBack 3;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'LIB_US_tank_crew';
_p pushBack '';
_n pushBack ''; 
_o pushBack 250;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'LIB_SOV_AT_grenadier';
_p pushBack '';
_n pushBack ''; 
_o pushBack 700;
_t pushBack 5;
_u pushBack 1;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'LIB_SOV_sapper';
_p pushBack '';
_n pushBack ''; 
_o pushBack 600;
_t pushBack 5;
_u pushBack 3;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'LIB_wp_medic';
_p pushBack '';
_n pushBack ''; 
_o pushBack 400;
_t pushBack 5;
_u pushBack 1;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'LIB_SOV_assault_mgunner';
_p pushBack '';
_n pushBack ''; 
_o pushBack 6000;
_t pushBack 5;
_u pushBack 3;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'LIB_US_pilot';
_p pushBack '';
_n pushBack ''; 
_o pushBack 300;
_t pushBack 5;
_u pushBack 1;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'LIB_SOV_scout_sniper';
_p pushBack '';
_n pushBack ''; 
_o pushBack 8000;
_t pushBack 5;
_u pushBack 3;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'LIB_US_captain';
_p pushBack '';
_n pushBack ''; 
_o pushBack 750;
_t pushBack 5;
_u pushBack 3;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;




//--- Light Vehicles   
_c pushBack 'LIB_US_Willys_MB';
_p pushBack '';
_n pushBack '';
_o pushBack 500;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'LIB_US_GMC_Open';
_p pushBack '';
_n pushBack '';
_o pushBack 800;
_t pushBack 10;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'LIB_US_Scout_m3';
_p pushBack '';
_n pushBack ''; 
_o pushBack 2500;
_t pushBack 15;
_u pushBack 2;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'LIB_US_GMC_Tent';
_p pushBack '';
_n pushBack ''; 
_o pushBack 1000;
_t pushBack 20;
_u pushBack 3;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'LIB_US_M3_Halftrack';
_p pushBack '';
_n pushBack ''; 
_o pushBack 8000;
_t pushBack 20;
_u pushBack 3;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

//--- Heavy Vehicles

_c pushBack 'LIB_SU85';
_p pushBack '';
_n pushBack '';
_o pushBack 15000;
_t pushBack 30;
_u pushBack 0;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'LIB_M4A3_75';
_p pushBack '';
_n pushBack '';
_o pushBack 20000;
_t pushBack 30;
_u pushBack 1;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'LIB_M4A3_75_Tubes';
_p pushBack '';
_n pushBack '';
_o pushBack 22000;
_t pushBack 30;
_u pushBack 2;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'LIB_JS2_43';
_p pushBack '';
_n pushBack '';
_o pushBack 50000;
_t pushBack 30;
_u pushBack 3;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "service-repairtruck";
_d pushBack 0;

//--- Repair Vehicles

_c pushBack 'LIB_US_GMC_Parm';
_p pushBack '';
_n pushBack '';
_o pushBack 5000;
_t pushBack 30;
_u pushBack 0;
_f pushBack CTI_FACTORY_REPAIR;
_s pushBack "service-repairtruck";
_d pushBack 0;

//---Medic Truck

_c pushBack 'LIB_US_GMC_Ambulance';
_p pushBack '';
_n pushBack '';
_o pushBack 8000;
_t pushBack 30;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "service-medic";
_d pushBack 0;

//--- Ammo Vehicles

_c pushBack 'LIB_US_GMC_Ammo';
_p pushBack '';
_n pushBack '';
_o pushBack 5000;
_t pushBack 30;
_u pushBack 0;
_f pushBack CTI_FACTORY_AMMO;
_s pushBack "service-ammotruck";
_d pushBack 0;

//--Fuel Truck

_c pushBack 'lib_zis5v_fuel';
_p pushBack '';
_n pushBack '';
_o pushBack 2500;
_t pushBack 30;
_u pushBack 0;
_f pushBack CTI_FACTORY_REPAIR;
_s pushBack "service-fueltruck";
_d pushBack 0;


//--- Air Vehicles


_c pushBack 'LIB_US_NAC_P39_2';
_p pushBack '';
_n pushBack '';
_o pushBack 25000;
_t pushBack 50;
_u pushBack 1;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'LIB_P47';
_p pushBack '';
_n pushBack '';
_o pushBack 40000;
_t pushBack 40;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'LIB_Pe2';
_p pushBack '';
_n pushBack '';
_o pushBack 60000;
_t pushBack 40;
_u pushBack 3;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

[_side, _faction, _c, _p, _n, _o, _t, _u, _f, _s, _d] call compile preprocessFileLineNumbers "Common\Config\Units\Set_Units.sqf";

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

_c pushBack 'LIB_GER_rifleman';
_p pushBack '';
_n pushBack ''; 
_o pushBack 500;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'LIB_GER_stggunner';
_p pushBack '';
_n pushBack ''; 
_o pushBack 1200;
_t pushBack 5;
_u pushBack 2;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'LIB_GER_AT_soldier';
_p pushBack '';
_n pushBack ''; 
_o pushBack 2000;
_t pushBack 5;
_u pushBack 3;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'LIB_GER_tank_crew';
_p pushBack '';
_n pushBack ''; 
_o pushBack 250;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'LIB_GER_AT_grenadier';
_p pushBack '';
_n pushBack ''; 
_o pushBack 700;
_t pushBack 5;
_u pushBack 1;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'LIB_GER_sapper';
_p pushBack '';
_n pushBack ''; 
_o pushBack 600;
_t pushBack 5;
_u pushBack 3;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'LIB_GER_medic';
_p pushBack '';
_n pushBack ''; 
_o pushBack 400;
_t pushBack 5;
_u pushBack 1;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'LIB_GER_mgunner';
_p pushBack '';
_n pushBack ''; 
_o pushBack 6000;
_t pushBack 5;
_u pushBack 3;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'LIB_GER_pilot';
_p pushBack '';
_n pushBack ''; 
_o pushBack 300;
_t pushBack 5;
_u pushBack 1;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'LIB_GER_scout_sniper';
_p pushBack '';
_n pushBack ''; 
_o pushBack 8000;
_t pushBack 5;
_u pushBack 3;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'LIB_GER_lieutenant';
_p pushBack '';
_n pushBack ''; 
_o pushBack 750;
_t pushBack 5;
_u pushBack 3;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;




//--- Light Vehicles   
_c pushBack 'LIB_kfz1';
_p pushBack '';
_n pushBack '';
_o pushBack 500;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'LIB_opelblitz_open_y_camo';
_p pushBack '';
_n pushBack '';
_o pushBack 800;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'LIB_kfz1_MG42';
_p pushBack '';
_n pushBack ''; 
_o pushBack 2500;
_t pushBack 15;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'LIB_SdKfz251_FFV';
_p pushBack '';
_n pushBack ''; 
_o pushBack 10000;
_t pushBack 20;
_u pushBack 4;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'LIB_SdKfz_7_AA';
_p pushBack '';
_n pushBack ''; 
_o pushBack 30000;
_t pushBack 20;
_u pushBack 5;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

//--- Heavy Vehicles

_c pushBack 'LIB_StuG_III_G';
_p pushBack '';
_n pushBack '';
_o pushBack 15000;
_t pushBack 30;
_u pushBack 0;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'LIB_PzKpfwIV_H';
_p pushBack '';
_n pushBack '';
_o pushBack 25000;
_t pushBack 30;
_u pushBack 1;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'LIB_PzKpfwV';
_p pushBack '';
_n pushBack '';
_o pushBack 35000;
_t pushBack 30;
_u pushBack 2;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'LIB_PzKpfwVI_E_1';
_p pushBack '';
_n pushBack '';
_o pushBack 40000;
_t pushBack 30;
_u pushBack 3;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'LIB_PzKpfwVI_B';
_p pushBack '';
_n pushBack '';
_o pushBack 50000;
_t pushBack 30;
_u pushBack 4;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "service-repairtruck";
_d pushBack 0;

//--- Repair Vehicles

_c pushBack 'LIB_opelblitz_parm';
_p pushBack '';
_n pushBack '';
_o pushBack 5000;
_t pushBack 30;
_u pushBack 0;
_f pushBack CTI_FACTORY_REPAIR;
_s pushBack "service-repairtruck";
_d pushBack 0;

//---Medic Truck

_c pushBack 'LIB_DAK_opelblitz_ambulance';
_p pushBack '';
_n pushBack '';
_o pushBack 8000;
_t pushBack 30;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "service-medic";
_d pushBack 0;

//--- Ammo Vehicles

_c pushBack 'LIB_opelblitz_ammo';
_p pushBack '';
_n pushBack '';
_o pushBack 5000;
_t pushBack 30;
_u pushBack 0;
_f pushBack CTI_FACTORY_AMMO;
_s pushBack "service-ammotruck";
_d pushBack 0;

//--Fuel Truck

_c pushBack 'LIB_opelblitz_fuel';
_p pushBack '';
_n pushBack '';
_o pushBack 2500;
_t pushBack 30;
_u pushBack 0;
_f pushBack CTI_FACTORY_REPAIR;
_s pushBack "service-fueltruck";
_d pushBack 0;


//--- Air Vehicles


_c pushBack 'LIB_Ju87_Italy';
_p pushBack '';
_n pushBack '';
_o pushBack 40000;
_t pushBack 40;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'LIB_FW190F8_2';
_p pushBack '';
_n pushBack '';
_o pushBack 30000;
_t pushBack 50;
_u pushBack 1;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;



[_side, _faction, _c, _p, _n, _o, _t, _u, _f, _s, _d] call compile preprocessFileLineNumbers "Common\Config\Units\Set_Units.sqf";

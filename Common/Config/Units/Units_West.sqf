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
//_c pushBack 'B_Soldier_A_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 75;
//_t pushBack 5;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'B_soldier_AA_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 500;
//_t pushBack 5;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'B_soldier_AT_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 450;
//_t pushBack 5;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'B_soldier_AR_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 100;
//_t pushBack 5;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'B_HeavyGunner_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 100;
//_t pushBack 5;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'B_crew_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 75;
//_t pushBack 5;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'B_engineer_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 120;
//_t pushBack 5;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'B_soldier_exp_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 110;
//_t pushBack 5;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'B_Soldier_GL_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 100;
//_t pushBack 5;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'B_Helipilot_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 75;
//_t pushBack 5;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'B_soldier_M_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 125;
//_t pushBack 5;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'B_medic_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 100;
//_t pushBack 5;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'B_officer_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 100;
//_t pushBack 5;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'B_Soldier_TL_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 100;
//_t pushBack 5;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'B_Soldier_SL_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 100;
//_t pushBack 5;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'B_Soldier_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 75;
//_t pushBack 5;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'B_soldier_PG_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 100;
//_t pushBack 5;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'B_Soldier_lite_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack CTI_BASE_WORKERS_PRICE;
//_t pushBack 5;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'B_soldier_repair_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 100;
//_t pushBack 5;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'B_sniper_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 250;
//_t pushBack 5;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'B_spotter_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 120;
//_t pushBack 5;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'B_soldier_LAT_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 200;
//_t pushBack 5;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'B_soldier_UAV_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 250;
//_t pushBack 5;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'B_diver_TL_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 250;
//_t pushBack 5;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'B_diver_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 250;
//_t pushBack 5;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_BARRACKS;
//_s pushBack "";
//_d pushBack 0;

//--- Light Vehicles

//_c pushBack 'B_Quadbike_01_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 200;
//_t pushBack 10;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'B_G_Offroad_01_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 300;
//_t pushBack 10;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'B_G_Offroad_01_armed_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 400;
//_t pushBack 10;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'C_Van_01_transport_F'; 
//_p pushBack '';
//_n pushBack '';
//_o pushBack 500;
//_t pushBack 15;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'B_Truck_01_transport_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 300;
//_t pushBack 15;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'B_MRAP_01_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 325;
//_t pushBack 15;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'B_MRAP_01_hmg_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 800;
//_t pushBack 20;
//_u pushBack 3;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'B_MRAP_01_gmg_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 900;
//_t pushBack 20;
//_u pushBack 3;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'B_Truck_01_medical_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 4000;
//_t pushBack 20;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "service-medic";
//_d pushBack 0;

_c pushBack 'B_Slingload_01_Medevac_F';   
_p pushBack '';
_n pushBack (format ["Slingload Respawn - Range %1 m",CTI_RESPAWN_MOBILE_RANGE]);
_o pushBack 6000;
_t pushBack 20;
_u pushBack 3;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "service-medic";
_d pushBack 0;

//_c pushBack 'B_UGV_01_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 800;
//_t pushBack 20;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'B_UGV_01_rcws_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 1000;
//_t pushBack 20;
//_u pushBack 3;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'O_Truck_03_device_F';
//_p pushBack '';
//_n pushBack (format ["Nuke Truck"]);
//_o pushBack 60000;
//_t pushBack 25;
//_u pushBack 4;
//_f pushBack CTI_FACTORY_LIGHT;
//_s pushBack "nuke-truck";
//_d pushBack 0; 

//--- Heavy Vehicles

//_c pushBack 'B_APC_Wheeled_01_cannon_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 7000;
//_t pushBack 30;
//_u pushBack 2;
//_f pushBack CTI_FACTORY_HEAVY;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'B_APC_Tracked_01_rcws_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 5000;
//_t pushBack 30;
//_u pushBack 2;
//_f pushBack CTI_FACTORY_HEAVY;
//_s pushBack "";
//_d pushBack 0;

//Slammer105
//_c pushBack 'B_MBT_01_TUSK_F';  
//_p pushBack '';
//_n pushBack '';
//_o pushBack 21000;
//_t pushBack 30;
//_u pushBack 3;
//_f pushBack CTI_FACTORY_HEAVY;
//_s pushBack "";
//_d pushBack 0;

//slammer120
//_c pushBack 'B_MBT_01_cannon_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 24000;
//_t pushBack 30;
//_u pushBack 3;
//_f pushBack CTI_FACTORY_HEAVY;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'B_APC_Tracked_01_AA_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 6000;
//_t pushBack 30;
//_u pushBack 2;
//_f pushBack CTI_FACTORY_HEAVY;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'B_MBT_01_arty_F';
//_p pushBack '';
//_n pushBack 'Artillery Tank';
//_o pushBack 150000;
//_t pushBack 30;
//_u pushBack 3;
//_f pushBack CTI_FACTORY_HEAVY;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'B_MBT_01_mlrs_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 180000;
//_t pushBack 30;
//_u pushBack 3;
//_f pushBack CTI_FACTORY_HEAVY;
//_s pushBack "";
//_d pushBack 0;


//--- Repair Vehicles

_c pushBack 'B_Truck_01_Repair_F';
_p pushBack '';
_n pushBack 'HEMTT Repair';
_o pushBack 10000;
_t pushBack 25;
_u pushBack 0;
_f pushBack CTI_FACTORY_REPAIR;
_s pushBack "service-repairtruck";
_d pushBack 0;

_c pushBack 'B_Slingload_01_Repair_F';  
_p pushBack '';
_n pushBack 'Repair POD';
_o pushBack 8000;
_t pushBack 25;
_u pushBack 0;
_f pushBack CTI_FACTORY_REPAIR;
_s pushBack "service-repairtruck";
_d pushBack 0;

//_c pushBack 'B_Slingload_01_Fuel_F';  
//_p pushBack '';
//_n pushBack 'Fuel POD';
//_o pushBack 1000;
//_t pushBack 25;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_REPAIR;
//_s pushBack "service-fueltruck";
//_d pushBack 0;

_c pushBack 'CTI_Salvager_West';
_p pushBack '';
_n pushBack 'HEMTT Salvager';
_o pushBack CTI_VEHICLES_SALVAGER_PRICE;
_t pushBack 1000;
_u pushBack 0;
_f pushBack CTI_FACTORY_REPAIR;
_s pushBack ["B_Truck_01_box_F","salvager"];
_d pushBack 0;

_c pushBack 'CTI_Salvager_Independent_West';
_p pushBack '';
_n pushBack 'HEMTT Salvager';
_o pushBack CTI_VEHICLES_SALVAGER_PRICE;
_t pushBack 1000;
_u pushBack 0;
_f pushBack CTI_FACTORY_REPAIR;
_s pushBack ["B_Truck_01_box_F","salvager-independent"];
_d pushBack 0;

//_c pushBack 'B_Truck_01_fuel_F';
//_p pushBack '';
//_n pushBack 'HEMTT Fuel';
//_o pushBack 500;
//_t pushBack 25;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_REPAIR;
//_s pushBack "";
//_d pushBack 0;

//--- Ammo Vehicles

_c pushBack 'B_Truck_01_ammo_F';
_p pushBack '';
_n pushBack 'HEMTT Ammo';
_o pushBack 10000;
_t pushBack 25;
_u pushBack 0;
_f pushBack CTI_FACTORY_AMMO;
_s pushBack "service-ammotruck";
_d pushBack 0;

_c pushBack 'B_Slingload_01_Ammo_F';
_p pushBack '';
_n pushBack 'Vehicle Ammo POD';
_o pushBack 8000;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_AMMO;
_s pushBack "service-ammotruck";
_d pushBack 0;

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
_n pushBack 'Gear POD';
_o pushBack 5000;
_t pushBack 15;
_u pushBack 0;
_f pushBack CTI_FACTORY_AMMO;
_s pushBack "service-gear";
_d pushBack 0;


//--- Air Vehicles

//_c pushBack 'B_UAV_02_CAS_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 10000;
//_t pushBack 35;
//_u pushBack 2;
//_f pushBack CTI_FACTORY_AIR;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'B_UAV_02_F';
_p pushBack '';
_n pushBack 'UAV AGM';
_o pushBack 30000;
_t pushBack 35;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;


//_c pushBack 'B_Heli_Light_01_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 2000;
//_t pushBack 35;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_AIR;
//_s pushBack "";
//_d pushBack 0;

//_c pushBack 'B_Heli_Transport_01_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 6000;
//_t pushBack 40;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_AIR;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'B_Heli_Transport_03_F'; 
_p pushBack '';
_n pushBack (format ["HURON Heavy Airlift (DLC ONLY)"]);
_o pushBack 5000;
_t pushBack 40;
_u pushBack 1;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

//_c pushBack 'B_Heli_Light_01_armed_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 12000;
//_t pushBack 50;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_AIR;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'B_Heli_Attack_01_F';
_p pushBack '';
_n pushBack 'AH-99 Blackfoot';
_o pushBack 55000;
_t pushBack 50;
_u pushBack 5;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

//_c pushBack 'B_Plane_CAS_01_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 70000;
//_t pushBack 50;
//_u pushBack 3;
//_f pushBack CTI_FACTORY_AIR;
//_s pushBack "";
//_d pushBack 30;

//--- Naval Vehicles

//_c pushBack 'C_Boat_Civil_01_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 200;
//_t pushBack 15;
//_u pushBack 1;
//_f pushBack CTI_FACTORY_NAVAL;
//_s pushBack "service-medic";
//_d pushBack 0;

//_c pushBack 'B_Boat_Transport_01_F';
//_p pushBack '';
//_n pushBack '';
//_o pushBack 275;
//_t pushBack 15;
//_u pushBack 0;
//_f pushBack CTI_FACTORY_NAVAL;
//_s pushBack "";
//_d pushBack 0;

_c pushBack 'B_Boat_Armed_01_minigun_F';
_p pushBack '';
_n pushBack 'Speedboat GMG, GAU';
_o pushBack 3500;
_t pushBack 25;
_u pushBack 2;
_f pushBack CTI_FACTORY_NAVAL;
_s pushBack "";
_d pushBack 0;

_c pushBack 'B_SDV_01_F';
_p pushBack '';
_n pushBack 'Sub Transport';
_o pushBack 150;
_t pushBack 25;
_u pushBack 0;
_f pushBack CTI_FACTORY_NAVAL;
_s pushBack "";
_d pushBack 0;

_c pushBack 'C_Boat_Civil_01_police_F';
_p pushBack '';
_n pushBack (format ["Respawn - Range %1 m",CTI_RESPAWN_MOBILE_RANGE]);
_o pushBack 2500;
_t pushBack 25;
_u pushBack 0;
_f pushBack CTI_FACTORY_NAVAL;
_s pushBack "service-medic";
_d pushBack 1;

[_side, _faction, _c, _p, _n, _o, _t, _u, _f, _s, _d] call compile preprocessFileLineNumbers "Common\Config\Units\Set_Units.sqf";

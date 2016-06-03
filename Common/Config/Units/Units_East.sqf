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
_c pushBack "Land_Pod_Heli_Transport_04_bench_F";
_p pushBack '';
_n pushBack '';
_o pushBack 200;
_t pushBack 25;
_u pushBack 2;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'O_Soldier_A_F';
_p pushBack '';
_n pushBack '';
_o pushBack 75;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'O_Soldier_AA_F';
_p pushBack '';
_n pushBack '';
_o pushBack 500;
_t pushBack 5;
_u pushBack 1;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

/* Titan AT inf blocked out
_c pushBack 'O_Soldier_AT_F';
_p pushBack '';
_n pushBack '';
_o pushBack 450;
_t pushBack 5;
_u pushBack 1;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;
*/

_c pushBack 'O_Soldier_AR_F';
_p pushBack '';
_n pushBack '';
_o pushBack 100;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'O_crew_F';
_p pushBack '';
_n pushBack '';
_o pushBack 75;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'O_engineer_F';
_p pushBack '';
_n pushBack '';
_o pushBack 120;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'O_soldier_exp_F';
_p pushBack '';
_n pushBack '';
_o pushBack 110;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'O_Soldier_GL_F';
_p pushBack '';
_n pushBack '';
_o pushBack 100;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'O_helipilot_F';
_p pushBack '';
_n pushBack '';
_o pushBack 75;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'O_soldier_M_F';
_p pushBack '';
_n pushBack '';
_o pushBack 125;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'O_medic_F';
_p pushBack '';
_n pushBack '';
_o pushBack 100;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'O_officer_F';
_p pushBack '';
_n pushBack '';
_o pushBack 100;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'O_Soldier_lite_F';
_p pushBack '';
_n pushBack '';
_o pushBack CTI_BASE_WORKERS_PRICE;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'O_Soldier_F';
_p pushBack '';
_n pushBack '';
_o pushBack 75;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'O_soldier_PG_F';
_p pushBack '';
_n pushBack '';
_o pushBack 100;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'O_soldier_repair_F';
_p pushBack '';
_n pushBack '';
_o pushBack 100;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'O_sniper_F';
_p pushBack '';
_n pushBack '';
_o pushBack 250;
_t pushBack 5;
_u pushBack 1;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'O_spotter_F';
_p pushBack '';
_n pushBack '';
_o pushBack 120;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'O_Soldier_LAT_F';
_p pushBack '';
_n pushBack '';
_o pushBack 200;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

_c pushBack 'O_soldier_UAV_F';
_p pushBack '';
_n pushBack '';
_o pushBack 250;
_t pushBack 5;
_u pushBack 1;
_f pushBack CTI_FACTORY_BARRACKS;
_s pushBack "";
_d pushBack 0;

//--- Light Vehicles

_c pushBack 'O_Quadbike_01_F';
_p pushBack '';
_n pushBack '';
_o pushBack 75;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'O_G_Offroad_01_F';
_p pushBack '';
_n pushBack 'Offroad (can load statics)';
_o pushBack 300;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'O_G_Offroad_01_armed_F';
_p pushBack '';
_n pushBack '';
_o pushBack 400;
_t pushBack 10;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'C_Van_01_transport_F'; 
_p pushBack '';
_n pushBack '';
_o pushBack 500;
_t pushBack 15;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'O_Truck_02_transport_F';
_p pushBack '';
_n pushBack '';
_o pushBack 400;
_t pushBack 15;
_u pushBack 0;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'O_Truck_03_transport_F';
_p pushBack '';
_n pushBack '';
_o pushBack 300;
_t pushBack 15;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'O_MRAP_02_F';
_p pushBack '';
_n pushBack '';
_o pushBack 325;
_t pushBack 15;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'O_MRAP_02_hmg_F';
_p pushBack '';
_n pushBack '';
_o pushBack 550;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'O_MRAP_02_gmg_F';
_p pushBack '';
_n pushBack '';
_o pushBack 700;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack 'O_UGV_01_F';
_p pushBack '';
_n pushBack '';
_o pushBack 800;
_t pushBack 20;
_u pushBack 2;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "LoadUGV";
_d pushBack 0; // Radioman - Init LoadUGV script

_c pushBack 'O_UGV_01_rcws_F';
_p pushBack '';
_n pushBack '';
_o pushBack 1000;
_t pushBack 20;
_u pushBack 3;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

_c pushBack "Land_Pod_Heli_Transport_04_medevac_F";
_p pushBack '';
_n pushBack (format ["Slingload Respawn - Range %1 m",CTI_RESPAWN_MOBILE_RANGE]);
_o pushBack 2000;
_t pushBack 25;
_u pushBack 3;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "service-medic";
_d pushBack 0;

_c pushBack 'O_Truck_02_medical_F';
_p pushBack '';
_n pushBack '';
_o pushBack 800;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "service-medic";
_d pushBack 0;

_c pushBack 'O_Truck_03_medical_F';
_p pushBack '';
_n pushBack (format ["Wheeled Respawn - Range %1 m",CTI_RESPAWN_MOBILE_RANGE]);
_o pushBack 4500;
_t pushBack 20;
_u pushBack 1;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "service-medic";
_d pushBack 0;

_c pushBack 'O_APC_Wheeled_02_rcws_F';
_p pushBack '';
_n pushBack '';
_o pushBack 2500;
_t pushBack 30;
_u pushBack 3;
_f pushBack CTI_FACTORY_LIGHT;
_s pushBack "";
_d pushBack 0;

//--- Heavy Vehicles

_c pushBack 'O_APC_Tracked_02_cannon_F';
_p pushBack '';
_n pushBack '';
_o pushBack 10000;
_t pushBack 30;
_u pushBack 2;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'O_MBT_02_cannon_F';
_p pushBack '';
_n pushBack '';
_o pushBack 28000;
_t pushBack 30;
_u pushBack 2;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'O_APC_Tracked_02_AA_F';
_p pushBack '';
_n pushBack '';
_o pushBack 6000;
_t pushBack 30;
_u pushBack 2;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

_c pushBack 'O_MBT_02_arty_F';
_p pushBack '';
_n pushBack '';
_o pushBack 150000;
_t pushBack 30;
_u pushBack 3;
_f pushBack CTI_FACTORY_HEAVY;
_s pushBack "";
_d pushBack 0;

//--- Repair Vehicles

_c pushBack 'O_Truck_02_box_F';
_p pushBack '';
_n pushBack '';
_o pushBack 550;
_t pushBack 25;
_u pushBack 0;
_f pushBack CTI_FACTORY_REPAIR;
_s pushBack "service-repairtruck";
_d pushBack 0;

_c pushBack 'O_Truck_03_repair_F';
_p pushBack '';
_n pushBack '';
_o pushBack 4000;
_t pushBack 25;
_u pushBack 0;
_f pushBack CTI_FACTORY_REPAIR;
_s pushBack "service-repairtruck";
_d pushBack 0;

_c pushBack 'CTI_Salvager_East';
_p pushBack '';
_n pushBack 'Salvage Truck';
_o pushBack CTI_VEHICLES_SALVAGER_PRICE;
_t pushBack 25;
_u pushBack 0;
_f pushBack CTI_FACTORY_REPAIR;
_s pushBack ["O_Truck_02_covered_F","salvager"];
_d pushBack 0;

_c pushBack 'CTI_Salvager_Independent_East';
_p pushBack '';
_n pushBack 'Salvage Truck';
_o pushBack CTI_VEHICLES_SALVAGER_PRICE;
_t pushBack 25;
_u pushBack 0;
_f pushBack CTI_FACTORY_REPAIR;
_s pushBack ["O_Truck_02_covered_F","salvager-independent"];
_d pushBack 0;

_c pushBack "Land_Pod_Heli_Transport_04_fuel_F";
_p pushBack '';
_n pushBack '';
_o pushBack 200;
_t pushBack 25;
_u pushBack 0;
_f pushBack CTI_FACTORY_REPAIR;
_s pushBack "service-fueltruck";
_d pushBack 0;

_c pushBack 'O_Truck_02_fuel_F';
_p pushBack '';
_n pushBack '';
_o pushBack 200;
_t pushBack 25;
_u pushBack 0;
_f pushBack CTI_FACTORY_REPAIR;
_s pushBack "service-fueltruck";
_d pushBack 0;

_c pushBack "Land_Pod_Heli_Transport_04_repair_F";
_p pushBack '';
_n pushBack '';
_o pushBack 2000;
_t pushBack 25;
_u pushBack 0;
_f pushBack CTI_FACTORY_REPAIR;
_s pushBack "service-repairtruck";
_d pushBack 0;

//--- Ammo Vehicles

_c pushBack "Box_East_Wps_F";
_p pushBack '';
_n pushBack 'Empty Crate';
_o pushBack 5;
_t pushBack 5;
_u pushBack 0;
_f pushBack CTI_FACTORY_AMMO;
_s pushBack "";
_d pushBack 0;

_c pushBack "O_supplyCrate_F";
_p pushBack '';
_n pushBack 'Mobile Gear access Crate';
_o pushBack 2000;
_t pushBack 15;
_u pushBack 0;
_f pushBack CTI_FACTORY_AMMO;
_s pushBack "service-gear";
_d pushBack 0;

_c pushBack "Land_Pod_Heli_Transport_04_ammo_F";
_p pushBack '';
_n pushBack 'AmmoPod(vehicle rearm)';
_o pushBack 2000;
_t pushBack 25;
_u pushBack 0;
_f pushBack CTI_FACTORY_AMMO;
_s pushBack "service-ammotruck";
_d pushBack 0;

_c pushBack 'O_Truck_02_Ammo_F';
_p pushBack '';
_n pushBack '';
_o pushBack 2000;
_t pushBack 25;
_u pushBack 0;
_f pushBack CTI_FACTORY_AMMO;
_s pushBack "service-ammotruck";
_d pushBack 0;

//--- Air Vehicles

_c pushBack 'O_UAV_02_F';
_p pushBack '';
_n pushBack '';
_o pushBack 35000;
_t pushBack 35;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'O_UAV_02_CAS_F';
_p pushBack '';
_n pushBack '';
_o pushBack 10000;
_t pushBack 35;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'O_Heli_Light_02_unarmed_F';
_p pushBack '';
_n pushBack '';
_o pushBack 3000;
_t pushBack 35;
_u pushBack 0;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'O_Heli_Transport_04_F'; 
_p pushBack '';
_n pushBack (format ["Heavy Lift(DLC ONLY)"]);
_o pushBack 2000;
_t pushBack 40;
_u pushBack 0;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'O_Heli_Transport_04_ammo_F'; 
_p pushBack '';
_n pushBack (format ["Ammo Heli (DLC ONLY)"]);
_o pushBack 10000;
_t pushBack 40;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "service-ammotruck";
_d pushBack 0;

_c pushBack 'O_Heli_Transport_04_bench_F'; 
_p pushBack '';
_n pushBack (format ["Bench Trans(DLC ONLY)"]);
_o pushBack 4000;
_t pushBack 40;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'O_Heli_Transport_04_covered_F'; 
_p pushBack '';
_n pushBack (format ["Covered Trans(DLC ONLY)"]);
_o pushBack 4500;
_t pushBack 40;
_u pushBack 1;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'O_Heli_Transport_04_medevac_F'; 
_p pushBack '';
_n pushBack (format ["AirRspwn(DLC ONLY)- Range %1 m",CTI_RESPAWN_MOBILE_RANGE]);
_o pushBack 7000;
_t pushBack 40;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "service-medic";
_d pushBack 0;

_c pushBack 'O_Heli_Transport_04_repair_F'; 
_p pushBack '';
_n pushBack (format ["TaruRepr(DLC ONLY)"]);
_o pushBack 10000;
_t pushBack 40;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "service-repairtruck";
_d pushBack 0;

_c pushBack 'O_Heli_Light_02_F';
_p pushBack '';
_n pushBack '';
_o pushBack 30000;
_t pushBack 40;
_u pushBack 2;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'O_Heli_Attack_02_F';
_p pushBack '';
_n pushBack '';
_o pushBack 50000;
_t pushBack 50;
_u pushBack 3;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'O_Heli_Attack_02_black_F';
_p pushBack '';
_n pushBack '';
_o pushBack 50000;
_t pushBack 50;
_u pushBack 3;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;

_c pushBack 'O_Plane_CAS_02_F';
_p pushBack '';
_n pushBack '';
_o pushBack 70000;
_t pushBack 50;
_u pushBack 3;
_f pushBack CTI_FACTORY_AIR;
_s pushBack "";
_d pushBack 0;


//--- Naval Vehicles

_c pushBack 'C_Boat_Civil_01_F';
_p pushBack '';
_n pushBack '';
_o pushBack 200;
_t pushBack 15;
_u pushBack 1;
_f pushBack CTI_FACTORY_NAVAL;
_s pushBack "service-medic";
_d pushBack 0;

_c pushBack 'O_Boat_Transport_01_F';
_p pushBack '';
_n pushBack '';
_o pushBack 275;
_t pushBack 15;
_u pushBack 0;
_f pushBack CTI_FACTORY_NAVAL;
_s pushBack "";
_d pushBack 0;

_c pushBack 'O_Boat_Armed_01_hmg_F';
_p pushBack '';
_n pushBack '';
_o pushBack 750;
_t pushBack 25;
_u pushBack 1;
_f pushBack CTI_FACTORY_NAVAL;
_s pushBack "";
_d pushBack 0;

_c pushBack 'O_SDV_01_F';
_p pushBack '';
_n pushBack '';
_o pushBack 100;
_t pushBack 25;
_u pushBack 0;
_f pushBack CTI_FACTORY_NAVAL;
_s pushBack "";
_d pushBack 0;

_c pushBack 'C_Boat_Civil_01_rescue_F';
_p pushBack '';
_n pushBack (format ["Respawn - Range %1 m",CTI_RESPAWN_MOBILE_RANGE]);
_o pushBack 2500;
_t pushBack 25;
_u pushBack 1;
_f pushBack CTI_FACTORY_NAVAL;
_s pushBack "service-medic";
_d pushBack 30;

[_side, _faction, _c, _p, _n, _o, _t, _u, _f, _s, _d] call compile preprocessFileLineNumbers "Common\Config\Units\Set_Units.sqf";
private ["_faction", "_i", "_p", "_side", "_u"];

_side = _this;
_faction = "West";

_i = [];
_u = [];
_p = [];

//--- Magazines

//LIB_P38 Pistol Nazi ammo
_i pushBack"lib_8Rnd_9x19";
_u pushBack 0;
_p pushBack 50;

//LIB_FLARE_PISTOL  ammo
_i pushBack"lib_1Rnd_flare_white";
_u pushBack 0;
_p pushBack 25;

_i pushBack"lib_1Rnd_flare_red";
_u pushBack 1;
_p pushBack 25;

_i pushBack"lib_1Rnd_flare_green";
_u pushBack 1;
_p pushBack 25;

_i pushBack"lib_1Rnd_flare_yellow";
_u pushBack 1;
_p pushBack 25;

//LIB_K98,LIB_G43,LIB_K98ZF39 ammo
_i pushBack"lib_5Rnd_792x57";
_u pushBack 0;
_p pushBack 50;

_i pushBack"lib_5Rnd_792x57_t";
_u pushBack 1;
_p pushBack 65;

_i pushBack"lib_5Rnd_792x57_sS";
_u pushBack 1;
_p pushBack 70;

_i pushBack"lib_5Rnd_792x57_SMK";
_u pushBack 1;
_p pushBack 75;

//LIB_G43 Nazi Semi auto rifle ammo
_i pushBack"lib_10Rnd_792x57";
_u pushBack 1;
_p pushBack 50;

_i pushBack"lib_10Rnd_792x57_T";
_u pushBack 1;
_p pushBack 80;

_i pushBack"lib_10Rnd_792x57_T2";
_u pushBack 1;
_p pushBack 80;

_i pushBack"lib_10Rnd_792x57_sS";
_u pushBack 1;
_p pushBack 90;

_i pushBack"lib_10Rnd_792x57_SMK";
_u pushBack 1;
_p pushBack 95;

//LIB_MP40 ammo
_i pushBack"LIB_32Rnd_9x19";
_u pushBack 2;
_p pushBack 100;

//LIB_MP44 ammo
_i pushBack"lib_30Rnd_792x33";
_u pushBack 3;
_p pushBack 200;

//LIB_MG42 nazi machine gun ammo
_i pushBack"lib_50Rnd_792x57";
_u pushBack 4;
_p pushBack 400;

_i pushBack"lib_50Rnd_792x57_SMK";
_u pushBack 4;
_p pushBack 420;

_i pushBack"lib_50Rnd_792x57_sS";
_u pushBack 4;
_p pushBack 450;


//LIB_RPzB AT ammo nazi
_i pushBack "LIB_1Rnd_RPzB";
_u pushBack 0;
_p pushBack 600;

//LIB_PzFaust_30m  AT ammo nazi
_i pushBack"1Rnd_LIB_PzFaust_30m";
_u pushBack 3;
_p pushBack 800;


//Bombs and grenades
_i pushBack "LIB_shg24";  //stick greande
_u pushBack 0;
_p pushBack 150;

_i pushBack "LIB_shg24x7"; //stick grenade x 7
_u pushBack 1;
_p pushBack 500;

_i pushBack "LIB_US_M18"; //smoke
_u pushBack 0;
_p pushBack 100;

_i pushBack "LIB_US_M18_Green";
_u pushBack 1;
_p pushBack 100;

_i pushBack "LIB_US_M18_Red";
_u pushBack 1;
_p pushBack 100;

_i pushBack "LIB_US_M18_Yellow";
_u pushBack 1;
_p pushBack 100;

_i pushBack"LIB_TMI_42_MINE_mag";//German TMI-42 AT mine
_u pushBack 1;
_p pushBack 500;

_i pushBack"LIB_SMI_35_MINE_mag";//Nazi SMi-35 anti-infantry mine
_u pushBack 1;
_p pushBack 300;

_i pushBack"LIB_STMI_MINE_mag";//Nazi StMi mine
_u pushBack 1;
_p pushBack 350;

_i pushBack"LIB_shumine_42_MINE_mag";//Nazi Schuetzenmine 42
_u pushBack 2;
_p pushBack 450;

_i pushBack"LIB_TROTIL_MINE_mag";//Nazi Satchel charge (1 kg)
_u pushBack 2;
_p pushBack 150;

_i pushBack"LIB_MARKER_MINE_mag";//Flag
_u pushBack 0;
_p pushBack 10;




//--- Weapons

//Pistol
_i pushBack"LIB_P38";//Walther P38
_u pushBack 0;
_p pushBack 200;

_i pushBack"LIB_FLARE_PISTOL";//Flare Pistol
_u pushBack 0;
_p pushBack 10;

//Rifle
_i pushBack"LIB_K98";//Kar98k
_u pushBack 0;
_p pushBack 400;

_i pushBack"LIB_G43";//G43
_u pushBack 1;
_p pushBack 600;


//SMG
_i pushBack"LIB_MP40";//MP 40
_u pushBack 2;
_p pushBack 1000;

_i pushBack"LIB_MP44";//MP 44
_u pushBack 3;
_p pushBack 2000;

//MG
_i pushBack"LIB_MG42";//MG 42
_u pushBack 4;
_p pushBack 4000;

//Sniper
_i pushBack"LIB_K98ZF39";//Kar98k ZF39
_u pushBack 4;
_p pushBack 3000;

//Launchers
_i pushBack"LIB_RPzB";//RPzB heavier than Panzerfaust
_u pushBack 0;
_p pushBack 1000;

_i pushBack"LIB_PzFaust_30m";//PanzerFaust 30
_u pushBack 3;
_p pushBack 1500;




//--- Uniforms

_i pushBack"U_LIB_GER_Soldier_camo";//Trooper camo clothing
_u pushBack 1;
_p pushBack 200;

_i pushBack"U_LIB_GER_LW_pilot";//Pilot's clothing
_u pushBack 0;
_p pushBack 50;

_i pushBack"U_LIB_GER_Officer_camo";//Officer camo clothing
_u pushBack 1;
_p pushBack 250;

_i pushBack"U_LIB_GER_Funker";//Funker camo clothing
_u pushBack 1;
_p pushBack 250;

_i pushBack"U_LIB_GER_Schutze";//Schutze clothing
_u pushBack 0;
_p pushBack 100;

_i pushBack"U_LIB_GER_Gefreiter";//Gefreiter clothing
_u pushBack 0;
_p pushBack 50;

_i pushBack"U_LIB_GER_Recruit";//Recruit clothing
_u pushBack 0;
_p pushBack 50;

_i pushBack"U_LIB_GER_Medic";//Medic clothing
_u pushBack 0;
_p pushBack 50;

_i pushBack"U_LIB_GER_Leutnant";//Leutnant clothing
_u pushBack 0;
_p pushBack 150;

_i pushBack"U_LIB_GER_Scharfschutze";//Oberst clothing
_u pushBack 3;
_p pushBack 200;

_i pushBack"U_LIB_GER_MG_schutze";//Gefreiter clothing (rolled up sleeves)
_u pushBack 0;
_p pushBack 50;


_i pushBack"U_LIB_GER_Tank_crew_private";//Tank crew clothing
_u pushBack 0;
_p pushBack 150;

_i pushBack"U_LIB_GER_Tank_crew_unterofficer";//Tank crew clothing (Unterofficer)
_u pushBack 1;
_p pushBack 250;

_i pushBack"U_LIB_GER_Tank_crew_leutnant";//Tank crew clothing (Oberleutnant)
_u pushBack 3;
_p pushBack 350;

_i pushBack"U_LIB_GER_Spg_crew_private";//SPG crew clothing
_u pushBack 1;
_p pushBack 150;

_i pushBack"U_LIB_GER_Spg_crew_unterofficer";//SPG crew clothing (Unterofficer)
_u pushBack 1;
_p pushBack 250;

_i pushBack"U_LIB_GER_Spg_crew_leutnant";//SPG crew clothing (Oberleutnant)
_u pushBack 1;
_p pushBack 250;

//--- Vests

_i pushBack"V_LIB_GER_VestMP40";//Wehrmacht vest (MP 40)
_u pushBack 2;
_p pushBack 250;

_i pushBack"V_LIB_GER_VestSTG";//Wehrmacht vest (STG)
_u pushBack 3;
_p pushBack 350;

_i pushBack"V_LIB_GER_VestKar98";//Wehrmacht vest (Kar98)
_u pushBack 0;
_p pushBack 100;

_i pushBack"V_LIB_GER_VestG43";//Wehrmacht vest (G43)
_u pushBack 1;
_p pushBack 150;

_i pushBack"V_LIB_GER_SniperBelt";//Sniper belt (Kar98)
_u pushBack 4;
_p pushBack 150;

_i pushBack"V_LIB_GER_VestMG";//Wehrmacht vest (MG)
_u pushBack 4;
_p pushBack 450;


_i pushBack"V_LIB_GER_TankPrivateBelt";//Panzerwaffe crew belt
_u pushBack 3;
_p pushBack 350;

_i pushBack"V_LIB_GER_VestUnterofficer";//Wehrmacht unterofficer vest
_u pushBack 0;
_p pushBack 150;

_i pushBack"V_LIB_GER_FieldOfficer";//Wehrmacht field officer vest
_u pushBack 0;
_p pushBack 150;

_i pushBack"V_LIB_GER_OfficerVest";//Wehrmacht officer vest
_u pushBack 0;
_p pushBack 150;

_i pushBack"V_LIB_GER_OfficerBelt";//Wehrmacht officer belt
_u pushBack 0;
_p pushBack 150;

_i pushBack"V_LIB_GER_PrivateBelt";//Wehrmacht support private belt
_u pushBack 0;
_p pushBack 150;

//--- Backpacks

_i pushBack "B_LIB_GER_A_frame";
_u pushBack 0;
_p pushBack 100;

_i pushBack "B_LIB_GER_SapperBackpack_empty";
_u pushBack 0;
_p pushBack 200;

_i pushBack "B_LIB_GER_Backpack";
_u pushBack 2;
_p pushBack 800;

_i pushBack "LIB_GrWr34_Bar"; //mortar
_u pushBack 4;
_p pushBack 14000;

_i pushBack "LIB_GrWr34_Bag"; //mortar
_u pushBack 4;
_p pushBack 1000;

_i pushBack "B_LIB_GER_LW_Paradrop"; 
_u pushBack 2;
_p pushBack 200;

_i pushBack "B_LIB_GER_Panzer";
_u pushBack 3;
_p pushBack 300;

_i pushBack "B_LIB_SOV_RA_GasBag";
_u pushBack 1;
_p pushBack 400;

//--- Glasses

_i pushBack "G_LIB_Dust_Goggles";
_u pushBack 0;
_p pushBack 20;

_i pushBack "G_LIB_Headwrap";
_u pushBack 0;
_p pushBack 50;


//--- Helms

_i pushBack"H_LIB_GER_HelmetCamo";//Wehrmacht Helmet (camo)
_u pushBack 2;
_p pushBack 150;

_i pushBack"H_LIB_GER_Helmet";//Wehrmacht Helmet
_u pushBack 0;
_p pushBack 100;

_i pushBack"H_LIB_GER_OfficerCap";//Wehrmacht Officer Cap
_u pushBack 1;
_p pushBack 50;

_i pushBack"H_LIB_GER_Cap";//Wehrmacht Cap
_u pushBack 0;
_p pushBack 50;

_i pushBack"H_LIB_GER_LW_PilotHelmet";//Luftwaffe Pilot helmet
_u pushBack 0;
_p pushBack 50;

_i pushBack"H_LIB_GER_TankOfficerCap";//Tank officer cap
_u pushBack 2;
_p pushBack 50;

_i pushBack"H_LIB_GER_TankPrivateCap";//Tank crew cap
_u pushBack 1;
_p pushBack 50;

_i pushBack"H_LIB_GER_SPGPrivateCap";//SPG crew cap
_u pushBack 2;
_p pushBack 50;

//--- Accessories

 
//--- Items

_i pushBack"LIB_Binocular_GER";//
_u pushBack 0;
_p pushBack 100;

_i pushBack "ItemMap";
_u pushBack 0;
_p pushBack 10;

_i pushBack "itemradio";
_u pushBack 0;
_p pushBack 100;

_i pushBack "itemcompass";
_u pushBack 0;
_p pushBack 10;

_i pushBack "itemwatch";
_u pushBack 0;
_p pushBack 1;

_i pushBack "Toolkit";
_u pushBack 0;
_p pushBack 750;

_i pushBack "FirstAidKit";
_u pushBack 0;
_p pushBack 150;

_i pushBack "Medikit";
_u pushBack 0;
_p pushBack 400;

[_faction, _i, _u, _p] call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_Config_Set.sqf";

//--- Templates (Those lines can be generated in the RPT on purchase by uncommenting the diag_log in Events_UI_GearMenu.sqf >> "onPurchase").
_t = [];

[_faction, _t] call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_Template_Set.sqf"; 

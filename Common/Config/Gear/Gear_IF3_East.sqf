private ["_faction", "_i", "_p", "_side", "_u"];

_side = _this;
_faction = "East";

_i = [];
_u = [];
_p = [];

//--- Magazines

//LIB_TT33 Pistol Soviet ammo
_i pushBack "lib_8Rnd_762x25";
_u pushBack 1;
_p pushBack 50;

//LIB_M1895 7 shot Soviet Revolver ammo
_i pushBack "lib_7Rnd_762x38";
_u pushBack 0;
_p pushBack 25;

//LIB_Colt_M1911 pistol ammo
_i pushBack "LIB_7Rnd_45ACP";
_u pushBack 2;
_p pushBack 60;

//LIB_FLARE_PISTOL  ammo
_i pushBack "lib_1Rnd_flare_white";
_u pushBack 0;
_p pushBack 25;

_i pushBack "lib_1Rnd_flare_red";
_u pushBack 1;
_p pushBack 25;

_i pushBack "lib_1Rnd_flare_green";
_u pushBack 1;
_p pushBack 25;

_i pushBack "lib_1Rnd_flare_yellow";
_u pushBack 1;
_p pushBack 25;

//LIB_M9130,LIB_SVT_40,LIB_M9130PU soviet semi auto rifle
_i pushBack "lib_5Rnd_762x54";
_u pushBack 0;
_p pushBack 50;

_i pushBack "lib_5Rnd_762x54_t46";
_u pushBack 0;
_p pushBack 50;

_i pushBack "lib_5Rnd_762x54_t30";
_u pushBack 0;
_p pushBack 50;

_i pushBack "lib_5Rnd_762x54_D";
_u pushBack 0;
_p pushBack 50;

//LIB_SVT_40  Soviet semi auto rifle
_i pushBack "lib_10Rnd_762x54";
_u pushBack 0;
_p pushBack 50;

_i pushBack "lib_10Rnd_762x54_t46";
_u pushBack 1;
_p pushBack 50;

_i pushBack "lib_10Rnd_762x54_t30";
_u pushBack 1;
_p pushBack 50;

_i pushBack "lib_10Rnd_762x54_t462";
_u pushBack 1;
_p pushBack 50;

_i pushBack "lib_10Rnd_762x54_t302";
_u pushBack 1;
_p pushBack 50;

_i pushBack "lib_10Rnd_762x54_d";
_u pushBack 1;
_p pushBack 50;

//LIB_M1_Garand usa semi auto rifle
_i pushBack "LIB_8Rnd_762x63";
_u pushBack 0;
_p pushBack 70;

//LIB_M1_Carbine usa semi auto rifle
_i pushBack "LIB_15Rnd_762x33";
_u pushBack 1;
_p pushBack 85;

//LIB_PPSh41_m  soviet sub-machine gun ammo
_i pushBack "lib_35Rnd_762x25";
_u pushBack 2;
_p pushBack 100;

_i pushBack "lib_35Rnd_762x25_t";
_u pushBack 2;
_p pushBack 100;

_i pushBack "lib_35Rnd_762x25_t2";
_u pushBack 2;
_p pushBack 100;

_i pushBack "lib_35Rnd_762x25_ap";
_u pushBack 2;
_p pushBack 150;

//LIB_PPSh41_d soviet sub-machine gun ammo
_i pushBack "lib_71Rnd_762x25";
_u pushBack 3;
_p pushBack 150;

_i pushBack "lib_71Rnd_762x25_t";
_u pushBack 3;
_p pushBack 150;

_i pushBack "lib_71Rnd_762x25_t2";
_u pushBack 3;
_p pushBack 150;

_i pushBack "lib_71Rnd_762x25_ap";
_u pushBack 3;
_p pushBack 150;

//LIB_M1A1_Thompson  usa sub mg ammo
_i pushBack "LIB_30Rnd_45ACP";
_u pushBack 1;
_p pushBack 150;

//LIB_DP28 soviet machine gun ammo
_i pushBack "lib_47Rnd_762x54";
_u pushBack 4;
_p pushBack 400;

_i pushBack "lib_47Rnd_762x54d";
_u pushBack 4;
_p pushBack 400;

//LIB_DT,LIB_DT_OPTIC soviet machine gun ammo
_i pushBack "lib_63Rnd_762x54";
_u pushBack 4;
_p pushBack 500;

_i pushBack "lib_63Rnd_762x54d";
_u pushBack 4;
_p pushBack 500;

//LIB_M1918A2_BAR usa machine gun ammo
_i pushBack "LIB_20Rnd_762x63";
_u pushBack 3;
_p pushBack 50;

//LIB_M1903A4_Springfield usa ammo rifle
_i pushBack "LIB_5Rnd_762x63";
_u pushBack 4;
_p pushBack 200;

//LIB_M1A1_Bazooka AT ammo USA
_i pushBack "LIB_1Rnd_60mm_M6";
_u pushBack 0;
_p pushBack 500;

//Bombs and Grenades
//Grenades
_i pushBack "lib_rpg6";//RPG-6 AT
_u pushBack 1;
_p pushBack 150;

_i pushBack "lib_pwm";//PWM AT
_u pushBack 2;
_p pushBack 100;

_i pushBack "lib_f1";//
_u pushBack 0;
_p pushBack 150;

_i pushBack "lib_rg42";//
_u pushBack 0;
_p pushBack 50;

_i pushBack "lib_m39";//
_u pushBack 0;
_p pushBack 50;

_i pushBack "LIB_US_Mk_2";//
_u pushBack 0;
_p pushBack 50;

//Mines
_i pushBack "LIB_PP_MINE_mag";//Soviet Anti-Infantry Mine 
_u pushBack 1;
_p pushBack 150;

_i pushBack "LIB_pomzec_MINE_mag";//Soviet POMZ-2 trip-wire
_u pushBack 1;
_p pushBack 150;

_i pushBack "LIB_Ladung_Small_MINE_mag";//Soviet Сharge
_u pushBack 2;
_p pushBack 250;

_i pushBack "LIB_Ladung_Big_MINE_mag";//Soviet Charge (3 kg)
_u pushBack 3;
_p pushBack 550;

_i pushBack "LIB_Ladung_PM_MINE_mag";//Soviet Detonator
_u pushBack 0;
_p pushBack 50;

_i pushBack "LIB_PM_MINE_mag";//Soviet Detonator
_u pushBack 0;
_p pushBack 50;

_i pushBack "LIB_M3_MINE_mag";//M3 US anti-infantry mine
_u pushBack 0;
_p pushBack 150;

_i pushBack "LIB_PMD6_MINE_mag";//M3 US anti-infantry mine
_u pushBack 2;
_p pushBack 250;

_i pushBack "LIB_TM44_MINE_mag";//TM-44 soviet anti-tank mine
_u pushBack 2;
_p pushBack 350;

_i pushBack "LIB_US_M1A1_ATMINE_mag";//US M1A1 AT mine
_u pushBack 2;
_p pushBack 350;

_i pushBack "LIB_US_M3_MINE_mag";//US M3 AP mine
_u pushBack 2;
_p pushBack 250;

_i pushBack "LIB_US_TNT_4pound_mag";//US 4 pound of TNT
_u pushBack 3;
_p pushBack 850;

_i pushBack "LIB_US_BM10_PM_mag";//US Detonator
_u pushBack 0;
_p pushBack 50;

//--- Weapons

//pistol

_i pushBack "LIB_Colt_M1911";//Colt M1911
_u pushBack 2;
_p pushBack 300;

_i pushBack "LIB_TT33";//Tokarev TT-33
_u pushBack 1;
_p pushBack 200;

_i pushBack "LIB_M1895";//Nagant M1895
_u pushBack 0;
_p pushBack 100;

_i pushBack "LIB_FLARE_PISTOL";//Flare Pistol
_u pushBack 0;
_p pushBack 10;

//Rifle

_i pushBack "LIB_M9130";//Mosin Nagant
_u pushBack 0;
_p pushBack 450;

_i pushBack "LIB_SVT_40";//SVT-40
_u pushBack 1;
_p pushBack 600;

_i pushBack "LIB_M1_Garand";//M1 Garand
_u pushBack 0;
_p pushBack 800;

_i pushBack "LIB_M1_Carbine";//M1 Carbine
_u pushBack 1;
_p pushBack 1200;

//SMG

_i pushBack "LIB_PPSh41_m";//PPSh-41
_u pushBack 2;
_p pushBack 1000;

_i pushBack "LIB_PPSh41_d";//PPSh-41
_u pushBack 3;
_p pushBack 1500;
	
_i pushBack "LIB_M1A1_Thompson";//M1A1 Thompson
_u pushBack 2;
_p pushBack 800;

//LMG
_i pushBack "LIB_DP28";//DP
_u pushBack 4;
_p pushBack 2500;

_i pushBack "LIB_DT";//DT
_u pushBack 2500;
_p pushBack 3;

_i pushBack "LIB_DT_OPTIC";//DT_OPTIC
_u pushBack 4;
_p pushBack 5000;

//HMG
_i pushBack "LIB_M1918A2_BAR";//BAR M1918
_u pushBack 3;
_p pushBack 2000;


//Sniper

_i pushBack "LIB_M9130PU";//Mosin-Nagant rifle PU
_u pushBack 4;
_p pushBack 3000;

_i pushBack "LIB_M1903A4_Springfield";//M1903A4 Springfield
_u pushBack 4;
_p pushBack 3000;

//Launcher
_i pushBack "LIB_M1A1_Bazooka";//M1A1 Bazooka
_u pushBack 0;
_p pushBack 1500;


//--- Uniforms

	//Soviet Uniforms

_i pushBack "U_LIB_SOV_Strelok";//RA Strelok cloths
_u pushBack 0;
_p pushBack 100;

_i pushBack "U_LIB_SOV_Tank_private_field";//RA Tankist Ryadovoi cloths (field)
_u pushBack 1;
_p pushBack 150;

_i pushBack "U_LIB_SOV_Sergeant";//RA Sergeant cloths
_u pushBack 1;
_p pushBack 150;

_i pushBack "U_LIB_SOV_Pilot";//RA Pilot cloths
_u pushBack 0;
_p pushBack 150;

_i pushBack "U_LIB_SOV_Kapitan";//RA Kapitan cloths
_u pushBack 2;
_p pushBack 250;

_i pushBack "U_LIB_SOV_Razvedchik_am";//RA camo cloths (ameba)
_u pushBack 3;
_p pushBack 550;

_i pushBack "U_LIB_SOV_Razvedchik_mix";//RA camo cloths (trophy pants)
_u pushBack 3;
_p pushBack 550;

_i pushBack "U_LIB_SOV_Sniper";//RA Sniper cloths
_u pushBack 4;
_p pushBack 600;

_i pushBack "U_LIB_SOV_Tank_kapitan";//RA tankist cloths (kapitan)
_u pushBack 2;
_p pushBack 250;

	//US Uniforms

_i pushBack "U_LIB_US_Private";//US clothing (private)
_u pushBack 0;
_p pushBack 150;

_i pushBack "U_LIB_US_Sergant";//US clothing (Sergant)
_u pushBack 0;
_p pushBack 200;

_i pushBack "U_LIB_US_Snipe";//US clothing (Sniper)
_u pushBack 4;
_p pushBack 500;

_i pushBack "U_LIB_US_Eng";//US clothing (Engineer)
_u pushBack 1;
_p pushBack 150;

_i pushBack "U_LIB_US_Med";//US clothing (Medic)
_u pushBack 0;
_p pushBack 80;

_i pushBack "U_LIB_US_Off";//US clothing (Lieutenant)
_u pushBack 2;
_p pushBack 100;

_i pushBack "U_LIB_US_Cap";//US clothing (Captain)
_u pushBack 2;
_p pushBack 150;

//--- Vests

_i pushBack "V_LIB_SOV_IShBrVestMG";//IShBr vest (MG)
_u pushBack 3;
_p pushBack 350;

_i pushBack "V_LIB_SOV_IShBrVestPPShMag";//IShB vest (PPSh magazine)
_u pushBack 3;
_p pushBack 350;

_i pushBack "V_LIB_SOV_IShBrVestPPShDisc";//IShB vest (PPSh disc)
_u pushBack 2;
_p pushBack 250;

_i pushBack "V_LIB_SOV_RA_OfficerVest";//RA officer vest
_u pushBack 1;
_p pushBack 150;

_i pushBack "V_LIB_SOV_RA_SniperVest";//RA sniper belt
_u pushBack 4;
_p pushBack 250;

_i pushBack "V_LIB_SOV_RA_Belt";//belt
_u pushBack 0;
_p pushBack 150;

_i pushBack "V_LIB_SOV_RA_TankOfficerSet";//RA Officer set (light)
_u pushBack 0;
_p pushBack 50;

_i pushBack "V_LIB_SOV_RA_PPShBelt";//RA PPSh belt
_u pushBack 2;
_p pushBack 250;

_i pushBack "V_LIB_SOV_RA_MosinBelt";//RA Mosin-Nagant belt
_u pushBack 1;
_p pushBack 150;

_i pushBack "V_LIB_SOV_RA_SVTBelt";//RA SVT belt
_u pushBack 0;
_p pushBack 50;

_i pushBack "V_LIB_SOV_RA_MGBelt";//RA MG belt
_u pushBack 3;
_p pushBack 350;

_i pushBack "V_LIB_SOV_RAZV_SVTBelt";//RA SVT belt (scout)
_u pushBack 0;
_p pushBack 90;

_i pushBack "V_LIB_SOV_RAZV_OfficerVest";//RA Officer vest (scout)
_u pushBack 1;
_p pushBack 90;

_i pushBack "V_LIB_SOV_RAZV_MGBelt";//RA MG belt (scout)
_u pushBack 3;
_p pushBack 350;

_i pushBack "V_LIB_SOV_RAZV_PPShBelt";//RA PPSh belt (scout)
_u pushBack 3;
_p pushBack 350;

_i pushBack "V_LIB_US_Vest_Bar";//US MG vest
_u pushBack 3;
_p pushBack 350;

_i pushBack "V_LIB_US_Vest_Asst_MG";//US MG assistant vest
_u pushBack 4;
_p pushBack 450;

_i pushBack "V_LIB_US_Vest_Carbine";//US M1 Garand carbine vest
_u pushBack 1;
_p pushBack 350;

_i pushBack "V_LIB_US_Vest_Carbine_eng";//US Engineer vest
_u pushBack 1;
_p pushBack 150;

_i pushBack "V_LIB_US_Vest_Garand";//US M1 Garand vest
_u pushBack 0;
_p pushBack 50;

_i pushBack "V_LIB_US_Vest_Grenadier";//US Grenadier vest
_u pushBack 0;
_p pushBack 150;

_i pushBack "V_LIB_US_Vest_Medic";//US Medic vest
_u pushBack 0;
_p pushBack 150;

_i pushBack "V_LIB_US_Vest_Thompson";//US Tommy Gun vest
_u pushBack 3;
_p pushBack 350;

_i pushBack "V_LIB_US_Vest_Thompson_nco";//US Officer vest (Tommy Gun)
_u pushBack 3;
_p pushBack 350;

//--- Backpacks

_i pushBack "B_LIB_US_Bandoleer";  //ammo vest holder
_u pushBack 0;
_p pushBack 150;

_i pushBack "LIB_BM37_Bar"; //mortar tube
_u pushBack 4;
_p pushBack 1400;

_i pushBack "LIB_BM37_Bag"; //mortar tripod
_u pushBack 4;
_p pushBack 1000;

_i pushBack "LIB_Maxim_Bar"; //soviet mg
_u pushBack 3;
_p pushBack 1400;

_i pushBack "LIB_Maxim_Bag"; //soviet tripod mg
_u pushBack 3;
_p pushBack 100;

_i pushBack "B_LIB_SOV_RA_Paradrop"; //paradrop
_u pushBack 0;
_p pushBack 300;

_i pushBack "B_LIB_SOV_RA_MGAmmoBag_Empty"; //ammo bag
_u pushBack 2;
_p pushBack 400;

_i pushBack "B_LIB_SOV_RA_Rucksack2_Green"; //soviet rucksack
_u pushBack 0;
_p pushBack 500;

_i pushBack "B_LIB_SOV_RA_Rucksack2";  //soviet rucksack tan
_u pushBack 0;
_p pushBack 500;

_i pushBack "B_LIB_SOV_RA_Shinel"; //soviet primitive bandoleer for ammo backpack
_u pushBack 2;
_p pushBack 300;

_i pushBack "B_LIB_GER_Tonister34_cowhide"; //rucksack medium
_u pushBack 3;
_p pushBack 600;

_i pushBack "B_LIB_US_Backpack"; //us backpack w/shovel
_u pushBack 0;
_p pushBack 200;

_i pushBack "B_LIB_US_MGbag_Empty"; //us mg bag backpack
_u pushBack 3;
_p pushBack 600;

_i pushBack "B_LIB_US_RocketBag_Empty"; //us rocket bag
_u pushBack 0;
_p pushBack 800;

//--- Glasses

_i pushBack "G_LIB_Dust_Goggles";
_u pushBack 0;
_p pushBack 20;

_i pushBack "G_LIB_Headwrap";
_u pushBack 0;
_p pushBack 50;

//--- Helms

_i pushBack "H_LIB_SOV_RA_PrivateCap";//RA cap
_u pushBack 0;
_p pushBack 50;

_i pushBack "H_LIB_SOV_RA_OfficerCap";//RA Officer cap
_u pushBack 1;
_p pushBack 150;

_i pushBack "H_LIB_SOV_RA_Helmet";//RA Helmet
_u pushBack 0;
_p pushBack 50;

_i pushBack "H_LIB_SOV_TankHelmet";//RA Tank helmet
_u pushBack 0;
_p pushBack 50;

_i pushBack "H_LIB_SOV_PilotHelmet";//RA Pilot helmet
_u pushBack 0;
_p pushBack 50;

_i pushBack "H_LIB_US_Helmet";//US Helmet
_u pushBack 0;
_p pushBack 50;

_i pushBack "H_LIB_US_Helmet_Net";//US Helmet (camo)
_u pushBack 2;
_p pushBack 150;

_i pushBack "H_LIB_US_Helmet_Med";//US Helmet (Medic)
_u pushBack 0;
_p pushBack 50;

_i pushBack "H_LIB_US_Helmet_Cap";//US Helmet (Captain)
_u pushBack 1;
_p pushBack 150;


//--- Accessories

_i pushBack "LIB_ACC_M44_Bayo";//Mosin-Nagant M44 Bayonet Deployed
_u pushBack 1;
_p pushBack 150;
 
//--- Items

_i pushBack "LIB_Binocular_SU";//
_u pushBack 0;
_p pushBack 50;

_i pushBack "ItemMap";
_u pushBack 0;
_p pushBack 2;

_i pushBack "itemradio";
_u pushBack 0;
_p pushBack 3;

_i pushBack "itemcompass";
_u pushBack 0;
_p pushBack 1;

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

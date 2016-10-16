private ["_faction", "_i", "_p", "_side", "_u"];

_side = _this;
_faction = "East";

_i = [];
_u = [];
_p = [];

//************************OFPS Stuff************************

//launchers
_i pushBack "sfp_pskott68";
_u pushBack 1;
_p pushBack 700;

_i pushBack "sfp_grg86";
_u pushBack 1;
_p pushBack 900;

//Launcher ammo

_i pushBack "sfp_pskott68_mag";
_u pushBack 1;
_p pushBack 150;

_i pushBack "sfp_grg_he_mag";
_u pushBack 1;
_p pushBack 150;

_i pushBack "sfp_grg_heat_mag";
_u pushBack 1;
_p pushBack 150;

_i pushBack "sfp_grg_heat_66_mag";
_u pushBack 1;
_p pushBack 150;

_i pushBack "sfp_grg_heat_62_mag";
_u pushBack 1;
_p pushBack 150;

//-- Magazines
_i pushBack "hlc_500rnd_762x51_Belt";
_u pushBack 3;
_p pushBack 100;
/* 
_i pushBack "hlc_500rnd_762x51_Cinematic";
_u pushBack 3;
_p pushBack 1000;

_i pushBack "HLC_wp_M134Painless";
_u pushBack 3;
_p pushBack 8000;
*/

//--Winter Stuff
//Camo
_i pushBack "IP_U_O_CombatUniform_SnowHex";
_u pushBack 0;
_p pushBack 100;

_i pushBack "IP_U_O_CombatUniform_SnowTiger";
_u pushBack 0;
_p pushBack 100;

_i pushBack "IP_U_O_HeliPilotCoveralls_SnowHex";
_u pushBack 0;
_p pushBack 100;

_i pushBack "IP_U_O_OfficerUniform_SnowHex";
_u pushBack 0;
_p pushBack 100;

_i pushBack "IP_U_O_OfficerUniform_SnowTiger";
_u pushBack 0;
_p pushBack 100;

_i pushBack "IP_U_O_PilotCoveralls_SnowHex";
_u pushBack 0;
_p pushBack 100;


//hats

_i pushBack "IP_H_Beret_02CSAT";
_u pushBack 0;
_p pushBack 100;


//helmets

_i pushBack "IP_H_HelmetO_SnowHex";
_u pushBack 0;
_p pushBack 300;

_i pushBack "IP_H_HelmetSpecO_SnowHex";
_u pushBack 0;
_p pushBack 300;

//face

_i pushBack "BW_Balaclava_blk";
_u pushBack 0;
_p pushBack 30;

_i pushBack "AAF_D_Bandmask_G";
_u pushBack 0;
_p pushBack 30;

//vests

_i pushBack "IP_V_HarnessOGL_gryST";
_u pushBack 0;
_p pushBack 300;

_i pushBack "IP_V_HarnessO_gryST";
_u pushBack 0;
_p pushBack 300;

_i pushBack "IP_V_BandollierO_snw";
_u pushBack 0;
_p pushBack 300;
/*
_i pushBack "IP_V_TacVest_SnowHex";
_u pushBack 0;
_p pushBack 300;

_i pushBack "IP_V_TacVest_SnowTiger";
_u pushBack 0;
_p pushBack 300;
*/

//Backpacks
_i pushBack "IP_B_AssaultPack_SnowHex";
_u pushBack 0;
_p pushBack 300;

_i pushBack "IP_B_AssaultPack_SnowTiger";
_u pushBack 0;
_p pushBack 300;

_i pushBack "IP_B_Carryall_SnowHex";
_u pushBack 3;
_p pushBack 300;

_i pushBack "IP_B_Carryall_SnowTiger";
_u pushBack 3;
_p pushBack 300;

_i pushBack "IP_B_FieldPack_SnowHex";
_u pushBack 0;
_p pushBack 300;

_i pushBack "IP_B_FieldPack_SnowTiger";
_u pushBack 0;
_p pushBack 300;

_i pushBack "IP_B_Kitbag_SnowHex";
_u pushBack 0;
_p pushBack 300;

_i pushBack "IP_B_Kitbag_SnowTiger";
_u pushBack 0;
_p pushBack 300;


//pistols

//sub machine guns
_i pushBack "IP_srifle_DMR_04_SnowHex_F";
_u pushBack 4;
_p pushBack 800;


//assault 
_i pushBack "IP_srifle_DMR_05_SnowHex_F";
_u pushBack 5;
_p pushBack 1000;

_i pushBack "IP_srifle_DMR_03_SnowHex_F";
_u pushBack 2;
_p pushBack 600;


//lmg
_i pushBack "IP_MMG_01_SnowHex_F";
_u pushBack 4;
_p pushBack 1000;


//snipers

//support
_i pushBack "IP_launch_O_Titan_short_snw_F";
_u pushBack 4;
_p pushBack 1550;

_i pushBack "IP_launch_O_Titan_snw_F";
_u pushBack 3;
_p pushBack 1500;


//gear

_i pushBack "A3_GPNVG18_BLK_F";
_u pushBack 2;
_p pushBack 1000;

_i pushBack "A3_GPNVG18_F";
_u pushBack 2;
_p pushBack 1000;


//SFP PACK
//-- Grenades
_i pushBack "sfp_handgrenade_shgr07";
_u pushBack 0;
_p pushBack 50;

_i pushBack "sfp_handgrenade_shgr56";
_u pushBack 0;
_p pushBack 50;

_i pushBack "sfp_handgrenade_shgr2000";
_u pushBack 0;
_p pushBack 50;


[_faction, _i, _u, _p] call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_Config_Set.sqf";

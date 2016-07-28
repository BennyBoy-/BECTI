private ["_faction", "_i", "_p", "_side", "_u"];

_side = _this;
_faction = "East";

_i = [];
_u = [];
_p = [];

//************************APEX Stuff************************

//Backpacks
//(Default Pack- medium)
_i pushBack "B_FieldPack_ghex_F";
_u pushBack 0;
_p pushBack 300;

//(Carryall- large)
_i pushBack "B_Carryall_ghex_F";
_u pushBack 2;
_p pushBack 800;

//(SF Harness- very large)
_i pushBack "B_ViperHarness_ghex_F";
_u pushBack 3;
_p pushBack 500;

_i pushBack "B_ViperLightHarness_ghex_F";
_u pushBack 3;
_p pushBack 500;

_i pushBack "B_ViperHarness_blk_F";
_u pushBack 3;
_p pushBack 500;

_i pushBack "B_ViperLightHarness_blk_F";
_u pushBack 3;
_p pushBack 500;

//Vests:
//(Bandolier- small)
_i pushBack "V_BandollierB_ghex_F";
_u pushBack 0;
_p pushBack 300;

//(LBV- large)
_i pushBack "V_HarnessO_ghex_F";
_u pushBack 1;
_p pushBack 400;

_i pushBack "V_HarnessOGL_ghex_F";
_u pushBack 1;
_p pushBack 400;


//Helmets:
//(Assassin)
_i pushBack "H_HelmetSpecO_ghex_F";
_u pushBack 2;
_p pushBack 300;

//(Crew)
_i pushBack "H_HelmetCrew_O_ghex_F";
_u pushBack 0;
_p pushBack 300;

//(Defender)
_i pushBack "H_HelmetLeaderO_ghex_F";
_u pushBack 1;
_p pushBack 300;

//(Protector)
_i pushBack "H_HelmetO_ghex_F";
_u pushBack 1;
_p pushBack 300;

//(Officer)
_i pushBack "H_MilCap_ghex_F";
_u pushBack 0;
_p pushBack 300;

//(Viper)
_i pushBack "H_HelmetO_ViperSP_ghex_F";
_u pushBack 3;
_p pushBack 2000;


//Face
//UNIVERSAL
//(Green Combat Goggles)
_i pushBack "G_Combat_Goggles_tna_F";
_u pushBack 0;
_p pushBack 300;


//NVG:
//UNIVERSAL
_i pushBack "NVGoggles_tna_F";
_u pushBack 0;
_p pushBack 500;

//CSAT
_i pushBack "O_NVGoggles_ghex_F";
_u pushBack 0;
_p pushBack 500;


//Binocs:
//CSAT
_i pushBack "Laserdesignator_02_ghex_F";
_u pushBack 0;
_p pushBack 1000;


//Uniforms:
//CSAT
_i pushBack "U_O_T_Soldier_F";
_u pushBack 0;
_p pushBack 300;

//(Full Ghillie)
_i pushBack "U_O_T_FullGhillie_tna_F";
_u pushBack 2;
_p pushBack 600;

//(Half Ghillie)
_i pushBack "U_O_T_Sniper_F";
_u pushBack 1;
_p pushBack 300;

//(Officer)
_i pushBack "U_O_T_Officer_F";
_u pushBack 0;
_p pushBack 300;

//(Ninja)
_i pushBack "U_O_V_Soldier_Viper_F";
_u pushBack 3;
_p pushBack 1000;

//Guns:
//(Ak-74)
_i pushBack "arifle_AKM_F";
_u pushBack 3;
_p pushBack 500;

//(Ak-74U)
_i pushBack "arifle_AKS_F";
_u pushBack 1;
_p pushBack 300;

//(CAR-95)
_i pushBack "arifle_CTAR_ghex_F";
_u pushBack 1;
_p pushBack 300;

_i pushBack "arifle_CTAR_blk_F";
_u pushBack 1;
_p pushBack 300;

//(CAR-95GL)
_i pushBack "arifle_CTAR_GL_ghex_F";
_u pushBack 1;
_p pushBack 400;

_i pushBack "arifle_CTAR_GL_blk_F";
_u pushBack 1;
_p pushBack 400;

//(CAR-95LMG)
_i pushBack "arifle_CTARS_ghex_F";
_u pushBack 1;
_p pushBack 400;

_i pushBack "arifle_CTARS_blk_F";
_u pushBack 1;
_p pushBack 400;

//(CMR-76 Sniper)
_i pushBack "srifle_DMR_07_ghex_F";
_u pushBack 1;
_p pushBack 400;

_i pushBack "srifle_DMR_07_blk_F";
_u pushBack 1;
_p pushBack 400;

//(GM6 .50)
_i pushBack "srifle_GM6_ghex_F";
_u pushBack 3;
_p pushBack 1000;

//(Type 115 AR/CQB Hybrid)
_i pushBack "arifle_ARX_ghex_F";
_u pushBack 3;
_p pushBack 700;

_i pushBack "arifle_ARX_blk_F";
_u pushBack 3;
_p pushBack 700;

//(Ak-12)
_i pushBack "arifle_AK12_F";
_u pushBack 2;
_p pushBack 500;


//Ammo:
//(Ak-74)
_i pushBack "30Rnd_762x39_Mag_F";
_u pushBack 0;
_p pushBack 40;

_i pushBack "30Rnd_762x39_Mag_Green_F";
_u pushBack 0;
_p pushBack 40;

//(Ak-74U)
_i pushBack "30Rnd_545x39_Mag_Tracer_F";
_u pushBack 1;
_p pushBack 20;

_i pushBack "30Rnd_545x39_Mag_Tracer_Green_F";
_u pushBack 0;
_p pushBack 20;

//(CAR-95)
_i pushBack "30Rnd_580x42_Mag_F";
_u pushBack 0;
_p pushBack 20;

_i pushBack "30Rnd_580x42_Mag_Tracer_F";
_u pushBack 0;
_p pushBack 20;

//(CAR-95LMG)
_i pushBack "100Rnd_580x42_Mag_F";
_u pushBack 0;
_p pushBack 100;

_i pushBack "100Rnd_580x42_Mag_Tracer_F";
_u pushBack 0;
_p pushBack 100;

//(CMR-76 Sniper)
_i pushBack "20Rnd_650x39_Cased_Mag_F";
_u pushBack 0;
_p pushBack 30;

//(Type 115 AR/CQB Hybrid)
_i pushBack "30Rnd_65x39_caseless_green";
_u pushBack 0;
_p pushBack 30;

_i pushBack "30Rnd_65x39_caseless_green_mag_Tracer";
_u pushBack 0;
_p pushBack 30;

_i pushBack "10Rnd_50BW_Mag_F";
_u pushBack 0;
_p pushBack 50;

//(Ak-12)
_i pushBack "30Rnd_762x39_Mag_Tracer_F";
_u pushBack 0;
_p pushBack 40;

_i pushBack "30Rnd_762x39_Mag_Tracer_Green_F";
_u pushBack 0;
_p pushBack 40;

//(RPG-7)
_i pushBack "RPG7_F";
_u pushBack 1;
_p pushBack 150;


//Supressors:
//(Type 115 AR/CQB Hybrid)
_i pushBack "muzzle_snds_65_TI_ghex_F";
_u pushBack 3;
_p pushBack 650;

_i pushBack "muzzle_snds_65_TI_blk_F";
_u pushBack 3;
_p pushBack 650;

//(CAR-95)
_i pushBack "muzzle_snds_58_wdm_F";
_u pushBack 1;
_p pushBack 500;

_i pushBack "muzzle_snds_58_blk_F";
_u pushBack 1;
_p pushBack 500;

//(CMR-76)
_i pushBack "muzzle_snds_H_khk_F";
_u pushBack 1;
_p pushBack 650;

_i pushBack "muzzle_snds_H_blk_F";
_u pushBack 1;
_p pushBack 650;


//Optics:
_i pushBack "optic_Arco_ghex_F";
_u pushBack 1;
_p pushBack 400;

_i pushBack "optic_DMS_ghex_F";
_u pushBack 3;
_p pushBack 800;

_i pushBack "optic_LRPS_ghex_F";
_u pushBack 3;
_p pushBack 800;


//Bipod:
_i pushBack "bipod_01_F_khk";
_u pushBack 0;
_p pushBack 100;


//Launchers:
_i pushBack "launch_RPG32_ghex_F";
_u pushBack 1;
_p pushBack 600;

_i pushBack "launch_O_Titan_ghex_F";
_u pushBack 3;
_p pushBack 3000;

_i pushBack "launch_O_Titan_short_ghex_F";
_u pushBack 3;
_p pushBack 5000;


[_faction, _i, _u, _p] call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_Config_Set.sqf";

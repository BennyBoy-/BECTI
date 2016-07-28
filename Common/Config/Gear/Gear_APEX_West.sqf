private ["_faction", "_i", "_p", "_side", "_u"];

_side = _this;
_faction = "West";

_i = [];
_u = [];
_p = [];

//************************APEX Stuff************************

//Backpacks
//(Assault Pack- small)
_i pushBack "B_AssaultPack_tna_F";
_u pushBack 0;
_p pushBack 300;

//(Bergen- very large)
_i pushBack "B_Bergen_tna_F";
_u pushBack 3;
_p pushBack 800;


//Vests
//(Light Plate- small)
_i pushBack "V_PlateCarrier1_tna_F";
_u pushBack 1;
_p pushBack 300;

_i pushBack "V_PlateCarrier2_tna_F";
_u pushBack 1;
_p pushBack 300;

//(Heavy Plate- large)
_i pushBack "V_PlateCarrierSpec_tna_F";
_u pushBack 2;
_p pushBack 500;

_i pushBack "V_PlateCarrierGL_tna_F";
_u pushBack 2;
_p pushBack 500;


//Helmets:
//(Boonie)
_i pushBack "H_Booniehat_tna_F";
_u pushBack 0;
_p pushBack 5;

//(Kevlar)
_i pushBack "H_HelmetB_tna_F";
_u pushBack 0;
_p pushBack 300;

//(Fancy Kevlar)
_i pushBack "H_HelmetB_Enh_tna_F";
_u pushBack 1;
_p pushBack 300;

//(Extra Fancy Kevlar)
_i pushBack "H_HelmetB_Light_tna_F";
_u pushBack 1;
_p pushBack 300;

//(Officer)
_i pushBack "H_MilCap_tna_F";
_u pushBack 0;
_p pushBack 5;

//(Stealth Combat Helmet)
_i pushBack "H_HelmetB_TI_tna_F";
_u pushBack 3;
_p pushBack 800;


//Face
//UNIVERSAL
//(Green Combat Goggles)
_i pushBack "G_Combat_Goggles_tna_F";
_u pushBack 0;
_p pushBack 5;

//NATO
//(Stealth Balaclava)
_i pushBack "G_Balaclava_TI_blk_F";
_u pushBack 3;
_p pushBack 300;

_i pushBack "G_Balaclava_TI_G_blk_F";
_u pushBack 3;
_p pushBack 300;

_i pushBack "G_Balaclava_TI_tna_F";
_u pushBack 3;
_p pushBack 300;

_i pushBack "G_Balaclava_TI_G_tna_F";
_u pushBack 3;
_p pushBack 300;


//NVG
//UNIVERSAL
_i pushBack "NVGoggles_tna_F";
_u pushBack 0;
_p pushBack 500;

//NATO
_i pushBack "NVGogglesB_grn_F";
_u pushBack 3;
_p pushBack 1500;

_i pushBack "NVGogglesB_blk_F";
_u pushBack 3;
_p pushBack 1500;

_i pushBack "NVGogglesB_gry_F";
_u pushBack 3;
_p pushBack 1500;


//Binocs
_i pushBack "Laserdesignator_01_khk_F";
_u pushBack 3;
_p pushBack 1000;


//Uniforms
_i pushBack "U_B_T_Soldier_AR_F";
_u pushBack 0;
_p pushBack 300;

_i pushBack "U_B_T_Soldier_F";
_u pushBack 0;
_p pushBack 300;

//(CRTG)
_i pushBack "U_B_CTRG_Soldier_F";
_u pushBack 3;
_p pushBack 800;

_i pushBack "U_B_CTRG_Soldier_2_F";
_u pushBack 3;
_p pushBack 800;

_i pushBack "U_B_CTRG_Soldier_3_F";
_u pushBack 3;
_p pushBack 800;

_i pushBack "U_B_CTRG_Soldier_urb_1_F";
_u pushBack 2;
_p pushBack 300;

_i pushBack "U_B_CTRG_Soldier_urb_2_F";
_u pushBack 2;
_p pushBack 300;

_i pushBack "U_B_CTRG_Soldier_urb_3_F";
_u pushBack 2;
_p pushBack 300;

//(Full Ghillie)
_i pushBack "U_B_T_FullGhillie_tna_F";
_u pushBack 3;
_p pushBack 600;

//(Half Ghillie)
_i pushBack "U_B_T_Sniper_F";
_u pushBack 2;
_p pushBack 300;

//(Navy)
_i pushBack "U_B_GEN_Commander_F";
_u pushBack 0;
_p pushBack 300;

_i pushBack "U_B_GEN_Soldier_F";
_u pushBack 0;
_p pushBack 300;

//Guns:
//(M320LRR)
_i pushBack "srifle_LRR_tna_F";
_u pushBack 3;
_p pushBack 1000;

//(MX series)
_i pushBack "arifle_MX_khk_F";
_u pushBack 1;
_p pushBack 400;

_i pushBack "arifle_MX_GL_khk_F";
_u pushBack 1;
_p pushBack 500;

_i pushBack "arifle_MX_SW_khk_F";
_u pushBack 1;
_p pushBack 500;

_i pushBack "arifle_MXC_khk_F";
_u pushBack 1;
_p pushBack 400;

_i pushBack "arifle_MXM_khk_F";
_u pushBack 1;
_p pushBack 400;

//(SPAR-16)
_i pushBack "arifle_SPAR_01_khk_F";
_u pushBack 1;
_p pushBack 300;

_i pushBack "arifle_SPAR_01_blk_F";
_u pushBack 1;
_p pushBack 300;

//(SPAR-16S)
_i pushBack "arifle_SPAR_02_khk_F";
_u pushBack 1;
_p pushBack 350;

_i pushBack "arifle_SPAR_02_blk_F";
_u pushBack 1;
_p pushBack 350;

//(SPAR-17)
_i pushBack "arifle_SPAR_03_khk_F";
_u pushBack 2;
_p pushBack 500;

_i pushBack "arifle_SPAR_03_blk_F";
_u pushBack 2;
_p pushBack 500;

//(Protector SMG)
_i pushBack "SMG_05_F";
_u pushBack 0;
_p pushBack 200;

//(LIM-85 LMG)
_i pushBack "LMG_03_F";
_u pushBack 1;
_p pushBack 400;


//Ammo:
//(SPAR-16)
_i pushBack "30Rnd_556x45_Stanag";
_u pushBack 0;
_p pushBack 20;

_i pushBack "30Rnd_556x45_Stanag_Tracer_Red";
_u pushBack 0;
_p pushBack 20;

_i pushBack "30Rnd_556x45_Stanag_Tracer_Green";
_u pushBack 0;
_p pushBack 20;

_i pushBack "30Rnd_556x45_Stanag_Tracer_Yellow";
_u pushBack 0;
_p pushBack 20;

//(SPAR-16S)
_i pushBack "150Rnd_556x45_Drum_Mag_F";
_u pushBack 0;
_p pushBack 150;

_i pushBack "150Rnd_556x45_Drum_Mag_Tracer_F";
_u pushBack 0;
_p pushBack 150;

//(SPAR-17)
_i pushBack "20Rnd_762x51_Mag";
_u pushBack 0;
_p pushBack 40;

//(LIM-85 LMG)
_i pushBack "200Rnd_556x45_Box_F";
_u pushBack 1;
_p pushBack 200;

_i pushBack "200Rnd_556x45_Box_Tracer_F";
_u pushBack 1;
_p pushBack 200;

_i pushBack "200Rnd_556x45_Box_Tracer_Red_F";
_u pushBack 1;
_p pushBack 200;


//Supressors:
//(Mk-I EMR)
_i pushBack "muzzle_snds_B_khk_F";
_u pushBack 2;
_p pushBack 700;

//(MX Series)
_i pushBack "muzzle_snd";
_u pushBack 1;
_p pushBack 650;

//(Mk-I EMR)
_i pushBack "muzzle_snds_B_khk_F";
_u pushBack 2;
_p pushBack 700;

//(MX Series)
_i pushBack "muzzle_snds_H_khk_F";
_u pushBack 1;
_p pushBack 650;

//(SPAR-17)
_i pushBack "muzzle_snds_B_khk_F";
_u pushBack 2;
_p pushBack 700;

_i pushBack "muzzle_snds_B_blk_F";
_u pushBack 2;
_p pushBack 700;


//Optics:
_i pushBack "optic_ERCO_khk_F";
_u pushBack 0;
_p pushBack 400;

_i pushBack "optic_ERCO_blk_F";
_u pushBack 0;
_p pushBack 400;

_i pushBack "optic_LRPS_tna_F";
_u pushBack 3;
_p pushBack 800;

_i pushBack "optic_Holosight_khk_F";
_u pushBack 0;
_p pushBack 200;

_i pushBack "optic_SOS_khk_F";
_u pushBack 3;
_p pushBack 800;

_i pushBack "optic_Holosight_smg_blk_F";
_u pushBack 0;
_p pushBack 200;

_i pushBack "optic_Hamr_khk_F";
_u pushBack 2;
_p pushBack 400;


//Bipod:
_i pushBack "bipod_01_F_khk";
_u pushBack 0;
_p pushBack 100;


//Launchers:
_i pushBack "launch_B_Titan_tna_F";
_u pushBack 3;
_p pushBack 3000;

_i pushBack "launch_B_Titan_short_tna_F";
_u pushBack 3;
_p pushBack 5000;


[_faction, _i, _u, _p] call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_Config_Set.sqf"; 

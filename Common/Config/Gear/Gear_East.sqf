private ["_faction", "_i", "_p", "_side", "_u"];

_side = _this;
_faction = "West";

_i = [];
_u = [];
_p = [];

//--- Magazines
_i pushBack "ATMine_Range_Mag";
_u pushBack 2;
_p pushBack 300;

_i pushBack "APERSMine_Range_Mag";
_u pushBack 1;
_p pushBack 50;

_i pushBack "APERSBoundingMine_Range_Mag";
_u pushBack 1;
_p pushBack 50;

_i pushBack "SLAMDirectionalMine_Wire_Mag";
_u pushBack 2;
_p pushBack 50;

_i pushBack "APERSTripMine_Wire_Mag";
_u pushBack 1;
_p pushBack 50;

_i pushBack "SatchelCharge_Remote_Mag";
_u pushBack 3;
_p pushBack 500;

_i pushBack "DemoCharge_Remote_Mag";
_u pushBack 2;
_p pushBack 300;

_i pushBack "ClaymoreDirectionalMine_Remote_Mag";
_u pushBack 2;
_p pushBack 50;

_i pushBack "Laserbatteries";
_u pushBack 3;
_p pushBack 10;

_i pushBack "6Rnd_45ACP_Cylinder";
_u pushBack 0;
_p pushBack 10;

_i pushBack "10Rnd_762x54_Mag";  //Rahim 
_u pushBack 1;
_p pushBack 40;

_i pushBack "20Rnd_556x45_UW_mag";  //SDAR
_u pushBack 1;
_p pushBack 30;

_i pushBack "20Rnd_762x51_Mag";
_u pushBack 1;
_p pushBack 40;

_i pushBack "30Rnd_45ACP_Mag_SMG_01";
_u pushBack 0;
_p pushBack 30;

_i pushBack "30Rnd_45ACP_Mag_SMG_01_tracer_green";
_u pushBack 0;
_p pushBack 30;

_i pushBack "30Rnd_556x45_Stanag";  //TRG
_u pushBack 1;
_p pushBack 20;

_i pushBack "30Rnd_556x45_Stanag_Tracer_Red"; //TRG
_u pushBack 1;
_p pushBack 20;

_i pushBack "30Rnd_556x45_Stanag_Tracer_Green"; //TRG
_u pushBack 1;
_p pushBack 20;

_i pushBack "30Rnd_556x45_Stanag_Tracer_Yellow"; //TRG
_u pushBack 1;
_p pushBack 20;

_i pushBack "30Rnd_65x39_caseless_green";  //Katiba
_u pushBack 1;
_p pushBack 30;

_i pushBack "30Rnd_65x39_caseless_green_mag_Tracer"; //Katiba
_u pushBack 1;
_p pushBack 30;

_i pushBack "150Rnd_762x54_Box";  //Zafir
_u pushBack 1;
_p pushBack 150;

_i pushBack "150Rnd_762x54_Box_Tracer";  //Zafir
_u pushBack 1;
_p pushBack 150;

_i pushBack "RPG32_F";
_u pushBack 1;
_p pushBack 300;

_i pushBack "RPG32_HE_F";
_u pushBack 1;
_p pushBack 300;

_i pushBack "Titan_AA";
_u pushBack 3;
_p pushBack 1200;

_i pushBack "Titan_AP";
_u pushBack 3;
_p pushBack 2000;

_i pushBack "Titan_AT";
_u pushBack 3;
_p pushBack 2000;

_i pushBack "16Rnd_9x21_Mag";  //Rook 40
_u pushBack 0;
_p pushBack 20;

_i pushBack "30Rnd_9x21_Mag";  //PDW & STING
_u pushBack 0;
_p pushBack 30;

_i pushBack "9Rnd_45ACP_Mag";  //ACPC2
_u pushBack 0;
_p pushBack 10;

_i pushBack "O_IR_Grenade";
_u pushBack 0;
_p pushBack 1;

_i pushBack "HandGrenade";
_u pushBack 0;
_p pushBack 50;

_i pushBack "MiniGrenade";
_u pushBack 0;
_p pushBack 50;

//_i pushBack "HandGrenade_Stone";
//_u pushBack 0;
//_p pushBack 1;

_i pushBack "SmokeShell";
_u pushBack 0;
_p pushBack 10;

_i pushBack "SmokeShellRed";
_u pushBack 0;
_p pushBack 10;

_i pushBack "SmokeShellGreen";
_u pushBack 0;
_p pushBack 10;

_i pushBack "SmokeShellYellow";
_u pushBack 0;
_p pushBack 10;

_i pushBack "SmokeShellPurple";
_u pushBack 0;
_p pushBack 10;

_i pushBack "SmokeShellOrange";
_u pushBack 0;
_p pushBack 10;

_i pushBack "Chemlight_green";
_u pushBack 0;
_p pushBack 10;

_i pushBack "Chemlight_red";
_u pushBack 0;
_p pushBack 10;

_i pushBack "Chemlight_yellow";
_u pushBack 0;
_p pushBack 10;

_i pushBack "Chemlight_blue";
_u pushBack 0;
_p pushBack 10;

_i pushBack "FlareWhite_F";
_u pushBack 0;
_p pushBack 10;

_i pushBack "FlareGreen_F";
_u pushBack 0;
_p pushBack 10;

_i pushBack "FlareRed_F";
_u pushBack 0;
_p pushBack 10;

_i pushBack "FlareYellow_F";
_u pushBack 0;
_p pushBack 10;

_i pushBack "1Rnd_HE_Grenade_shell";
_u pushBack 0;
_p pushBack 10;

_i pushBack "1Rnd_Smoke_Grenade_shell";
_u pushBack 0;
_p pushBack 10;

_i pushBack "1Rnd_SmokeRed_Grenade_shell";
_u pushBack 0;
_p pushBack 10;

_i pushBack "1Rnd_SmokeGreen_Grenade_shell";
_u pushBack 0;
_p pushBack 10;

_i pushBack "1Rnd_SmokeYellow_Grenade_shell";
_u pushBack 0;
_p pushBack 10;

_i pushBack "1Rnd_SmokePurple_Grenade_shell";
_u pushBack 0;
_p pushBack 10;

_i pushBack "1Rnd_SmokeBlue_Grenade_shell";
_u pushBack 0;
_p pushBack 10;

_i pushBack "1Rnd_SmokeOrange_Grenade_shell";
_u pushBack 0;
_p pushBack 10;

_i pushBack "UGL_FlareWhite_F";
_u pushBack 0;
_p pushBack 10;

_i pushBack "UGL_FlareGreen_F";
_u pushBack 0;
_p pushBack 10;

_i pushBack "UGL_FlareRed_F";
_u pushBack 0;
_p pushBack 10;

_i pushBack "UGL_FlareYellow_F";
_u pushBack 0;
_p pushBack 10;

_i pushBack "UGL_FlareCIR_F";
_u pushBack 0;
_p pushBack 10;

_i pushBack "3Rnd_HE_Grenade_shell";
_u pushBack 1;
_p pushBack 100;

_i pushBack "3Rnd_Smoke_Grenade_shell";
_u pushBack 1;
_p pushBack 15;

_i pushBack "3Rnd_SmokeRed_Grenade_shell";
_u pushBack 1;
_p pushBack 15;

_i pushBack "3Rnd_SmokeGreen_Grenade_shell";
_u pushBack 1;
_p pushBack 15;

_i pushBack "3Rnd_SmokeYellow_Grenade_shell";
_u pushBack 1;
_p pushBack 15;

_i pushBack "3Rnd_SmokePurple_Grenade_shell";
_u pushBack 1;
_p pushBack 15;

_i pushBack "3Rnd_SmokeBlue_Grenade_shell";
_u pushBack 1;
_p pushBack 15;

_i pushBack "3Rnd_SmokeOrange_Grenade_shell";
_u pushBack 1;
_p pushBack 15;

_i pushBack "3Rnd_UGL_FlareWhite_F";
_u pushBack 1;
_p pushBack 15;

_i pushBack "3Rnd_UGL_FlareGreen_F";
_u pushBack 1;
_p pushBack 15;

_i pushBack "3Rnd_UGL_FlareRed_F";
_u pushBack 1;
_p pushBack 15;

_i pushBack "3Rnd_UGL_FlareYellow_F";
_u pushBack 1;
_p pushBack 15;

_i pushBack "3Rnd_UGL_FlareCIR_F";
_u pushBack 1;
_p pushBack 20;

//--- Weapons (Nested array elements are defined but skiped in the gear menu)
_i pushBack "hgun_PDW2000_F";
_u pushBack 0;
_p pushBack 200;

_i pushBack ["hgun_PDW2000_Holo_F"];
_u pushBack 0;
_p pushBack 200;

_i pushBack "arifle_TRG21_F";
_u pushBack 1;
_p pushBack 300;

_i pushBack "arifle_TRG20_F";
_u pushBack 1;
_p pushBack 300;

_i pushBack "arifle_TRG21_GL_F";
_u pushBack 1;
_p pushBack 400;

_i pushBack "SMG_02_F";  //Sting
_u pushBack 0;
_p pushBack 200;

_i pushBack "arifle_SDAR_F";
_u pushBack 0;
_p pushBack 300;

_i pushBack "arifle_Katiba_F";
_u pushBack 1;
_p pushBack 400;

_i pushBack "arifle_Katiba_C_F";
_u pushBack 1;
_p pushBack 400;

_i pushBack "arifle_Katiba_GL_F";
_u pushBack 1;
_p pushBack 500;



_i pushBack "LMG_Zafir_F";
_u pushBack 2;
_p pushBack 600;

_i pushBack "srifle_DMR_01_F";  //Rahim 7.62
_u pushBack 2;
_p pushBack 500;

_i pushBack "srifle_GM6_F";
_u pushBack 3;
_p pushBack 1000;

_i pushBack "srifle_GM6_camo_F";
_u pushBack 3;
_p pushBack 1000;

_i pushBack "5Rnd_127x108_Mag";
_u pushBack 0;
_p pushBack 100;

_i pushBack "5Rnd_127x108_APDS_Mag";
_u pushBack 0;
_p pushBack 100;

_i pushBack "launch_RPG32_F";
_u pushBack 2;
_p pushBack 600;


_i pushBack "launch_O_Titan_F";
_u pushBack 3;
_p pushBack 3000;

_i pushBack "launch_O_Titan_short_F";
_u pushBack 3;
_p pushBack 5000;


_i pushBack "hgun_Rook40_F";
_u pushBack 0;
_p pushBack 50;

_i pushBack "hgun_ACPC2_F";  //ACP
_u pushBack 0;
_p pushBack 50;

_i pushBack "hgun_Pistol_heavy_02_F";
_u pushBack 0;
_p pushBack 50;

//--- Uniforms
_i pushBack "U_O_CombatUniform_ocamo";
_u pushBack 0;
_p pushBack 150;

_i pushBack "U_O_OfficerUniform_ocamo";
_u pushBack 0;
_p pushBack 150;

_i pushBack "U_O_GhillieSuit";
_u pushBack 3;
_p pushBack 600;

_i pushBack "U_O_PilotCoveralls";
_u pushBack 1;
_p pushBack 100;

_i pushBack "U_O_CombatUniform_oucamo";
_u pushBack 0;
_p pushBack 150;

_i pushBack "U_O_SpecopsUniform_ocamo";
_u pushBack 2;
_p pushBack 150;

_i pushBack "U_O_SpecopsUniform_blk";
_u pushBack 2;
_p pushBack 150;

_i pushBack "U_O_Wetsuit";
_u pushBack 0;
_p pushBack 400;

/*
_i pushBack "U_OG_Guerilla1_1";
_u pushBack 1;
_p pushBack 150;
_i pushBack "U_OG_Guerilla2_1";
_u pushBack 1;
_p pushBack 150;
_i pushBack "U_OG_Guerilla2_2";
_u pushBack 1;
_p pushBack 150;
_i pushBack "U_OG_Guerilla2_3";
_u pushBack 1;
_p pushBack 150;
_i pushBack "U_OG_Guerilla3_1";
_u pushBack 1;
_p pushBack 150;
_i pushBack "U_OG_Guerilla3_2";
_u pushBack 1;
_p pushBack 150;
_i pushBack "U_OG_Guerrilla_6_1";
_u pushBack 1;
_p pushBack 50;
*/





//--- Vests
_i pushBack "V_BandollierB_khk";
_u pushBack 0;
_p pushBack 100;

_i pushBack "V_BandollierB_cbr";
_u pushBack 0;
_p pushBack 200;


_i pushBack "V_Chestrig_khk";
_u pushBack 0;
_p pushBack 300;

_i pushBack "V_TacVest_brn";
_u pushBack 1;
_p pushBack 400;

_i pushBack "V_HarnessO_brn";
_u pushBack 1;
_p pushBack 450;

_i pushBack "V_HarnessOGL_brn";
_u pushBack 2;
_p pushBack 500;

_i pushBack "V_HarnessOSpec_brn";
_u pushBack 2;
_p pushBack 500;

_i pushBack "V_HarnessO_gry";
_u pushBack 2;
_p pushBack 450;

_i pushBack "V_HarnessOGL_gry";
_u pushBack 2;
_p pushBack 500;

_i pushBack "V_HarnessOSpec_gry";
_u pushBack 2;
_p pushBack 500;

_i pushBack "V_RebreatherIR";
_u pushBack 0;
_p pushBack 400;





//--- Backpacks
_i pushBack "B_AssaultPack_khk";
_u pushBack 0;
_p pushBack 200;

_i pushBack "B_AssaultPack_ocamo";
_u pushBack 0;
_p pushBack 200;

_i pushBack "B_TacticalPack_ocamo";
_u pushBack 1;
_p pushBack 200;

_i pushBack "B_FieldPack_ocamo";
_u pushBack 0;
_p pushBack 400;

_i pushBack "B_FieldPack_oucamo";
_u pushBack 0;
_p pushBack 400;

_i pushBack "B_Kitbag_cbr";
_u pushBack 1;
_p pushBack 500;

_i pushBack "B_Carryall_ocamo";
_u pushBack 3;
_p pushBack 800;

_i pushBack "B_Carryall_mcamo";
_u pushBack 3;
_p pushBack 800;

_i pushBack "B_Carryall_cbr";
_u pushBack 3;
_p pushBack 800;

_i pushBack "B_Carryall_khk";
_u pushBack 3;
_p pushBack 800;

_i pushBack "B_Carryall_oli";
_u pushBack 3;
_p pushBack 800;

_i pushBack "B_Carryall_oucamo";
_u pushBack 3;
_p pushBack 800;

_i pushBack "B_Parachute";
_u pushBack 1;
_p pushBack 5;

_i pushBack "O_UAV_01_backpack_F";
_u pushBack 2;
_p pushBack 2000;

_i pushBack "O_HMG_01_support_F";
_u pushBack 1;
_p pushBack 100;

_i pushBack "O_HMG_01_support_high_F";
_u pushBack 1;
_p pushBack 100;

_i pushBack "O_HMG_01_weapon_F";
_u pushBack 1;
_p pushBack 500;

_i pushBack "O_GMG_01_weapon_F";
_u pushBack 1;
_p pushBack 500;

_i pushBack "O_HMG_01_high_weapon_F";
_u pushBack 1;
_p pushBack 400;

_i pushBack "O_GMG_01_high_weapon_F";
_u pushBack 2;
_p pushBack 500;

_i pushBack "O_HMG_01_A_weapon_F";
_u pushBack 1;
_p pushBack 500;

_i pushBack "O_GMG_01_A_weapon_F";
_u pushBack 2;
_p pushBack 500;

_i pushBack "O_HMG_01_support_F";
_u pushBack 2;
_p pushBack 100;

_i pushBack "O_GMG_01_support_F";
_u pushBack 2;
_p pushBack 100;

/* OPFOR gets the PODNOS for mortars
_i pushBack "O_Mortar_01_support_F";
_u pushBack 3;
_p pushBack 150000;
_i pushBack "O_Mortar_01_weapon_F";
_u pushBack 3;
_p pushBack 8000;
*/


//--- Glasses
_i pushBack "G_Combat";
_u pushBack 0;
_p pushBack 5;

_i pushBack "G_Diving";
_u pushBack 1;
_p pushBack 300;

_i pushBack "G_Shades_Black";
_u pushBack 0;
_p pushBack 5;

_i pushBack "G_Goggles_VR";
_u pushBack 3;
_p pushBack 2000;
/*
_i pushBack "G_Tactical_Clear";
_u pushBack 3;
_p pushBack 2000;
_i pushBack "G_Tactical_Black";
_u pushBack 3;
_p pushBack 2000;
*/
_i pushBack "G_Sport_Blackred";
_u pushBack 0;
_p pushBack 5;




_i pushBack "G_Aviator";
_u pushBack 0;
_p pushBack 10;

_i pushBack "G_Spectacles";
_u pushBack 0;
_p pushBack 10;







_i pushBack "G_Balaclava_blk";
_u pushBack 0;
_p pushBack 5;

_i pushBack "G_Balaclava_combat";
_u pushBack 0;
_p pushBack 5;

_i pushBack "G_Balaclava_lowprofile";
_u pushBack 0;
_p pushBack 5;

_i pushBack "G_Balaclava_oli";
_u pushBack 0;
_p pushBack 5;

_i pushBack "G_Bandanna_aviator";
_u pushBack 0;
_p pushBack 5;

_i pushBack "G_Bandanna_blk";
_u pushBack 0;
_p pushBack 5;

_i pushBack "G_Bandanna_khk";
_u pushBack 0;
_p pushBack 5;

_i pushBack "G_Bandanna_oli";
_u pushBack 0;
_p pushBack 5;

_i pushBack "G_Bandanna_shades";
_u pushBack 0;
_p pushBack 5;

_i pushBack "G_Bandanna_sport";
_u pushBack 0;
_p pushBack 5;

_i pushBack "G_Bandanna_tan";
_u pushBack 0;
_p pushBack 5;

//--- Helms
_i pushBack "H_HelmetO_ocamo";
_u pushBack 0;
_p pushBack 150;

_i pushBack "H_HelmetO_oucamo";
_u pushBack 0;
_p pushBack 150;

_i pushBack "H_HelmetSpecO_ocamo";
_u pushBack 3;
_p pushBack 150;

_i pushBack "H_HelmetSpecO_blk";
_u pushBack 3;
_p pushBack 150;

_i pushBack "H_HelmetLeaderO_ocamo";
_u pushBack 3;
_p pushBack 150;

_i pushBack "H_HelmetLeaderO_oucamo";
_u pushBack 3;
_p pushBack 150;


_i pushBack "H_PilotHelmetHeli_O";
_u pushBack 1;
_p pushBack 150;

_i pushBack "H_CrewHelmetHeli_O";
_u pushBack 1;
_p pushBack 150;

_i pushBack "H_HelmetCrew_O";
_u pushBack 1;
_p pushBack 150;

_i pushBack "H_PilotHelmetFighter_O";
_u pushBack 1;
_p pushBack 150;


_i pushBack "H_MilCap_mcamo";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_MilCap_ocamo";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_MilCap_oucamo";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_MilCap_gry";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_MilCap_dgtl";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_Beret_02";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_Beret_Colonel";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_Beret_blk";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_Cap_headphones";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_Cap_marshal";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_Bandanna_gry";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_Bandanna_cbr";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_Bandanna_khk_hs";
_u pushBack 1;
_p pushBack 5;

_i pushBack "H_Bandanna_khk";
_u pushBack 1;
_p pushBack 5;

_i pushBack "H_Bandanna_mcamo";
_u pushBack 1;
_p pushBack 5;

_i pushBack "H_Bandanna_sgg";
_u pushBack 1;
_p pushBack 5;

_i pushBack "H_Bandanna_sand";
_u pushBack 1;
_p pushBack 5;

_i pushBack "H_Bandanna_surfer";
_u pushBack 1;
_p pushBack 5;

_i pushBack "H_Bandanna_surfer_blk";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_Bandanna_surfer_grn";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_Bandanna_camo";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_Watchcap_blk";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_Watchcap_cbr";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_Watchcap_camo";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_Watchcap_khk";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_Booniehat_khk_hs";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_Booniehat_mcamo";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_Booniehat_oli";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_Booniehat_tan";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_Booniehat_dgtl";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_Cap_grn_BI";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_Cap_blk";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_Cap_blu";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_Cap_blk_CMMG";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_Cap_grn";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_Cap_blk_ION";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_Cap_oli";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_Cap_oli_hs";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_Cap_police";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_Cap_press";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_Cap_red";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_Cap_surfer";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_Cap_tan";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_Cap_khaki_specops_UK";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_Cap_usblack";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_Cap_tan_specops_US";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_Cap_blk_Raven";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_Cap_brn_SPECOPS";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_Hat_brown";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_Hat_checker";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_Hat_grey";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_Hat_tan";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_Shemag_olive";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_Shemag_olive_hs";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_ShemagOpen_tan";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_ShemagOpen_khk";
_u pushBack 0;
_p pushBack 5;




//--- Accessories
_i pushBack "muzzle_snds_acp";
_u pushBack 1;
_p pushBack 200;

_i pushBack "muzzle_snds_H";
_u pushBack 1;
_p pushBack 500;

_i pushBack "muzzle_snds_H_MG";
_u pushBack 2;
_p pushBack 700;

_i pushBack "muzzle_snds_H_SW";
_u pushBack 2;
_p pushBack 650;

_i pushBack "muzzle_snds_B";
_u pushBack 3;
_p pushBack 700;

_i pushBack "muzzle_snds_L";
_u pushBack 1;
_p pushBack 300;

_i pushBack "muzzle_snds_M";
_u pushBack 1;
_p pushBack 700;

_i pushBack "optic_arco";
_u pushBack 2;
_p pushBack 400;

_i pushBack "optic_Holosight";
_u pushBack 0;
_p pushBack 200;

_i pushBack "optic_MRCO";
_u pushBack 1;
_p pushBack 200;

_i pushBack "optic_Aco";
_u pushBack 0;
_p pushBack 200;

_i pushBack "optic_ACO_grn";
_u pushBack 0;
_p pushBack 200;


_i pushBack "optic_SOS";
_u pushBack 3;
_p pushBack 800;


_i pushBack "optic_NVS";
_u pushBack 1;
_p pushBack 800;

_i pushBack "optic_Nightstalker";
_u pushBack 3;
_p pushBack 2000;

_i pushBack "optic_tws";
_u pushBack 3;
_p pushBack 1600;

_i pushBack "optic_tws_mg";
_u pushBack 3;
_p pushBack 1600;

_i pushBack "optic_DMS";
_u pushBack 3;
_p pushBack 800;

_i pushBack "optic_LRPS";
_u pushBack 3;
_p pushBack 800;


_i pushBack "optic_MRD";
_u pushBack 1;
_p pushBack 200;

_i pushBack "optic_Yorris";
_u pushBack 0;
_p pushBack 200;

_i pushBack "acc_flashlight";
_u pushBack 0;
_p pushBack 100;

_i pushBack "acc_pointer_IR";
_u pushBack 0;
_p pushBack 100;

//--- Items
_i pushBack "NVGoggles_OPFOR";
_u pushBack 0;
_p pushBack 500;

_i pushBack "Binocular";
_u pushBack 0;
_p pushBack 100;


_i pushBack "Rangefinder";
_u pushBack 0;
_p pushBack 500;


_i pushBack "Laserdesignator_02";
_u pushBack 3;
_p pushBack 1000;

_i pushBack "MineDetector";
_u pushBack 0;
_p pushBack 500;

_i pushBack "ItemGPS";
_u pushBack 0;
_p pushBack 100;

_i pushBack "O_UavTerminal";
_u pushBack 1;
_p pushBack 1500;

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
_p pushBack 500;

_i pushBack "FirstAidKit";
_u pushBack 0;
_p pushBack 100;

_i pushBack "Medikit";
_u pushBack 0;
_p pushBack 500;

[_faction, _i, _u, _p] call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_Config_Set.sqf"; 

//--- Templates (Those lines can be generated in the RPT on purchase by uncommenting the diag_log in Events_UI_GearMenu.sqf >> "onPurchase").
_t = [];
_t pushBack [[["arifle_trg21_f",["","acc_pointer_ir","optic_aco_grn",""],["30rnd_556x45_stanag"]],["",[],[]],["hgun_rook40_f",[],["16rnd_9x21_mag"]]],[["u_o_combatuniform_ocamo",["firstaidkit","firstaidkit"]],["V_PlateCarrier2_rgr",["handgrenade","handgrenade"]],["b_assaultpack_khk",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag"]]],["h_helmeto_ocamo",""],[["nvgoggles","binocular"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]];
_t pushBack [[["arifle_trg21_gl_f",["","acc_pointer_ir","optic_aco_grn",""],["30rnd_556x45_stanag"]],["",[],[]],["hgun_rook40_f",[],["16rnd_9x21_mag"]]],[["u_o_combatuniform_ocamo",["firstaidkit","firstaidkit"]],["V_PlateCarrier2_rgr",["handgrenade","handgrenade"]],["b_assaultpack_khk",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","1rnd_he_grenade_shell","1rnd_he_grenade_shell","1rnd_he_grenade_shell","1rnd_he_grenade_shell","1rnd_he_grenade_shell","1rnd_he_grenade_shell","1rnd_he_grenade_shell","1rnd_smokered_grenade_shell","1rnd_smokered_grenade_shell"]]],["h_helmeto_ocamo",""],[["nvgoggles","binocular"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]];
_t pushBack [[["lmg_zafir_f",["","acc_pointer_ir","optic_aco_grn",""],["150rnd_762x51_box"]],["",[],[]],["hgun_rook40_f",[],["16rnd_9x21_mag"]]],[["u_o_combatuniform_ocamo",["firstaidkit","firstaidkit"]],["V_PlateCarrier2_rgr",["handgrenade","handgrenade"]],["b_assaultpack_khk",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","150rnd_762x51_box","150rnd_762x51_box","150rnd_762x51_box","150rnd_762x51_box","150rnd_762x51_box"]]],["h_helmeto_ocamo",""],[["nvgoggles","binocular"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]];
_t pushBack [[["arifle_katiba_f",["","acc_pointer_ir","optic_mrco",""],["30rnd_65x39_caseless_green"]],["",[],[]],["hgun_rook40_f",["muzzle_snds_l","",""],["16rnd_9x21_mag"]]],[["u_o_combatuniform_ocamo",["firstaidkit","firstaidkit"]],["V_PlateCarrier2_rgr",["handgrenade","handgrenade","muzzle_snds_h"]],["b_assaultpack_khk",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","democharge_remote_mag","democharge_remote_mag","democharge_remote_mag","apersboundingmine_range_mag","apersboundingmine_range_mag"]]],["h_helmeto_ocamo",""],[["nvgoggles","binocular"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]];
_t pushBack [[["arifle_mk20c_f",["","acc_pointer_ir","optic_aco_grn",""],["30rnd_556x45_stanag"]],["launch_rpg32_f",[],["rpg32_f"]],["hgun_rook40_f",[],["16rnd_9x21_mag"]]],[["u_o_combatuniform_ocamo",["firstaidkit","firstaidkit"]],["V_PlateCarrier2_rgr",["handgrenade","handgrenade"]],["b_assaultpack_khk",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","rpg32_f","rpg32_f"]]],["h_helmeto_ocamo",""],[["nvgoggles","binocular"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]];
_t pushBack [[["arifle_mk20c_f",["","acc_pointer_ir","optic_aco_grn",""],["30rnd_556x45_stanag"]],["launch_b_titan_f",[],["titan_aa"]],["hgun_rook40_f",[],["16rnd_9x21_mag"]]],[["u_o_combatuniform_ocamo",["firstaidkit","firstaidkit"]],["V_PlateCarrier2_rgr",["handgrenade","handgrenade"]],["b_assaultpack_khk",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","titan_aa","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag"]]],["h_helmeto_ocamo",""],[["nvgoggles","binocular"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]];
_t pushBack [[["srifle_gm6_f",["","","optic_sos",""],["5rnd_127x108_mag"]],["",[],[]],["hgun_acpc2_f",["muzzle_snds_acp","","",""],["16rnd_9x21_mag"]]],[["u_o_ghilliesuit",[]],["v_tacvest_brn",["firstaidkit","firstaidkit","handgrenade","handgrenade","smokeshellblue","smokeshellblue"]],["b_fieldpack_ocamo",["claymoredirectionalmine_remote_mag","claymoredirectionalmine_remote_mag","slamdirectionalmine_wire_mag","9rnd_45acp_mag","9rnd_45acp_mag","9rnd_45acp_mag","9rnd_45acp_mag","5rnd_127x108_mag","5rnd_127x108_mag","5rnd_127x108_mag","5rnd_127x108_mag","5rnd_127x108_mag","5rnd_127x108_mag","5rnd_127x108_mag","5rnd_127x108_mag","5rnd_127x108_mag","5rnd_127x108_mag"]]],["h_helmeto_ocamo",""],[["nvgoggles","binocular"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]];
_t pushBack [[["smg_01_f",["","","optic_aco_grn",""],["30rnd_45acp_mag_smg_01"]],["",[],[]],["hgun_rook40_f",[],["16rnd_9x21_mag"]]],[["u_o_combatuniform_ocamo",["firstaidkit","firstaidkit"]],["V_PlateCarrier2_rgr",["handgrenade","handgrenade"]],["b_assaultpack_khk",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01"]]],["h_helmeto_ocamo",""],[["nvgoggles","binocular"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]];

[_faction, _t] call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_Template_Set.sqf"; 

private ["_faction", "_i", "_p", "_side", "_u"];

_side = _this;
_faction = "West";

_i = [];
_u = [];
_p = [];

//--- Magazines

_i pushBack "ATMine_Range_Mag";
_u pushBack 0;
_p pushBack 300;

_i pushBack "APERSMine_Range_Mag";
_u pushBack 0;
_p pushBack 50;

_i pushBack "APERSBoundingMine_Range_Mag";
_u pushBack 0;
_p pushBack 50;

_i pushBack "SLAMDirectionalMine_Wire_Mag";
_u pushBack 0;
_p pushBack 50;

_i pushBack "APERSTripMine_Wire_Mag";
_u pushBack 0;
_p pushBack 50;

_i pushBack "SatchelCharge_Remote_Mag";
_u pushBack 3;
_p pushBack 500;

_i pushBack "DemoCharge_Remote_Mag";
_u pushBack 1;
_p pushBack 300;

_i pushBack "ClaymoreDirectionalMine_Remote_Mag";
_u pushBack 0;
_p pushBack 50;

_i pushBack "Laserbatteries";
_u pushBack 0;
_p pushBack 10;

_i pushBack "7Rnd_408_Mag";
_u pushBack 0;
_p pushBack 20;

_i pushBack "11Rnd_45ACP_Mag";
_u pushBack 0;
_p pushBack 20;

_i pushBack "20Rnd_556x45_UW_mag";
_u pushBack 0;
_p pushBack 20;

_i pushBack "20Rnd_762x51_Mag";
_u pushBack 0;
_p pushBack 40;

_i pushBack "30Rnd_45ACP_Mag_SMG_01";
_u pushBack 0;
_p pushBack 30;

_i pushBack "30Rnd_45ACP_Mag_SMG_01_tracer_green";
_u pushBack 0;
_p pushBack 30;

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

_i pushBack "100Rnd_65x39_caseless_mag";
_u pushBack 0;
_p pushBack 100;

_i pushBack "100Rnd_65x39_caseless_mag_Tracer";
_u pushBack 0;
_p pushBack 100;

_i pushBack "200Rnd_65x39_cased_Box";
_u pushBack 0;
_p pushBack 200;

_i pushBack "200Rnd_65x39_cased_Box_Tracer";
_u pushBack 0;
_p pushBack 200;

_i pushBack "30Rnd_65x39_caseless_green";
_u pushBack 0;
_p pushBack 30;

_i pushBack "30Rnd_65x39_caseless_mag";
_u pushBack 0;
_p pushBack 30;

_i pushBack "30Rnd_65x39_caseless_green_mag_Tracer";
_u pushBack 0;
_p pushBack 30;

_i pushBack "30Rnd_65x39_caseless_mag_Tracer";
_u pushBack 0;
_p pushBack 30;

_i pushBack "16rnd_9x21_mag";
_u pushBack 0;
_p pushBack 50;

_i pushBack "30Rnd_9x21_Mag";
_u pushBack 0;
_p pushBack 90;

_i pushBack "NLAW_F";
_u pushBack 1;
_p pushBack 500;

_i pushBack "Titan_AA";
_u pushBack 3;
_p pushBack 1200;

_i pushBack "Titan_AP";
_u pushBack 3;
_p pushBack 2000;

_i pushBack "Titan_AT";
_u pushBack 3;
_p pushBack 2000;

_i pushBack "HandGrenade";
_u pushBack 0;
_p pushBack 50;

_i pushBack "MiniGrenade";
_u pushBack 0;
_p pushBack 50;

_i pushBack "HandGrenade_Stone";
_u pushBack 0;
_p pushBack 1;

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

_i pushBack "SmokeShellBlue";
_u pushBack 0;
_p pushBack 10;

_i pushBack "SmokeShellOrange";
_u pushBack 0;
_p pushBack 10;

_i pushBack "Chemlight_green";
_u pushBack 0;
_p pushBack 2;

_i pushBack "Chemlight_red";
_u pushBack 0;
_p pushBack 2;

_i pushBack "Chemlight_yellow";
_u pushBack 0;
_p pushBack 2;

_i pushBack "Chemlight_blue";
_u pushBack 0;
_p pushBack 2;

_i pushBack "FlareWhite_F";
_u pushBack 0;
_p pushBack 2;

_i pushBack "FlareGreen_F";
_u pushBack 0;
_p pushBack 2;

_i pushBack "FlareRed_F";
_u pushBack 0;
_p pushBack 2;

_i pushBack "FlareYellow_F";
_u pushBack 0;
_p pushBack 2;

_i pushBack "1Rnd_HE_Grenade_shell";
_u pushBack 0;
_p pushBack 10;

_i pushBack "1Rnd_Smoke_Grenade_shell";
_u pushBack 0;
_p pushBack 2;

_i pushBack "1Rnd_SmokeRed_Grenade_shell";
_u pushBack 0;
_p pushBack 2;

_i pushBack "1Rnd_SmokeGreen_Grenade_shell";
_u pushBack 0;
_p pushBack 2;

_i pushBack "1Rnd_SmokeYellow_Grenade_shell";
_u pushBack 0;
_p pushBack 2;

_i pushBack "1Rnd_SmokePurple_Grenade_shell";
_u pushBack 0;
_p pushBack 2;

_i pushBack "1Rnd_SmokeBlue_Grenade_shell";
_u pushBack 0;
_p pushBack 2;

_i pushBack "1Rnd_SmokeOrange_Grenade_shell";
_u pushBack 0;
_p pushBack 2;

_i pushBack "UGL_FlareWhite_F";
_u pushBack 0;
_p pushBack 2;

_i pushBack "UGL_FlareGreen_F";
_u pushBack 0;
_p pushBack 2;

_i pushBack "UGL_FlareRed_F";
_u pushBack 0;
_p pushBack 2;

_i pushBack "UGL_FlareYellow_F";
_u pushBack 0;
_p pushBack 2;

_i pushBack "UGL_FlareCIR_F";
_u pushBack 0;
_p pushBack 4;

_i pushBack "3Rnd_HE_Grenade_shell";
_u pushBack 0;
_p pushBack 100;

_i pushBack "3Rnd_Smoke_Grenade_shell";
_u pushBack 0;
_p pushBack 6;

_i pushBack "3Rnd_SmokeRed_Grenade_shell";
_u pushBack 0;
_p pushBack 6;

_i pushBack "3Rnd_SmokeGreen_Grenade_shell";
_u pushBack 0;
_p pushBack 6;

_i pushBack "3Rnd_SmokeYellow_Grenade_shell";
_u pushBack 0;
_p pushBack 6;

_i pushBack "3Rnd_SmokePurple_Grenade_shell";
_u pushBack 0;
_p pushBack 6;

_i pushBack "3Rnd_SmokeBlue_Grenade_shell";
_u pushBack 0;
_p pushBack 6;

_i pushBack "3Rnd_SmokeOrange_Grenade_shell";
_u pushBack 0;
_p pushBack 6;

_i pushBack "3Rnd_UGL_FlareWhite_F";
_u pushBack 0;
_p pushBack 6;

_i pushBack "3Rnd_UGL_FlareGreen_F";
_u pushBack 0;
_p pushBack 6;

_i pushBack "3Rnd_UGL_FlareRed_F";
_u pushBack 0;
_p pushBack 6;

_i pushBack "3Rnd_UGL_FlareYellow_F";
_u pushBack 0;
_p pushBack 6;

_i pushBack "3Rnd_UGL_FlareCIR_F";
_u pushBack 0;
_p pushBack 12;

//--- Weapons
_i pushBack "arifle_MX_F";
_u pushBack 1;
_p pushBack 400;

_i pushBack ["arifle_MX_pointer_F"];
_u pushBack 1;
_p pushBack 400;

_i pushBack ["arifle_MX_Holo_pointer_F"];
_u pushBack 1;
_p pushBack 400;

_i pushBack ["arifle_MX_Hamr_pointer_F"];
_u pushBack 1;
_p pushBack 400;

_i pushBack ["arifle_MX_ACO_pointer_F"];
_u pushBack 1;
_p pushBack 400;

_i pushBack ["arifle_MX_ACO_pointer_snds_F"];
_u pushBack 1;
_p pushBack 400;

_i pushBack ["arifle_MX_RCO_pointer_snds_F"];
_u pushBack 1;
_p pushBack 400;

_i pushBack ["arifle_MX_ACO_F"];
_u pushBack 1;
_p pushBack 400;

_i pushBack "arifle_MX_GL_F";
_u pushBack 1;
_p pushBack 500;

_i pushBack ["arifle_MX_GL_ACO_F"];
_u pushBack 1;
_p pushBack 500;

_i pushBack ["arifle_MX_GL_ACO_pointer_F"];
_u pushBack 1;
_p pushBack 500;

_i pushBack ["arifle_MX_GL_Hamr_pointer_F"];
_u pushBack 1;
_p pushBack 500;

_i pushBack ["arifle_MX_GL_Holo_pointer_snds_F"];
_u pushBack 1;
_p pushBack 500;

_i pushBack "arifle_MX_SW_F";
_u pushBack 1;
_p pushBack 500;

_i pushBack ["arifle_MX_SW_pointer_F"];
_u pushBack 1;
_p pushBack 500;

_i pushBack ["arifle_MX_SW_Hamr_pointer_F"];
_u pushBack 1;
_p pushBack 500;

_i pushBack "arifle_MXC_F";
_u pushBack 1;
_p pushBack 400;

_i pushBack ["arifle_MXC_Holo_F"];
_u pushBack 1;
_p pushBack 400;

_i pushBack ["arifle_MXC_Holo_pointer_F"];
_u pushBack 1;
_p pushBack 400;

_i pushBack ["arifle_MXC_ACO_F"];
_u pushBack 1;
_p pushBack 400;

_i pushBack ["arifle_MXC_Holo_pointer_snds_F"];
_u pushBack 1;
_p pushBack 400;

_i pushBack ["arifle_MXC_SOS_point_snds_F"];
_u pushBack 1;
_p pushBack 400;

_i pushBack ["arifle_MXC_ACO_pointer_snds_F"];
_u pushBack 1;
_p pushBack 400;

_i pushBack ["arifle_MXC_ACO_pointer_F"];
_u pushBack 1;
_p pushBack 400;

_i pushBack "arifle_MXM_F";
_u pushBack 1;
_p pushBack 400;

_i pushBack ["arifle_MXM_Hamr_pointer_F"];
_u pushBack 1;
_p pushBack 400;

_i pushBack ["arifle_MXM_SOS_pointer_F"];
_u pushBack 1;
_p pushBack 400;

_i pushBack ["arifle_MXM_RCO_pointer_snds_F"];
_u pushBack 1;
_p pushBack 400;

_i pushBack "arifle_SDAR_F";
_u pushBack 0;
_p pushBack 300;

_i pushBack "LMG_Mk200_F";
_u pushBack 1;
_p pushBack 500;

_i pushBack ["LMG_Mk200_MRCO_F"];
_u pushBack 1;
_p pushBack 500;

_i pushBack ["LMG_Mk200_pointer_F"];
_u pushBack 1;
_p pushBack 500;

_i pushBack "arifle_Mk20_F";
_u pushBack 1;
_p pushBack 300;

_i pushBack ["arifle_Mk20_pointer_F"];
_u pushBack 1;
_p pushBack 300;

_i pushBack ["arifle_Mk20_Holo_F"];
_u pushBack 1;
_p pushBack 300;

_i pushBack ["arifle_Mk20_ACO_F"];
_u pushBack 1;
_p pushBack 300;

_i pushBack ["arifle_Mk20_ACO_pointer_F"];
_u pushBack 1;
_p pushBack 300;

_i pushBack ["arifle_Mk20_MRCO_F"];
_u pushBack 1;
_p pushBack 300;

_i pushBack ["arifle_Mk20_MRCO_pointer_F"];
_u pushBack 1;
_p pushBack 300;

_i pushBack "arifle_Mk20C_F";
_u pushBack 1;
_p pushBack 300;

_i pushBack ["arifle_Mk20C_ACO_F"];
_u pushBack 1;
_p pushBack 300;

_i pushBack ["arifle_Mk20C_ACO_pointer_F"];
_u pushBack 1;
_p pushBack 300;

_i pushBack "arifle_Mk20_GL_F";
_u pushBack 1;
_p pushBack 400;

_i pushBack ["arifle_Mk20_GL_MRCO_pointer_F"];
_u pushBack 1;
_p pushBack 400;

_i pushBack ["arifle_Mk20_GL_ACO_F"];
_u pushBack 1;
_p pushBack 400;

_i pushBack "SMG_01_F";
_u pushBack 0;
_p pushBack 200;

_i pushBack ["SMG_01_Holo_F"];
_u pushBack 0;
_p pushBack 200;

_i pushBack ["SMG_01_Holo_pointer_snds_F"];
_u pushBack 0;
_p pushBack 200;

_i pushBack ["SMG_01_ACO_F"];
_u pushBack 0;
_p pushBack 200;

_i pushBack "SMG_02_F";
_u pushBack 0;
_p pushBack 200;

_i pushBack ["SMG_02_ACO_F"];
_u pushBack 0;
_p pushBack 200;

_i pushBack ["SMG_02_ARCO_pointg_F"];
_u pushBack 0;
_p pushBack 200;

_i pushBack "srifle_EBR_F";
_u pushBack 2;
_p pushBack 500;

_i pushBack ["srifle_EBR_ACO_F"];
_u pushBack 2;
_p pushBack 500;

_i pushBack ["srifle_EBR_MRCO_pointer_F"];
_u pushBack 2;
_p pushBack 500;

_i pushBack ["srifle_EBR_ARCO_pointer_F"];
_u pushBack 2;
_p pushBack 500;

_i pushBack ["srifle_EBR_SOS_F"];
_u pushBack 2;
_p pushBack 500;

_i pushBack ["srifle_EBR_ARCO_pointer_snds_F"];
_u pushBack 2;
_p pushBack 500;

_i pushBack "srifle_LRR_F";
_u pushBack 3;
_p pushBack 1000;

_i pushBack ["srifle_LRR_SOS_F"];
_u pushBack 3;
_p pushBack 1000;

_i pushBack "launch_NLAW_F";
_u pushBack 2;
_p pushBack 1200;

_i pushBack "launch_B_Titan_F";
_u pushBack 3;
_p pushBack 3000;

_i pushBack "launch_B_Titan_short_F";
_u pushBack 3;
_p pushBack 5000;

_i pushBack "hgun_P07_F";
_u pushBack 0;
_p pushBack 100;

_i pushBack ["hgun_P07_snds_F"];
_u pushBack 0;
_p pushBack 100;

_i pushBack "hgun_Pistol_heavy_01_F";
_u pushBack 1;
_p pushBack 100;

//--- Uniforms
_i pushBack "U_B_CombatUniform_mcam";
_u pushBack 0;
_p pushBack 100;

_i pushBack "U_B_CTRG_1";
_u pushBack 0;
_p pushBack 100;

_i pushBack "U_B_GhillieSuit";
_u pushBack 2;
_p pushBack 600;

_i pushBack "U_B_HeliPilotCoveralls";
_u pushBack 0;
_p pushBack 15;

_i pushBack "U_B_Wetsuit";
_u pushBack 0;
_p pushBack 400;

//--- Vests
_i pushBack "V_Rangemaster_belt";
_u pushBack 0;
_p pushBack 5;

_i pushBack "V_BandollierB_rgr";
_u pushBack 0;
_p pushBack 10;

_i pushBack "V_PlateCarrier1_rgr";
_u pushBack 0;
_p pushBack 25;

_i pushBack "V_PlateCarrier2_rgr";
_u pushBack 0;
_p pushBack 25;

_i pushBack "V_PlateCarrierGL_rgr";
_u pushBack 0;
_p pushBack 25;

_i pushBack "V_PlateCarrierH_CTRG";
_u pushBack 0;
_p pushBack 30;

_i pushBack "V_PlateCarrierSpec_rgr";
_u pushBack 0;
_p pushBack 30;

_i pushBack "V_ChestrigB_rgr";
_u pushBack 0;
_p pushBack 25;

_i pushBack "V_TacVest_oli";
_u pushBack 0;
_p pushBack 25;

_i pushBack "V_RebreatherB";
_u pushBack 0;
_p pushBack 400;

//--- Backpacks
_i pushBack "B_AssaultPack_mcamo";
_u pushBack 0;
_p pushBack 15;

_i pushBack "B_FieldPack_blk";
_u pushBack 0;
_p pushBack 15;

_i pushBack "B_Kitbag_mcamo";
_u pushBack 0;
_p pushBack 20;

_i pushBack "B_Bergen_sgg";
_u pushBack 0;
_p pushBack 25;

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
_u pushBack 0;
_p pushBack 5;

_i pushBack "B_UAV_01_backpack_F";
_u pushBack 2;
_p pushBack 2000;

_i pushBack "B_HMG_01_support_F";
_u pushBack 0;
_p pushBack 5;

_i pushBack "B_HMG_01_support_high_F";
_u pushBack 0;
_p pushBack 5;

_i pushBack "B_HMG_01_weapon_F";
_u pushBack 0;
_p pushBack 150;

_i pushBack "B_GMG_01_weapon_F";
_u pushBack 0;
_p pushBack 150;

_i pushBack "B_HMG_01_high_weapon_F";
_u pushBack 0;
_p pushBack 200;

_i pushBack "B_GMG_01_high_weapon_F";
_u pushBack 0;
_p pushBack 300;

_i pushBack "B_Mortar_01_support_F";
_u pushBack 2;
_p pushBack 50;

_i pushBack "B_Mortar_01_weapon_F";
_u pushBack 2;
_p pushBack 8000;

//--- Glasses
_i pushBack "G_Combat";
_u pushBack 0;
_p pushBack 5;

_i pushBack "G_Diving";
_u pushBack 0;
_p pushBack 300;

_i pushBack "G_Shades_Black";
_u pushBack 0;
_p pushBack 2;

_i pushBack "G_Tactical_Clear";
_u pushBack 0;
_p pushBack 4;

_i pushBack "G_Sport_Blackred";
_u pushBack 0;
_p pushBack 2;

//--- Helms
_i pushBack "H_HelmetB";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_HelmetB_paint";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_HelmetB_light";
_u pushBack 0;
_p pushBack 5;

_i pushBack "H_PilotHelmetHeli_B";
_u pushBack 0;
_p pushBack 7;

_i pushBack "H_MilCap_mcamo";
_u pushBack 0;
_p pushBack 2;

//--- Accessories
_i pushBack "muzzle_snds_acp";
_u pushBack 0;
_p pushBack 200;

_i pushBack "muzzle_snds_H";
_u pushBack 0;
_p pushBack 500;

_i pushBack "muzzle_snds_H_MG";
_u pushBack 0;
_p pushBack 700;

_i pushBack "muzzle_snds_B";
_u pushBack 0;
_p pushBack 500;

_i pushBack "muzzle_snds_L";
_u pushBack 0;
_p pushBack 700;

_i pushBack "muzzle_snds_M";
_u pushBack 0;
_p pushBack 700;

_i pushBack "optic_arco";
_u pushBack 0;
_p pushBack 400;

_i pushBack "optic_Hamr";
_u pushBack 0;
_p pushBack 400;

_i pushBack "optic_Holosight";
_u pushBack 0;
_p pushBack 200;

_i pushBack "optic_MRCO";
_u pushBack 0;
_p pushBack 200;

_i pushBack "optic_Aco";
_u pushBack 0;
_p pushBack 200;

_i pushBack "optic_ACO_grn";
_u pushBack 0;
_p pushBack 200;

_i pushBack "optic_SOS";
_u pushBack 0;
_p pushBack 800;

_i pushBack "optic_NVS";
_u pushBack 1;
_p pushBack 1000;

_i pushBack "optic_Nightstalker";
_u pushBack 3;
_p pushBack 2000;

_i pushBack "optic_tws";
_u pushBack 3;
_p pushBack 1600;

_i pushBack "optic_tws_mg";
_u pushBack 3;
_p pushBack 1600;

_i pushBack "optic_MRD";
_u pushBack 0;
_p pushBack 200;

_i pushBack "optic_Yorris";
_u pushBack 0;
_p pushBack 200;

_i pushBack "acc_flashlight";
_u pushBack 0;
_p pushBack 2;

_i pushBack "acc_pointer_IR";
_u pushBack 0;
_p pushBack 2;

_i pushBack "bipod_01_F_snd";
_u pushBack 0;
_p pushBack 100;

_i pushBack "bipod_01_F_blk";
_u pushBack 0;
_p pushBack 100;

_i pushBack "bipod_01_F_mtp";
_u pushBack 0;
_p pushBack 100;

_i pushBack "bipod_02_F_blk";
_u pushBack 0;
_p pushBack 100;

_i pushBack "bipod_02_F_tan";
_u pushBack 0;
_p pushBack 100;

_i pushBack "bipod_02_F_hex";
_u pushBack 0;
_p pushBack 100;

_i pushBack "bipod_03_F_blk";
_u pushBack 0;
_p pushBack 100;

_i pushBack "bipod_03_F_oli";
_u pushBack 0;
_p pushBack 100;

//--- Items
_i pushBack "NVGoggles";
_u pushBack 0;
_p pushBack 500;

_i pushBack "Binocular";
_u pushBack 0;
_p pushBack 100;

_i pushBack "Laserdesignator";
_u pushBack 2;
_p pushBack 1000;

_i pushBack "ItemGPS";
_u pushBack 0;
_p pushBack 100;

_i pushBack "B_UavTerminal";
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
_p pushBack 100;

[_faction, _i, _u, _p] call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_Config_Set.sqf"; 

//--- Templates (Generated on purchase by uncommenting the diag_log in Events_UI_GearMenu.sqf >> "onPurchase").
_t = [];
_t pushBack [[["arifle_mx_f",["","","optic_aco","bipod_01_F_mtp"],["30rnd_65x39_caseless_mag"]],["",[],[]],["hgun_p07_f",["","","",""],["16rnd_9x21_mag"]]],[["u_b_combatuniform_mcam",["firstaidkit","firstaidkit"]],["v_platecarrier1_rgr",["handgrenade","handgrenade"]],["b_assaultpack_mcamo",["30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag"]]],["h_helmetb",""],[["nvgoggles","binocular"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]];
_t pushBack [[["arifle_mx_gl_f",["","acc_pointer_ir","optic_aco",""],["30rnd_65x39_caseless_mag"]],["",[],[]],["hgun_p07_f",["","","",""],["16rnd_9x21_mag"]]],[["u_b_combatuniform_mcam",["firstaidkit","firstaidkit"]],["v_platecarrier1_rgr",["handgrenade","handgrenade"]],["b_assaultpack_mcamo",["30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag_tracer","30rnd_65x39_caseless_mag_tracer","30rnd_65x39_caseless_mag_tracer","30rnd_65x39_caseless_mag_tracer","3rnd_he_grenade_shell","3rnd_he_grenade_shell","3rnd_he_grenade_shell","3rnd_he_grenade_shell","3rnd_he_grenade_shell","3rnd_smokeblue_grenade_shell","3rnd_smokeblue_grenade_shell","3rnd_smokeblue_grenade_shell","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag"]]],["h_helmetb",""],[["nvgoggles","binocular"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]];
_t pushBack [[["arifle_mx_sw_f",["","acc_pointer_ir","optic_holosight",""],["100rnd_65x39_caseless_mag"]],["",[],[]],["hgun_p07_f",["","","",""],["16rnd_9x21_mag"]]],[["u_b_combatuniform_mcam",["firstaidkit","firstaidkit"]],["v_platecarrier1_rgr",["handgrenade","handgrenade"]],["b_assaultpack_mcamo",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","100rnd_65x39_caseless_mag","100rnd_65x39_caseless_mag","100rnd_65x39_caseless_mag","100rnd_65x39_caseless_mag","100rnd_65x39_caseless_mag","100rnd_65x39_caseless_mag_tracer","100rnd_65x39_caseless_mag_tracer"]]],["h_helmetb",""],[["nvgoggles","binocular"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]];
_t pushBack [[["lmg_mk200_f",["","acc_pointer_ir","optic_holosight","bipod_01_F_blk"],["200rnd_65x39_cased_box"]],["",[],[]],["hgun_p07_f",["","","",""],["16rnd_9x21_mag"]]],[["u_b_combatuniform_mcam",["firstaidkit","firstaidkit"]],["v_platecarrier1_rgr",["handgrenade","handgrenade"]],["b_assaultpack_mcamo",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","200rnd_65x39_cased_box","200rnd_65x39_cased_box","200rnd_65x39_cased_box","200rnd_65x39_cased_box","200rnd_65x39_cased_box"]]],["h_helmetb",""],[["nvgoggles","binocular"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]];
_t pushBack [[["srifle_ebr_f",["","acc_pointer_ir","optic_hamr","bipod_01_F_mtp"],["20rnd_762x51_mag"]],["",[],[]],["hgun_p07_f",["muzzle_snds_l","","",""],["16rnd_9x21_mag"]]],[["u_b_combatuniform_mcam",["firstaidkit","firstaidkit"]],["v_platecarrier1_rgr",["handgrenade","handgrenade","muzzle_snds_b"]],["b_assaultpack_mcamo",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","20rnd_762x51_mag","20rnd_762x51_mag","20rnd_762x51_mag","20rnd_762x51_mag","20rnd_762x51_mag","20rnd_762x51_mag","20rnd_762x51_mag","20rnd_762x51_mag","20rnd_762x51_mag","20rnd_762x51_mag","20rnd_762x51_mag","democharge_remote_mag","democharge_remote_mag","democharge_remote_mag","apersboundingmine_range_mag","apersboundingmine_range_mag"]]],["h_helmetb",""],[["nvgoggles","binocular"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]];
_t pushBack [[["arifle_mxc_f",["","acc_pointer_ir","optic_holosight",""],["30rnd_65x39_caseless_mag"]],["launch_nlaw_f",[],["nlaw_f"]],["hgun_p07_f",["","",""],"",["16rnd_9x21_mag"]]],[["u_b_combatuniform_mcam",["firstaidkit","firstaidkit"]],["v_platecarrier1_rgr",["handgrenade","handgrenade"]],["b_assaultpack_mcamo",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","nlaw_f","nlaw_f"]]],["h_helmetb",""],[["nvgoggles","binocular"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]];
_t pushBack [[["arifle_mxc_f",["","acc_pointer_ir","optic_holosight",""],["30rnd_65x39_caseless_mag"]],["launch_b_titan_f",[],["titan_aa"]],["hgun_p07_f",["","","",""],["16rnd_9x21_mag"]]],[["u_b_combatuniform_mcam",["firstaidkit","firstaidkit"]],["v_platecarrier1_rgr",["handgrenade","handgrenade"]],["b_assaultpack_mcamo",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","titan_aa"]]],["h_helmetb",""],[["nvgoggles","binocular"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]];
_t pushBack [[["srifle_lrr_f",["","","optic_sos",""],["7rnd_408_mag"]],["",[],[]],["hgun_p07_f",["muzzle_snds_l","","",""],["16rnd_9x21_mag"]]],[["u_b_ghilliesuit",[]],["v_tacvest_oli",["firstaidkit","firstaidkit","handgrenade","handgrenade","smokeshellblue","smokeshellblue"]],["b_assaultpack_mcamo",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","7rnd_408_mag","7rnd_408_mag","7rnd_408_mag","7rnd_408_mag","7rnd_408_mag","7rnd_408_mag","7rnd_408_mag","7rnd_408_mag","7rnd_408_mag","7rnd_408_mag","7rnd_408_mag","7rnd_408_mag","7rnd_408_mag","7rnd_408_mag","7rnd_408_mag"]]],["h_helmetb",""],[["nvgoggles","binocular"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]];

[_faction, _t] call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_Template_Set.sqf"; 
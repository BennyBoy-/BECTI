private ["_faction", "_i", "_p", "_side", "_u"];

_side = _this;
_faction = "West";

_i = [];
_u = [];
_p = [];

//--- Magazines
_i = _i		+ ["ATMine_Range_Mag"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["APERSMine_Range_Mag"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["APERSBoundingMine_Range_Mag"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["SLAMDirectionalMine_Wire_Mag"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["APERSTripMine_Wire_Mag"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["SatchelCharge_Remote_Mag"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["DemoCharge_Remote_Mag"];
_u = _u		+ [0];
_p = _p		+ [15];

_i = _i		+ ["ClaymoreDirectionalMine_Remote_Mag"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["Laserbatteries"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["5Rnd_127x108_Mag"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["6Rnd_45ACP_Cylinder"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["10Rnd_762x51_Mag"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["20Rnd_556x45_UW_mag"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["20Rnd_762x51_Mag"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["30Rnd_45ACP_Mag_SMG_01"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["30Rnd_45ACP_Mag_SMG_01_tracer_green"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["30Rnd_556x45_Stanag"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["30Rnd_556x45_Stanag_Tracer_Red"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["30Rnd_556x45_Stanag_Tracer_Green"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["30Rnd_556x45_Stanag_Tracer_Yellow"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["30Rnd_65x39_caseless_green"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["30Rnd_65x39_caseless_green_mag_Tracer"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["150Rnd_762x51_Box"];
_u = _u		+ [0];
_p = _p		+ [15];

_i = _i		+ ["150Rnd_762x51_Box_Tracer"];
_u = _u		+ [0];
_p = _p		+ [15];

_i = _i		+ ["RPG32_F"];
_u = _u		+ [0];
_p = _p		+ [50];

// _i = _i		+ ["RPG32_AA_F"];
// _u = _u		+ [1];
// _p = _p		+ [75];

_i = _i		+ ["Titan_AA"];
_u = _u		+ [0];
_p = _p		+ [75];

_i = _i		+ ["Titan_AP"];
_u = _u		+ [1];
_p = _p		+ [85];

_i = _i		+ ["Titan_AT"];
_u = _u		+ [1];
_p = _p		+ [150];

_i = _i		+ ["16Rnd_9x21_Mag"];
_u = _u		+ [0];
_p = _p		+ [2];

_i = _i		+ ["30Rnd_9x21_Mag"];
_u = _u		+ [0];
_p = _p		+ [4];

_i = _i		+ ["9Rnd_45ACP_Mag"];
_u = _u		+ [0];
_p = _p		+ [4];

_i = _i		+ ["HandGrenade"];
_u = _u		+ [0];
_p = _p		+ [2];

_i = _i		+ ["MiniGrenade"];
_u = _u		+ [0];
_p = _p		+ [2];

_i = _i		+ ["HandGrenade_Stone"];
_u = _u		+ [0];
_p = _p		+ [1];

_i = _i		+ ["SmokeShell"];
_u = _u		+ [0];
_p = _p		+ [2];

_i = _i		+ ["SmokeShellRed"];
_u = _u		+ [0];
_p = _p		+ [2];

_i = _i		+ ["SmokeShellGreen"];
_u = _u		+ [0];
_p = _p		+ [2];

_i = _i		+ ["SmokeShellYellow"];
_u = _u		+ [0];
_p = _p		+ [2];

_i = _i		+ ["SmokeShellPurple"];
_u = _u		+ [0];
_p = _p		+ [2];

_i = _i		+ ["SmokeShellBlue"];
_u = _u		+ [0];
_p = _p		+ [2];

_i = _i		+ ["SmokeShellOrange"];
_u = _u		+ [0];
_p = _p		+ [2];

_i = _i		+ ["Chemlight_green"];
_u = _u		+ [0];
_p = _p		+ [2];

_i = _i		+ ["Chemlight_red"];
_u = _u		+ [0];
_p = _p		+ [2];

_i = _i		+ ["Chemlight_yellow"];
_u = _u		+ [0];
_p = _p		+ [2];

_i = _i		+ ["Chemlight_blue"];
_u = _u		+ [0];
_p = _p		+ [2];

_i = _i		+ ["FlareWhite_F"];
_u = _u		+ [0];
_p = _p		+ [2];

_i = _i		+ ["FlareGreen_F"];
_u = _u		+ [0];
_p = _p		+ [2];

_i = _i		+ ["FlareRed_F"];
_u = _u		+ [0];
_p = _p		+ [2];

_i = _i		+ ["FlareYellow_F"];
_u = _u		+ [0];
_p = _p		+ [2];

_i = _i		+ ["1Rnd_HE_Grenade_shell"];
_u = _u		+ [0];
_p = _p		+ [2];

_i = _i		+ ["1Rnd_Smoke_Grenade_shell"];
_u = _u		+ [0];
_p = _p		+ [2];

_i = _i		+ ["1Rnd_SmokeRed_Grenade_shell"];
_u = _u		+ [0];
_p = _p		+ [2];

_i = _i		+ ["1Rnd_SmokeGreen_Grenade_shell"];
_u = _u		+ [0];
_p = _p		+ [2];

_i = _i		+ ["1Rnd_SmokeYellow_Grenade_shell"];
_u = _u		+ [0];
_p = _p		+ [2];

_i = _i		+ ["1Rnd_SmokePurple_Grenade_shell"];
_u = _u		+ [0];
_p = _p		+ [2];

_i = _i		+ ["1Rnd_SmokeBlue_Grenade_shell"];
_u = _u		+ [0];
_p = _p		+ [2];

_i = _i		+ ["1Rnd_SmokeOrange_Grenade_shell"];
_u = _u		+ [0];
_p = _p		+ [2];

_i = _i		+ ["UGL_FlareWhite_F"];
_u = _u		+ [0];
_p = _p		+ [2];

_i = _i		+ ["UGL_FlareGreen_F"];
_u = _u		+ [0];
_p = _p		+ [2];

_i = _i		+ ["UGL_FlareRed_F"];
_u = _u		+ [0];
_p = _p		+ [2];

_i = _i		+ ["UGL_FlareYellow_F"];
_u = _u		+ [0];
_p = _p		+ [2];

_i = _i		+ ["UGL_FlareCIR_F"];
_u = _u		+ [0];
_p = _p		+ [4];

_i = _i		+ ["3Rnd_HE_Grenade_shell"];
_u = _u		+ [0];
_p = _p		+ [6];

_i = _i		+ ["3Rnd_Smoke_Grenade_shell"];
_u = _u		+ [0];
_p = _p		+ [6];

_i = _i		+ ["3Rnd_SmokeRed_Grenade_shell"];
_u = _u		+ [0];
_p = _p		+ [6];

_i = _i		+ ["3Rnd_SmokeGreen_Grenade_shell"];
_u = _u		+ [0];
_p = _p		+ [6];

_i = _i		+ ["3Rnd_SmokeYellow_Grenade_shell"];
_u = _u		+ [0];
_p = _p		+ [6];

_i = _i		+ ["3Rnd_SmokePurple_Grenade_shell"];
_u = _u		+ [0];
_p = _p		+ [6];

_i = _i		+ ["3Rnd_SmokeBlue_Grenade_shell"];
_u = _u		+ [0];
_p = _p		+ [6];

_i = _i		+ ["3Rnd_SmokeOrange_Grenade_shell"];
_u = _u		+ [0];
_p = _p		+ [6];

_i = _i		+ ["3Rnd_UGL_FlareWhite_F"];
_u = _u		+ [0];
_p = _p		+ [6];

_i = _i		+ ["3Rnd_UGL_FlareGreen_F"];
_u = _u		+ [0];
_p = _p		+ [6];

_i = _i		+ ["3Rnd_UGL_FlareRed_F"];
_u = _u		+ [0];
_p = _p		+ [6];

_i = _i		+ ["3Rnd_UGL_FlareYellow_F"];
_u = _u		+ [0];
_p = _p		+ [6];

_i = _i		+ ["3Rnd_UGL_FlareCIR_F"];
_u = _u		+ [0];
_p = _p		+ [12];

//--- Weapons (Nested array elements are defined but skiped in the gear menu)
_i = _i		+ ["arifle_TRG21_F"];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ [["arifle_TRG21_ACO_pointer_F"]];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ [["arifle_TRG21_ARCO_pointer_F"]];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ ["arifle_TRG20_F"];
_u = _u		+ [0];
_p = _p		+ [35];

_i = _i		+ [["arifle_TRG20_Holo_F"]];
_u = _u		+ [0];
_p = _p		+ [35];

_i = _i		+ [["arifle_TRG20_ACO_pointer_F"]];
_u = _u		+ [0];
_p = _p		+ [35];

_i = _i		+ [["arifle_TRG20_ACO_Flash_F"]];
_u = _u		+ [0];
_p = _p		+ [35];

_i = _i		+ [["arifle_TRG20_ACO_F"]];
_u = _u		+ [0];
_p = _p		+ [35];

_i = _i		+ ["arifle_TRG21_GL_F"];
_u = _u		+ [0];
_p = _p		+ [35];

_i = _i		+ [["arifle_TRG21_GL_ACO_pointer_F"]];
_u = _u		+ [0];
_p = _p		+ [35];

_i = _i		+ ["arifle_SDAR_F"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["arifle_Katiba_F"];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ [["arifle_Katiba_ACO_F"]];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ [["arifle_Katiba_ACO_pointer_F"]];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ [["arifle_Katiba_ARCO_F"]];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ [["arifle_Katiba_ARCO_pointer_F"]];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ [["arifle_Katiba_ACO_pointer_snds_F"]];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ [["arifle_Katiba_ARCO_pointer_snds_F"]];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ ["arifle_Katiba_C_F"];
_u = _u		+ [0];
_p = _p		+ [35];

_i = _i		+ [["arifle_Katiba_C_ACO_pointer_F"]];
_u = _u		+ [0];
_p = _p		+ [35];

_i = _i		+ [["arifle_Katiba_C_ACO_F"]];
_u = _u		+ [0];
_p = _p		+ [35];

_i = _i		+ [["arifle_Katiba_C_ACO_pointer_snds_F"]];
_u = _u		+ [0];
_p = _p		+ [35];

_i = _i		+ ["arifle_Katiba_GL_F"];
_u = _u		+ [0];
_p = _p		+ [40];

_i = _i		+ [["arifle_Katiba_GL_ACO_F"]];
_u = _u		+ [0];
_p = _p		+ [40];

_i = _i		+ [["arifle_Katiba_GL_ARCO_pointer_F"]];
_u = _u		+ [0];
_p = _p		+ [40];

_i = _i		+ [["arifle_Katiba_GL_ACO_pointer_F"]];
_u = _u		+ [0];
_p = _p		+ [40];

_i = _i		+ [["arifle_Katiba_GL_COWS_pointer_F"]];
_u = _u		+ [0];
_p = _p		+ [40];

_i = _i		+ [["arifle_Katiba_GL_Nstalker_pointer_F"]];
_u = _u		+ [0];
_p = _p		+ [40];

_i = _i		+ [["arifle_Katiba_GL_ACO_pointer_snds_F"]];
_u = _u		+ [0];
_p = _p		+ [40];

_i = _i		+ ["LMG_Zafir_F"];
_u = _u		+ [0];
_p = _p		+ [40];

_i = _i		+ [["LMG_Zafir_pointer_F"]];
_u = _u		+ [0];
_p = _p		+ [40];

_i = _i		+ ["arifle_Mk20_F"];
_u = _u		+ [0];
_p = _p		+ [40];

_i = _i		+ [["arifle_Mk20_pointer_F"]];
_u = _u		+ [0];
_p = _p		+ [40];

_i = _i		+ [["arifle_Mk20_Holo_F"]];
_u = _u		+ [0];
_p = _p		+ [40];

_i = _i		+ [["arifle_Mk20_ACO_F"]];
_u = _u		+ [0];
_p = _p		+ [40];

_i = _i		+ [["arifle_Mk20_ACO_pointer_F"]];
_u = _u		+ [0];
_p = _p		+ [40];

_i = _i		+ [["arifle_Mk20_MRCO_F"]];
_u = _u		+ [0];
_p = _p		+ [40];

_i = _i		+ [["arifle_Mk20_MRCO_pointer_F"]];
_u = _u		+ [0];
_p = _p		+ [40];

_i = _i		+ ["arifle_Mk20C_F"];
_u = _u		+ [0];
_p = _p		+ [40];

_i = _i		+ [["arifle_Mk20C_ACO_F"]];
_u = _u		+ [0];
_p = _p		+ [40];

_i = _i		+ [["arifle_Mk20C_ACO_pointer_F"]];
_u = _u		+ [0];
_p = _p		+ [40];

_i = _i		+ ["arifle_Mk20_GL_F"];
_u = _u		+ [0];
_p = _p		+ [45];

_i = _i		+ [["arifle_Mk20_GL_MRCO_pointer_F"]];
_u = _u		+ [0];
_p = _p		+ [45];

_i = _i		+ [["arifle_Mk20_GL_ACO_F"]];
_u = _u		+ [0];
_p = _p		+ [45];

_i = _i		+ ["SMG_01_F"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ [["SMG_01_Holo_F"]];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ [["SMG_01_Holo_pointer_snds_F"]];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ [["SMG_01_ACO_F"]];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["SMG_02_F"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ [["SMG_02_ACO_F"]];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ [["SMG_02_ARCO_pointg_F"]];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["srifle_DMR_01_F"];
_u = _u		+ [1];
_p = _p		+ [100];

_i = _i		+ ["srifle_GM6_F"];
_u = _u		+ [0];
_p = _p		+ [150];

_i = _i		+ [["srifle_GM6_SOS_F"]];
_u = _u		+ [0];
_p = _p		+ [150];

_i = _i		+ ["launch_RPG32_F"];
_u = _u		+ [0];
_p = _p		+ [100];

_i = _i		+ ["launch_B_Titan_F"];
_u = _u		+ [0];
_p = _p		+ [125];

_i = _i		+ ["launch_B_Titan_short_F"];
_u = _u		+ [0];
_p = _p		+ [250];

_i = _i		+ ["hgun_Rook40_F"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ [["hgun_Rook40_snds_F"]];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["hgun_ACPC2_F"];
_u = _u		+ [0];
_p = _p		+ [7];

_i = _i		+ ["hgun_PDW2000_Holo_F"]; //--- special, handgun classname but main type? drunk classname?
_u = _u		+ [0];
_p = _p		+ [7];

_i = _i		+ [["hgun_ACPC2_snds_F"]];
_u = _u		+ [0];
_p = _p		+ [7];

_i = _i		+ ["hgun_Pistol_heavy_02_F"];
_u = _u		+ [1];
_p = _p		+ [10];

//--- Uniforms
_i = _i		+ ["U_O_CombatUniform_ocamo"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["U_O_GhillieSuit"];
_u = _u		+ [1];
_p = _p		+ [20];

_i = _i		+ ["U_O_PilotCoveralls"];
_u = _u		+ [0];
_p = _p		+ [15];

_i = _i		+ ["U_O_Wetsuit"];
_u = _u		+ [0];
_p = _p		+ [15];

//--- Vests
_i = _i		+ ["V_BandollierB_khk"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["V_BandollierB_cbr"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["V_PlateCarrier1_rgr"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["V_PlateCarrier1_cbr"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["V_PlateCarrier2_rgr"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["V_PlateCarrierGL_rgr"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["V_PlateCarrierSpec_rgr"];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ ["V_Chestrig_khk"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["V_TacVest_brn"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["V_HarnessO_brn"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["V_HarnessOGL_brn"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["V_HarnessOSpec_brn"];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ ["V_RebreatherIR"];
_u = _u		+ [0];
_p = _p		+ [15];

//--- Backpacks
_i = _i		+ ["B_AssaultPack_khk"];
_u = _u		+ [0];
_p = _p		+ [15];

_i = _i		+ ["B_FieldPack_ocamo"];
_u = _u		+ [0];
_p = _p		+ [15];

_i = _i		+ ["B_Kitbag_cbr"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["B_Bergen_sgg_Exp"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["B_Carryall_ocamo"];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ ["B_Parachute"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["O_UAV_01_backpack_F"];
_u = _u		+ [0];
_p = _p		+ [250];

_i = _i		+ ["O_HMG_01_support_F"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["O_HMG_01_support_high_F"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["O_HMG_01_weapon_F"];
_u = _u		+ [0];
_p = _p		+ [150];

_i = _i		+ ["O_GMG_01_weapon_F"];
_u = _u		+ [0];
_p = _p		+ [150];

_i = _i		+ ["O_HMG_01_high_weapon_F"];
_u = _u		+ [0];
_p = _p		+ [200];

_i = _i		+ ["O_GMG_01_high_weapon_F"];
_u = _u		+ [0];
_p = _p		+ [300];

_i = _i		+ ["O_Mortar_01_support_F"];
_u = _u		+ [1];
_p = _p		+ [50];

_i = _i		+ ["O_Mortar_01_weapon_F"];
_u = _u		+ [1];
_p = _p		+ [700];

//--- Glasses
_i = _i		+ ["G_Combat"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["G_Diving"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["G_Shades_Black"];
_u = _u		+ [0];
_p = _p		+ [2];

_i = _i		+ ["G_Tactical_Clear"];
_u = _u		+ [0];
_p = _p		+ [4];

_i = _i		+ ["G_Sport_Blackred"];
_u = _u		+ [0];
_p = _p		+ [2];

//--- Helms
_i = _i		+ ["H_HelmetO_ocamo"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["H_HelmetLeaderO_ocamo"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["H_PilotHelmetHeli_O"];
_u = _u		+ [0];
_p = _p		+ [7];

_i = _i		+ ["H_MilCap_ocamo"];
_u = _u		+ [0];
_p = _p		+ [2];

//--- Accessories
_i = _i		+ ["muzzle_snds_acp"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["muzzle_snds_H"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["muzzle_snds_H_MG"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["muzzle_snds_B"];
_u = _u		+ [0];
_p = _p		+ [2];

_i = _i		+ ["muzzle_snds_L"];
_u = _u		+ [0];
_p = _p		+ [2];

_i = _i		+ ["muzzle_snds_M"];
_u = _u		+ [0];
_p = _p		+ [2];

_i = _i		+ ["optic_arco"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["optic_Hamr"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["optic_Holosight"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["optic_MRCO"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["optic_Aco"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["optic_ACO_grn"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["optic_SOS"];
_u = _u		+ [0];
_p = _p		+ [15];

_i = _i		+ ["optic_NVS"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["optic_Nightstalker"];
_u = _u		+ [0];
_p = _p		+ [45];

_i = _i		+ ["optic_tws"];
_u = _u		+ [0];
_p = _p		+ [40];

_i = _i		+ ["optic_tws_mg"];
_u = _u		+ [0];
_p = _p		+ [50];

_i = _i		+ ["optic_DMS"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["optic_MRD"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["optic_Yorris"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["acc_flashlight"];
_u = _u		+ [0];
_p = _p		+ [2];

_i = _i		+ ["acc_pointer_IR"];
_u = _u		+ [0];
_p = _p		+ [2];

_i = _i		+ ["optic_Yorris"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["acc_flashlight"];
_u = _u		+ [0];
_p = _p		+ [2];

_i = _i		+ ["acc_pointer_IR"];
_u = _u		+ [0];
_p = _p		+ [2];

_i = _i		+ ["bipod_01_F_snd"];
_u = _u		+ [0];
_p = _p		+ [4];

_i = _i		+ ["bipod_01_F_blk"];
_u = _u		+ [0];
_p = _p		+ [4];

_i = _i		+ ["bipod_01_F_mtp"];
_u = _u		+ [0];
_p = _p		+ [4];

_i = _i		+ ["bipod_02_F_blk"];
_u = _u		+ [0];
_p = _p		+ [4];

_i = _i		+ ["bipod_02_F_tan"];
_u = _u		+ [0];
_p = _p		+ [4];

_i = _i		+ ["bipod_02_F_hex"];
_u = _u		+ [0];
_p = _p		+ [4];

_i = _i		+ ["bipod_03_F_blk"];
_u = _u		+ [0];
_p = _p		+ [4];

_i = _i		+ ["bipod_03_F_oli"];
_u = _u		+ [0];
_p = _p		+ [4];

//--- Items
_i = _i		+ ["NVGoggles"];
_u = _u		+ [0];
_p = _p		+ [15];

_i = _i		+ ["Binocular"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["Laserdesignator"];
_u = _u		+ [0];
_p = _p		+ [50];

_i = _i		+ ["ItemGPS"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["O_UavTerminal"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["ItemMap"];
_u = _u		+ [0];
_p = _p		+ [2];

_i = _i		+ ["itemradio"];
_u = _u		+ [0];
_p = _p		+ [3];

_i = _i		+ ["itemcompass"];
_u = _u		+ [0];
_p = _p		+ [1];

_i = _i		+ ["itemwatch"];
_u = _u		+ [0];
_p = _p		+ [1];

_i = _i		+ ["Toolkit"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["FirstAidKit"];
_u = _u		+ [0];
_p = _p		+ [15];

_i = _i		+ ["Medikit"];
_u = _u		+ [0];
_p = _p		+ [15];

[_faction, _i, _u, _p] call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_Config_Set.sqf"; 

//--- Templates (Those lines can be generated in the RPT on purchase by uncommenting the diag_log in Events_UI_GearMenu.sqf >> "onPurchase").
_t = [];
_t = _t		+ [[[["arifle_trg21_f",["","acc_pointer_ir","optic_aco_grn",""],["30rnd_556x45_stanag"]],["",[],[]],["hgun_rook40_f",[],["16rnd_9x21_mag"]]],[["u_o_combatuniform_ocamo",["firstaidkit","firstaidkit"]],["V_PlateCarrier2_rgr",["handgrenade","handgrenade"]],["b_assaultpack_khk",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag"]]],["h_helmeto_ocamo",""],[["nvgoggles","binocular"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
_t = _t		+ [[[["arifle_trg21_gl_f",["","acc_pointer_ir","optic_aco_grn",""],["30rnd_556x45_stanag"]],["",[],[]],["hgun_rook40_f",[],["16rnd_9x21_mag"]]],[["u_o_combatuniform_ocamo",["firstaidkit","firstaidkit"]],["V_PlateCarrier2_rgr",["handgrenade","handgrenade"]],["b_assaultpack_khk",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","1rnd_he_grenade_shell","1rnd_he_grenade_shell","1rnd_he_grenade_shell","1rnd_he_grenade_shell","1rnd_he_grenade_shell","1rnd_he_grenade_shell","1rnd_he_grenade_shell","1rnd_smokered_grenade_shell","1rnd_smokered_grenade_shell"]]],["h_helmeto_ocamo",""],[["nvgoggles","binocular"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
_t = _t		+ [[[["lmg_zafir_f",["","acc_pointer_ir","optic_aco_grn",""],["150rnd_762x51_box"]],["",[],[]],["hgun_rook40_f",[],["16rnd_9x21_mag"]]],[["u_o_combatuniform_ocamo",["firstaidkit","firstaidkit"]],["V_PlateCarrier2_rgr",["handgrenade","handgrenade"]],["b_assaultpack_khk",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","150rnd_762x51_box","150rnd_762x51_box","150rnd_762x51_box","150rnd_762x51_box","150rnd_762x51_box"]]],["h_helmeto_ocamo",""],[["nvgoggles","binocular"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
_t = _t		+ [[[["arifle_katiba_f",["","acc_pointer_ir","optic_mrco",""],["30rnd_65x39_caseless_green"]],["",[],[]],["hgun_rook40_f",["muzzle_snds_l","",""],["16rnd_9x21_mag"]]],[["u_o_combatuniform_ocamo",["firstaidkit","firstaidkit"]],["V_PlateCarrier2_rgr",["handgrenade","handgrenade","muzzle_snds_h"]],["b_assaultpack_khk",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","democharge_remote_mag","democharge_remote_mag","democharge_remote_mag","apersboundingmine_range_mag","apersboundingmine_range_mag"]]],["h_helmeto_ocamo",""],[["nvgoggles","binocular"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
_t = _t		+ [[[["arifle_mk20c_f",["","acc_pointer_ir","optic_aco_grn",""],["30rnd_556x45_stanag"]],["launch_rpg32_f",[],["rpg32_f"]],["hgun_rook40_f",[],["16rnd_9x21_mag"]]],[["u_o_combatuniform_ocamo",["firstaidkit","firstaidkit"]],["V_PlateCarrier2_rgr",["handgrenade","handgrenade"]],["b_assaultpack_khk",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","rpg32_f","rpg32_f"]]],["h_helmeto_ocamo",""],[["nvgoggles","binocular"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
_t = _t		+ [[[["arifle_mk20c_f",["","acc_pointer_ir","optic_aco_grn",""],["30rnd_556x45_stanag"]],["launch_b_titan_f",[],["titan_aa"]],["hgun_rook40_f",[],["16rnd_9x21_mag"]]],[["u_o_combatuniform_ocamo",["firstaidkit","firstaidkit"]],["V_PlateCarrier2_rgr",["handgrenade","handgrenade"]],["b_assaultpack_khk",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","titan_aa","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag"]]],["h_helmeto_ocamo",""],[["nvgoggles","binocular"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
_t = _t		+ [[[["srifle_gm6_f",["","","optic_sos",""],["5rnd_127x108_mag"]],["",[],[]],["hgun_acpc2_f",["muzzle_snds_acp","","",""],["16rnd_9x21_mag"]]],[["u_o_ghilliesuit",[]],["v_tacvest_brn",["firstaidkit","firstaidkit","handgrenade","handgrenade","smokeshellblue","smokeshellblue"]],["b_fieldpack_ocamo",["claymoredirectionalmine_remote_mag","claymoredirectionalmine_remote_mag","slamdirectionalmine_wire_mag","9rnd_45acp_mag","9rnd_45acp_mag","9rnd_45acp_mag","9rnd_45acp_mag","5rnd_127x108_mag","5rnd_127x108_mag","5rnd_127x108_mag","5rnd_127x108_mag","5rnd_127x108_mag","5rnd_127x108_mag","5rnd_127x108_mag","5rnd_127x108_mag","5rnd_127x108_mag","5rnd_127x108_mag"]]],["h_helmeto_ocamo",""],[["nvgoggles","binocular"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
_t = _t		+ [[[["smg_01_f",["","","optic_aco_grn",""],["30rnd_45acp_mag_smg_01"]],["",[],[]],["hgun_rook40_f",[],["16rnd_9x21_mag"]]],[["u_o_combatuniform_ocamo",["firstaidkit","firstaidkit"]],["V_PlateCarrier2_rgr",["handgrenade","handgrenade"]],["b_assaultpack_khk",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01"]]],["h_helmeto_ocamo",""],[["nvgoggles","binocular"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];

[_faction, _t] call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_Template_Set.sqf"; 
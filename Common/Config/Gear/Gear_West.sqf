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

_i = _i		+ ["7Rnd_408_Mag"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["11Rnd_45ACP_Mag"];
_u = _u		+ [0];
_p = _p		+ [5];

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

_i = _i		+ ["100Rnd_65x39_caseless_mag"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["100Rnd_65x39_caseless_mag_Tracer"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["200Rnd_65x39_cased_Box"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["200Rnd_65x39_cased_Box_Tracer"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["30Rnd_65x39_caseless_green"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["30Rnd_65x39_caseless_mag"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["30Rnd_65x39_caseless_green_mag_Tracer"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["30Rnd_65x39_caseless_mag_Tracer"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["16rnd_9x21_mag"];
_u = _u		+ [0];
_p = _p		+ [2];

_i = _i		+ ["30Rnd_9x21_Mag"];
_u = _u		+ [0];
_p = _p		+ [4];

_i = _i		+ ["NLAW_F"];
_u = _u		+ [0];
_p = _p		+ [50];

_i = _i		+ ["Titan_AA"];
_u = _u		+ [0];
_p = _p		+ [75];

_i = _i		+ ["Titan_AP"];
_u = _u		+ [1];
_p = _p		+ [85];

_i = _i		+ ["Titan_AT"];
_u = _u		+ [1];
_p = _p		+ [150];

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

//--- Weapons
_i = _i		+ ["arifle_MX_F"];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ [["arifle_MX_pointer_F"]];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ [["arifle_MX_Holo_pointer_F"]];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ [["arifle_MX_Hamr_pointer_F"]];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ [["arifle_MX_ACO_pointer_F"]];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ [["arifle_MX_ACO_pointer_snds_F"]];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ [["arifle_MX_RCO_pointer_snds_F"]];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ [["arifle_MX_ACO_F"]];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ ["arifle_MX_GL_F"];
_u = _u		+ [0];
_p = _p		+ [35];

_i = _i		+ [["arifle_MX_GL_ACO_F"]];
_u = _u		+ [0];
_p = _p		+ [35];

_i = _i		+ [["arifle_MX_GL_ACO_pointer_F"]];
_u = _u		+ [0];
_p = _p		+ [35];

_i = _i		+ [["arifle_MX_GL_Hamr_pointer_F"]];
_u = _u		+ [0];
_p = _p		+ [35];

_i = _i		+ [["arifle_MX_GL_Holo_pointer_snds_F"]];
_u = _u		+ [0];
_p = _p		+ [35];

_i = _i		+ ["arifle_MX_SW_F"];
_u = _u		+ [0];
_p = _p		+ [35];

_i = _i		+ [["arifle_MX_SW_pointer_F"]];
_u = _u		+ [0];
_p = _p		+ [35];

_i = _i		+ [["arifle_MX_SW_Hamr_pointer_F"]];
_u = _u		+ [0];
_p = _p		+ [35];

_i = _i		+ ["arifle_MXC_F"];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ [["arifle_MXC_Holo_F"]];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ [["arifle_MXC_Holo_pointer_F"]];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ [["arifle_MXC_ACO_F"]];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ [["arifle_MXC_Holo_pointer_snds_F"]];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ [["arifle_MXC_SOS_point_snds_F"]];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ [["arifle_MXC_ACO_pointer_snds_F"]];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ [["arifle_MXC_ACO_pointer_F"]];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ ["arifle_MXM_F"];
_u = _u		+ [0];
_p = _p		+ [50];

_i = _i		+ [["arifle_MXM_Hamr_pointer_F"]];
_u = _u		+ [0];
_p = _p		+ [50];

_i = _i		+ [["arifle_MXM_SOS_pointer_F"]];
_u = _u		+ [0];
_p = _p		+ [50];

_i = _i		+ [["arifle_MXM_RCO_pointer_snds_F"]];
_u = _u		+ [0];
_p = _p		+ [50];

_i = _i		+ ["arifle_SDAR_F"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["LMG_Mk200_F"];
_u = _u		+ [0];
_p = _p		+ [40];

_i = _i		+ [["LMG_Mk200_MRCO_F"]];
_u = _u		+ [0];
_p = _p		+ [40];

_i = _i		+ [["LMG_Mk200_pointer_F"]];
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

_i = _i		+ ["srifle_EBR_F"];
_u = _u		+ [0];
_p = _p		+ [100];

_i = _i		+ [["srifle_EBR_ACO_F"]];
_u = _u		+ [0];
_p = _p		+ [100];

_i = _i		+ [["srifle_EBR_MRCO_pointer_F"]];
_u = _u		+ [0];
_p = _p		+ [100];

_i = _i		+ [["srifle_EBR_ARCO_pointer_F"]];
_u = _u		+ [0];
_p = _p		+ [100];

_i = _i		+ [["srifle_EBR_SOS_F"]];
_u = _u		+ [0];
_p = _p		+ [100];

_i = _i		+ [["srifle_EBR_ARCO_pointer_snds_F"]];
_u = _u		+ [0];
_p = _p		+ [100];

_i = _i		+ ["srifle_LRR_F"];
_u = _u		+ [0];
_p = _p		+ [150];

_i = _i		+ [["srifle_LRR_SOS_F"]];
_u = _u		+ [0];
_p = _p		+ [100];

_i = _i		+ ["launch_NLAW_F"];
_u = _u		+ [0];
_p = _p		+ [100];

_i = _i		+ ["launch_B_Titan_F"];
_u = _u		+ [0];
_p = _p		+ [125];

_i = _i		+ ["launch_B_Titan_short_F"];
_u = _u		+ [0];
_p = _p		+ [250];

_i = _i		+ ["hgun_P07_F"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ [["hgun_P07_snds_F"]];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["hgun_Pistol_heavy_01_F"];
_u = _u		+ [1];
_p = _p		+ [10];

//--- Uniforms
_i = _i		+ ["U_B_CombatUniform_mcam"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["U_B_CTRG_1"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["U_B_GhillieSuit"];
_u = _u		+ [1];
_p = _p		+ [20];

_i = _i		+ ["U_B_HeliPilotCoveralls"];
_u = _u		+ [0];
_p = _p		+ [15];

_i = _i		+ ["U_B_Wetsuit"];
_u = _u		+ [0];
_p = _p		+ [15];

//--- Vests
_i = _i		+ ["V_Rangemaster_belt"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["V_BandollierB_rgr"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["V_PlateCarrier1_rgr"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["V_PlateCarrier2_rgr"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["V_PlateCarrierGL_rgr"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["V_PlateCarrierH_CTRG"];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ ["V_PlateCarrierSpec_rgr"];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ ["V_ChestrigB_rgr"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["V_TacVest_oli"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["V_RebreatherB"];
_u = _u		+ [0];
_p = _p		+ [15];

//--- Backpacks
_i = _i		+ ["B_AssaultPack_mcamo"];
_u = _u		+ [0];
_p = _p		+ [15];

_i = _i		+ ["B_FieldPack_blk"];
_u = _u		+ [0];
_p = _p		+ [15];

_i = _i		+ ["B_Kitbag_mcamo"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["B_Bergen_sgg"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["B_Carryall_oucamo"];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ ["B_Parachute"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["B_UAV_01_backpack_F"];
_u = _u		+ [0];
_p = _p		+ [250];

_i = _i		+ ["B_HMG_01_support_F"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["B_HMG_01_support_high_F"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["B_HMG_01_weapon_F"];
_u = _u		+ [0];
_p = _p		+ [150];

_i = _i		+ ["B_GMG_01_weapon_F"];
_u = _u		+ [0];
_p = _p		+ [150];

_i = _i		+ ["B_HMG_01_high_weapon_F"];
_u = _u		+ [0];
_p = _p		+ [200];

_i = _i		+ ["B_GMG_01_high_weapon_F"];
_u = _u		+ [0];
_p = _p		+ [300];

_i = _i		+ ["B_Mortar_01_support_F"];
_u = _u		+ [1];
_p = _p		+ [50];

_i = _i		+ ["B_Mortar_01_weapon_F"];
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
_i = _i		+ ["H_HelmetB"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["H_HelmetB_paint"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["H_HelmetB_light"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["H_PilotHelmetHeli_B"];
_u = _u		+ [0];
_p = _p		+ [7];

_i = _i		+ ["H_MilCap_mcamo"];
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
_u = _u		+ [1];
_p = _p		+ [45];

_i = _i		+ ["optic_tws"];
_u = _u		+ [1];
_p = _p		+ [40];

_i = _i		+ ["optic_tws_mg"];
_u = _u		+ [1];
_p = _p		+ [50];

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

_i = _i		+ ["B_UavTerminal"];
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

//--- Templates (Generated on purchase by uncommenting the diag_log in Events_UI_GearMenu.sqf >> "onPurchase").
_t = [];
_t = _t 	+ [[[["arifle_mx_f",["","","optic_aco","bipod_01_F_mtp"],["30rnd_65x39_caseless_mag"]],["",[],[]],["hgun_p07_f",["","","",""],["16rnd_9x21_mag"]]],[["u_b_combatuniform_mcam",["firstaidkit","firstaidkit"]],["v_platecarrier1_rgr",["handgrenade","handgrenade"]],["b_assaultpack_mcamo",["30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag"]]],["h_helmetb",""],[["nvgoggles","binocular"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
_t = _t 	+ [[[["arifle_mx_gl_f",["","acc_pointer_ir","optic_aco",""],["30rnd_65x39_caseless_mag"]],["",[],[]],["hgun_p07_f",["","","",""],["16rnd_9x21_mag"]]],[["u_b_combatuniform_mcam",["firstaidkit","firstaidkit"]],["v_platecarrier1_rgr",["handgrenade","handgrenade"]],["b_assaultpack_mcamo",["30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag_tracer","30rnd_65x39_caseless_mag_tracer","30rnd_65x39_caseless_mag_tracer","30rnd_65x39_caseless_mag_tracer","3rnd_he_grenade_shell","3rnd_he_grenade_shell","3rnd_he_grenade_shell","3rnd_he_grenade_shell","3rnd_he_grenade_shell","3rnd_smokeblue_grenade_shell","3rnd_smokeblue_grenade_shell","3rnd_smokeblue_grenade_shell","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag"]]],["h_helmetb",""],[["nvgoggles","binocular"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
_t = _t 	+ [[[["arifle_mx_sw_f",["","acc_pointer_ir","optic_holosight",""],["100rnd_65x39_caseless_mag"]],["",[],[]],["hgun_p07_f",["","","",""],["16rnd_9x21_mag"]]],[["u_b_combatuniform_mcam",["firstaidkit","firstaidkit"]],["v_platecarrier1_rgr",["handgrenade","handgrenade"]],["b_assaultpack_mcamo",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","100rnd_65x39_caseless_mag","100rnd_65x39_caseless_mag","100rnd_65x39_caseless_mag","100rnd_65x39_caseless_mag","100rnd_65x39_caseless_mag","100rnd_65x39_caseless_mag_tracer","100rnd_65x39_caseless_mag_tracer"]]],["h_helmetb",""],[["nvgoggles","binocular"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
_t = _t 	+ [[[["lmg_mk200_f",["","acc_pointer_ir","optic_holosight","bipod_01_F_blk"],["200rnd_65x39_cased_box"]],["",[],[]],["hgun_p07_f",["","","",""],["16rnd_9x21_mag"]]],[["u_b_combatuniform_mcam",["firstaidkit","firstaidkit"]],["v_platecarrier1_rgr",["handgrenade","handgrenade"]],["b_assaultpack_mcamo",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","200rnd_65x39_cased_box","200rnd_65x39_cased_box","200rnd_65x39_cased_box","200rnd_65x39_cased_box","200rnd_65x39_cased_box"]]],["h_helmetb",""],[["nvgoggles","binocular"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
_t = _t 	+ [[[["srifle_ebr_f",["","acc_pointer_ir","optic_hamr","bipod_01_F_mtp"],["20rnd_762x51_mag"]],["",[],[]],["hgun_p07_f",["muzzle_snds_l","","",""],["16rnd_9x21_mag"]]],[["u_b_combatuniform_mcam",["firstaidkit","firstaidkit"]],["v_platecarrier1_rgr",["handgrenade","handgrenade","muzzle_snds_b"]],["b_assaultpack_mcamo",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","20rnd_762x51_mag","20rnd_762x51_mag","20rnd_762x51_mag","20rnd_762x51_mag","20rnd_762x51_mag","20rnd_762x51_mag","20rnd_762x51_mag","20rnd_762x51_mag","20rnd_762x51_mag","20rnd_762x51_mag","20rnd_762x51_mag","democharge_remote_mag","democharge_remote_mag","democharge_remote_mag","apersboundingmine_range_mag","apersboundingmine_range_mag"]]],["h_helmetb",""],[["nvgoggles","binocular"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
_t = _t 	+ [[[["arifle_mxc_f",["","acc_pointer_ir","optic_holosight",""],["30rnd_65x39_caseless_mag"]],["launch_nlaw_f",[],["nlaw_f"]],["hgun_p07_f",["","",""],"",["16rnd_9x21_mag"]]],[["u_b_combatuniform_mcam",["firstaidkit","firstaidkit"]],["v_platecarrier1_rgr",["handgrenade","handgrenade"]],["b_assaultpack_mcamo",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","nlaw_f","nlaw_f"]]],["h_helmetb",""],[["nvgoggles","binocular"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
_t = _t 	+ [[[["arifle_mxc_f",["","acc_pointer_ir","optic_holosight",""],["30rnd_65x39_caseless_mag"]],["launch_b_titan_f",[],["titan_aa"]],["hgun_p07_f",["","","",""],["16rnd_9x21_mag"]]],[["u_b_combatuniform_mcam",["firstaidkit","firstaidkit"]],["v_platecarrier1_rgr",["handgrenade","handgrenade"]],["b_assaultpack_mcamo",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","titan_aa"]]],["h_helmetb",""],[["nvgoggles","binocular"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
_t = _t 	+ [[[["srifle_lrr_f",["","","optic_sos",""],["7rnd_408_mag"]],["",[],[]],["hgun_p07_f",["muzzle_snds_l","","",""],["16rnd_9x21_mag"]]],[["u_b_ghilliesuit",[]],["v_tacvest_oli",["firstaidkit","firstaidkit","handgrenade","handgrenade","smokeshellblue","smokeshellblue"]],["b_assaultpack_mcamo",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","7rnd_408_mag","7rnd_408_mag","7rnd_408_mag","7rnd_408_mag","7rnd_408_mag","7rnd_408_mag","7rnd_408_mag","7rnd_408_mag","7rnd_408_mag","7rnd_408_mag","7rnd_408_mag","7rnd_408_mag","7rnd_408_mag","7rnd_408_mag","7rnd_408_mag"]]],["h_helmetb",""],[["nvgoggles","binocular"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];

[_faction, _t] call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_Template_Set.sqf"; 
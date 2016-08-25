private ["_faction", "_i", "_p", "_side", "_u"];

_side = _this;
_faction = "West";

_i = [];
_u = [];
_p = [];

//************************OFPS Stuff************************

//-- Magazines
_i pushBack "hlc_500rnd_762x51_Belt";
_u pushBack 4;
_p pushBack 2000;
/* 
_i pushBack "hlc_500rnd_762x51_Cinematic";
_u pushBack 4;
_p pushBack 4000;
 
_i pushBack "HLC_wp_M134Painless";
_u pushBack 4;
_p pushBack 10000;
*/

//--Winter Stuff
//Camo
_i pushBack "Blue_Snow_Camo";
_u pushBack 0;
_p pushBack 300;

_i pushBack "AAF_D_OfficerUniform";
_u pushBack 0;
_p pushBack 300;

_i pushBack "AAF_D_CombatUniform_Shortsleeve";
_u pushBack 0;
_p pushBack 300;

_i pushBack "AAF_D_CombatUniform";
_u pushBack 0;
_p pushBack 300;

_i pushBack "AAF_D_GhillieSuit";
_u pushBack 0;
_p pushBack 300;


//vests
_i pushBack "AAF_D_Chestrig_B";
_u pushBack 0;
_p pushBack 300;

_i pushBack "AAF_D_PlateCarrier_IAGL";
_u pushBack 0;
_p pushBack 300;

_i pushBack "BW_equip_b_carrier_spec_rig";
_u pushBack 0;
_p pushBack 300;

_i pushBack "AAF_D_PlateCarrier_IA1";
_u pushBack 0;
_p pushBack 300;

_i pushBack "AAF_D_PlateCarrier_IA2";
_u pushBack 0;
_p pushBack 300;

_i pushBack "AAF_D_TacVest_B";
_u pushBack 0;
_p pushBack 300;


//Backpacks
_i pushBack "AAF_D_AssaultPack_B";
_u pushBack 0;
_p pushBack 300;

_i pushBack "Meaty_Carryall_Snow_B_Base";
_u pushBack 0;
_p pushBack 300;

_i pushBack "AAF_D_Carryall_B";
_u pushBack 0;
_p pushBack 300;

_i pushBack "AAF_D_FieldPack_AT_B";
_u pushBack 0;
_p pushBack 300;

_i pushBack "AAF_D_FieldPack_B";
_u pushBack 0;
_p pushBack 300;

_i pushBack "AAF_D_Kitbag_B";
_u pushBack 0;
_p pushBack 300;

_i pushBack "sfp_backpack_rb56_loader";
_u pushBack 0;
_p pushBack 300;


//pistols


//sub machine guns
_i pushBack "IP_srifle_DMR_04_SnowHex_F";
_u pushBack 0;
_p pushBack 300;


//assault 
_i pushBack "bear_MX_GL_white_F";
_u pushBack 0;
_p pushBack 300;

_i pushBack "bear_MX_white_F";
_u pushBack 0;
_p pushBack 300;

_i pushBack "bear_MX_SW_white_F";
_u pushBack 0;
_p pushBack 300;

_i pushBack "bear_MXC_white_F";
_u pushBack 0;
_p pushBack 300;

_i pushBack "bear_MXM_white_F";
_u pushBack 0;
_p pushBack 300;


//lmg

//snipers


//support
_i pushBack "IP_launch_O_Titan_short_snw_F";
_u pushBack 0;
_p pushBack 3000;

_i pushBack "IP_launch_O_Titan_snw_F";
_u pushBack 0;
_p pushBack 3000;



//--SFP Stuff

//pistols
_i pushBack "sfp_kpistm45";
_u pushBack 0;
_p pushBack 300;

_i pushBack "sfp_p88";
_u pushBack 0;
_p pushBack 300;

//sub machine guns
_i pushBack "sfp_mp5";
_u pushBack 0;
_p pushBack 300;

_i pushBack "sfp_cjb_ms_aimpoint";
_u pushBack 0;
_p pushBack 300;


//assault 
_i pushBack "sfp_ak4";
_u pushBack 0;
_p pushBack 300;

_i pushBack "sfp_ak5";
_u pushBack 0;
_p pushBack 300;

_i pushBack "sfp_ak5c";.
_u pushBack 0;
_p pushBack 300;

_i pushBack "sfp_ak5dmk2";
_u pushBack 0;
_p pushBack 300;

_i pushBack "sfp_ak5c_blk";
_u pushBack 0;
_p pushBack 300;

_i pushBack "sfp_remington870";
_u pushBack 0;
_p pushBack 300;


//lmg
_i pushBack "sfp_ksp90";
_u pushBack 0;
_p pushBack 300;

_i pushBack "sfp_ksp58";
_u pushBack 0;
_p pushBack 300;


//snipers
_i pushBack "sfp_psg90";
_u pushBack 0;
_p pushBack 300;

_i pushBack "sfp_ag90";
_u pushBack 0;
_p pushBack 300;


//support
_i pushBack "sfp_rb57";
_u pushBack 0;
_p pushBack 300;

_i pushBack "sfp_grg86";
_u pushBack 0;
_p pushBack 300;

_i pushBack "sfp_pskott86";
_u pushBack 0;
_p pushBack 300;

_i pushBack "sfp_pskott68";
_u pushBack 0;
_p pushBack 300;

_i pushBack "sfp_rbs69";
_u pushBack 0;
_p pushBack 300;


//ammo
_i pushBack "sfp_36Rnd_9mm_kpistm45";
_u pushBack 0;
_p pushBack 30;

_i pushBack "sfp_30Rnd_9mm_mp5";
_u pushBack 0;
_p pushBack 30;

_i pushBack "sfp_30Rnd_650x25mag";
_u pushBack 0;
_p pushBack 30;

_i pushBack "sfp_17Rnd_9x19_Mag";
_u pushBack 0;
_p pushBack 30;

_i pushBack "sfp_20Rnd_762x51_ak4";
_u pushBack 0;
_p pushBack 30;

_i pushBack "sfp_30Rnd_556x45_Stanag";
_u pushBack 0;
_p pushBack 30;

_i pushBack "sfp_guage12_8rd_pellets";
_u pushBack 0;
_p pushBack 30;

_i pushBack "sfp_200Rnd_556x45_ksp90";
_u pushBack 0;
_p pushBack 30;

_i pushBack "sfp_50Rnd_762x51_ksp58";
_u pushBack 0;
_p pushBack 30;

_i pushBack "sfp_100Rnd_762x51_ksp58";
_u pushBack 0;
_p pushBack 30;

_i pushBack "sfp_9Rnd_762x51_psg90";
_u pushBack 0;
_p pushBack 30;

_i pushBack "sfp_9Rnd_127x99_ag90";
_u pushBack 0;
_p pushBack 30;

_i pushBack "sfp_rb57_mag";
_u pushBack 0;
_p pushBack 30;

_i pushBack "sfp_grg_heat_mag";
_u pushBack 0;
_p pushBack 30;

_i pushBack "sfp_grg_heat_66_mag";
_u pushBack 0;
_p pushBack 30;

_i pushBack "sfp_grg_heat_62_mag";
_u pushBack 0;
_p pushBack 30;

_i pushBack "sfp_grg_he_mag";
_u pushBack 0;
_p pushBack 30;

_i pushBack "sfp_grg_smoke_mag";
_u pushBack 0;
_p pushBack 30;

_i pushBack "sfp_grg_illum_mag";
_u pushBack 0;
_p pushBack 30;

_i pushBack "sfp_pskott86_mag";
_u pushBack 0;
_p pushBack 30;

_i pushBack "sfp_pskott68_mag";
_u pushBack 0;
_p pushBack 30;

_i pushBack "sfp_rbs69_mag";
_u pushBack 0;
_p pushBack 30;


//explosives
_i pushBack "sfp_flashbang";
_u pushBack 0;
_p pushBack 50;

_i pushBack "sfp_handgrenade_shgr07";
_u pushBack 0;
_p pushBack 50;

_i pushBack "sfp_handgrenade_shgr56";
_u pushBack 0;
_p pushBack 50;

_i pushBack "sfp_handgrenade_shgr2000";
_u pushBack 0;
_p pushBack 50;

_i pushBack "sfp_strvm6_mag";
_u pushBack 0;
_p pushBack 50;

_i pushBack "sfp_sprdeg46_mag";
_u pushBack 0;
_p pushBack 50;


//attachments
_i pushBack "sfp_optic_aimpoint";
_u pushBack 0;
_p pushBack 50;

_i pushBack "sfp_dball2";
_u pushBack 0;
_p pushBack 50;

_i pushBack "sfp_muzzle_snds_cbj";
_u pushBack 0;
_p pushBack 50;

_i pushBack "sfp_tlr2";
_u pushBack 0;
_p pushBack 50;


//backpacks
_i pushBack "sfp_backpack_stridssack2000";
_u pushBack 0;
_p pushBack 300;

_i pushBack "sfp_backpack_sjvv9";
_u pushBack 0;
_p pushBack 300;

//vests
_i pushBack "sfp_kroppsskydd12";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_kroppsskydd12_crew";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_kroppsskydd12_tl";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_kroppsskydd12_at";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_kroppsskydd12_holster";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_stridsvast08";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_stridsvast2000";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_kroppsskydd94";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_stridssele";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_stridssele_gas";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_holster";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_press_vest";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_suicidebelt";
_u pushBack 0;
_p pushBack 100;


//Uniforms
_i pushBack "sfp_m90s_uniform";
_u pushBack 0;
_p pushBack 300;

_i pushBack "sfp_m90s_uniform_hood";
_u pushBack 0;
_p pushBack 300;

_i pushBack "sfp_m90w_uniform";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_m90w_uniform_dirty";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_m90w_uniform_mp";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_m90d_uniform";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_m90u_uniform";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_ghillie_uniform";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_m59w_uniform";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_indiska_uniform";
_u pushBack 0;
_p pushBack 100;


//HeadGear
_i pushBack "sfp_m90w_helmet";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_m90w_helmet_peltor";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_m90w_helmet_headset";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_m90w_helmet_nvg";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_m90w_helmet_peltor_nvg";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_m90w_helmet_headset_nvg";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_m90w_cap";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_m90d_cap_peltor";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_m90w_booniehat";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_m90u_cap";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_m90u_booniehat";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_m90d_helmet";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_m90d_helmet_peltor";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_m90d_helmet_headset";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_m90d_helmet_nvg";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_m90d_helmet_peltor_nvg";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_m90d_helmet_headset_nvg";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_m90d_cap";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_m90d_cap_isaf";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_m90d_cap_peltor";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_un_booniehat";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_m90un_helmet";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_m90un_helmet_peltor";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_m90un_helmet_headset";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_fm_beret";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_armor_beret";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_fsj_beret";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_kj_beret";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_lgmp_beret";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_lg_beret";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_k3_beret";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_k4_beret";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_m37_helmet";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_m37w_helmet_dok";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_m37w_helmet_dok2";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_m59w_cap";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_m37w_helmet_cap1";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_m37w_helmet_cap2";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_headset";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_peltor";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_batmossa_m48";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_m1_onu_helmet";
_u pushBack 0;
_p pushBack 100;

_i pushBack "sfp_m1_un_helmet";
_u pushBack 0;
_p pushBack 100;



[_faction, _i, _u, _p] call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_Config_Set.sqf"; 

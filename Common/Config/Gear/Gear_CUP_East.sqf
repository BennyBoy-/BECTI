private ["_faction", "_i", "_p", "_side", "_u"];

_side = _this;
_faction = "East";

_i = [];
_u = [];
_p = [];

//************************C.U.P Stuff************************

//Shields

_i pushBack "CUP_hgun_BallisticShield_Armed"; 
_u pushBack 1;
_p pushBack 100;

//RIFLES
	
//AK Family

_i pushBack "CUP_arifle_AK47";  
_u pushBack 2;
_p pushBack 500;		

_i pushBack "CUP_arifle_AK74";  
_u pushBack 1;
_p pushBack 300;

_i pushBack "CUP_arifle_AK74M";
_u pushBack 1;
_p pushBack 300;

_i pushBack "CUP_arifle_AK74_GL";
_u pushBack 1;
_p pushBack 400;

_i pushBack "CUP_arifle_AK74_GL_kobra";
_u pushBack 1;
_p pushBack 400;

_i pushBack "CUP_arifle_AKS";
_u pushBack 2;
_p pushBack 500;

_i pushBack "CUP_arifle_AKS_Gold";
_u pushBack 2;
_p pushBack 500;

_i pushBack "CUP_arifle_AKS74";
_u pushBack 1;
_p pushBack 300;

_i pushBack "CUP_arifle_AKS74_kobra";
_u pushBack 1;
_p pushBack 300;

_i pushBack "CUP_arifle_AKS74U";
_u pushBack 1;
_p pushBack 300;

_i pushBack "CUP_arifle_AK107";
_u pushBack 1;
_p pushBack 300;

_i pushBack "CUP_arifle_AK107_GL";
_u pushBack 1;
_p pushBack 400;

_i pushBack "CUP_arifle_AKM";
_u pushBack 2;
_p pushBack 500;

//CZ Family

_i pushBack "CUP_arifle_CZ805_A1";
_u pushBack 1;
_p pushBack 300;

_i pushBack "CUP_arifle_CZ805_GL";
_u pushBack 1;
_p pushBack 400;

_i pushBack "CUP_arifle_CZ805_A2";
_u pushBack 1;
_p pushBack 300;

_i pushBack "CUP_arifle_CZ805_B";
_u pushBack 2;
_p pushBack 500;

_i pushBack "CUP_arifle_CZ805_B_GL";
_u pushBack 2;
_p pushBack 600;

//VZ 58 Family

_i pushBack "CUP_arifle_Sa58P";
_u pushBack 2;
_p pushBack 500;

_i pushBack "CUP_arifle_Sa58V";
_u pushBack 2;
_p pushBack 500;

_i pushBack "CUP_arifle_Sa58RIS1";
_u pushBack 2;
_p pushBack 500;

_i pushBack "CUP_arifle_Sa58RIS2";
_u pushBack 2;
_p pushBack 500;

_i pushBack "CUP_arifle_Sa58RIS2_gl";
_u pushBack 2;
_p pushBack 600;

_i pushBack "CUP_arifle_Sa58P_des";
_u pushBack 2;
_p pushBack 500;

_i pushBack "CUP_arifle_Sa58V_camo";
_u pushBack 2;
_p pushBack 500;

_i pushBack "CUP_arifle_Sa58RIS1_des";
_u pushBack 2;
_p pushBack 500;

_i pushBack "CUP_arifle_Sa58RIS2_camo";
_u pushBack 2;
_p pushBack 500;

//XM8 Family
		
_i pushBack "CUP_arifle_XM8_Carbine";
_u pushBack 1;
_p pushBack 350;

_i pushBack "CUP_arifle_XM8_Railed";
_u pushBack 1;
_p pushBack 300;

_i pushBack "CUP_arifle_XM8_Carbine_GL";
_u pushBack 1;
_p pushBack 400;

_i pushBack "CUP_arifle_XM8_Compact";
_u pushBack 1;
_p pushBack 350;

_i pushBack "CUP_arifle_XM8_Carbine_FG";
_u pushBack 1;
_p pushBack 350;

_i pushBack "CUP_arifle_xm8_SAW"; 
_u pushBack 1;
_p pushBack 350;

_i pushBack "CUP_arifle_xm8_sharpshooter"; 
_u pushBack 1;
_p pushBack 350;

//Machine Guns

//RPK Family

_i pushBack "CUP_RPK_74";
_u pushBack 1;
_p pushBack 350;

//PKP Family

_i pushBack "CUP_lmg_Pecheneg";
_u pushBack 2;
_p pushBack 500;

//PKM Family

_i pushBack "CUP_lmg_PKM";
_u pushBack 2;
_p pushBack 500;

//UK59 Family

_i pushBack "CUP_lmg_UK59";
_u pushBack 3;
_p pushBack 550;


//Sniper Rifles

//CZ550 Family

_i pushBack "CUP_srifle_CZ550";
_u pushBack 2;
_p pushBack 500;

//CZ750 Family

_i pushBack "CUP_srifle_CZ750";
_u pushBack 3;
_p pushBack 550;

//SVD Family

_i pushBack "CUP_SVD";
_u pushBack 2;
_p pushBack 550;

_i pushBack "CUP_SVD_CAMO";
_u pushBack 2;
_p pushBack 550;

_i pushBack "CUP_srifle_SVD_des";
_u pushBack 2;
_p pushBack 550;

_i pushBack "CUP_srifle_SVD_des_ghillie_pso";
_u pushBack 2;
_p pushBack 550;

//VSS Family

_i pushBack "CUP_srifle_VSSVintorez";
_u pushBack 3;
_p pushBack 700;

//KSVK Family

_i pushBack "CUP_srifle_ksvk";
_u pushBack 3;
_p pushBack 1000;


//Shotguns
	
//Saiga Family

_i pushBack "CUP_sgun_Saiga12K";
_u pushBack 0;
_p pushBack 100;


//Small Machine Guns (SMGs)
	
//Bizon Family

_i pushBack "CUP_smg_bizon";
_u pushBack 0;
_p pushBack 200;

//Scorpion Family

_i pushBack "CUP_smg_EVO";
_u pushBack 0;
_p pushBack 200;

//Handguns
	
//CZ75 Family

_i pushBack "CUP_hgun_Compact";
_u pushBack 0;
_p pushBack 50;

_i pushBack "CUP_hgun_Duty";
_u pushBack 0;
_p pushBack 50;

_i pushBack "CUP_hgun_Duty_M3X";
_u pushBack 0;
_p pushBack 50;

_i pushBack "CUP_hgun_Phantom";
_u pushBack 0;
_p pushBack 50;

_i pushBack "CUP_CZ_75_D_COMPACT";
_u pushBack 0;
_p pushBack 50;

_i pushBack "CUP_CZ_75_P_07_DUTY";
_u pushBack 0;
_p pushBack 50;

_i pushBack "CUP_CZ_75_SP_01_PHANTOM";
_u pushBack 0;
_p pushBack 50;


//Makarov Family

_i pushBack "CUP_hgun_Makarov";
_u pushBack 0;
_p pushBack 50;

_i pushBack "CUP_MakarovSD";
_u pushBack 0;
_p pushBack 50;

//PB 6P9 Family

_i pushBack "CUP_hgun_PB6P9";
_u pushBack 0;
_p pushBack 50;

//SA-61 Family

_i pushBack "CUP_hgun_SA61";
_u pushBack 0;
_p pushBack 100;

//Launchers

_i pushBack "CUP_glaunch_6G30";
_u pushBack 0;
_p pushBack 600;
	
//Anti-air
		
//9K32 Strela
			
_i pushBack "CUP_launch_9K32Strela";
_u pushBack 2;
_p pushBack 2000;


//9K38 IGLA Family

_i pushBack "CUP_launch_Igla";
_u pushBack 2;
_p pushBack 2000;


//Anti Tank
		
//M47 Dragon Family
		
_i pushBack "CUP_launch_M47";
_u pushBack 2;
_p pushBack 2000;

//METIS Family

_i pushBack "CUP_launch_Metis";
_u pushBack 2;
_p pushBack 1000;



//RPG-7 Family

_i pushBack "CUP_launch_RPG7V";
_u pushBack 1;
_p pushBack 400;


//RPG-18 Family

_i pushBack "CUP_launch_RPG18";
_u pushBack 0;
_p pushBack 100;


//---Caliber 5.45x39mm

_i pushBack "CUP_30Rnd_545x39_AK_M";
_u pushBack 0;
_p pushBack 20;

_i pushBack "CUP_30Rnd_TE1_Green_Tracer_545x39_AK_M";
_u pushBack 0;
_p pushBack 20;

_i pushBack "CUP_30Rnd_TE1_Red_Tracer_545x39_AK_M";
_u pushBack 0;
_p pushBack 20;

_i pushBack "CUP_30Rnd_TE1_White_Tracer_545x39_AK_M";
_u pushBack 0;
_p pushBack 20;

_i pushBack "CUP_30Rnd_TE1_Yellow_Tracer_545x39_AK_M";
_u pushBack 0;
_p pushBack 20;

_i pushBack "CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M";
_u pushBack 0;
_p pushBack 20;


//---Caliber 5.56x45mm

_i pushBack "CUP_20Rnd_556x45_Stanag";
_u pushBack 0;
_p pushBack 15;

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

_i pushBack "CUP_30Rnd_556x45_Stanag";
_u pushBack 0;
_p pushBack 20;



//---Caliber .303

_i pushBack "CUP_10x_303_M";
_u pushBack 0;
_p pushBack 40;


//---Caliber 7.62x39mm

_i pushBack "CUP_30Rnd_Sa58_M";
_u pushBack 0;
_p pushBack 40;

_i pushBack "CUP_30Rnd_Sa58_M_TracerG";
_u pushBack 0;
_p pushBack 40;

_i pushBack "CUP_30Rnd_Sa58_M_TracerR";
_u pushBack 0;
_p pushBack 40;

_i pushBack "CUP_30Rnd_Sa58_M_TracerY";
_u pushBack 0;
_p pushBack 40;

_i pushBack "CUP_30Rnd_762x39_AK47_M";
_u pushBack 0;
_p pushBack 40;


//---Caliber 7.62x51mm

_i pushBack "CUP_5Rnd_762x51_M24";
_u pushBack 0;
_p pushBack 40;

_i pushBack "CUP_5x_22_LR_17_HMR_M";
_u pushBack 0;
_p pushBack 40;

_i pushBack "CUP_10Rnd_762x51_CZ750";
_u pushBack 0;
_p pushBack 40;

_i pushBack "CUP_10Rnd_762x51_CZ750_Tracer";
_u pushBack 0;
_p pushBack 40;

//--20Rnd_762x51_Mag
_i pushBack "CUP_20Rnd_762x51_FNFAL_M";
_u pushBack 0;
_p pushBack 40;

_i pushBack "CUP_20Rnd_762x51_DMR";
_u pushBack 0;
_p pushBack 40;

_i pushBack "CUP_20Rnd_TE1_Yellow_Tracer_762x51_DMR";
_u pushBack 0;
_p pushBack 40;

_i pushBack "CUP_20Rnd_TE1_Red_Tracer_762x51_DMR";
_u pushBack 0;
_p pushBack 40;

_i pushBack "CUP_20Rnd_TE1_Green_Tracer_762x51_DMR";
_u pushBack 0;
_p pushBack 40;

_i pushBack "CUP_20Rnd_TE1_White_Tracer_762x51_DMR";
_u pushBack 0;
_p pushBack 40;

_i pushBack "CUP_20Rnd_762x51_CZ805B";
_u pushBack 0;
_p pushBack 40;

_i pushBack "CUP_20Rnd_TE1_Yellow_Tracer_762x51_CZ805B";
_u pushBack 0;
_p pushBack 40;

_i pushBack "CUP_20Rnd_TE1_Red_Tracer_762x51_CZ805B";
_u pushBack 0;
_p pushBack 40;

_i pushBack "CUP_20Rnd_TE1_Green_Tracer_762x51_CZ805B";
_u pushBack 0;
_p pushBack 40;

_i pushBack "CUP_20Rnd_TE1_White_Tracer_762x51_CZ805B";
_u pushBack 0;
_p pushBack 40;

_i pushBack "CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_100Rnd_TE4_White_Tracer_762x51_M240_M";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_200Rnd_TE4_White_Tracer_762x51_M240_M";
_u pushBack 0;
_p pushBack 200;

_i pushBack "CUP_200Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M";
_u pushBack 0;
_p pushBack 200;

_i pushBack "CUP_200Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";
_u pushBack 0;
_p pushBack 200;


//---Caliber 7.62x54mm

_i pushBack "CUP_10Rnd_762x54_SVD_M";
_u pushBack 0;
_p pushBack 40;

_i pushBack "CUP_50Rnd_UK59_762x54R_Tracer";
_u pushBack 0;
_p pushBack 50;

_i pushBack "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M";
_u pushBack 0;
_p pushBack 100;


//---Caliber 7.65x17mm

_i pushBack "CUP_10Rnd_B_765x17_Ball_M";
_u pushBack 0;
_p pushBack 30;

_i pushBack "CUP_20Rnd_B_765x17_Ball_M";
_u pushBack 0;
_p pushBack 40;


//---Caliber .338

_i pushBack "CUP_5Rnd_86x70_L115A1";
_u pushBack 0;
_p pushBack 100;


//---Caliber 9x18mm

_i pushBack "CUP_8Rnd_9x18_Makarov_M";
_u pushBack 0;
_p pushBack 10;

_i pushBack "CUP_8Rnd_9x18_MakarovSD_M";
_u pushBack 0;
_p pushBack 15;


//---Caliber 9x19mm

_i pushBack "CUP_10Rnd_9x19_Compact";
_u pushBack 0;
_p pushBack 10;

_i pushBack "CUP_15Rnd_9x19_M9";
_u pushBack 0;
_p pushBack 15;

_i pushBack "CUP_17Rnd_9x19_glock17";
_u pushBack 0;
_p pushBack 15;

_i pushBack "CUP_18Rnd_9x19_Phantom";
_u pushBack 0;
_p pushBack 15;

_i pushBack "CUP_30Rnd_9x19_EVO";
_u pushBack 0;
_p pushBack 20;

_i pushBack "CUP_30Rnd_9x19_UZI";
_u pushBack 0;
_p pushBack 20;

_i pushBack "CUP_30Rnd_9x19_MP5";
_u pushBack 0;
_p pushBack 20;

_i pushBack "CUP_64Rnd_9x19_Bizon_M";
_u pushBack 0;
_p pushBack 40;

_i pushBack "CUP_64Rnd_Green_Tracer_9x19_Bizon_M";
_u pushBack 0;
_p pushBack 40;

_i pushBack "CUP_64Rnd_Red_Tracer_9x19_Bizon_M";
_u pushBack 0;
_p pushBack 40;

_i pushBack "CUP_64Rnd_White_Tracer_9x19_Bizon_M";
_u pushBack 0;
_p pushBack 40;

_i pushBack "CUP_64Rnd_Yellow_Tracer_9x19_Bizon_M";
_u pushBack 0;
_p pushBack 40;


//---Caliber 9x21mm

_i pushBack "16Rnd_9x21_Mag";
_u pushBack 0;
_p pushBack 50;

_i pushBack "30Rnd_9x21_Mag";
_u pushBack 0;
_p pushBack 90;


//---Caliber 9x39mm

_i pushBack "CUP_10Rnd_9x39_SP5_VSS_M";
_u pushBack 0;
_p pushBack 50;

_i pushBack "CUP_20Rnd_9x39_SP5_VSS_M";
_u pushBack 0;
_p pushBack 100;


//---Caliber .45

_i pushBack "CUP_6Rnd_45ACP_M";
_u pushBack 0;
_p pushBack 10;

_i pushBack "CUP_7Rnd_45ACP_1911";
_u pushBack 0;
_p pushBack 10;


//---Caliber 12.7x99mm

_i pushBack "CUP_5Rnd_127x99_as50_M";
_u pushBack 0;
_p pushBack 50;

_i pushBack "CUP_10Rnd_127x99_M107";
_u pushBack 0;
_p pushBack 80;


//---Caliber 12.7x108mm

_i pushBack "CUP_5Rnd_127x108_KSVK_M";
_u pushBack 0;
_p pushBack 50;


//---Caliber 12Gauge/Shotguns

_i pushBack "CUP_8Rnd_B_Saiga12_74Slug_M";
_u pushBack 0;
_p pushBack 10;

_i pushBack "CUP_8Rnd_B_Saiga12_74Pellets_M";
_u pushBack 0;
_p pushBack 10;

_i pushBack "CUP_8Rnd_B_Beneli_74Slug";
_u pushBack 0;
_p pushBack 10;

_i pushBack "CUP_8Rnd_B_Beneli_74Pellets";
_u pushBack 0;
_p pushBack 10;

_i pushBack "CUP_20Rnd_B_AA12_Pellets";
_u pushBack 0;
_p pushBack 20;

_i pushBack "CUP_20Rnd_B_AA12_74Slug";
_u pushBack 0;
_p pushBack 20;

_i pushBack "CUP_20Rnd_B_AA12_HE";
_u pushBack 0;
_p pushBack 50;


//--- Caliber 40mm Grenades

_i pushBack "1Rnd_HE_Grenade_shell";
_u pushBack 0;
_p pushBack 10;

_i pushBack "CUP_1Rnd_HE_M203";
_u pushBack 0;
_p pushBack 10;

_i pushBack "CUP_1Rnd_HEDP_M203";
_u pushBack 0;
_p pushBack 10;

_i pushBack "CUP_1Rnd_HE_GP25_M";
_u pushBack 0;
_p pushBack 10;

//--- Smoke

_i pushBack "1Rnd_Smoke_Grenade_shell";
_u pushBack 0;
_p pushBack 10;

_i pushBack "CUP_1Rnd_SMOKE_GP25_M";
_u pushBack 0;
_p pushBack 10;

_i pushBack "CUP_1Rnd_Smoke_M203";
_u pushBack 0;
_p pushBack 10;

_i pushBack "1Rnd_SmokeRed_Grenade_shell";
_u pushBack 0;
_p pushBack 10;

_i pushBack "CUP_1Rnd_SmokeRed_GP25_M";
_u pushBack 0;
_p pushBack 10;

_i pushBack "CUP_1Rnd_SmokeRed_M203";
_u pushBack 0;
_p pushBack 10;

_i pushBack "1Rnd_SmokeGreen_Grenade_shell";
_u pushBack 0;
_p pushBack 10;

_i pushBack "CUP_1Rnd_SmokeGreen_GP25_M";
_u pushBack 0;
_p pushBack 10;

_i pushBack "CUP_1Rnd_SmokeGreen_M203";
_u pushBack 0;
_p pushBack 10;

_i pushBack "1Rnd_SmokeYellow_Grenade_shell";
_u pushBack 0;
_p pushBack 10;

_i pushBack "CUP_1Rnd_SmokeYellow_GP25_M";
_u pushBack 0;
_p pushBack 10;

_i pushBack "CUP_1Rnd_SmokeYellow_M203";
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


//--- Flares

_i pushBack "UGL_FlareWhite_F";
_u pushBack 0;
_p pushBack 10;

_i pushBack "CUP_FlareWhite_GP25_M";
_u pushBack 0;
_p pushBack 10;

_i pushBack "CUP_FlareWhite_M203";
_u pushBack 0;
_p pushBack 10;

_i pushBack "UGL_FlareRed_F";
_u pushBack 0;
_p pushBack 10;

_i pushBack "CUP_FlareRed_GP25_M";
_u pushBack 0;
_p pushBack 10;

_i pushBack "CUP_FlareRed_M203";
_u pushBack 0;
_p pushBack 10;

_i pushBack "UGL_FlareGreen_F";
_u pushBack 0;
_p pushBack 10;

_i pushBack "CUP_FlareGreen_GP25_M";
_u pushBack 0;
_p pushBack 10;

_i pushBack "CUP_FlareGreen_M203";
_u pushBack 0;
_p pushBack 10;

_i pushBack "UGL_FlareYellow_F";
_u pushBack 0;
_p pushBack 10;

_i pushBack "CUP_FlareYellow_GP25_M";
_u pushBack 0;
_p pushBack 10;

_i pushBack "CUP_FlareYellow_M203";
_u pushBack 0;
_p pushBack 10;

_i pushBack "UGL_FlareCIR_F";
_u pushBack 0;
_p pushBack 10;


//--- Magazine 6 Rounds

_i pushBack "CUP_6Rnd_HE_M203";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_6Rnd_Smoke_M203";
_u pushBack 0;
_p pushBack 10;

_i pushBack "CUP_6Rnd_SmokeRed_M203";
_u pushBack 0;
_p pushBack 10;

_i pushBack "CUP_6Rnd_SmokeGreen_M203";
_u pushBack 0;
_p pushBack 10;

_i pushBack "CUP_6Rnd_SmokeYellow_M203";
_u pushBack 0;
_p pushBack 10;

_i pushBack "CUP_6Rnd_FlareWhite_M203";
_u pushBack 0;
_p pushBack 10;

_i pushBack "CUP_6Rnd_FlareGreen_M203";
_u pushBack 0;
_p pushBack 10;

_i pushBack "CUP_6Rnd_FlareRed_M203";
_u pushBack 0;
_p pushBack 10;

_i pushBack "CUP_6Rnd_FlareYellow_M203";
_u pushBack 0;
_p pushBack 10;

_i pushBack "CUP_6Rnd_HE_GP25_M";
_u pushBack 0;
_p pushBack 100;

//--- Handgrenades

_i pushBack "CUP_HandGrenade_M67";
_u pushBack 0;
_p pushBack 50;

_i pushBack "CUP_HandGrenade_L109A1_HE";
_u pushBack 0;
_p pushBack 50;

_i pushBack "CUP_HandGrenade_L109A2_HE";
_u pushBack 0;
_p pushBack 50;

_i pushBack "CUP_HandGrenade_RGD5";
_u pushBack 0;
_p pushBack 50;

_i pushBack "CUP_HandGrenade_RGO";
_u pushBack 0;
_p pushBack 50;


//--- Bombs Mines IEDS

_i pushBack "CUP_TimeBomb_M";
_u pushBack 2;
_p pushBack 500;

_i pushBack "CUP_Mine_M";
_u pushBack 1;
_p pushBack 300;

_i pushBack "CUP_MineE_M";
_u pushBack 1;
_p pushBack 300;

_i pushBack "CUP_PipeBomb_M";
_u pushBack 2;
_p pushBack 300;

_i pushBack "CUP_IED_V1_M";
_u pushBack 0;
_p pushBack 300;

_i pushBack "CUP_IED_V2_M";
_u pushBack 0;
_p pushBack 300;

_i pushBack "CUP_IED_V3_M";
_u pushBack 0;
_p pushBack 300;

_i pushBack "CUP_IED_V4_M";
_u pushBack 0;
_p pushBack 300;


//--- Rockets Bombs

_i pushBack "CUP_Strela_2_M";
_u pushBack 2;
_p pushBack 900;

_i pushBack "CUP_Igla_M";
_u pushBack 2;
_p pushBack 900;

_i pushBack "CUP_Dragon_EP1_M"; //M47 Dragon
_u pushBack 0;
_p pushBack 500;

_i pushBack "CUP_AT13_M";  //metis missiles
_u pushBack 0;
_p pushBack 700;

_i pushBack "CUP_RPG18_M";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_MAAWS_HEDP_M";
_u pushBack 0;
_p pushBack 300;

_i pushBack "CUP_MAAWS_HEAT_M";
_u pushBack 0;
_p pushBack 300;

_i pushBack "CUP_PG7V_M";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_PG7VL_M";
_u pushBack 0;
_p pushBack 150;

_i pushBack "CUP_PG7VR_M";
_u pushBack 0;
_p pushBack 200;

_i pushBack "CUP_OG7_M";
_u pushBack 0;
_p pushBack 250;

_i pushBack "CUP_PG9_AT_M";
_u pushBack 0;
_p pushBack 300;

_i pushBack "CUP_OG9_HE_M";
_u pushBack 0;
_p pushBack 250;

//--CUP Attachments

//--Kobra Optics

_i pushBack "CUP_optic_Kobra";
_u pushBack 0;
_p pushBack 200;


//--Holo Optics

_i pushBack "CUP_optic_HoloBlack";
_u pushBack 0;
_p pushBack 200;

_i pushBack "CUP_optic_HoloWdl";
_u pushBack 0;
_p pushBack 200;

_i pushBack "CUP_optic_HoloDesert";
_u pushBack 0;
_p pushBack 200;

_i pushBack "CUP_optic_Eotech533";
_u pushBack 0;
_p pushBack 200;

_i pushBack "CUP_optic_Eotech533Grey";
_u pushBack 0;
_p pushBack 200;


//--CCO Aimpoint Optics

_i pushBack "CUP_optic_CompM4";
_u pushBack 0;
_p pushBack 200;

_i pushBack "CUP_optic_CompM2_Black";
_u pushBack 0;
_p pushBack 200;

_i pushBack "CUP_optic_CompM2_Woodland";
_u pushBack 0;
_p pushBack 200;

_i pushBack "CUP_optic_CompM2_Woodland2";
_u pushBack 0;
_p pushBack 200;

_i pushBack "CUP_optic_CompM2_Desert";
_u pushBack 0;
_p pushBack 200;

//--Trijicon RedDot Optics

_i pushBack "CUP_optic_TrijiconRx01_desert";
_u pushBack 2;
_p pushBack 400;

_i pushBack "CUP_optic_TrijiconRx01_black";
_u pushBack 2;
_p pushBack 400;


//--Schmidt and Bender ShortDot Optics

_i pushBack "CUP_optic_SB_11_4x20_PM";
_u pushBack 3;
_p pushBack 800;


//--Meopta Optics

_i pushBack "CUP_optic_ZDDot";
_u pushBack 0;
_p pushBack 200;

_i pushBack "CUP_optic_MRad";
_u pushBack 0;
_p pushBack 200;


//--Trijicon RCO and ACOG Optics

_i pushBack "CUP_optic_RCO";
_u pushBack 2;
_p pushBack 400;

_i pushBack "CUP_optic_RCO_desert";
_u pushBack 2;
_p pushBack 400;

_i pushBack "CUP_optic_ACOG";
_u pushBack 2;
_p pushBack 400;


//--Midrange Optics

_i pushBack "CUP_optic_SUSAT";
_u pushBack 2;
_p pushBack 400;

_i pushBack "CUP_optic_ElcanM145";
_u pushBack 2;
_p pushBack 400;

_i pushBack "CUP_optic_ELCAN_SpecterDR";
_u pushBack 2;
_p pushBack 400;

_i pushBack "CUP_optic_CWS";
_u pushBack 3;
_p pushBack 1600;


//--PSO Optics

_i pushBack "CUP_optic_PSO_1";
_u pushBack 1;
_p pushBack 800;

_i pushBack "CUP_optic_PSO_3";
_u pushBack 1;
_p pushBack 800;


//--DMR Sniper Optics

_i pushBack "CUP_optic_SB_3_12x50_PMII";
_u pushBack 3;
_p pushBack 800;

_i pushBack "CUP_optic_LeupoldMk4";
_u pushBack 3;
_p pushBack 800;

_i pushBack "CUP_optic_Leupold_VX3";
_u pushBack 3;
_p pushBack 800;

_i pushBack "CUP_optic_LeupoldM3LR";
_u pushBack 3;
_p pushBack 800;

_i pushBack "CUP_optic_LeupoldMk4_10x40_LRT_Desert";
_u pushBack 3;
_p pushBack 800;

_i pushBack "CUP_optic_LeupoldMk4_10x40_LRT_Woodland";
_u pushBack 3;
_p pushBack 800;

_i pushBack "CUP_optic_LeupoldMk4_CQ_T";
_u pushBack 3;
_p pushBack 800;

_i pushBack "CUP_optic_LeupoldMk4_MRT_tan";
_u pushBack 3;
_p pushBack 800;

_i pushBack "CUP_optic_PechenegScope";
_u pushBack 3;
_p pushBack 800;


//--Nightvision TWS Optics

_i pushBack "CUP_optic_AN_PAS_13c1";
_u pushBack 2;
_p pushBack 1000;

_i pushBack "CUP_optic_AN_PAS_13c2";
_u pushBack 3;
_p pushBack 1600;

_i pushBack "CUP_optic_GOSHAWK";
_u pushBack 3;
_p pushBack 1000;

_i pushBack "CUP_optic_AN_PVS_10";
_u pushBack 3;
_p pushBack 1000;

_i pushBack "CUP_optic_AN_PVS_4";
_u pushBack 3;
_p pushBack 1000;

_i pushBack "CUP_optic_NSPU";
_u pushBack 2;
_p pushBack 1000;


//--Muzzle Attachment
//--Silencer Attachment

_i pushBack "CUP_muzzle_snds_AWM";
_u pushBack 3;
_p pushBack 700;

_i pushBack "CUP_muzzle_PBS4";
_u pushBack 0;
_p pushBack 500;

_i pushBack "CUP_muzzle_PB6P9";
_u pushBack 0;
_p pushBack 200;

_i pushBack "CUP_muzzle_Bizon";
_u pushBack 0;
_p pushBack 200;

_i pushBack "CUP_muzzle_snds_MicroUzi";
_u pushBack 0;
_p pushBack 200;

//--Side Attachment
//--Laser Attachment

_i pushBack "CUP_acc_ANPEQ_15";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_acc_ANPEQ_2";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_acc_ANPEQ_2_camo";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_acc_ANPEQ_2_desert";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_acc_ANPEQ_2_grey";
_u pushBack 0;
_p pushBack 100;


//--Flashlight Attachment

_i pushBack "CUP_acc_Flashlight";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_acc_Flashlight_wdl";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_acc_Flashlight_desert";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_acc_XM8_light_module";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_acc_CZ_M3X";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_acc_Glock17_Flashlight";
_u pushBack 0;
_p pushBack 100;

//--Uniforms

_i pushBack "CUP_U_O_SLA_Officer_Suit";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_U_O_SLA_Overalls_Pilot";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_U_O_SLA_Overalls_Tank";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_U_O_SLA_MixedCamo";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_U_O_SLA_Desert";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_U_O_SLA_Green";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_U_O_SLA_Urban";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_U_O_SLA_Officer";
_u pushBack 0;
_p pushBack 100;


_i pushBack "CUP_U_O_TK_Ghillie";
_u pushBack 2;
_p pushBack 600;

_i pushBack "CUP_U_O_TK_Ghillie_Top";
_u pushBack 1;
_p pushBack 300;

_i pushBack "CUP_U_O_TK_Officer";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_U_O_TK_Green";
_u pushBack 1;
_p pushBack 100;

_i pushBack "CUP_U_O_TK_MixedCamo";
_u pushBack 1;
_p pushBack 100;

//--Vests

_i pushBack "CUP_V_O_SLA_Flak_Vest01";
_u pushBack 2;
_p pushBack 100;

_i pushBack "CUP_V_O_SLA_Flak_Vest02";
_u pushBack 2;
_p pushBack 100;

_i pushBack "CUP_V_O_SLA_Flak_Vest03";
_u pushBack 2;
_p pushBack 100;

_i pushBack "CUP_V_O_SLA_Carrier_Belt";
_u pushBack 2;
_p pushBack 100;

_i pushBack "CUP_V_O_SLA_Carrier_Belt02";
_u pushBack 2;
_p pushBack 100;

_i pushBack "CUP_V_O_SLA_Carrier_Belt03";
_u pushBack 2;
_p pushBack 100;


_i pushBack "CUP_V_O_TK_Vest_1";
_u pushBack 1;
_p pushBack 100;

_i pushBack "CUP_V_O_TK_Vest_2";
_u pushBack 1;
_p pushBack 100;

_i pushBack "CUP_V_O_TK_CrewBelt";
_u pushBack 1;
_p pushBack 100;

_i pushBack "CUP_V_O_TK_OfficerBelt";
_u pushBack 1;
_p pushBack 100;

_i pushBack "CUP_V_O_TK_OfficerBelt2";
_u pushBack 1;
_p pushBack 100;

_i pushBack "CUP_V_OI_TKI_Jacket1_01";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_V_OI_TKI_Jacket1_02";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_V_OI_TKI_Jacket1_03";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_V_OI_TKI_Jacket4_04";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_V_OI_TKI_Jacket4_05";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_V_OI_TKI_Jacket4_02";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_V_OI_TKI_Jacket4_06";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_V_OI_TKI_Jacket4_03";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_V_OI_TKI_Jacket4_01";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_V_OI_TKI_Jacket3_02";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_V_OI_TKI_Jacket3_03";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_V_OI_TKI_Jacket3_01";
_u pushBack 0;
_p pushBack 100;


//--Packs


_i pushBack "CUP_B_CivPack_WDL";
_u pushBack 3;
_p pushBack 500;

_i pushBack "CUP_B_HikingPack_Civ";
_u pushBack 3;
_p pushBack 600;

_i pushBack "CUP_B_ACRPara_m95";
_u pushBack 3;
_p pushBack 600;

_i pushBack "CUP_B_ACRScout_m95";
_u pushBack 0;
_p pushBack 50;

_i pushBack "CUP_B_GER_Pack_Flecktarn";
_u pushBack 3;
_p pushBack 500;

_i pushBack "CUP_B_GER_Pack_Tropentarn";
_u pushBack 3;
_p pushBack 500;

_i pushBack "CUP_B_GER_Medic_Desert";
_u pushBack 3;
_p pushBack 400;

_i pushBack "CUP_B_GER_Medic_Flecktarn";
_u pushBack 3;
_p pushBack 400;

_i pushBack "CUP_B_GER_Medic_Tropentarn";
_u pushBack 3;
_p pushBack 400;

_i pushBack "CUP_B_M2_Gun_Bag";
_u pushBack 3;
_p pushBack 600;

_i pushBack "CUP_B_M2_Tripod_Bag";
_u pushBack 3;
_p pushBack 100;

_i pushBack "CUP_B_M2_MiniTripod_Bag";
_u pushBack 3;
_p pushBack 100;

_i pushBack "CUP_B_RPGPack_Khaki";
_u pushBack 1;
_p pushBack 175;

_i pushBack "CUP_B_RUS_Backpack";
_u pushBack 2;
_p pushBack 500;

_i pushBack "CUP_B_AlicePack_Khaki";
_u pushBack 3;
_p pushBack 600;

_i pushBack "CUP_B_AlicePack_Bedroll";
_u pushBack 3;
_p pushBack 600;

_i pushBack "CUP_B_Bergen_BAF";
_u pushBack 3;
_p pushBack 600;



//--Head

_i pushBack "CUP_H_C_Policecap_01";
_u pushBack 0;
_p pushBack 10;

_i pushBack "CUP_H_SLA_BeanieGreen";
_u pushBack 0;
_p pushBack 10;

_i pushBack "CUP_H_SLA_Helmet";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_H_SLA_OfficerCap";
_u pushBack 0;
_p pushBack 10;

_i pushBack "CUP_H_SLA_Pilot_Helmet";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_H_SLA_SLCap";
_u pushBack 0;
_p pushBack 10;

_i pushBack "CUP_H_SLA_TankerHelmet";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_H_TK_Beret";
_u pushBack 0;
_p pushBack 10;

_i pushBack "CUP_H_TK_Helmet";
_u pushBack 0;
_p pushBack 10;

_i pushBack "CUP_H_TK_PilotHelmet";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_H_TK_Lungee";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_H_TK_TankerHelmet";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_H_C_Ushanka_03";
_u pushBack 0;
_p pushBack 100;


_i pushBack "CUP_H_RACS_Helmet_Goggles_DPAT";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_H_RACS_Helmet_DPAT";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_H_RACS_Helmet_Headset_DPAT";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_H_RACS_Helmet_DES";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_H_RACS_Helmet_Goggles_DES";
_u pushBack 0;
_p pushBack 100;

_i pushBack "CUP_H_RACS_Helmet_Headset_DES";
_u pushBack 0;
_p pushBack 100;



//--Goggles

_i pushBack "CUP_TK_NeckScarf";
_u pushBack 0;
_p pushBack 10;

_i pushBack "CUP_FR_NeckScarf";
_u pushBack 0;
_p pushBack 10;

_i pushBack "CUP_FR_NeckScarf2";
_u pushBack 0;
_p pushBack 10;


//--Other

_i pushBack "CUP_NVG_PVS7";
_u pushBack 0;
_p pushBack 500;

_i pushBack "CUP_SOFLAM";
_u pushBack 3;
_p pushBack 1000;

_i pushBack "CUP_LRTV";
_u pushBack 3;
_p pushBack 1000;

_i pushBack "CUP_Vector21Nite";
_u pushBack 1;
_p pushBack 500;



[_faction, _i, _u, _p] call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_Config_Set.sqf"; 

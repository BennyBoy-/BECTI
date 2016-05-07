private ["_faction", "_i", "_p", "_side", "_u"];

_side = _this;
_faction = "West";

_i = [];
_u = [];
_p = [];

//************************C.U.P Stuff************************

//Shields

_i = _i + ["CUP_hgun_BallisticShield_Armed"]; 
_u = _u + [1];
_p = _p + [200];

//RIFLES
	
//MK12 Family
			
_i = _i + ["CUP_srifle_Mk12SPR"]; 
_u = _u + [2];
_p = _p + [200];
	
//FN FAL Family
			
_i = _i + ["CUP_arifle_FNFAL"]; 
_u = _u + [3];
_p = _p + [300];

_i = _i + ["CUP_arifle_FNFAL_railed"];  
_u = _u + [3];
_p = _p + [310];

_i = _i + ["CUP_lmg_minimi_railed"];  
_u = _u + [3];
_p = _p + [400];

//G36 Family

_i = _i + ["CUP_arifle_G36A"];
_u = _u + [4];
_p = _p + [200];

_i = _i + ["CUP_arifle_G36A_camo"];
_u = _u + [4];
_p = _p + [210];

_i = _i + ["CUP_arifle_G36K"];
_u = _u + [4];
_p = _p + [200];

_i = _i + ["CUP_arifle_G36K_camo"];
_u = _u + [4];
_p = _p + [210];

_i = _i + ["CUP_arifle_G36C"];
_u = _u + [4];
_p = _p + [200];

_i = _i + ["CUP_arifle_G36C_camo"];
_u = _u + [4];
_p = _p + [210];

//L85A2 Family

_i = _i + ["CUP_arifle_L85A2"];
_u = _u + [0];
_p = _p + [300];

_i = _i + ["CUP_arifle_L85A2_GL"];
_u = _u + [0];
_p = _p + [350];

//L129A1 Family

_i = _i + ["CUP_srifle_L129A1"];
_u = _u + [0];
_p = _p + [300];

_i = _i + ["CUP_srifle_L129A1_HG"];
_u = _u + [0];
_p = _p + [350];

//M16 Family

_i = _i + ["CUP_arifle_M16A2"];
_u = _u + [0];
_p = _p + [200];

_i = _i + ["CUP_arifle_M16A2_GL"];
_u = _u + [0];
_p = _p + [225];

_i = _i + ["CUP_arifle_M16A4_Base"];
_u = _u + [0];
_p = _p + [200];

_i = _i + ["CUP_arifle_M16A4_GL"];
_u = _u + [0];
_p = _p + [235];

//M4 Family

_i = _i + ["CUP_arifle_M4A1_BUIS_GL"];
_u = _u + [2];
_p = _p + [250];

_i = _i + ["CUP_arifle_M4A1_BUIS_camo_GL"];
_u = _u + [2];
_p = _p + [250];

_i = _i + ["CUP_arifle_M4A1_BUIS_desert_GL"];
_u = _u + [2];
_p = _p + [250];

_i = _i + ["CUP_arifle_M4A1"];
_u = _u + [2];
_p = _p + [225];

_i = _i + ["CUP_arifle_M4A1_camo"];
_u = _u + [2];
_p = _p + [225];

_i = _i + ["CUP_arifle_M4A1_black"];
_u = _u + [2];
_p = _p + [225];

_i = _i + ["CUP_arifle_M4A1_desert"];
_u = _u + [2];
_p = _p + [225];

_i = _i + ["CUP_arifle_M4A3_desert"];
_u = _u + [2];
_p = _p + [225];

//MK16 Family

_i = _i + ["CUP_arifle_Mk16_STD"];
_u = _u + [300];
_p = _p + [4];

_i = _i + ["CUP_arifle_Mk16_STD_FG"];
_u = _u + [4];
_p = _p + [300];

_i = _i + ["CUP_arifle_Mk16_STD_SFG"];
_u = _u + [4];
_p = _p + [300];

_i = _i + ["CUP_arifle_Mk16_STD_EGLM"];
_u = _u + [4];
_p = _p + [325];

_i = _i + ["CUP_arifle_Mk16_CQC"];
_u = _u + [4];
_p = _p + [300];

_i = _i + ["CUP_arifle_Mk16_CQC_FG"];
_u = _u + [4];
_p = _p + [300];

_i = _i + ["CUP_arifle_Mk16_CQC_SFG"];
_u = _u + [4];
_p = _p + [300];

_i = _i + ["CUP_arifle_Mk16_CQC_EGLM"];
_u = _u + [4];
_p = _p + [325];

_i = _i + ["CUP_arifle_Mk16_SV"];
_u = _u + [4];
_p = _p + [325];

//MK17 Family
		
_i = _i + ["CUP_arifle_Mk17_CQC"];
_u = _u + [4];
_p = _p + [350];

_i = _i + ["CUP_arifle_Mk17_CQC_FG"];
_u = _u + [4];
_p = _p + [350];

_i = _i + ["CUP_arifle_Mk17_CQC_SFG"];
_u = _u + [4];
_p = _p + [350];

_i = _i + ["CUP_arifle_Mk17_CQC_EGLM"];
_u = _u + [4];
_p = _p + [375];

_i = _i + ["CUP_arifle_Mk17_STD"];
_u = _u + [4];
_p = _p + [350];

_i = _i + ["CUP_arifle_Mk17_STD_FG"];
_u = _u + [4];
_p = _p + [350];

_i = _i + ["CUP_arifle_Mk17_STD_SFG"];
_u = _u + [4];
_p = _p + [350];

_i = _i + ["CUP_arifle_Mk17_STD_EGLM"];
_u = _u + [4];
_p = _p + [375];

//MK20 Family

_i = _i + ["CUP_arifle_Mk20"];
_u = _u + [4];
_p = _p + [350];

		
//Machine Guns
	
//L86A2 Family

_i = _i + ["CUP_arifle_L86A2"];
_u = _u + [3];
_p = _p + [310];

//L110 Family

_i = _i + ["CUP_lmg_L110A1"];
_u = _u + [3];
_p = _p + [350];

//L7A2 Family

_i = _i + ["CUP_lmg_L7A2"];
_u = _u + [4];
_p = _p + [450];

//MG36 Family

_i = _i + ["CUP_arifle_MG36"];
_u = _u + [1];
_p = _p + [350];

_i = _i + ["CUP_arifle_MG36_camo"];
_u = _u + [1];
_p = _p + [350];

_i = _i + ["CUP_MG36_camo"];
_u = _u + [1];
_p = _p + [350];

//M249 Family

_i = _i + ["CUP_lmg_M249"];
_u = _u + [3];
_p = _p + [350];


//M240 Family
	
_i = _i + ["CUP_lmg_m249_pip3"];
_u = _u + [3];
_p = _p + [450];

_i = _i + ["CUP_lmg_M249_E2"];
_u = _u + [3];
_p = _p + [450];

_i = _i + ["CUP_lmg_m249_para"];
_u = _u + [3];
_p = _p + [450];

//M60 Family

_i = _i + ["CUP_lmg_M60A4"];
_u = _u + [2];
_p = _p + [400];

//MK48 Family

_i = _i + ["CUP_lmg_Mk48_des"];
_u = _u + [3];
_p = _p + [450];

_i = _i + ["CUP_lmg_Mk48_wdl"];
_u = _u + [3];
_p = _p + [450];

_i = _i + ["CUP_Mk_48"];
_u = _u + [3];
_p = _p + [450];

//Sniper Rifles
	
//L115A1 Family

_i = _i + ["CUP_srifle_AWM_des"];
_u = _u + [3];
_p = _p + [500];

_i = _i + ["CUP_srifle_AWM_wdl"];
_u = _u + [3];
_p = _p + [300];

//M14 Family

_i = _i + ["CUP_srifle_DMR"];
_u = _u + [3];
_p = _p + [250];

_i = _i + ["CUP_srifle_M14"];
_u = _u + [3];
_p = _p + [250];


//MK24 Family

_i = _i + ["CUP_srifle_M24_des"];
_u = _u + [3];
_p = _p + [250];

_i = _i + ["CUP_srifle_M24_wdl"];
_u = _u + [3];
_p = _p + [250];

_i = _i + ["CUP_srifle_M24_ghillie"];
_u = _u + [3];
_p = _p + [260];


//M40 Family

_i = _i + ["CUP_srifle_M40A3"];
_u = _u + [2];
_p = _p + [270];


//M110 Family

_i = _i + ["CUP_srifle_M110"];
_u = _u + [3];
_p = _p + [270];

//Lee Enfield Family

_i = _i + ["CUP_srifle_LeeEnfield"];
_u = _u + [0];
_p = _p + [10];


//AS50 Family

_i = _i + ["CUP_srifle_AS50"];
_u = _u + [5];
_p = _p + [400];

//M107 Family

_i = _i + ["CUP_srifle_M107_Base"];
_u = _u + [5];
_p = _p + [400];


//Shotguns
	
//AA-12 Family

_i = _i + ["CUP_sgun_AA12"];
_u = _u + [2];
_p = _p + [200];


//M1014 .50 SR Family

_i = _i + ["CUP_sgun_M1014"];
_u = _u + [4];
_p = _p + [20];

_i = _i + ["CUP_M1014"];
_u = _u + [4];
_p = _p + [20];

//Small Machine Guns (SMGs)
	
//MP5 Family

_i = _i + ["CUP_smg_MP5SD6"];
_u = _u + [0];
_p = _p + [30];

_i = _i + ["CUP_smg_MP5A5"];
_u = _u + [0];
_p = _p + [30];

_i = _i + ["CUP_MP5SD"];
_u = _u + [0];
_p = _p + [30];


//Handguns

//M1911 Family

_i = _i + ["CUP_hgun_Colt1911"];
_u = _u + [0];
_p = _p + [10];

_i = _i + ["CUP_Colt1911"];
_u = _u + [0];
_p = _p + [10];

//Glock Family

_i = _i + ["CUP_hgun_Glock17"];
_u = _u + [1];
_p = _p + [10];

//M9 Family

_i = _i + ["CUP_hgun_M9"];
_u = _u + [1];
_p = _p + [10];

/*
_i = _i + ["CUP_M9"];
_u = _u + [1];
_p = _p + [10];
*/
//UZI Family

_i = _i + ["CUP_hgun_MicroUzi"];
_u = _u + [5];
_p = _p + [10];


//Taurus Family

_i = _i + ["CUP_hgun_TaurusTracker455"];
_u = _u + [4];
_p = _p + [10];

_i = _i + ["CUP_hgun_TaurusTracker455_gold"];
_u = _u + [4];
_p = _p + [10];

//Launchers
	
//M32 Grenade Family
		
_i = _i + ["CUP_glaunch_M32"];
_u = _u + [5];
_p = _p + [500];

//M79 Family

_i = _i + ["CUP_glaunch_M79"];
_u = _u + [0];
_p = _p + [150];


//MK13 Family

_i = _i + ["CUP_glaunch_Mk13"];
_u = _u + [2];
_p = _p + [200];


//Anti-air
			
//FIM-92 Stinger Family
		
_i = _i + ["CUP_launch_FIM92Stinger"];
_u = _u + [2];
_p = _p + [2500];

//Anti-Tank
		
//M3 MAAWS Family
			
_i = _i + ["CUP_launch_MAAWS"];
_u = _u + [1];
_p = _p + [800];

_i = _i + ["CUP_launch_MAAWS_Scope"];
_u = _u + [1];
_p = _p + [950];
/*
_i = _i + ["CUP_MAAWS"];
_u = _u + [1];
_p = _p + [800];

//NLAW Family

_i = _i + ["CUP_launch_NLAW"];
_u = _u + [3];
_p = _p + [1000];
*/
_i = _i + ["CUP_BAF_NLAW_Launcher"];
_u = _u + [3];
_p = _p + [3000];

//FGM-148 Javelin Family

_i = _i + ["CUP_launch_Javelin"];
_u = _u + [4];
_p = _p + [7000];
/*
_i = _i + ["CUP_Javelin"];
_u = _u + [4];
_p = _p + [2500];
*/
//MK153 SMAW Family

_i = _i + ["CUP_launch_Mk153Mod0"];
_u = _u + [2];
_p = _p + [900];

_i = _i + ["CUP_launch_Mk153Mod0_SMAWOptics"];
_u = _u + [2];
_p = _p + [1100];


//M136 AT-4 Family

_i = _i + ["CUP_launch_M136"];
_u = _u + [0];
_p = _p + [500];


//---Caliber 5.45x39mm

_i = _i		+ ["CUP_30Rnd_545x39_AK_M"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_30Rnd_TE1_Green_Tracer_545x39_AK_M"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_30Rnd_TE1_Red_Tracer_545x39_AK_M"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_30Rnd_TE1_White_Tracer_545x39_AK_M"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_30Rnd_TE1_Yellow_Tracer_545x39_AK_M"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M"];
_u = _u		+ [0];
_p = _p		+ [10];



//---Caliber 5.56x45mm

_i = _i		+ ["CUP_20Rnd_556x45_Stanag"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["30Rnd_556x45_Stanag"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["30Rnd_556x45_Stanag_Tracer_Red"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["30Rnd_556x45_Stanag_Tracer_Green"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["30Rnd_556x45_Stanag_Tracer_Yellow"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_30Rnd_556x45_Stanag"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_30Rnd_556x45_G36"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_30Rnd_TE1_Red_Tracer_556x45_G36"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_30Rnd_TE1_Green_Tracer_556x45_G36"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_30Rnd_TE1_Yellow_Tracer_556x45_G36"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_100Rnd_556x45_BetaCMag"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_100Rnd_TE1_Green_Tracer_556x45_BetaCMag"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_100Rnd_TE1_Yellow_Tracer_556x45_BetaCMag"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_100Rnd_TE4_Green_Tracer_556x45_M249"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_100Rnd_TE4_Red_Tracer_556x45_M249"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_100Rnd_TE4_Yellow_Tracer_556x45_M249"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_200Rnd_TE4_Red_Tracer_556x45_M249"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_200Rnd_TE4_Yellow_Tracer_556x45_M249"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_200Rnd_TE1_Red_Tracer_556x45_M249"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_200Rnd_TE4_Green_Tracer_556x45_L110A1"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_200Rnd_TE4_Red_Tracer_556x45_L110A1"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_200Rnd_TE4_Yellow_Tracer_556x45_L110A1"];
_u = _u		+ [0];
_p = _p		+ [10];


//---Caliber .303

_i = _i		+ ["CUP_10x_303_M"];
_u = _u		+ [0];
_p = _p		+ [10];



//---Caliber 7.62x51mm

_i = _i		+ ["CUP_5Rnd_762x51_M24"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_5x_22_LR_17_HMR_M"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_10Rnd_762x51_CZ750"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_10Rnd_762x51_CZ750_Tracer"];
_u = _u		+ [0];
_p = _p		+ [10];

//--20Rnd_762x51_Mag
_i = _i		+ ["CUP_20Rnd_762x51_FNFAL_M"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_20Rnd_762x51_DMR"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_20Rnd_TE1_Yellow_Tracer_762x51_DMR"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_20Rnd_TE1_Red_Tracer_762x51_DMR"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_20Rnd_TE1_Green_Tracer_762x51_DMR"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_20Rnd_TE1_White_Tracer_762x51_DMR"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_20Rnd_762x51_B_SCAR"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_20Rnd_TE1_Yellow_Tracer_762x51_SCAR"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_20Rnd_TE1_Red_Tracer_762x51_SCAR"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_20Rnd_TE1_Green_Tracer_762x51_SCAR"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_20Rnd_TE1_White_Tracer_762x51_SCAR"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_20Rnd_762x51_B_M110"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_20Rnd_TE1_Yellow_Tracer_762x51_M110"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_20Rnd_TE1_Red_Tracer_762x51_M110"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_20Rnd_TE1_Green_Tracer_762x51_M110"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_20Rnd_TE1_White_Tracer_762x51_M110"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_20Rnd_762x51_CZ805B"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_20Rnd_TE1_Yellow_Tracer_762x51_CZ805B"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_20Rnd_TE1_Red_Tracer_762x51_CZ805B"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_20Rnd_TE1_Green_Tracer_762x51_CZ805B"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_20Rnd_TE1_White_Tracer_762x51_CZ805B"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_100Rnd_TE4_White_Tracer_762x51_M240_M"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_200Rnd_TE4_White_Tracer_762x51_M240_M"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_200Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_200Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_20Rnd_762x51_L129_M"];
_u = _u		+ [0];
_p = _p		+ [10];


//---Caliber 7.62x54mm

_i = _i		+ ["CUP_10Rnd_762x54_SVD_M"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_50Rnd_UK59_762x54R_Tracer"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M"];
_u = _u		+ [0];
_p = _p		+ [10];


//---Caliber 7.65x17mm

_i = _i		+ ["CUP_10Rnd_B_765x17_Ball_M"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_20Rnd_B_765x17_Ball_M"];
_u = _u		+ [0];
_p = _p		+ [10];


//---Caliber .338

_i = _i		+ ["CUP_5Rnd_86x70_L115A1"];
_u = _u		+ [0];
_p = _p		+ [10];


//---Caliber 9x18mm

_i = _i		+ ["CUP_8Rnd_9x18_Makarov_M"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_8Rnd_9x18_MakarovSD_M"];
_u = _u		+ [0];
_p = _p		+ [10];


//---Caliber 9x19mm

_i = _i		+ ["CUP_10Rnd_9x19_Compact"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_15Rnd_9x19_M9"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_17Rnd_9x19_glock17"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_18Rnd_9x19_Phantom"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_30Rnd_9x19_EVO"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_30Rnd_9x19_UZI"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_30Rnd_9x19_MP5"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_64Rnd_9x19_Bizon_M"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_64Rnd_Green_Tracer_9x19_Bizon_M"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_64Rnd_Red_Tracer_9x19_Bizon_M"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_64Rnd_White_Tracer_9x19_Bizon_M"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_64Rnd_Yellow_Tracer_9x19_Bizon_M"];
_u = _u		+ [0];
_p = _p		+ [10];


//---Caliber 9x21mm

_i = _i		+ ["16Rnd_9x21_Mag"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["30Rnd_9x21_Mag"];
_u = _u		+ [0];
_p = _p		+ [10];


//---Caliber 9x39mm

_i = _i		+ ["CUP_10Rnd_9x39_SP5_VSS_M"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_20Rnd_9x39_SP5_VSS_M"];
_u = _u		+ [0];
_p = _p		+ [10];


//---Caliber .45

_i = _i		+ ["CUP_6Rnd_45ACP_M"];
_u = _u		+ [0];
_p = _p		+ [10];

/*
_i = _i		+ ["CUP_7Rnd_45ACP_1911"];
_u = _u		+ [0];
_p = _p		+ [10];
*/

//---Caliber 12.7x99mm

_i = _i		+ ["CUP_5Rnd_127x99_as50_M"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_10Rnd_127x99_M107"];
_u = _u		+ [0];
_p = _p		+ [10];


//---Caliber 12.7x108mm

_i = _i		+ ["CUP_5Rnd_127x108_KSVK_M"];
_u = _u		+ [0];
_p = _p		+ [10];


//---Caliber 12Gauge/Shotguns

_i = _i		+ ["CUP_8Rnd_B_Saiga12_74Slug_M"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_8Rnd_B_Saiga12_74Pellets_M"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_8Rnd_B_Beneli_74Slug"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_8Rnd_B_Beneli_74Pellets"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_20Rnd_B_AA12_Pellets"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_20Rnd_B_AA12_74Slug"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_20Rnd_B_AA12_HE"];
_u = _u		+ [0];
_p = _p		+ [10];


//--- Caliber 40mm Grenades

_i = _i		+ ["1Rnd_HE_Grenade_shell"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_1Rnd_HE_M203"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_1Rnd_HEDP_M203"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_1Rnd_HE_GP25_M"];
_u = _u		+ [0];
_p = _p		+ [10];


//--- Smoke

_i = _i		+ ["1Rnd_Smoke_Grenade_shell"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_1Rnd_SMOKE_GP25_M"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_1Rnd_Smoke_M203"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["1Rnd_SmokeRed_Grenade_shell"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_1Rnd_SmokeRed_GP25_M"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_1Rnd_SmokeRed_M203"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["1Rnd_SmokeGreen_Grenade_shell"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_1Rnd_SmokeGreen_GP25_M"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_1Rnd_SmokeGreen_M203"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["1Rnd_SmokeYellow_Grenade_shell"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_1Rnd_SmokeYellow_GP25_M"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_1Rnd_SmokeYellow_M203"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["1Rnd_SmokePurple_Grenade_shell"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["1Rnd_SmokeBlue_Grenade_shell"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["1Rnd_SmokeOrange_Grenade_shell"];
_u = _u		+ [0];
_p = _p		+ [10];


//--- Flares

_i = _i		+ ["UGL_FlareWhite_F"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_FlareWhite_GP25_M"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_FlareWhite_M203"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["UGL_FlareRed_F"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_FlareRed_GP25_M"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_FlareRed_M203"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["UGL_FlareGreen_F"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_FlareGreen_GP25_M"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_FlareGreen_M203"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["UGL_FlareYellow_F"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_FlareYellow_GP25_M"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_FlareYellow_M203"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["UGL_FlareCIR_F"];
_u = _u		+ [0];
_p = _p		+ [10];


//--- Magazine 6 Rounds

_i = _i		+ ["CUP_6Rnd_HE_M203"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_6Rnd_Smoke_M203"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_6Rnd_SmokeRed_M203"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_6Rnd_SmokeGreen_M203"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_6Rnd_SmokeYellow_M203"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_6Rnd_FlareWhite_M203"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_6Rnd_FlareGreen_M203"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_6Rnd_FlareRed_M203"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_6Rnd_FlareYellow_M203"];
_u = _u		+ [0];
_p = _p		+ [10];


//--- Handgrenades

_i = _i		+ ["CUP_HandGrenade_M67"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_HandGrenade_L109A1_HE"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_HandGrenade_L109A2_HE"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_HandGrenade_RGD5"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_HandGrenade_RGO"];
_u = _u		+ [0];
_p = _p		+ [10];


//--- Bombs Mines IEDS

_i = _i		+ ["CUP_TimeBomb_M"];
_u = _u		+ [1];
_p = _p		+ [300];

_i = _i		+ ["CUP_Mine_M"];
_u = _u		+ [1];
_p = _p		+ [300];

_i = _i		+ ["CUP_MineE_M"];
_u = _u		+ [1];
_p = _p		+ [300];
/*
_i = _i		+ ["CUP_PipeBomb_M"];
_u = _u		+ [1];
_p = _p		+ [300];

_i = _i		+ ["CUP_IED_V1_M"];
_u = _u		+ [1];
_p = _p		+ [300];

_i = _i		+ ["CUP_IED_V2_M"];
_u = _u		+ [1];
_p = _p		+ [300];

_i = _i		+ ["CUP_IED_V3_M"];
_u = _u		+ [1];
_p = _p		+ [300];

_i = _i		+ ["CUP_IED_V4_M"];
_u = _u		+ [1];
_p = _p		+ [300];
*/

//--- Rockets Bombs

_i = _i		+ ["CUP_Stinger_M"];
_u = _u		+ [2];
_p = _p		+ [300];

_i = _i		+ ["CUP_Javelin_M"];
_u = _u		+ [4];
_p = _p		+ [800];

_i = _i		+ ["CUP_M136_M"];
_u = _u		+ [0];
_p = _p		+ [50];

_i = _i		+ ["CUP_MAAWS_HEDP_M"];
_u = _u		+ [1];
_p = _p		+ [150];

_i = _i		+ ["CUP_MAAWS_HEAT_M"];
_u = _u		+ [1];
_p = _p		+ [100];

_i = _i		+ ["CUP_NLAW_M"];
_u = _u		+ [3];
_p = _p		+ [400];

_i = _i		+ ["CUP_SMAW_HEAA_M"];
_u = _u		+ [2];
_p = _p		+ [100];

_i = _i		+ ["CUP_SMAW_HEDP_M"];
_u = _u		+ [2];
_p = _p		+ [350];

_i = _i		+ ["CUP_M136_M"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_MAAWS_HEDP_M"];
_u = _u		+ [0];
_p = _p		+ [100];

_i = _i		+ ["CUP_MAAWS_HEAT_M"];
_u = _u		+ [0];
_p = _p		+ [100];

_i = _i		+ ["CUP_AT13_M"];
_u = _u		+ [0];
_p = _p		+ [200];

_i = _i		+ ["CUP_NLAW_M"];
_u = _u		+ [0];
_p = _p		+ [200];

_i = _i		+ ["CUP_SMAW_HEAA_M"];
_u = _u		+ [0];
_p = _p		+ [100];

_i = _i		+ ["CUP_SMAW_HEDP_M"];
_u = _u		+ [0];
_p = _p		+ [100];


//--CUP Attachments



//--Holo Optics

_i = _i		+ ["CUP_optic_HoloBlack"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["CUP_optic_HoloWdl"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["CUP_optic_HoloDesert"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["CUP_optic_Eotech533"];
_u = _u		+ [2];
_p = _p		+ [50];

_i = _i		+ ["CUP_optic_Eotech533Grey"];
_u = _u		+ [2];
_p = _p		+ [50];


//--CCO Aimpoint Optics

_i = _i		+ ["CUP_optic_CompM4"];
_u = _u		+ [3];
_p = _p		+ [75];

_i = _i		+ ["CUP_optic_CompM2_Black"];
_u = _u		+ [3];
_p = _p		+ [75];

_i = _i		+ ["CUP_optic_CompM2_Woodland"];
_u = _u		+ [3];
_p = _p		+ [75];

_i = _i		+ ["CUP_optic_CompM2_Woodland2"];
_u = _u		+ [3];
_p = _p		+ [75];

_i = _i		+ ["CUP_optic_CompM2_Desert"];
_u = _u		+ [3];
_p = _p		+ [75];

//--Trijicon RedDot Optics

_i = _i		+ ["CUP_optic_TrijiconRx01_desert"];
_u = _u		+ [1];
_p = _p		+ [75];

_i = _i		+ ["CUP_optic_TrijiconRx01_black"];
_u = _u		+ [1];
_p = _p		+ [75];


//--Schmidt and Bender ShortDot Optics

_i = _i		+ ["CUP_optic_SB_11_4x20_PM"];
_u = _u		+ [3];
_p = _p		+ [200];


//--Meopta Optics

_i = _i		+ ["CUP_optic_ZDDot"];
_u = _u		+ [1];
_p = _p		+ [50];

_i = _i		+ ["CUP_optic_MRad"];
_u = _u		+ [1];
_p = _p		+ [50];


//--Trijicon RCO and ACOG Optics

_i = _i		+ ["CUP_optic_RCO"];
_u = _u		+ [1];
_p = _p		+ [75];

_i = _i		+ ["CUP_optic_RCO_desert"];
_u = _u		+ [1];
_p = _p		+ [75];

_i = _i		+ ["CUP_optic_ACOG"];
_u = _u		+ [1];
_p = _p		+ [75];


//--Midrange Optics

_i = _i		+ ["CUP_optic_SUSAT"];
_u = _u		+ [3];
_p = _p		+ [150];

_i = _i		+ ["CUP_optic_ElcanM145"];
_u = _u		+ [3];
_p = _p		+ [150];

_i = _i		+ ["CUP_optic_ELCAN_SpecterDR"];
_u = _u		+ [3];
_p = _p		+ [150];

_i = _i		+ ["CUP_optic_CWS"];
_u = _u		+ [3];
_p = _p		+ [300];


//--DMR Sniper Optics

_i = _i		+ ["CUP_optic_SB_3_12x50_PMII"];
_u = _u		+ [4];
_p = _p		+ [500];

_i = _i		+ ["CUP_optic_LeupoldMk4"];
_u = _u		+ [4];
_p = _p		+ [400];

_i = _i		+ ["CUP_optic_Leupold_VX3"];
_u = _u		+ [4];
_p = _p		+ [800];

_i = _i		+ ["CUP_optic_LeupoldM3LR"];
_u = _u		+ [4];
_p = _p		+ [500];

_i = _i		+ ["CUP_optic_LeupoldMk4_10x40_LRT_Desert"];
_u = _u		+ [4];
_p = _p		+ [500];

_i = _i		+ ["CUP_optic_LeupoldMk4_10x40_LRT_Woodland"];
_u = _u		+ [4];
_p = _p		+ [500];

_i = _i		+ ["CUP_optic_LeupoldMk4_CQ_T"];
_u = _u		+ [4];
_p = _p		+ [200];

_i = _i		+ ["CUP_optic_LeupoldMk4_MRT_tan"];
_u = _u		+ [4];
_p = _p		+ [200];

//--Nightvision TWS Optics

_i = _i		+ ["CUP_optic_AN_PAS_13c1"];
_u = _u		+ [5];
_p = _p		+ [1000];

_i = _i		+ ["CUP_optic_AN_PAS_13c2"];
_u = _u		+ [5];
_p = _p		+ [1000];

_i = _i		+ ["CUP_optic_GOSHAWK"];
_u = _u		+ [5];
_p = _p		+ [1000];

_i = _i		+ ["CUP_optic_AN_PVS_10"];
_u = _u		+ [5];
_p = _p		+ [1000];

_i = _i		+ ["CUP_optic_AN_PVS_4"];
_u = _u		+ [5];
_p = _p		+ [1000];

_i = _i		+ ["CUP_optic_NSPU"];
_u = _u		+ [5];
_p = _p		+ [1000];


//--Launcher Optics

_i = _i		+ ["CUP_optic_MAAWS_Scope"];
_u = _u		+ [1];
_p = _p		+ [100];

_i = _i		+ ["CUP_optic_SMAW_Scope"];
_u = _u		+ [1];
_p = _p		+ [100];


//--Muzzle Attachment
//--Silencer Attachment

_i = _i		+ ["CUP_muzzle_snds_AWM"];
_u = _u		+ [3];
_p = _p		+ [200];

_i = _i		+ ["CUP_muzzle_PBS4"];
_u = _u		+ [3];
_p = _p		+ [200];

_i = _i		+ ["CUP_muzzle_PB6P9"];
_u = _u		+ [3];
_p = _p		+ [200];

_i = _i		+ ["CUP_muzzle_Bizon"];
_u = _u		+ [3];
_p = _p		+ [100];

_i = _i		+ ["CUP_muzzle_snds_G36_black"];
_u = _u		+ [3];
_p = _p		+ [200];

_i = _i		+ ["CUP_muzzle_snds_G36_desert"];
_u = _u		+ [3];
_p = _p		+ [200];

_i = _i		+ ["CUP_muzzle_snds_L85"];
_u = _u		+ [3];
_p = _p		+ [200];

_i = _i		+ ["CUP_muzzle_snds_M110"];
_u = _u		+ [3];
_p = _p		+ [600];

_i = _i		+ ["CUP_muzzle_snds_M14"];
_u = _u		+ [3];
_p = _p		+ [200];

_i = _i		+ ["CUP_muzzle_snds_M16_camo"];
_u = _u		+ [3];
_p = _p		+ [200];

_i = _i		+ ["CUP_muzzle_snds_M16"];
_u = _u		+ [3];
_p = _p		+ [200];

_i = _i		+ ["CUP_muzzle_snds_M9"];
_u = _u		+ [3];
_p = _p		+ [100];

_i = _i		+ ["CUP_muzzle_snds_MicroUzi"];
_u = _u		+ [3];
_p = _p		+ [100];

_i = _i		+ ["CUP_muzzle_snds_XM8"];
_u = _u		+ [3];
_p = _p		+ [200];

_i = _i		+ ["CUP_muzzle_snds_SCAR_L"];
_u = _u		+ [3];
_p = _p		+ [200];

_i = _i		+ ["CUP_muzzle_snds_SCAR_H"];
_u = _u		+ [3];
_p = _p		+ [600];


//--Flash Suppressor Attachment

_i = _i		+ ["CUP_muzzleFlash2SCAR_L"];
_u = _u		+ [0];
_p = _p		+ [200];

_i = _i		+ ["CUP_muzzle_mfsup_SCAR_L"];
_u = _u		+ [0];
_p = _p		+ [200];

_i = _i		+ ["CUP_muzzle_mfsup_SCAR_H"];
_u = _u		+ [0];
_p = _p		+ [200];


//--Side Attachment
//--Laser Attachment

_i = _i		+ ["CUP_acc_ANPEQ_15"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_acc_ANPEQ_2"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_acc_ANPEQ_2_camo"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_acc_ANPEQ_2_desert"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_acc_ANPEQ_2_grey"];
_u = _u		+ [0];
_p = _p		+ [10];


//--Flashlight Attachment

_i = _i		+ ["CUP_acc_Flashlight"];
_u = _u		+ [0];
_p = _p		+ [50];

_i = _i		+ ["CUP_acc_Flashlight_wdl"];
_u = _u		+ [0];
_p = _p		+ [50];

_i = _i		+ ["CUP_acc_Flashlight_desert"];
_u = _u		+ [0];
_p = _p		+ [50];

_i = _i		+ ["CUP_acc_XM8_light_module"];
_u = _u		+ [0];
_p = _p		+ [50];

_i = _i		+ ["CUP_acc_CZ_M3X"];
_u = _u		+ [0];
_p = _p		+ [50];

_i = _i		+ ["CUP_acc_Glock17_Flashlight"];
_u = _u		+ [0];
_p = _p		+ [50];

//--Uniforms

_i = _i		+ ["CUP_U_B_USMC_Ghillie_WDL"];
_u = _u		+ [2];
_p = _p		+ [100];

_i = _i		+ ["CUP_U_B_USMC_Officer"];
_u = _u		+ [2];
_p = _p		+ [100];

_i = _i		+ ["CUP_U_B_USMC_MARPAT_WDL_RollUpKneepad"];
_u = _u		+ [2];
_p = _p		+ [100];

_i = _i		+ ["CUP_U_B_USMC_MARPAT_WDL_RolledUp"];
_u = _u		+ [2];
_p = _p		+ [100];

_i = _i		+ ["CUP_U_B_USMC_MARPAT_WDL_Kneepad"];
_u = _u		+ [2];
_p = _p		+ [100];

_i = _i		+ ["CUP_U_B_USMC_MARPAT_WDL_TwoKneepads"];
_u = _u		+ [2];
_p = _p		+ [100];

_i = _i		+ ["CUP_U_B_USMC_MARPAT_WDL_Sleeves"];
_u = _u		+ [2];
_p = _p		+ [100];

_i = _i		+ ["CUP_U_B_USMC_PilotOverall"];
_u = _u		+ [2];
_p = _p		+ [100];


_i = _i		+ ["CUP_U_B_GER_Ghillie"];
_u = _u		+ [3];
_p = _p		+ [100];

_i = _i		+ ["CUP_U_B_GER_Fleck_Ghillie"];
_u = _u		+ [3];
_p = _p		+ [100];

_i = _i		+ ["CUP_U_B_GER_Flecktarn_2"];
_u = _u		+ [3];
_p = _p		+ [100];

_i = _i		+ ["CUP_U_B_GER_Tropentarn_2"];
_u = _u		+ [3];
_p = _p		+ [100];

_i = _i		+ ["CUP_U_B_GER_Flecktarn_1"];
_u = _u		+ [3];
_p = _p		+ [100];

_i = _i		+ ["CUP_U_B_GER_Tropentarn_1"];
_u = _u		+ [3];
_p = _p		+ [100];


_i = _i		+ ["CUP_U_B_FR_SpecOps"];
_u = _u		+ [4];
_p = _p		+ [100];

_i = _i		+ ["CUP_U_B_FR_Officer"];
_u = _u		+ [4];
_p = _p		+ [100];

_i = _i		+ ["CUP_U_B_FR_DirAction"];
_u = _u		+ [4];
_p = _p		+ [100];

_i = _i		+ ["CUP_U_B_FR_DirAction2"];
_u = _u		+ [4];
_p = _p		+ [100];

_i = _i		+ ["CUP_U_B_FR_Corpsman"];
_u = _u		+ [4];
_p = _p		+ [100];

_i = _i		+ ["CUP_U_B_FR_Light"];
_u = _u		+ [4];
_p = _p		+ [100];

_i = _i		+ ["CUP_U_B_FR_Scout1"];
_u = _u		+ [4];
_p = _p		+ [100];

_i = _i		+ ["CUP_U_B_FR_Scout2"];
_u = _u		+ [4];
_p = _p		+ [100];

_i = _i		+ ["CUP_U_B_FR_Scout3"];
_u = _u		+ [4];
_p = _p		+ [100];

_i = _i		+ ["CUP_U_B_FR_Scout"];
_u = _u		+ [4];
_p = _p		+ [100];

//--Vests

_i = _i		+ ["CUP_V_B_GER_Carrier_Vest"];
_u = _u		+ [3];
_p = _p		+ [100];

_i = _i		+ ["CUP_V_B_GER_Carrier_Vest_2"];
_u = _u		+ [3];
_p = _p		+ [100];

_i = _i		+ ["CUP_V_B_GER_Carrier_Vest_3"];
_u = _u		+ [3];
_p = _p		+ [100];

_i = _i		+ ["CUP_V_B_GER_Carrier_Rig"];
_u = _u		+ [3];
_p = _p		+ [100];

_i = _i		+ ["CUP_V_B_GER_Carrier_Rig_2"];
_u = _u		+ [3];
_p = _p		+ [100];

_i = _i		+ ["CUP_V_B_GER_Carrier_Rig_2_Brown"];
_u = _u		+ [3];
_p = _p		+ [100];

_i = _i		+ ["CUP_V_B_GER_Carrier_Rig_3_Brown"];
_u = _u		+ [3];
_p = _p		+ [100];

_i = _i		+ ["CUP_V_B_GER_Vest_1"];
_u = _u		+ [3];
_p = _p		+ [100];

_i = _i		+ ["CUP_V_B_GER_Vest_2"];
_u = _u		+ [3];
_p = _p		+ [100];


_i = _i		+ ["CUP_V_B_RRV_MG"];
_u = _u		+ [4];
_p = _p		+ [100];

_i = _i		+ ["CUP_V_B_RRV_Light"];
_u = _u		+ [4];
_p = _p		+ [100];

_i = _i		+ ["CUP_V_B_RRV_Medic"];
_u = _u		+ [4];
_p = _p		+ [100];

_i = _i		+ ["CUP_V_B_RRV_Officer"];
_u = _u		+ [4];
_p = _p		+ [100];

_i = _i		+ ["CUP_V_B_RRV_Scout"];
_u = _u		+ [4];
_p = _p		+ [100];

_i = _i		+ ["CUP_V_B_RRV_Scout2"];
_u = _u		+ [4];
_p = _p		+ [100];

_i = _i		+ ["CUP_V_B_RRV_Scout3"];
_u = _u		+ [4];
_p = _p		+ [100];

_i = _i		+ ["CUP_V_B_RRV_TL"];
_u = _u		+ [4];
_p = _p		+ [100];


_i = _i		+ ["CUP_V_B_RRV_DA1"];
_u = _u		+ [4];
_p = _p		+ [100];

_i = _i		+ ["CUP_V_B_RRV_DA2"];
_u = _u		+ [4];
_p = _p		+ [100];

_i = _i		+ ["CUP_V_B_MTV"];
_u = _u		+ [2];
_p = _p		+ [100];

_i = _i		+ ["CUP_V_B_MTV_Pouches"];
_u = _u		+ [2];
_p = _p		+ [100];

_i = _i		+ ["CUP_V_B_MTV_PistolBlack"];
_u = _u		+ [2];
_p = _p		+ [100];

_i = _i		+ ["CUP_V_B_MTV_Mine"];
_u = _u		+ [2];
_p = _p		+ [100];

_i = _i		+ ["CUP_V_B_MTV_LegPouch"];
_u = _u		+ [2];
_p = _p		+ [100];

_i = _i		+ ["CUP_V_B_MTV_Marksman"];
_u = _u		+ [2];
_p = _p		+ [100];

_i = _i		+ ["CUP_V_B_MTV_MG"];
_u = _u		+ [2];
_p = _p		+ [100];

_i = _i		+ ["CUP_V_B_MTV_Patrol"];
_u = _u		+ [2];
_p = _p		+ [100];

_i = _i		+ ["CUP_V_B_MTV_noCB"];
_u = _u		+ [2];
_p = _p		+ [100];

_i = _i		+ ["CUP_V_B_MTV_TL"];
_u = _u		+ [2];
_p = _p		+ [100];

_i = _i		+ ["CUP_V_B_PilotVest"];
_u = _u		+ [2];
_p = _p		+ [100];

//--Packs


_i = _i		+ ["CUP_B_CivPack_WDL"];
_u = _u		+ [3];
_p = _p		+ [500];

_i = _i		+ ["CUP_B_HikingPack_Civ"];
_u = _u		+ [4];
_p = _p		+ [600];

_i = _i		+ ["CUP_B_ACRPara_m95"];
_u = _u		+ [4];
_p = _p		+ [600];

_i = _i		+ ["CUP_B_ACRScout_m95"];
_u = _u		+ [0];
_p = _p		+ [50];

_i = _i		+ ["CUP_B_GER_Pack_Flecktarn"];
_u = _u		+ [3];
_p = _p		+ [500];

_i = _i		+ ["CUP_B_GER_Pack_Tropentarn"];
_u = _u		+ [3];
_p = _p		+ [500];

_i = _i		+ ["CUP_B_GER_Medic_Desert"];
_u = _u		+ [3];
_p = _p		+ [400];

_i = _i		+ ["CUP_B_GER_Medic_Flecktarn"];
_u = _u		+ [3];
_p = _p		+ [400];

_i = _i		+ ["CUP_B_GER_Medic_Tropentarn"];
_u = _u		+ [3];
_p = _p		+ [400];

_i = _i		+ ["CUP_B_M2_Gun_Bag"];
_u = _u		+ [3];
_p = _p		+ [600];

_i = _i		+ ["CUP_B_M2_Tripod_Bag"];
_u = _u		+ [3];
_p = _p		+ [100];

_i = _i		+ ["CUP_B_M2_MiniTripod_Bag"];
_u = _u		+ [3];
_p = _p		+ [100];

_i = _i		+ ["CUP_B_AssaultPack_ACU"];
_u = _u		+ [0];
_p = _p		+ [150];

_i = _i		+ ["CUP_B_AssaultPack_Black"];
_u = _u		+ [0];
_p = _p		+ [150];

_i = _i		+ ["CUP_B_AssaultPack_Coyote"];
_u = _u		+ [0];
_p = _p		+ [150];

_i = _i		+ ["CUP_B_USMC_AssaultPack"];
_u = _u		+ [2];
_p = _p		+ [350];

_i = _i		+ ["CUP_B_MedicPack_ACU"];
_u = _u		+ [0];
_p = _p		+ [150];

_i = _i		+ ["CUP_B_RPGPack_Khaki"];
_u = _u		+ [1];
_p = _p		+ [175];

_i = _i		+ ["CUP_B_USMC_MOLLE"];
_u = _u		+ [2];
_p = _p		+ [600];

_i = _i		+ ["CUP_B_USMC_MOLLE_WDL"];
_u = _u		+ [2];
_p = _p		+ [600];

_i = _i		+ ["CUP_B_USPack_Black"];
_u = _u		+ [2];
_p = _p		+ [500];

_i = _i		+ ["CUP_B_USPack_Coyote"];
_u = _u		+ [2];
_p = _p		+ [500];

_i = _i		+ ["CUP_B_AlicePack_Khaki"];
_u = _u		+ [4];
_p = _p		+ [600];

_i = _i		+ ["CUP_B_RUS_Backpack"];
_u = _u		+ [2];
_p = _p		+ [500];

_i = _i		+ ["CUP_B_AlicePack_Bedroll"];
_u = _u		+ [4];
_p = _p		+ [600];

_i = _i		+ ["CUP_B_Bergen_BAF"];
_u = _u		+ [4];
_p = _p		+ [600];

_i = _i		+ ["CUP_B_UAVTerminal_Black"];
_u = _u		+ [1];
_p = _p		+ [400];

//--Head

_i = _i		+ ["CUP_H_NAPA_Fedora"];
_u = _u		+ [0];
_p = _p		+ [10];


_i = _i		+ ["CUP_H_USMC_Officer_Cap"];
_u = _u		+ [2];
_p = _p		+ [10];

_i = _i		+ ["CUP_H_USMC_Crew_Helmet"];
_u = _u		+ [2];
_p = _p		+ [100];

_i = _i		+ ["CUP_H_USMC_HelmetWDL"];
_u = _u		+ [2];
_p = _p		+ [100];

_i = _i		+ ["CUP_H_USMC_Goggles_HelmetWDL"];
_u = _u		+ [2];
_p = _p		+ [100];

_i = _i		+ ["CUP_H_USMC_Headset_HelmetWDL"];
_u = _u		+ [2];
_p = _p		+ [100];

_i = _i		+ ["CUP_H_USMC_Headset_GoggleW_HelmetWDL"];
_u = _u		+ [2];
_p = _p		+ [100];

_i = _i		+ ["CUP_H_USMC_Helmet_Pilot"];
_u = _u		+ [2];
_p = _p		+ [100];


_i = _i		+ ["CUP_H_Ger_Boonie_Flecktarn"];
_u = _u		+ [3];
_p = _p		+ [10];

_i = _i		+ ["CUP_H_Ger_Boonie_desert"];
_u = _u		+ [3];
_p = _p		+ [10];


_i = _i		+ ["CUP_H_FR_BandanaGreen"];
_u = _u		+ [3];
_p = _p		+ [10];

_i = _i		+ ["CUP_H_FR_BandanaWdl"];
_u = _u		+ [4];
_p = _p		+ [10];

_i = _i		+ ["CUP_H_FR_Bandana_Headset"];
_u = _u		+ [4];
_p = _p		+ [10];

_i = _i		+ ["CUP_H_FR_BeanieGreen"];
_u = _u		+ [4];
_p = _p		+ [10];

_i = _i		+ ["CUP_H_FR_BoonieMARPAT"];
_u = _u		+ [4];
_p = _p		+ [10];

_i = _i		+ ["CUP_H_FR_BoonieWDL"];
_u = _u		+ [4];
_p = _p		+ [10];

_i = _i		+ ["CUP_H_FR_PRR_BoonieWDL"];
_u = _u		+ [4];
_p = _p		+ [10];

_i = _i		+ ["CUP_H_FR_Cap_Headset_Green"];
_u = _u		+ [4];
_p = _p		+ [10];

_i = _i		+ ["CUP_H_FR_Cap_Officer_Headset"];
_u = _u		+ [4];
_p = _p		+ [10];

_i = _i		+ ["CUP_H_FR_ECH"];
_u = _u		+ [4];
_p = _p		+ [100];

_i = _i		+ ["CUP_H_FR_Headband_Headset"];
_u = _u		+ [4];
_p = _p		+ [10];

_i = _i		+ ["CUP_H_FR_Headset"];
_u = _u		+ [4];
_p = _p		+ [100];


_i = _i		+ ["CUP_H_PMC_Cap_Tan"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_H_PMC_Cap_PRR_Tan"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_H_PMC_Cap_Grey"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_H_PMC_Cap_PRR_Grey"];
_u = _u		+ [0];
_p = _p		+ [100];

_i = _i		+ ["CUP_H_PMC_EP_Headset"];
_u = _u		+ [0];
_p = _p		+ [100];

_i = _i		+ ["CUP_H_PMC_PRR_Headset"];
_u = _u		+ [0];
_p = _p		+ [100];

//--Goggles

_i = _i		+ ["CUP_TK_NeckScarf"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["CUP_FR_NeckScarf"];
_u = _u		+ [4];
_p = _p		+ [10];

_i = _i		+ ["CUP_FR_NeckScarf2"];
_u = _u		+ [4];
_p = _p		+ [10];


//--Other

_i = _i		+ ["CUP_NVG_PVS7"];
_u = _u		+ [0];
_p = _p		+ [400];

_i = _i		+ ["CUP_SOFLAM"];
_u = _u		+ [2];
_p = _p		+ [800];

_i = _i		+ ["CUP_LRTV"];
_u = _u		+ [2];
_p = _p		+ [700];

_i = _i		+ ["CUP_Vector21Nite"];
_u = _u		+ [1];
_p = _p		+ [600];


[_faction, _i, _u, _p] call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_Config_Set.sqf"; 
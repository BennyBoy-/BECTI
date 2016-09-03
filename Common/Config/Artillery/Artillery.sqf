_c = []; //--- Classname
_m = []; //--- Magazines
_b = []; //--- Burst
_r = []; //--- Ranges

_c pushBack "B_Mortar_01_F";
_m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_LG"];
_b pushBack [1, 2, 4, 8];
_r pushBack [[100,1500], [100,2500], [100,3500], [100,4500]];

_c pushBack "O_Mortar_01_F";
_m pushBack ["8Rnd_82mm_Mo_shells", "8Rnd_82mm_Mo_Smoke_white", "8Rnd_82mm_Mo_Flare_white", "8Rnd_82mm_Mo_LG"];
_b pushBack [1, 2, 4, 8];
_r pushBack [[100,1500], [100,2500], [100,3500], [100,4500]];

_c pushBack "B_MBT_01_arty_F";
_m pushBack ["32Rnd_155mm_Mo_shells", "2Rnd_155mm_Mo_Cluster", "2Rnd_155mm_Mo_guided", "2Rnd_155mm_Mo_LG", "6Rnd_155mm_Mo_smoke", "6Rnd_155mm_Mo_mine", "6Rnd_155mm_Mo_AT_mine"];
_b pushBack [2, 4, 8, 12];
_r pushBack [[800,1500], [800,3500], [800,5500], [800,7500]];

_c pushBack "O_MBT_02_arty_F";
_m pushBack ["32Rnd_155mm_Mo_shells", "2Rnd_155mm_Mo_Cluster", "2Rnd_155mm_Mo_guided", "2Rnd_155mm_Mo_LG", "6Rnd_155mm_Mo_smoke", "6Rnd_155mm_Mo_mine", "6Rnd_155mm_Mo_AT_mine"];
_b pushBack [2, 4, 8, 12];
_r pushBack [[800,1500], [800,3500], [800,5500], [800,7500]];

_c pushBack "B_MBT_01_arty_F";
_m pushBack ["32Rnd_155mm_Mo_shells", "2Rnd_155mm_Mo_Cluster", "2Rnd_155mm_Mo_guided", "2Rnd_155mm_Mo_LG", "6Rnd_155mm_Mo_smoke", "6Rnd_155mm_Mo_mine", "6Rnd_155mm_Mo_AT_mine"];
_b pushBack [2, 4, 8, 12];
_r pushBack [[800,1500], [800,3500], [800,5500], [800,7500]];

_c pushBack "B_MBT_01_mlrs_F";
_m pushBack ["12Rnd_230mm_rockets"];
_b pushBack [2, 3, 6];
_r pushBack [[800,1000], [800,3000], [800,5000], [800,7000]];

_c pushBack "CUP_B_M270_DPICM_USMC";
_m pushBack ["CUP_12Rnd_MLRS_DPICM"];
_b pushBack [2, 3, 6];
_r pushBack [[800,1500], [800,2500], [800,4500], [800,6500]];

_c pushBack "CUP_B_M270_HE_USMC";
_m pushBack ["CUP_12Rnd_MLRS_HE"];
_b pushBack [2, 3, 6];
_r pushBack [[800,1500], [800,2500], [800,4500], [800,6500]];

_c pushBack "CUP_B_M270_HE_USA";
_m pushBack ["CUP_12Rnd_MLRS_HE"];
_b pushBack [2, 3, 6];
_r pushBack [[800,1500], [800,2500], [800,4500], [800,6500]];

_c pushBack "CUP_B_M270_DPICM_USMC";
_m pushBack ["CUP_12Rnd_MLRS_DPICM"];
_b pushBack [2, 3, 6];
_r pushBack [[800,1500], [800,2500], [800,4500], [800,6500]];

_c pushBack "CUP_O_BM21_RU ";
_m pushBack ["CUP_40Rnd_GRAD_HE"];
_b pushBack [2, 3, 6];
_r pushBack [[800,1000], [800,4000], [800,6000], [800,8000]];




[_c, _m, _b, _r] call compile preprocessFileLineNumbers "Common\Config\Artillery\Set_Artillery.sqf";
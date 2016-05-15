_side = _this;

missionNamespace setVariable [format["CTI_%1_HQ", _side], "O_APC_Wheeled_02_rcws_F"];
missionNamespace setVariable [format["CTI_%1_Factories", _side], ["Barracks","Light","Heavy","Air","Naval","Repair","Ammo","Radar"]];

missionNamespace setVariable [format["CTI_%1_Base_Template", _side], [
	[CTI_BARRACKS, 180, [-23,33]],
	[CTI_LIGHT, 180, [23,33]],
	[CTI_CONTROLCENTER, 0, [30,-40]],
	[CTI_HEAVY, 0, [-30,-40]],
	[CTI_AIR, 180, [-60,37]],
	[CTI_REPAIR, 180, [60,37]],
	[CTI_AMMO, 180, [80,37]],
	[CTI_NAVAL, 180, [80,37]],
	[CTI_RADAR, 180, [80,37]]
]];

//--- Commander course of action ["Action", Parameter(s), Condition]
missionNamespace setVariable [format["CTI_%1_Commander_Path", _side], [
	["build-structures", CTI_BARRACKS, {true}],
	["build-structures", CTI_LIGHT, {true}],
	["build-structures", CTI_CONTROLCENTER, {true}],
	["upgrade", [CTI_UPGRADE_BARRACKS, 1], {true}],
	["upgrade", [CTI_UPGRADE_LIGHT, 1], {true}],
	["upgrade", [CTI_UPGRADE_TOWNS, 1], {true}],
	["build-structures", CTI_HEAVY, {true}],
	["build-structures", CTI_REPAIR, {true}],
	["build-structures", CTI_AMMO, {true}],
	["upgrade", [CTI_UPGRADE_HEAVY, 1], {true}],
	["build-structures", CTI_AIR, {true}],
	["upgrade", [CTI_UPGRADE_TOWNS, 2], {true}],
	["upgrade", [CTI_UPGRADE_AIR, 1], {true}],
	["upgrade", [CTI_UPGRADE_AIR_CM, 1], {true}],
	["upgrade", [CTI_UPGRADE_AIR_AT, 1], {true}],
	["upgrade", [CTI_UPGRADE_AIR_FFAR, 1], {true}],
	["upgrade", [CTI_UPGRADE_AIR_AA, 1], {true}],
	["upgrade", [CTI_UPGRADE_TOWNS, 3], {true}],
	["upgrade", [CTI_UPGRADE_SATELLITE, 1], {true}]
]];

//--- Structures
_headers = [];
_classes = [];
_prices = [];
_times = [];
_placements = [];
_specials = [];

/*
	Specials:
		- DMG_Alternative: Need to be used in case of bisterious buildings usage 
				If a building is damaged, all the EH it had will bisteriously vanish... This "feature" will probably never get fixed so once again, we fix it ourself!
		- DMG_Reduce: Reduce the incoming damage on a building making it stronger if above 1.
*/
_headers = _headers 		+ [[CTI_BARRACKS, "Barracks", "Barracks"]];
_classes = _classes 		+ [["Land_Cargo_House_V1_F", "Land_Cargo_House_V1_ruins_F"]];
_prices = _prices 			+ [2000];
_times = _times 			+ [60];
_placements = _placements 	+ [[180, 15]];
_specials = _specials		+ [[["DMG_Alternative"], ["DMG_Reduce", 1.5]]];

_headers = _headers 		+ [[CTI_LIGHT, "Light Vehicle Factory", "Light"]];
_classes = _classes 		+ [["Land_Medevac_HQ_V1_F", "Land_Medevac_HQ_V1_ruins_F"]];
_prices = _prices 			+ [4000];
_times = _times 			+ [80];
_placements = _placements 	+ [[90, 25]];
_specials = _specials		+ [[["DMG_Alternative"], ["DMG_Reduce", 25]]];

_headers = _headers 		+ [[CTI_CONTROLCENTER, "Control Center", "CC"]];
_classes = _classes 		+ [["Land_Research_HQ_F", "Land_Research_HQ_ruins_F", ["Land_Research_HQ_F"]]];							  
_prices = _prices 			+ [8000];
_times = _times 			+ [90];
_placements = _placements 	+ [[90, 25]];
_specials = _specials		+ [[["Connected"], ["DMG_Alternative"], ["DMG_Reduce", 4.3]]];

_headers = _headers 		+ [[CTI_HEAVY, "Heavy Vehicle Factory", "Heavy"]];
_classes = _classes 		+ [["Land_Cargo_HQ_V1_F", "Land_Cargo_HQ_V1_ruins_F"]];
_prices = _prices 			+ [6000];
_times = _times 			+ [120];
_placements = _placements 	+ [[90, 25]];
_specials = _specials		+ [[["DMG_Alternative"], ["DMG_Reduce", 25]]];

_headers = _headers 		+ [[CTI_AIR, "Aircraft Factory", "Air"]];
_classes = _classes 		+ [["Land_Airport_Tower_F", "Land_Airport_Tower_ruins_F"]];
_prices = _prices 			+ [8000];
_times = _times 			+ [140];
_placements = _placements 	+ [[180, 40]];
_specials = _specials		+ [[["DMG_Alternative"], ["DMG_Reduce", 20000]]]; 

_headers = _headers 		+ [[CTI_AMMO, "Ammo Depot", "Ammo"]];
_classes = _classes 		+ [["Land_Cargo_HQ_V2_F", "Land_Cargo_HQ_V2_ruins_F"]];
_prices = _prices 			+ [4000];
_times = _times 			+ [40];
_placements = _placements 	+ [[90, 25]];
_specials = _specials		+ [[["DMG_Alternative"], ["DMG_Reduce", 25]]];

_headers = _headers 		+ [[CTI_REPAIR, "Repair Depot", "Repair"]];
_classes = _classes 		+ [["Land_Cargo_HQ_V3_F", "Land_Cargo_HQ_V3_ruins_F"]];
_prices = _prices 			+ [4000];
_times = _times 			+ [35];
_placements = _placements 	+ [[90, 25]];
_specials = _specials		+ [[["DMG_Alternative"], ["DMG_Reduce", 25]]];

_headers = _headers 		+ [[CTI_NAVAL, "Naval Yard", "Naval"]];
_classes = _classes 		+ [["Land_Lighthouse_small_F", "Land_Lighthouse_small_ruins_F"]];
_prices = _prices 			+ [2000];
_times = _times 			+ [35];
_placements = _placements 	+ [[180, 100]];
_specials = _specials		+ [[["DMG_Alternative"], ["DMG_Reduce", 4]]];

_headers = _headers 		+ [[CTI_RADAR, "Air Radar", "Air Radar"]];
_classes =  _classes 		+ [["Land_TTowerBig_2_F", "Land_TTowerBig_2_ruins_F"]];
_prices =  _prices 			+ [8000];
_times =  _times 			+ [120];
_placements =_placements 	+ [[180, 30]];
_specials = _specials		+ [[["DMG_Alternative"], ["DMG_Reduce", 2]]];

[_side, _headers, _classes, _prices, _times, _placements, _specials] call compile preprocessFileLineNumbers "Common\Config\Base\Set_Structures.sqf";

//--- Defenses
_headers = [];
_classes = [];
_prices = [];
_placements = [];
_categories = [];

_headers = _headers 		+ ["Empty Crate"];
_classes = _classes 		+ ["O_supplyCrate_F"];
_prices = _prices 			+ [5];
_placements = _placements 	+ [[0, 2]];
_categories = _categories 	+ ["Fortification"];

_headers = _headers 		+ ["Short Sandbag"];
_classes = _classes 		+ ["Land_BagFence_Short_F"];
_prices = _prices 			+ [5];
_placements = _placements 	+ [[0, 5]];
_categories = _categories 	+ ["Fortification"];

_headers = _headers 		+ ["Long Sandbag"];
_classes = _classes 		+ ["Land_BagFence_Long_F"];
_prices = _prices 			+ [5];
_placements = _placements 	+ [[0, 5]];
_categories = _categories 	+ ["Fortification"];

_headers = _headers 		+ ["Round Sandbag"];
_classes = _classes 		+ ["Land_BagFence_Round_F"];
_prices = _prices 			+ [5];
_placements = _placements 	+ [[0, 5]];
_categories = _categories 	+ ["Fortification"];

_headers = _headers 		+ ["Bunker (Small)"];
_classes = _classes 		+ ["Land_BagBunker_Small_F"];
_prices = _prices 			+ [15];
_placements = _placements 	+ [[0, 7]];
_categories = _categories 	+ ["Fortification"];

_headers = _headers 		+ ["Razor Wire"];
_classes = _classes 		+ ["Land_Razorwire_F"];
_prices = _prices 			+ [1];
_placements = _placements 	+ [[0, 5]];
_categories = _categories 	+ ["Fortification"];

_headers = _headers 		+ [["Fence",[["CanAutoAlign", 7.5, 0]]]];
_classes = _classes 		+ ["Land_Mil_WiredFence_F"];
_prices = _prices 			+ [5];
_placements = _placements 	+ [[0, 7]];
_categories = _categories 	+ ["Fortification"];

_headers = _headers 		+ ["Gate"];
_classes = _classes 		+ ["Land_Mil_WiredFence_Gate_F"];
_prices = _prices 			+ [5];
_placements = _placements 	+ [[0, 15]];
_categories = _categories 	+ ["Structures_Fences"];

_headers = _headers 		+ [["High Wall (Mil)",[["CanAutoAlign", 3.8, 0]]]];
_classes = _classes 		+ ["Land_Mil_WallBig_4m_F"];
_prices = _prices 			+ [20];
_placements = _placements 	+ [[0, 7]];
_categories = _categories 	+ ["Fortification"];

_headers = _headers 		+ [["High Wall Gate (Mil)",[["CanAutoAlign", 3.8, 0]]]];
_classes = _classes 		+ ["Land_Mil_WallBig_Gate_F"];
_prices = _prices 			+ [20];
_placements = _placements 	+ [[0, 7]];
_categories = _categories 	+ ["Fortification"];

_headers = _headers 		+ ["Camo net"];
_classes = _classes 		+ ["CamoNet_OPFOR_F"];
_prices = _prices 			+ [50];
_placements = _placements 	+ [[0, 15]];
_categories = _categories 	+ ["Fortification"];

_headers = _headers 		+ ["Camo net open"];
_classes = _classes 		+ ["CamoNet_OPFOR_open_F"];
_prices = _prices 			+ [50];
_placements = _placements 	+ [[0, 15]];
_categories = _categories 	+ ["Fortification"];

_headers = _headers 		+ ["Camo net vehicle"];
_classes = _classes 		+ ["CamoNet_OPFOR_big_F"];
_prices = _prices 			+ [50];
_placements = _placements 	+ [[0, 15]];
_categories = _categories 	+ ["Fortification"];

_headers = _headers 		+ ["Tower"];
_classes = _classes 		+ ["Land_Cargo_Patrol_V1_F"];
_prices = _prices 			+ [150];
_placements = _placements 	+ [[0, 15]];
_categories = _categories 	+ ["Fortification"];

_headers = _headers 		+ [["Cargo Tower (big)",[["RuinOnDestroyed", "Land_Cargo_Tower_V1_ruins_F"], ["DMG_Reduce", 8]]]];
_classes = _classes 		+ ["Land_Cargo_Tower_V1_F"];
_prices = _prices 			+ [2000];
_placements = _placements 	+ [[0, 30]];
_categories = _categories 	+ ["Fortification"];

_headers = _headers 		+ [["Shed (Roof)",[["RuinOnDestroyed", "Land_Shed_Big_ruins_F"], ["DMG_Reduce", 8]]]];
_classes = _classes 		+ ["Land_Shed_Big_F"];
_prices = _prices 			+ [200];
_placements = _placements 	+ [[0, 15]];
_categories = _categories 	+ ["Fortification"];

_headers = _headers 		+ [["Shed (Land)",[["RuinOnDestroyed", "Land_Shed_Small_ruins_F"], ["DMG_Reduce", 5]]]];
_classes = _classes 		+ ["Land_Shed_Small_F"];
_prices = _prices 			+ [200];
_placements = _placements 	+ [[90, 15]];
_categories = _categories 	+ ["Structures_Industrial"];

_headers = _headers 		+ [["Tent Hangar",[["RuinOnDestroyed", "Land_TentHangar_V1_ruins_F"], ["DMG_Reduce", 5]]]];
_classes = _classes 		+ ["Land_TentHangar_V1_F"];
_prices = _prices 			+ [500];
_placements = _placements 	+ [[0, 20]];
_categories = _categories 	+ ["Structures_Military"];
/*
_headers = _headers 		+ ["Mil Shed"];
_classes = _classes 		+ ["Land_sfp_mil_shed"];
_prices = _prices 			+ [1000];
_placements = _placements 	+ [[0, 20]];
_categories = _categories 	+ ["Structures_Military"];

_headers = _headers 		+ ["Hangar Wood"];
_classes = _classes 		+ ["Land_sfp_torebodahangar"];
_prices = _prices 			+ [1000];
_placements = _placements 	+ [[0, 20]];
_categories = _categories 	+ ["Structures_Military"];

_headers = _headers 		+ ["Hangar Wood Large"];
_classes = _classes 		+ ["Land_sfp_torebodahangar_alt2"];
_prices = _prices 			+ [1500];
_placements = _placements 	+ [[0, 20]];
_categories = _categories 	+ ["Structures_Military"];
*/
_headers = _headers 		+ ["Dome (Small)"];
_classes = _classes 		+ ["Land_Dome_Small_F"];
_prices = _prices 			+ [1500];
_placements = _placements 	+ [[0, 30]];
_categories = _categories 	+ ["Fortification"];

_headers = _headers 		+ ["Dome (Big)"];
_classes = _classes 		+ ["Land_Dome_Big_F"];
_prices = _prices 			+ [4000];
_placements = _placements 	+ [[0, 50]];
_categories = _categories 	+ ["Fortification"];

/*
_headers = _headers 		+ ["H-Barrier (Small) (1 Block)"];
_classes = _classes 		+ ["Land_HBarrier_1_F"];
_prices = _prices 			+ [10];
_placements = _placements 	+ [[90, 7]];
_categories = _categories 	+ ["Fortification"];

_headers = _headers 		+ [["H-Barrier (Small) (5 Block)",[["CanAutoAlign", 6, 0]]]];
_classes = _classes 		+ ["Land_HBarrier_5_F"];
_prices = _prices 			+ [50];
_placements = _placements 	+ [[0, 7]];
_categories = _categories 	+ ["Fortification"];
*/

/*_headers = _headers 		+ [["High Wall (Concrete)",[["CanAutoAlign", 4.6, 0]]]];
_classes = _classes 		+ ["Land_CncWall4_F"];
_prices = _prices 			+ [20];
_placements = _placements 	+ [[0, 7]];
_categories = _categories 	+ ["Fortification"];

_headers = _headers 		+ ["H-Barrier (Medium)"];
_classes = _classes 		+ ["Land_HBarrier_5_F"];
_prices = _prices 			+ [20];
_placements = _placements 	+ [[0, 7]];
_categories = _categories 	+ ["Fortification"];


_headers = _headers 		+ [["H-Barrier (Big)",[["CanAutoAlign", 6, 0]]]];
_classes = _classes 		+ ["Land_HBarrierBig_F"];
_prices = _prices 			+ [20];
_placements = _placements 	+ [[0, 7]];
_categories = _categories 	+ ["Fortification"];

_headers = _headers 		+ ["H-Barrier Wall (6)"];
_classes = _classes 		+ ["Land_HBarrierWall6_F"];
_prices = _prices 			+ [40];
_placements = _placements 	+ [[180, 7]];
_categories = _categories 	+ ["Fortification"];

_headers = _headers 		+ ["H-Barrier Coridor"];
_classes = _classes 		+ ["Land_HBarrierWall_corridor_F"];
_prices = _prices 			+ [20];
_placements = _placements 	+ [[90, 7]];
_categories = _categories 	+ ["Fortification"];

_headers = _headers 		+ ["H-Barrier Tower"];
_classes = _classes 		+ ["Land_HBarrierTower_F"];
_prices = _prices 			+ [40];
_placements = _placements 	+ [[0, 7]];
_categories = _categories 	+ ["Fortification"];
*/

_headers = _headers 		+ [["FOB",[["RuinOnDestroyed", "Land_Medevac_house_V1_ruins_F"], ["FOB"],["Condition", {_cpt = if (isNil {CTI_P_SideLogic getVariable "cti_fobs"}) then {1000} else {count (CTI_P_SideLogic getVariable "cti_fobs")}; (_cpt < CTI_BASE_FOB_MAX) && (call CTI_CL_FNC_IsPlayerCommander || (!(call CTI_CL_FNC_IsPlayerCommander) && CTI_P_TeamsRequests_FOB > 0)|| ( missionNamespace getVariable 'CTI_BASE_FOB_PERMISSION' ) == 0 )}]]]];
_classes = _classes 		+ ["Land_Medevac_house_V1_F"];
_prices = _prices 			+ [10000];
_placements = _placements 	+ [[180, 15]];
_categories = _categories 	+ ["Fortification"];

_headers = _headers 		+ ["MG Defense"];
_classes = _classes 		+ ["O_HMG_01_High_F"];
_prices = _prices 			+ [200];
_placements = _placements 	+ [[180, 5]];
_categories = _categories 	+ ["Defense"];

_headers = _headers 		+ ["GL Defense"];
_classes = _classes 		+ ["O_GMG_01_high_F"];
_prices = _prices 			+ [300];
_placements = _placements 	+ [[180, 5]];
_categories = _categories 	+ ["Defense"];

_headers = _headers 		+ ["AT Defense"];
_classes = _classes 		+ ["O_static_AT_F"];
_prices = _prices 			+ [8000];
_placements = _placements 	+ [[180, 5]];
_categories = _categories 	+ ["Defense"];

_headers = _headers 		+ ["AA Defense"];
_classes = _classes 		+ ["O_static_AA_F"];
_prices = _prices 			+ [3000];
_placements = _placements 	+ [[180, 5]];
_categories = _categories 	+ ["Defense"];

_headers = _headers 		+ ["Mortar"];
_classes = _classes 		+ ["O_Mortar_01_F"];
_prices = _prices 			+ [10000];
_placements = _placements 	+ [[180, 5]];
_categories = _categories 	+ ["Defense"];
/*
_headers = _headers 		+ ["M2 Machine Gun"];
_classes = _classes 		+ ["CUP_B_M2StaticMG_USMC"];
_prices = _prices 			+ [150];
_placements = _placements 	+ [[180, 5]];
_categories = _categories 	+ ["Defense"];

_headers = _headers 		+ ["M2 Mini"];
_classes = _classes 		+ ["CUP_B_M2StaticMG_USMC"];
_prices = _prices 			+ [150];
_placements = _placements 	+ [[180, 5]];
_categories = _categories 	+ ["Defense"];

_headers = _headers 		+ ["AGS-30"];
_classes = _classes 		+ ["CUP_B_AGS_CDF"];
_prices = _prices 			+ [200];
_placements = _placements 	+ [[180, 5]];
_categories = _categories 	+ ["Defense"];

_headers = _headers 		+ ["DShKM"];
_classes = _classes 		+ ["CUP_B_DSHKM_CDF"];
_prices = _prices 			+ [175];
_placements = _placements 	+ [[180, 5]];
_categories = _categories 	+ ["Defense"];

_headers = _headers 		+ ["DShKM Mini"];
_classes = _classes 		+ ["CUP_B_DSHkM_MiniTriPod_CDF"];
_prices = _prices 			+ [175];
_placements = _placements 	+ [[180, 5]];
_categories = _categories 	+ ["Defense"];

_headers = _headers 		+ ["KORD Mini"];
_classes = _classes 		+ ["CUP_O_KORD_RU"];
_prices = _prices 			+ [300];
_placements = _placements 	+ [[180, 5]];
_categories = _categories 	+ ["Defense"];

_headers = _headers 		+ ["Metis AT-13"];
_classes = _classes 		+ ["CUP_O_Metis_RU"];
_prices = _prices 			+ [4000];
_placements = _placements 	+ [[180, 5]];
_categories = _categories 	+ ["Defense"];

_headers = _headers 		+ ["D-30 AT"];
_classes = _classes 		+ ["CUP_B_D30_AT_CDF"];
_prices = _prices 			+ [7000];
_placements = _placements 	+ [[180, 5]];
_categories = _categories 	+ ["Defense"];

_headers = _headers 		+ ["Podnos 2B14"];
_classes = _classes 		+ ["CUP_B_2b14_82mm_CDF"];
_prices = _prices 			+ [15000];
_placements = _placements 	+ [[180, 5]];
_categories = _categories 	+ ["Defense"];

_headers = _headers 		+ ["SPG-9"];
_classes = _classes 		+ ["CUP_B_SPG9_CDF"];
_prices = _prices 			+ [500];
_placements = _placements 	+ [[180, 5]];
_categories = _categories 	+ ["Defense"];

_headers = _headers 		+ ["C-RAM Phalanx"];
_classes = _classes 		+ ["C_at_phalanx_35AI"];
_prices = _prices 			+ [80000];
_placements = _placements 	+ [[180, 15]];
_categories = _categories 	+ ["Defense"];

_headers = _headers 		+ ["C-RAM Phalanx Missle"];
_classes = _classes 		+ ["C_at_phalanx_missile_35AI"];
_prices = _prices 			+ [100000];
_placements = _placements 	+ [[180, 15]];
_categories = _categories 	+ ["Defense"];
*/
_headers = _headers 		+ [["Heli Pad", [["DMG_Reduce", 1]]]];
_classes = _classes 		+ ["Land_HelipadSquare_F"];
_prices = _prices 			+ [10];
_placements = _placements 	+ [[0, 7]];
_categories = _categories 	+ ["Signs"];
/*
_headers = _headers 		+ ["Flag"];
_classes = _classes 		+ ["Flag_CSAT_F"];
_prices = _prices 			+ [50];
_placements = _placements 	+ [[90, 15]];
_categories = _categories 	+ ["Flag"];
*/
_headers = _headers 		+ ["Lamp"];
_classes = _classes 		+ ["Land_LampHalogen_F"];
_prices = _prices 			+ [5];
_placements = _placements 	+ [[90, 15]];
_categories = _categories 	+ ["Fortification"];

_headers = _headers 		+ ["Warning Sign- Mines"];
_classes = _classes 		+ ["Land_Sign_Mines_F"];
_prices = _prices 			+ [1];
_placements = _placements 	+ [[90, 7]];
_categories = _categories 	+ ["Sign"];

_headers = _headers 		+ ["Campfire"];
_classes = _classes 		+ ["Campfire_burning_F"];
_prices = _prices 			+ [50];
_placements = _placements 	+ [[90, 7]];
_categories = _categories 	+ ["Fortification"];

_headers = _headers 		+ ["Camp Chair"];
_classes = _classes 		+ ["Land_CampingChair_V2_F"];
_prices = _prices 			+ [50];
_placements = _placements 	+ [[90, 7]];
_categories = _categories 	+ ["Fortification"];

_headers = _headers 		+ ["Camp Table"];
_classes = _classes 		+ ["Land_CampingTable_F"];
_prices = _prices 			+ [50];
_placements = _placements 	+ [[90, 7]];
_categories = _categories 	+ ["Fortification"];

_headers = _headers 		+ ["Latrine"];
_classes = _classes 		+ ["Land_FieldToilet_F"];
_prices = _prices 			+ [50];
_placements = _placements 	+ [[90, 7]];
_categories = _categories 	+ ["Fortification"];

_headers = _headers 		+ ["Tent"];
_classes = _classes 		+ ["Land_TentA_F"];
_prices = _prices 			+ [50];
_placements = _placements 	+ [[90, 7]];
_categories = _categories 	+ ["Fortification"];

_headers = _headers 		+ ["Double Portable Light"];
_classes = _classes 		+ ["Land_PortableLight_double_F"];
_prices = _prices 			+ [50];
_placements = _placements 	+ [[90, 7]];
_categories = _categories 	+ ["Fortification"];

_headers = _headers 		+ ["Map"];
_classes = _classes 		+ ["MapBoard_altis_F"];
_prices = _prices 			+ [1];
_placements = _placements 	+ [[180, 10]];
_categories = _categories 	+ ["Furniture"];

_headers = _headers 		+ ["Runway Light (Blue)"];
_classes = _classes 		+ ["Land_runway_edgelight_blue_F"];
_prices = _prices 			+ [1];
_placements = _placements 	+ [[0, 5]];
_categories = _categories 	+ ["Structures"];


[_side, _headers, _classes, _prices, _placements, _categories] call compile preprocessFileLineNumbers "Common\Config\Base\Set_Defenses.sqf";

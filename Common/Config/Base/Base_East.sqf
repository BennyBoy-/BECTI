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
_conditions = [];

/*
	Specials:
		- DMG_Alternative: Need to be used in case of bisterious buildings usage 
				If a building is damaged, all the EH it had will bisteriously vanish... This "feature" will probably never get fixed so once again, we fix it ourself!
		- DMG_Reduce: Reduce the incoming damage on a building making it stronger if above 1.
*/

_headers pushBack 		[CTI_HQ_MOBILIZE, "Headquarters (Mobilize)", "HQ"];
_classes pushBack		[missionNamespace getVariable format["CTI_%1_HQ", _side], ""];
_prices pushBack 		500;
_times pushBack			0;
_placements pushBack 	[0, 15, false];
_specials pushBack 		[];
_conditions pushBack 	(compile format["%1 call CTI_CO_FNC_IsHQDeployed", _side]);

_headers pushBack 		[CTI_HQ_DEPLOY, "Headquarters (Deploy)", "HQ"];
_classes pushBack		["Land_Research_house_V1_F", "Land_Research_house_V1_ruins_F"];
_prices pushBack 		500;
_times pushBack			0;
_placements pushBack 	[180, 15, false];
_specials pushBack 		[["DMG_Alternative"], ["DMG_Reduce", 6]];
_conditions pushBack 	(compile format["!(%1 call CTI_CO_FNC_IsHQDeployed)", _side]);

_headers pushBack		[CTI_BARRACKS, "Barracks", "Barracks"];
_classes pushBack		["Land_Cargo_House_V1_F", "Land_Cargo_House_V1_ruins_F"];
_prices pushBack		2000;
_times pushBack			60;
_placements pushBack 	[180, 15];
_specials pushBack 		[["DMG_Alternative"], ["DMG_Reduce", 1.5]];
_conditions pushBack 	(compile format["(%1) call CTI_CO_FNC_IsHQDeployed", _side]);

_headers pushBack		[CTI_LIGHT, "Light Vehicle Factory", "Light"];
_classes pushBack		["Land_Medevac_HQ_V1_F", "Land_Medevac_HQ_V1_ruins_F"];
_prices pushBack 		4000;
_times pushBack 		80;
_placements pushBack 	[90, 25];
_specials pushBack 		[["DMG_Alternative"], ["DMG_Reduce", 25]];
_conditions pushBack 	(compile format["(%1) call CTI_CO_FNC_IsHQDeployed", _side]);

_headers pushBack 		[CTI_CONTROLCENTER, "Control Center", "CC"];
_classes pushBack 		["Land_Research_HQ_F", "Land_Research_HQ_ruins_F", ["Land_Research_HQ_F"]];							  
_prices pushBack 		8000;
_times pushBack 		90;
_placements pushBack 	[90, 25, false];
_specials pushBack 		[["DMG_Alternative"], ["DMG_Reduce", 4.3]];
_conditions pushBack 	(compile format["(%1) call CTI_CO_FNC_IsHQDeployed", _side]);

_headers pushBack 		[CTI_HEAVY, "Heavy Vehicle Factory", "Heavy"];
_classes pushBack 		["Land_Cargo_HQ_V1_F", "Land_Cargo_HQ_V1_ruins_F"];
_prices pushBack 		6000;
_times pushBack 		120;
_placements pushBack 	[90, 25];
_specials pushBack 		[["DMG_Alternative"], ["DMG_Reduce", 25]];
_conditions pushBack 	(compile format["(%1) call CTI_CO_FNC_IsHQDeployed", _side]);

_headers pushBack 		[CTI_AIR, "Aircraft Factory", "Air"];
_classes pushBack 		["Land_Airport_Tower_F", "Land_Airport_Tower_ruins_F"];
_prices pushBack 		8000;
_times pushBack 		140;
_placements pushBack 	[180, 40];
_specials pushBack 		[["DMG_Alternative"], ["DMG_Reduce", 20000]]; 
_conditions pushBack 	(compile format["(%1) call CTI_CO_FNC_IsHQDeployed", _side]);

_headers pushBack 		[CTI_AMMO, "Ammo Depot", "Ammo"];
_classes pushBack 		["Land_Cargo_HQ_V2_F", "Land_Cargo_HQ_V2_ruins_F"];
_prices pushBack 		4000;
_times pushBack 		40;
_placements pushBack 	[90, 25];
_specials pushBack 		[["DMG_Alternative"], ["DMG_Reduce", 25]];
_conditions pushBack 	(compile format["(%1) call CTI_CO_FNC_IsHQDeployed", _side]);

_headers pushBack 		[CTI_REPAIR, "Repair Depot", "Repair"];
_classes pushBack 		["Land_Cargo_HQ_V3_F", "Land_Cargo_HQ_V3_ruins_F"];
_prices pushBack 		4000;
_times pushBack 		35;
_placements pushBack 	[90, 25];
_specials pushBack 		[["DMG_Alternative"], ["DMG_Reduce", 25]];
_conditions pushBack 	(compile format["(%1) call CTI_CO_FNC_IsHQDeployed", _side]);

_headers pushBack 		[CTI_NAVAL, "Naval Yard", "Naval"];
_classes pushBack 		["Land_Lighthouse_small_F", "Land_Lighthouse_small_ruins_F"];
_prices pushBack 		2000;
_times pushBack 		35;
_placements pushBack 	[180, 60];
_specials pushBack 		[["DMG_Alternative"], ["DMG_Reduce", 4]];
_conditions pushBack 	(compile format["(%1) call CTI_CO_FNC_IsHQDeployed", _side]);

_headers pushBack 		[CTI_RADAR, "Air Radar", "Air Radar"];
_classes pushBack 		["Land_TTowerBig_2_F", "Land_TTowerBig_2_ruins_F"];
_prices pushBack 		8000;
_times pushBack 		120;
_placements pushBack 	[180, 30, false];
_specials pushBack 		[["DMG_Alternative"], ["DMG_Reduce", 2]];
_conditions pushBack 	(compile format["(%1) call CTI_CO_FNC_IsHQDeployed", _side]);

[_side, _headers, _classes, _prices, _times, _placements, _specials, _conditions] call compile preprocessFileLineNumbers "Common\Config\Base\Set_Structures.sqf";


//--- Defenses
_headers = [];
_classes = [];
_prices = [];
_placements = [];
_categories = [];

_headers pushBack 		"Empty Crate";
_classes pushBack 		"O_supplyCrate_F";
_prices pushBack 		5;
_placements pushBack 	[0, 2];
_categories pushBack 	"Fortification";

_headers pushBack 		"Short Sandbag";
_classes pushBack 		"Land_BagFence_Short_F";
_prices pushBack 		5;
_placements pushBack 	[0, 5];
_categories pushBack 	"Fortification";

_headers pushBack 		"Long Sandbag";
_classes pushBack 		"Land_BagFence_Long_F";
_prices pushBack 		5;
_placements pushBack 	[0, 5];
_categories pushBack 	"Fortification";

_headers pushBack 		"Round Sandbag";
_classes pushBack 		"Land_BagFence_Round_F";
_prices pushBack 		5;
_placements pushBack 	[0, 5];
_categories pushBack 	"Fortification";

_headers pushBack 		"Bunker (Small)";
_classes pushBack 		"Land_BagBunker_Small_F";
_prices pushBack 		15;
_placements pushBack 	[0, 7];
_categories pushBack 	"Fortification";

if (CTI_APEX_ADDON > 0) then {

/* Can't be destroyed need to encourage cup to make a destructable model of apex assets
_headers pushBack 		"Bunker (Small) Green";
_classes pushBack 		"Land_BagBunker_01_small_green_F";
_prices pushBack 		15;
_placements pushBack 	[0, 7];
_categories pushBack 	"Fortification";
*/

_headers pushBack 		"IR/Termal Cover Small";
_classes pushBack 		"Land_IRMaskingCover_02_F";
_prices pushBack 		15;
_placements pushBack 	[0, 7];
_categories pushBack 	"Fortification";

_headers pushBack 		"IR/Termal Cover Large";
_classes pushBack 		"Land_IRMaskingCover_01_F";
_prices pushBack 		15;
_placements pushBack 	[0, 7];
_categories pushBack 	"Fortification";
};

_headers pushBack 		"Razor Wire";
_classes pushBack 		"Land_Razorwire_F";
_prices pushBack 		1;
_placements pushBack 	[0, 5];
_categories pushBack 	"Fortification";

_headers pushBack 		["Fence",[["CanAutoAlign", 7.5, 0]]];
_classes pushBack 		"Land_Mil_WiredFence_F";
_prices pushBack 		5;
_placements pushBack 	[0, 7];
_categories pushBack 	"Fortification";

_headers pushBack 		"Gate";
_classes pushBack 		"Land_Mil_WiredFence_Gate_F";
_prices pushBack 		5;
_placements pushBack 	[0, 15];
_categories pushBack 	"Structures_Fences";

_headers pushBack 		["High Wall (Mil)",[["CanAutoAlign", 3.8, 0]]];
_classes pushBack 		"Land_Mil_WallBig_4m_F";
_prices pushBack 		20;
_placements pushBack 	[0, 7];
_categories pushBack 	"Fortification";

_headers pushBack 		["High Wall Gate (Mil)",[["CanAutoAlign", 3.8, 0]]];
_classes pushBack 		"Land_Mil_WallBig_Gate_F";
_prices pushBack 		20;
_placements pushBack 	[0, 7];
_categories pushBack 	"Fortification";

_headers pushBack 		"Camo net";
_classes pushBack 		"CamoNet_OPFOR_F";
_prices pushBack 		50;
_placements pushBack 	[0, 15];
_categories pushBack 	"Fortification";

_headers pushBack 		"Camo net open";
_classes pushBack 		"CamoNet_OPFOR_open_F";
_prices pushBack 		50;
_placements pushBack 	[0, 15];
_categories pushBack 	"Fortification";

_headers pushBack 		"Camo net vehicle";
_classes pushBack 		"CamoNet_OPFOR_big_F";
_prices pushBack 		50;
_placements pushBack 	[0, 15];
_categories pushBack 	"Fortification";

_headers pushBack 		"Tower";
_classes pushBack 		"Land_Cargo_Patrol_V1_F";
_prices pushBack 		150;
_placements pushBack 	[0, 15];
_categories pushBack 	"Fortification";

_headers pushBack 		["Cargo Tower (big)",[["RuinOnDestroyed", "Land_Cargo_Tower_V1_ruins_F"], ["DMG_Reduce", 8]]];
_classes pushBack 		"Land_Cargo_Tower_V1_F";
_prices pushBack 		2000;
_placements pushBack 	[0, 30];
_categories pushBack 	"Fortification";

if (CTI_APEX_ADDON > 0) then {
_headers pushBack 		"Cargo Tower (big) Jungle";
_classes pushBack 		"Land_Cargo_Tower_V4_F";
_prices pushBack 		2000;
_placements pushBack 	[0, 30];
_categories pushBack 	"Fortification";

_headers pushBack 		"Air Tower";
_classes pushBack 		"Land_Airport_01_controlTower_F";
_prices pushBack 		300;
_placements pushBack 	[0, 30];
_categories pushBack 	"Fortification";
};

_headers pushBack 		["Shed (Roof)",[["RuinOnDestroyed", "Land_Shed_Big_ruins_F"], ["DMG_Reduce", 8]]];
_classes pushBack 		"Land_Shed_Big_F";
_prices pushBack 		200;
_placements pushBack 	[0, 15];
_categories pushBack 	"Fortification";

_headers pushBack 		["Shed (Land)",[["RuinOnDestroyed", "Land_Shed_Small_ruins_F"], ["DMG_Reduce", 5]]];
_classes pushBack 		"Land_Shed_Small_F";
_prices pushBack 		200;
_placements pushBack 	[90, 15];
_categories pushBack 	"Structures_Industrial";

_headers pushBack 		["Tent Hangar",[["RuinOnDestroyed", "Land_TentHangar_V1_ruins_F"], ["DMG_Reduce", 5]]];
_classes pushBack 		"Land_TentHangar_V1_F";
_prices pushBack 		500;
_placements pushBack 	[0, 20];
_categories pushBack 	"Structures_Military";

if (CTI_OFPS_ADDON > 0) then {
_headers pushBack 		"Mil Shed";
_classes pushBack 		"Land_sfp_mil_shed";
_prices pushBack 		1000;
_placements pushBack 	[0, 20];
_categories pushBack 	"Structures_Military";

_headers pushBack 		"Hangar Wood";
_classes pushBack 		"Land_sfp_torebodahangar";
_prices pushBack 		1000;
_placements pushBack 	[0, 20];
_categories pushBack 	"Structures_Military";

_headers pushBack 		"Hangar Wood Large";
_classes pushBack 		"Land_sfp_torebodahangar_alt2";
_prices pushBack 		1500;
_placements pushBack 	[0, 20];
_categories pushBack 	"Structures_Military";
};

_headers pushBack 		"Dome (Small)";
_classes pushBack 		"Land_Dome_Small_F";
_prices pushBack 		1500;
_placements pushBack 	[0, 30];
_categories pushBack 	"Fortification";

_headers pushBack 		"Dome (Big)";
_classes pushBack 		"Land_Dome_Big_F";
_prices pushBack 		4000;
_placements pushBack 	[0, 50];
_categories pushBack 	"Fortification";

/* Do not add in cannot be destroyed. Can we just Delete these then?-Apollo
_headers pushBack 		"H-Barrier (Small) (1 Block)";
_classes pushBack 		"Land_HBarrier_1_F";
_prices pushBack 		10;
_placements pushBack 	[90, 7];
_categories pushBack 	"Fortification";

_headers pushBack 		["H-Barrier (Small) (5 Block)",[["CanAutoAlign", 6, 0]]];
_classes pushBack 		"Land_HBarrier_5_F";
_prices pushBack 		50;
_placements pushBack 	[0, 7];
_categories pushBack 	"Fortification";

_headers pushBack 		["High Wall (Concrete)",[["CanAutoAlign", 4.6, 0]]];
_classes pushBack 		"Land_CncWall4_F";
_prices pushBack 		20;
_placements pushBack 	[0, 7];
_categories pushBack 	"Fortification";

_headers pushBack 		"H-Barrier (Medium)";
_classes pushBack 		"Land_HBarrier_5_F";
_prices pushBack 		20;
_placements pushBack 	[0, 7];
_categories pushBack 	"Fortification";

_headers pushBack 		["H-Barrier (Big)",[["CanAutoAlign", 6, 0]]];
_classes pushBack 		"Land_HBarrierBig_F";
_prices pushBack 		20;
_placements pushBack 	[0, 7];
_categories pushBack 	"Fortification";

_headers pushBack 		"H-Barrier Wall (6)";
_classes pushBack 		"Land_HBarrierWall6_F";
_prices pushBack 		40;
_placements pushBack 	[180, 7];
_categories pushBack 	"Fortification";

_headers pushBack 		"H-Barrier Coridor";
_classes pushBack 		"Land_HBarrierWall_corridor_F";
_prices pushBack 		20;
_placements pushBack 	[90, 7];
_categories pushBack 	"Fortification";

_headers pushBack 		"H-Barrier Tower";
_classes pushBack 		"Land_HBarrierTower_F";
_prices pushBack 		40;
_placements pushBack 	[0, 7];
_categories pushBack 	"Fortification";
*/

_headers pushBack 		["FOB",[["RuinOnDestroyed", "Land_Medevac_house_V1_ruins_F"], ["FOB"],["Condition", {_cpt = if (isNil {CTI_P_SideLogic getVariable "cti_fobs"}) then {1000} else {count (CTI_P_SideLogic getVariable "cti_fobs")}; (_cpt < CTI_BASE_FOB_MAX) && (call CTI_CL_FNC_IsPlayerCommander || (!(call CTI_CL_FNC_IsPlayerCommander) && CTI_P_TeamsRequests_FOB > 0))}]]];
_classes pushBack 		"Land_Medevac_house_V1_F";
_prices pushBack 		10000;
_placements pushBack 	[180, 15];
_categories pushBack 	"Fortification";

_headers pushBack 		"MG Defense";
_classes pushBack 		"O_HMG_01_High_F";
_prices pushBack 		200;
_placements pushBack 	[180, 5];
_categories pushBack 	"Defense";

_headers pushBack 		"GL Defense";
_classes pushBack 		"O_GMG_01_high_F";
_prices pushBack 		300;
_placements pushBack 	[180, 5];
_categories pushBack 	"Defense";

_headers pushBack 		"AT Defense";
_classes pushBack 		"O_static_AT_F";
_prices pushBack 		8000;
_placements pushBack 	[180, 5];
_categories pushBack 	"Defense";

_headers pushBack 		"AA Defense";
_classes pushBack 		"O_static_AA_F";
_prices pushBack 		3000;
_placements pushBack 	[180, 5];
_categories pushBack 	"Defense";

_headers pushBack 		"Mortar";
_classes pushBack 		"O_Mortar_01_F";
_prices pushBack 		10000;
_placements pushBack 	[180, 5];
_categories pushBack 	"Defense";

if (CTI_CUP_ADDON > 0) then {
_headers pushBack 		"M2 Machine Gun";
_classes pushBack 		"CUP_B_M2StaticMG_USMC";
_prices pushBack 		150;
_placements pushBack 	[180, 5];
_categories pushBack 	"Defense";

_headers pushBack 		"M2 Mini";
_classes pushBack 		"CUP_B_M2StaticMG_USMC";
_prices pushBack 		150;
_placements pushBack 	[180, 5];
_categories pushBack 	"Defense";

_headers pushBack 		"AGS-30";
_classes pushBack 		"CUP_B_AGS_CDF";
_prices pushBack 		200;
_placements pushBack 	[180, 5];
_categories pushBack 	"Defense";

_headers pushBack 		"DShKM";
_classes pushBack 		"CUP_B_DSHKM_CDF";
_prices pushBack 		175;
_placements pushBack 	[180, 5];
_categories pushBack 	"Defense";

_headers pushBack 		"DShKM Mini";
_classes pushBack 		"CUP_B_DSHkM_MiniTriPod_CDF";
_prices pushBack 		175;
_placements pushBack 	[180, 5];
_categories pushBack 	"Defense";

_headers pushBack 		"KORD Mini";
_classes pushBack 		"CUP_O_KORD_RU";
_prices pushBack 		300;
_placements pushBack 	[180, 5];
_categories pushBack 	"Defense";

_headers pushBack 		"Metis AT-13";
_classes pushBack 		"CUP_O_Metis_RU";
_prices pushBack 		4000;
_placements pushBack 	[180, 5];
_categories pushBack 	"Defense";

_headers pushBack 		"D-30 AT";
_classes pushBack 		"CUP_B_D30_AT_CDF";
_prices pushBack 		7000;
_placements pushBack 	[180, 5];
_categories pushBack 	"Defense";

_headers pushBack 		"Podnos 2B14";
_classes pushBack 		"CUP_B_2b14_82mm_CDF";
_prices pushBack 		15000;
_placements pushBack 	[180, 5];
_categories pushBack 	"Defense";

_headers pushBack 		"SPG-9";
_classes pushBack 		"CUP_B_SPG9_CDF";
_prices pushBack 		500;
_placements pushBack 	[180, 5];
_categories pushBack 	"Defense";

_headers pushBack 		"ZU-23";
_classes pushBack 		"CUP_B_ZU23_RU";
_prices pushBack 		2000;
_placements pushBack 	[180, 5];
_categories pushBack 	"Defense";
};

if (CTI_CUP_CORE_ADDON > 0) then { 
_headers pushBack 		["H-Barrier10xTall",[["CanAutoAlign", 3.8, 0]]];
_classes pushBack 		"Base_WarfareBBarrier10xTall";
_prices pushBack 		10;
_placements pushBack 	[90, 7];
_categories pushBack 	"Fortification";

_headers pushBack 		["H-Barrier10x",[["CanAutoAlign", 3.8, 0]]];
_classes pushBack 		"Base_WarfareBBarrier10x";
_prices pushBack 		10;
_placements pushBack 	[90, 7];
_categories pushBack 	"Fortification";

_headers pushBack 		["H-Barrier5x",[["CanAutoAlign", 3.8, 0]]];
_classes pushBack 		"Base_WarfareBBarrier5x";
_prices pushBack 		10;
_placements pushBack 	[90, 7];
_categories pushBack 	"Fortification";

_headers pushBack 		"Concrete Vehicle Bunker";
_classes pushBack 		"Land_Ammostore2";
_prices pushBack 		200;
_placements pushBack 	[90, 7];
_categories pushBack 	"Fortification";

_headers pushBack 		"Large Hangar (Green)";
_classes pushBack 		"Land_Ss_hangar";
_prices pushBack 		3000;
_placements pushBack 	[90, 7];
_categories pushBack 	"Fortification";

_headers pushBack 		"Large Hangar (Desert)";
_classes pushBack 		"Land_Ss_hangard";
_prices pushBack 		3000;
_placements pushBack 	[90, 7];
_categories pushBack 	"Fortification";

_headers pushBack 		"EarthenNest (Green)";
_classes pushBack 		"Land_fort_artillery_nest";
_prices pushBack 		50;
_placements pushBack 	[90, 7];
_categories pushBack 	"Fortification";

_headers pushBack 		"EarthenWall (Green)";
_classes pushBack 		"Land_fort_rampart";
_prices pushBack 		50;
_placements pushBack 	[90, 7];
_categories pushBack 	"Fortification";

_headers pushBack 		"EarthenNest (Desert)";
_classes pushBack 		"Land_fort_artillery_nest_EP1";
_prices pushBack 		50;
_placements pushBack 	[90, 7];
_categories pushBack 	"Fortification";

_headers pushBack 		"EarthenWall (Desert)";
_classes pushBack 		"Land_fort_rampart_EP1";
_prices pushBack 		50;
_placements pushBack 	[90, 7];
_categories pushBack 	"Fortification";
};

if (CTI_OFPS_ADDON > 0) then {
_headers pushBack 		"C-RAM Phalanx";
_classes pushBack 		"C_at_phalanx_35AI";
_prices pushBack 		80000;
_placements pushBack 	[180, 15];
_categories pushBack 	"Defense";

_headers pushBack 		"C-RAM Phalanx Missle";
_classes pushBack 		"C_at_phalanx_missile_35AI";
_prices pushBack 		100000;
_placements pushBack 	[180, 15];
_categories pushBack 	"Defense";
};

_headers pushBack 		["Heli Pad", [["DMG_Reduce", 1]]];
_classes pushBack 		"Land_HelipadSquare_F";
_prices pushBack 		10;
_placements pushBack 	[0, 7];
_categories pushBack 	"Signs";

/*
_headers pushBack 		"Flag";
_classes pushBack 		"Flag_CSAT_F";
_prices pushBack 		50;
_placements pushBack 	[90, 15];
_categories pushBack 	"Flag";
*/

/* Why have these? only adds clutter
_headers pushBack 		"Lamp";
_classes pushBack 		"Land_LampHalogen_F";
_prices pushBack 		5;
_placements pushBack 	[90, 15];
_categories pushBack 	"Fortification";

_headers pushBack 		"Warning Sign- Mines";
_classes pushBack 		"Land_Sign_Mines_F";
_prices pushBack 		1;
_placements pushBack 	[90, 7];
_categories pushBack 	"Sign";

_headers pushBack 		"Campfire";
_classes pushBack 		"Campfire_burning_F";
_prices pushBack 		50;
_placements pushBack 	[90, 7];
_categories pushBack 	"Fortification";

_headers pushBack 		"Camp Chair";
_classes pushBack 		"Land_CampingChair_V2_F";
_prices pushBack 		50;
_placements pushBack 	[90, 7];
_categories pushBack 	"Fortification";

_headers pushBack 		"Camp Table";
_classes pushBack 		"Land_CampingTable_F";
_prices pushBack 		50;
_placements pushBack 	[90, 7];
_categories pushBack 	"Fortification";

_headers pushBack 		"Latrine";
_classes pushBack 		"Land_FieldToilet_F";
_prices pushBack 		50;
_placements pushBack 	[90, 7];
_categories pushBack 	"Fortification";

_headers pushBack 		"Tent";
_classes pushBack 		"Land_TentA_F";
_prices pushBack 		50;
_placements pushBack 	[90, 7];
_categories pushBack 	"Fortification";

_headers pushBack 		"Double Portable Light";
_classes pushBack 		"Land_PortableLight_double_F";
_prices pushBack 		50;
_placements pushBack 	[90, 7];
_categories pushBack 	"Fortification";

_headers pushBack 		"Map";
_classes pushBack 		"MapBoard_altis_F";
_prices pushBack 		1;
_placements pushBack 	[180, 10];
_categories pushBack 	"Furniture";

_headers pushBack 		"Runway Light (Blue)";
_classes pushBack 		"Land_runway_edgelight_blue_F";
_prices pushBack 		1;
_placements pushBack 	[0, 5];
_categories pushBack 	"Structures";

_headers pushBack 		"WindSock";
_classes pushBack 		"Windsock_01_F";
_prices pushBack 		1;
_placements pushBack 	[0, 5];
_categories pushBack 	"Structures";
*/

[_side, _headers, _classes, _prices, _placements, _categories] call compile preprocessFileLineNumbers "Common\Config\Base\Set_Defenses.sqf";

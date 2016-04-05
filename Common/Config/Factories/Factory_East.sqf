private ["_side", "_u"];

_side = _this;

missionNamespace setVariable [format["CTI_%1_Commander", _side], "O_officer_F"];
missionNamespace setVariable [format["CTI_%1_Worker", _side], "O_Soldier_lite_F"];

missionNamespace setVariable [format["CTI_%1_Diver", _side], "O_diver_F"];
missionNamespace setVariable [format["CTI_%1_Soldier", _side], "O_Soldier_F"];
missionNamespace setVariable [format["CTI_%1_Crew", _side], "O_crew_F"];
missionNamespace setVariable [format["CTI_%1_Pilot", _side], "O_Helipilot_F"];

missionNamespace setVariable [format["CTI_%1_Vehicles_Startup", _side], [ 
	["O_Truck_02_transport_F", [
		["arifle_Katiba_GL_F", 2], ["30rnd_65x39_caseless_green", 50],
		["arifle_Mk20_F", 2], ["30rnd_556x45_stanag", 25],
		["srifle_DMR_01_F", 2], ["10Rnd_762x51_Mag", 20], 
		["LMG_Zafir_F", 1], ["150Rnd_762x51_Box", 5], 
		["launch_RPG32_F", 3], ["RPG32_F", 12], 
		["HandGrenade", 20], 
		["30Rnd_65x39_caseless_green_mag_Tracer", 6], 
		["1Rnd_HE_Grenade_shell", 24], 
		["UGL_FlareRed_F", 27], 
		["1Rnd_SmokeRed_Grenade_shell", 9], 
		["SmokeShellRed", 8],
		["firstaidkit", 20],
		["Chemlight_red", 36],
		["acc_flashlight", 5],
		["optic_ACO_grn", 3],
		["optic_Holosight", 2],
		["optic_MRCO", 1],
		["optic_DMS", 2],
		["B_Bergen_sgg_Exp", 4],
		["O_HMG_01_support_F", 1],
		["O_HMG_01_support_high_F", 1]
	]], 
	["O_MRAP_02_F", []]
]];

//--- Units - Barracks
_u 			= ['O_soldier_AR_F'];
_u = _u		+ ['O_Soldier_A_F'];
_u = _u		+ ['O_soldier_exp_F'];
_u = _u		+ ['O_Soldier_GL_F'];
_u = _u		+ ['O_soldier_M_F'];
_u = _u		+ ['O_medic_F'];
_u = _u		+ ['O_Soldier_F'];
_u = _u		+ ['O_soldier_PG_F'];
_u = _u		+ ['O_engineer_F'];
_u = _u		+ ['O_sniper_F'];
_u = _u		+ ['O_soldier_repair_F'];
_u = _u		+ ['O_soldier_LAT_F'];
_u = _u		+ ['O_soldier_AA_F'];
_u = _u		+ ['O_soldier_AT_F'];
_u = _u		+ ['O_spotter_F'];
_u = _u		+ ['O_soldier_UAV_F'];
_u = _u		+ ['O_Helipilot_F'];
_u = _u		+ ['O_crew_F'];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_BARRACKS], _u];

_u 			= ['O_Quadbike_01_F'];
_u = _u		+ ['O_Truck_02_transport_F'];
_u = _u		+ ['O_MRAP_02_F'];
_u = _u		+ ['O_MRAP_02_hmg_F'];
_u = _u		+ ['O_MRAP_02_gmg_F'];
_u = _u		+ ['O_Truck_02_medical_F'];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_LIGHT], _u];

_u 			= ["O_APC_Wheeled_02_rcws_F"];
_u = _u		+ ["O_APC_Tracked_02_cannon_F"];
_u = _u		+ ["O_MBT_02_cannon_F"];
_u = _u		+ ["O_APC_Tracked_02_AA_F"];
_u = _u		+ ["O_MBT_02_arty_F"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_HEAVY], _u];

_u 			= ['O_Heli_Light_02_unarmed_F'];
_u = _u		+ ['O_Heli_Light_02_F'];
_u = _u		+ ['O_Heli_Attack_02_F'];
_u = _u		+ ['O_Heli_Attack_02_black_F'];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_AIR], _u];

_u 			= ["O_Truck_02_box_F"];
_u = _u		+ ["CTI_Salvager_East"];
_u = _u		+ ["O_Truck_02_fuel_F"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_REPAIR], _u];

_u 			= ["O_Truck_02_Ammo_F"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_AMMO], _u];

_u 			= ['O_Boat_Transport_01_F'];
_u = _u		+ ['O_Boat_Armed_01_hmg_F'];
_u = _u		+ ['O_SDV_01_F'];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_NAVAL], _u];
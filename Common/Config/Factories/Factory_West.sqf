private ["_side", "_u"];

_side = _this;

missionNamespace setVariable [format["CTI_%1_Commander", _side], "B_officer_F"];
missionNamespace setVariable [format["CTI_%1_Worker", _side], "B_Soldier_lite_F"];

missionNamespace setVariable [format["CTI_%1_Diver", _side], "B_diver_f"];
missionNamespace setVariable [format["CTI_%1_Soldier", _side], "B_Soldier_F"];
missionNamespace setVariable [format["CTI_%1_Crew", _side], "B_crew_F"];
missionNamespace setVariable [format["CTI_%1_Pilot", _side], "B_Helipilot_F"];

missionNamespace setVariable [format["CTI_%1_Vehicles_Startup", _side], [ 
	["B_Truck_01_transport_F", [
		["arifle_mx_gl_f", 2], ["30Rnd_65x39_caseless_mag", 50],
		["arifle_MXM_F", 1], ["100Rnd_65x39_caseless_mag", 10],
		["srifle_EBR_F", 2], ["20Rnd_762x51_Mag", 20], 
		["LMG_Mk200_F", 1], ["200Rnd_65x39_cased_Box", 5], 
		["launch_NLAW_F", 3], ["NLAW_F", 12], 
		["HandGrenade", 20], 
		["30Rnd_65x39_caseless_mag_Tracer", 6], 
		["3rnd_he_grenade_shell", 8], 
		["3Rnd_UGL_FlareWhite_F", 9], 
		["3rnd_smokeblue_grenade_shell", 3], 
		["SmokeShellBlue", 8],
		["firstaidkit", 20],
		["Chemlight_blue", 36],
		["acc_flashlight", 5],
		["optic_ACO_grn", 3],
		["optic_Holosight", 2],
		["optic_MRCO", 1],
		["optic_arco", 2],
		["B_Bergen_sgg", 4],
		["B_HMG_01_support_F", 1],
		["B_HMG_01_support_high_F", 1]
	]], 
	["B_MRAP_01_F", []]
]];

//--- Units - Barracks
_u 			= ["B_soldier_AR_F"];
_u = _u		+ ["B_Soldier_A_F"];
_u = _u		+ ["B_soldier_exp_F"];
_u = _u		+ ["B_Soldier_GL_F"];
_u = _u		+ ["B_soldier_M_F"];
_u = _u		+ ["B_medic_F"];
_u = _u		+ ["B_Soldier_F"];
_u = _u		+ ["B_soldier_PG_F"];
_u = _u		+ ["B_engineer_F"];
_u = _u		+ ["B_sniper_F"];
_u = _u		+ ["B_soldier_repair_F"];
_u = _u		+ ["B_soldier_LAT_F"];
_u = _u		+ ["B_soldier_AA_F"];
_u = _u		+ ["B_soldier_AT_F"];
_u = _u		+ ["B_spotter_F"];
_u = _u		+ ["B_soldier_UAV_F"];
_u = _u		+ ["B_Helipilot_F"];
_u = _u		+ ["B_crew_F"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_BARRACKS], _u];

_u 			= ["B_Quadbike_01_F"];
_u = _u		+ ["B_Truck_01_transport_F"];
_u = _u		+ ["B_MRAP_01_F"];
_u = _u		+ ["B_MRAP_01_hmg_F"];
_u = _u		+ ["B_MRAP_01_gmg_F"];
_u = _u		+ ["B_Truck_01_medical_F"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_LIGHT], _u];

_u 			= ["B_APC_Wheeled_01_cannon_F"];
_u = _u		+ ["B_APC_Tracked_01_rcws_F"];
_u = _u		+ ["B_MBT_01_cannon_F"];
_u = _u		+ ["B_APC_Tracked_01_AA_F"];
_u = _u		+ ["B_MBT_01_arty_F"];
_u = _u		+ ["B_MBT_01_mlrs_F"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_HEAVY], _u];

_u 			= ["B_Heli_Light_01_F"];
_u = _u		+ ["B_Heli_Transport_01_F"];
_u = _u		+ ["B_Heli_Light_01_armed_F"];
_u = _u		+ ["B_Heli_Attack_01_F"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_AIR], _u];

_u 			= ["B_Truck_01_Repair_F"];
_u = _u		+ ["CTI_Salvager_West"];
_u = _u		+ ["B_Truck_01_fuel_F"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_REPAIR], _u];

_u 			= ["B_Truck_01_ammo_F"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_AMMO], _u];

_u 			= ["B_Boat_Transport_01_F"];
_u = _u		+ ["B_Boat_Armed_01_minigun_F"];
_u = _u		+ ["B_SDV_01_F"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_NAVAL], _u];
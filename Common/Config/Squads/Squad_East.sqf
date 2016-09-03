_side = _this;

_v = [];
_t = [];
_p = [];
_f = [];
_m = [];
_c = [];
_s = [];

//--- Commander will assign those orders based on the force and the probability [type, strenght, {probability}, {Max per side}]
missionNamespace setVariable [format["CTI_SQUADS_%1_CATEGORY_INFANTRY", _side], [["Infantry", 2], ["InfantryAT", 1], ["InfantryAA", 1, 40, .10], ["InfantryRanged", 1, 60, .05]]];
missionNamespace setVariable [format["CTI_SQUADS_%1_CATEGORY_LIGHT", _side], [["Motorized", 1, 75, .12], ["Mechanized", 1, 90, .15]]];
missionNamespace setVariable [format["CTI_SQUADS_%1_CATEGORY_HEAVY", _side], [["Mechanized", 1, 35], ["AntiAir", 1, 85, .10], ["MechanizedHeavy", 1], ["Armored", 2]]];
missionNamespace setVariable [format["CTI_SQUADS_%1_CATEGORY_AIR", _side], [["AirAttack", 1]]];

missionNamespace setVariable [format["CTI_SQUADS_%1_TOWN_DEFENSE", _side], ["InfantryAT", "InfantryAA"]];

//--- Those are used by the commander to determine the kind of unit an AI team has
missionNamespace setVariable [format["CTI_SQUADS_%1_KIND_INFANTRY", _side], ["Infantry", "InfantryAT", "InfantryAA", "InfantryRanged"]];
missionNamespace setVariable [format["CTI_SQUADS_%1_KIND_LIGHT", _side], ["Motorized"]];
missionNamespace setVariable [format["CTI_SQUADS_%1_KIND_HEAVY", _side], ["Mechanized", "MechanizedHeavy", "Armored", "AntiAir"]];
missionNamespace setVariable [format["CTI_SQUADS_%1_KIND_AIR", _side], ["AirAttack"]];

_v pushBack "Infantry";
_t pushBack "Infantry";
_p pushBack [["O_Soldier_F", 5], ["O_soldier_AR_F", 2, 80], ["O_medic_F", 1], ["O_soldier_LAT_F", 1, 70], ["O_Soldier_GL_F", 2, 90], ["O_sniper_F", 1, 70], ["O_soldier_M_F", 1, 55]];
_f pushBack CTI_BARRACKS;
_m pushBack 500;
_c pushBack "Infantry";
_s pushBack [];

_v pushBack "InfantryAT";
_t pushBack "Infantry - AT";
_p pushBack [["O_soldier_AT_F", 5, 85], ["O_medic_F", 1], ["O_soldier_LAT_F", 3, 75]];
_f pushBack CTI_BARRACKS;
_m pushBack 800;
_c pushBack "InfantryAT";
_s pushBack [];

_v pushBack "InfantryAA";
_t pushBack "Infantry - AA";
_p pushBack [["O_soldier_AA_F", 5, 85], ["O_medic_F", 1], ["O_soldier_LAT_F", 2, 60]];
_f pushBack CTI_BARRACKS;
_m pushBack 800;
_c pushBack "InfantryAA";
_s pushBack [];

_v pushBack "InfantryRanged";
_t pushBack "Infantry - Snipers";
_p pushBack [["O_sniper_F", 2], ["O_soldier_M_F", 1]];
_f pushBack CTI_BARRACKS;
_m pushBack 900;
_c pushBack "InfantryAdvanced";
_s pushBack [];

// _v pushBack "Motorized";
// _t pushBack "Motorized - Transport";
// _p pushBack [["O_Truck_02_transport_F", 1]];
// _f pushBack CTI_LIGHT;
// _m pushBack 1000;
// _c pushBack "MotorizedTransport";
// _s pushBack [["Transport"], ["TransportFitCargo", 40]];

_v pushBack "Motorized";
_t pushBack "Motorized - MPRAP";
_p pushBack [["O_MRAP_02_hmg_F", 3], ["O_MRAP_02_gmg_F", 2, 75]];
_f pushBack CTI_LIGHT;
_m pushBack 1200;
_c pushBack "Motorized";
_s pushBack [];

_v pushBack "Mechanized";
_t pushBack "Mechanized - APC";
_p pushBack [["O_APC_Wheeled_02_rcws_F", 1], ["O_APC_Tracked_02_cannon_F", 1, 50]];
_f pushBack CTI_HEAVY;
_m pushBack 2500;
_c pushBack "Mechanized";
_s pushBack [];

_v pushBack "MechanizedHeavy";
_t pushBack "Mechanized - APC (Heavy)";
_p pushBack [["O_APC_Tracked_02_cannon_F", 1]];
_f pushBack CTI_HEAVY;
_m pushBack 3000;
_c pushBack "Mechanized";
_s pushBack [];

_v pushBack "Armored";
_t pushBack "Armored - MBT";
_p pushBack [["O_MBT_02_cannon_F", 1]];
_f pushBack CTI_HEAVY;
_m pushBack 6500;
_c pushBack "Armored";
_s pushBack [];

_v pushBack "AntiAir";
_t pushBack "Armored - Anti Air";
_p pushBack [["O_APC_Tracked_02_AA_F", 1]];
_f pushBack CTI_HEAVY;
_m pushBack 8500;
_c pushBack "AntiAir";
_s pushBack [];

_v pushBack "AirAttack";
_t pushBack "Air - Attack";
_p pushBack [["O_Heli_Attack_02_F", 1]];
_f pushBack CTI_AIR;
_m pushBack 25000;
_c pushBack "Air";
_s pushBack [];

[_side, _v, _t, _p, _f, _m, _c, _s] call compile preprocessFileLineNumbers "Common\Config\Squads\Squads_Set.sqf";
_side = _this;

_names = [];
_label = [];
_members = [];
_factories = [];
_types = [];

_names pushBack "Infantry";
_label pushBack "Infantry Squad";
_members pushBack [["B_Soldier_F", "B_soldier_AR_F", "B_medic_F", "B_soldier_LAT_F", "B_Soldier_GL_F", "B_sniper_F", "B_soldier_M_F"], [2, 1, 0.9, 1.2, 1, 0.4, 0.5]];
_factories pushBack CTI_BARRACKS;
_types pushBack "Infantry";

_names pushBack "InfantryAT";
_label pushBack "Infantry AT Squad";
_members pushBack [["B_soldier_AT_F", "B_medic_F", "B_soldier_LAT_F"], [3, 0.25, 1.5]];
_factories pushBack CTI_BARRACKS;
_types pushBack "InfantryAT";

_names pushBack "InfantryAA";
_label pushBack "Infantry AA Squad";
_members pushBack [["B_soldier_AA_F", "B_medic_F", "B_soldier_LAT_F"], [3, 0.25, 0.5]];
_factories pushBack CTI_BARRACKS;
_types pushBack "InfantryAA";

_names pushBack "InfantryRanged";
_label pushBack "Snipers";
_members pushBack [["B_sniper_F", "B_soldier_M_F"], [2, 1]];
_factories pushBack CTI_BARRACKS;
_types pushBack "InfantryAdvanced";

//todo in squad set, control upgrade level and price











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
missionNamespace setVariable [format["CTI_SQUADS_%1_CATEGORY_HEAVY", _side], [["Mechanized", 1, 50], ["AntiAir", 1, 85, .10], ["MechanizedHeavy", 1], ["Armored", 2]]];
missionNamespace setVariable [format["CTI_SQUADS_%1_CATEGORY_AIR", _side], [["AirAttack", 1]]];

missionNamespace setVariable [format["CTI_SQUADS_%1_TOWN_DEFENSE", _side], ["InfantryAT", "InfantryAA"]]; // USED BY UPDATECOMMANDER FSM

//--- Those are used by the commander to determine the kind of unit an AI team has
missionNamespace setVariable [format["CTI_SQUADS_%1_KIND_INFANTRY", _side], ["Infantry", "InfantryAT", "InfantryAA", "InfantryRanged"]];
missionNamespace setVariable [format["CTI_SQUADS_%1_KIND_LIGHT", _side], ["Motorized"]];
missionNamespace setVariable [format["CTI_SQUADS_%1_KIND_HEAVY", _side], ["Mechanized", "MechanizedHeavy", "Armored", "AntiAir"]];
missionNamespace setVariable [format["CTI_SQUADS_%1_KIND_AIR", _side], ["AirAttack"]];

_v pushBack "Infantry";
_t pushBack "Infantry";
_p pushBack [["B_Soldier_F", 5], ["B_soldier_AR_F", 2, 80], ["B_medic_F", 1], ["B_soldier_LAT_F", 1, 70], ["B_Soldier_GL_F", 2, 90], ["B_sniper_F", 1, 70], ["B_soldier_M_F", 1, 55]];
_f pushBack CTI_BARRACKS;
_m pushBack 500;
_c pushBack "Infantry";
_s pushBack [];

_v pushBack "InfantryAT";
_t pushBack "Infantry - AT";
_p pushBack [["B_soldier_AT_F", 5, 85], ["B_medic_F", 1], ["B_soldier_LAT_F", 3, 75]];
_f pushBack CTI_BARRACKS;
_m pushBack 800;
_c pushBack "InfantryAT";
_s pushBack [];

_v pushBack "InfantryAA";
_t pushBack "Infantry - AA";
_p pushBack [["B_soldier_AA_F", 5, 85], ["B_medic_F", 1], ["B_soldier_LAT_F", 2, 60]];
_f pushBack CTI_BARRACKS;
_m pushBack 800;
_c pushBack "InfantryAA";
_s pushBack [];

_v pushBack "InfantryRanged";
_t pushBack "Infantry - Snipers";
_p pushBack [["B_sniper_F", 2], ["B_soldier_M_F", 1]];
_f pushBack CTI_BARRACKS;
_m pushBack 900;
_c pushBack "InfantryAdvanced";
_s pushBack [];

// _v pushBack "Motorized";
// _t pushBack "Motorized - Transport";
// _p pushBack [["B_Truck_01_transport_F", 1]];
// _f pushBack CTI_LIGHT;
// _m pushBack 1000;
// _c pushBack "MotorizedTransport";
// _s pushBack [["Transport"], ["TransportFitCargo", 40]];

_v pushBack "Motorized";
_t pushBack "Motorized - MPRAP";
_p pushBack [["B_MRAP_01_hmg_F", 3], ["B_MRAP_01_gmg_F", 2, 75]];
_f pushBack CTI_LIGHT;
_m pushBack 1500;
_c pushBack "Motorized";
_s pushBack [];

_v pushBack "Mechanized";
_t pushBack "Mechanized - APC";
_p pushBack [["B_APC_Wheeled_01_cannon_F", 1], ["B_APC_Tracked_01_rcws_F", 1, 50]];
_f pushBack CTI_HEAVY;
_m pushBack 2500;
_c pushBack "Mechanized";
_s pushBack [];

_v pushBack "MechanizedHeavy";
_t pushBack "Mechanized - APC (Heavy)";
_p pushBack [["B_APC_Tracked_01_rcws_F", 1]];
_f pushBack CTI_HEAVY;
_m pushBack 3000;
_c pushBack "Mechanized";
_s pushBack [];

_v pushBack "Armored";
_t pushBack "Armored - MBT";
_p pushBack [["B_MBT_01_cannon_F", 1]];
_f pushBack CTI_HEAVY;
_m pushBack 6500;
_c pushBack "Armored";
_s pushBack [];

_v pushBack "AntiAir";
_t pushBack "Armored - Anti Air";
_p pushBack [["B_APC_Tracked_01_AA_F", 1]];
_f pushBack CTI_HEAVY;
_m pushBack 8500;
_c pushBack "AntiAir";
_s pushBack [];

_v pushBack "AirAttack";
_t pushBack "Air - Attack";
_p pushBack [["B_Heli_Attack_01_F", 1]];
_f pushBack CTI_AIR;
_m pushBack 25000;
_c pushBack "Air";
_s pushBack [];

[_side, _v, _t, _p, _f, _m, _c, _s] call compile preprocessFileLineNumbers "Common\Config\Squads\Squads_Set.sqf";
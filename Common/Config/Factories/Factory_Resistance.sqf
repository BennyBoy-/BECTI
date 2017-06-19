private ["_side", "_u"];

_side = _this;

missionNamespace setVariable [format["CTI_%1_Commander", _side], "I_officer_F"];
missionNamespace setVariable [format["CTI_%1_Worker", _side], "I_soldier_F"];

missionNamespace setVariable [format["CTI_%1_Diver", _side], "I_diver_F"];
missionNamespace setVariable [format["CTI_%1_Soldier", _side], "I_soldier_F"];
missionNamespace setVariable [format["CTI_%1_Crew", _side], "I_crew_F"];
missionNamespace setVariable [format["CTI_%1_Pilot", _side], "I_pilot_F"];
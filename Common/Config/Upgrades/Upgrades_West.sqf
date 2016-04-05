private ["_side"];

_side = _this;

missionNamespace setVariable [Format["CTI_%1_UPGRADES_ENABLED", _side], [
	true, //--- Barracks
	true, //--- Light
	true, //--- Heavy
	true, //--- Air
	true, //--- Satellite
	true, //--- Air FFAR
	(missionNamespace getVariable "CTI_VEHICLES_AIR_AT") == 1, //--- Air AT
	(missionNamespace getVariable "CTI_VEHICLES_AIR_AA") == 1, //--- Air AA
	(missionNamespace getVariable "CTI_VEHICLES_AIR_CM") == 1, //--- Air CM
	(missionNamespace getVariable "CTI_TOWNS_OCCUPATION") > 0 //--- Towns Occupation
]];

missionNamespace setVariable [Format["CTI_%1_UPGRADES_COSTS", _side], [
	[1500], //--- Barracks
	[2500], //--- Light
	[5000], //--- Heavy
	[25000], //--- Air
	[75000], //--- Satellite
	[10000], //--- Air FFAR
	[15000], //--- Air AT
	[20000], //--- Air AA
	[8000], //--- Air CM
	[5000, 20000, 40000] //--- Towns Occupation
]];

missionNamespace setVariable [Format["CTI_%1_UPGRADES_LEVELS", _side], [
	1, //--- Barracks
	1, //--- Light
	1, //--- Heavy
	1, //--- Air
	1, //--- Satellite
	1, //--- Air FFAR
	1, //--- Air AT
	1, //--- Air AA
	1, //--- Air CM
	3 //--- Towns Occupation
]];

missionNamespace setVariable [Format["CTI_%1_UPGRADES_LINKS", _side], [
	[[]], //--- Barracks
	[[]], //--- Light
	[[]], //--- Heavy
	[[]], //--- Air
	[[CTI_UPGRADE_AIR, 1]], //--- Satellite
	[[]], //--- Air FFAR
	[[CTI_UPGRADE_AIR, 1]], //--- Air AT
	[[CTI_UPGRADE_AIR, 1]], //--- Air AA
	[[]], //--- Air CM
	[[CTI_UPGRADE_BARRACKS,1],[CTI_UPGRADE_LIGHT,1],[CTI_UPGRADE_HEAVY,1]] //--- Towns Occupation
]];

missionNamespace setVariable [Format["CTI_%1_UPGRADES_TIMES", _side], [
	[20], //--- Barracks
	[30], //--- Light
	[50], //--- Heavy
	[90], //--- Air
	[120], //--- Satellite
	[90], //--- Air FFAR
	[90], //--- Air AT
	[90], //--- Air AA
	[60], //--- Air CM
	[60, 70, 80] //--- Towns Occupation
]];

//todo: skip disabled upgrades in the com upgrade fsm
missionNamespace setVariable [Format["CTI_%1_UPGRADES_AI_ORDER", _side], [
	[CTI_UPGRADE_BARRACKS, 1],
	[CTI_UPGRADE_LIGHT, 1],
	[CTI_UPGRADE_HEAVY, 1],
	[CTI_UPGRADE_TOWNS, 1],
	[CTI_UPGRADE_AIR, 1],
	[CTI_UPGRADE_TOWNS, 2],
	[CTI_UPGRADE_AIR_CM, 1],
	[CTI_UPGRADE_AIR_FFAR, 1],
	[CTI_UPGRADE_AIR_AT, 1],
	[CTI_UPGRADE_TOWNS, 3],
	[CTI_UPGRADE_AIR_AA, 1],
	[CTI_UPGRADE_SATELLITE, 1]
]];

if (CTI_IsClient) then {
	missionNamespace setVariable [Format["CTI_%1_UPGRADES_LABELS", _side], [
		["Barracks", "Unlock better infantry units"], //--- Barracks
		["Light Factory", "Unlock better motorized units"], //--- Light
		["Heavy Factory", "Unlock better armored units"], //--- Heavy
		["Aircraft Factory", "Unlock better aircraft units"], //--- Air
		["Satellite", "Allows the use of the satellite camera"], //--- Satellite
		["Aircraft FFAR", "Unlocks the FFAR Rockets for Aircrafts"], //--- Air FFAR
		["Aircraft AT", "Unlocks the Anti Tank Missiles for Aircrafts"], //--- Air AT
		["Aircraft AA", "Unlocks the Anti Air Missiles for Aircrafts"], //--- Air AA
		["Aircraft Countermeasures", "Allows Aircraft to deploy countermeasures"], //--- Air CM
		["Towns Occupation", "Allows the spawning of occupation forces which will defend friendly towns against any attackers"] //--- Towns Occupation
	]];
};

//--- Check potential missing definition.
(_side) Call Compile preprocessFileLineNumbers "Common\Config\Upgrades\Check_Upgrades.sqf";

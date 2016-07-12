private ["_side"];

_side = _this;

missionNamespace setVariable [Format["CTI_%1_UPGRADES_ENABLED", _side], [
	true, //--- Gear
	true, //--- Barracks
	true, //--- Light
	true, //--- Heavy
	true, //--- Naval
	true, //--- Air
	true, //--- Air FFAR
	true, //--- Air DAR
	(missionNamespace getVariable "CTI_VEHICLES_AIR_AT") == 1, //--- Air AT
	(missionNamespace getVariable "CTI_VEHICLES_AIR_AA") == 1, //--- Air AA
	(missionNamespace getVariable "CTI_VEHICLES_AIR_CM") == 1, //--- Air CM
	(missionNamespace getVariable "CTI_TOWNS_OCCUPATION") > 0, //--- Towns Occupation
	true, //--- Halo
	true, //--- Air Radar
	true, //--- Art Radar
	true, //--- Respawn Range
	true, //--- IR SMOKE
	true, //--- Satellite
	true //--- Nuke
]];

missionNamespace setVariable [Format["CTI_%1_UPGRADES_COSTS", _side], [
	[1500,2500,3500], //--- Gear
	[1500,2500,3500], //--- Barracks
	[1500,2500,3500,4500], //--- Light
	[1500,2500,3500], //--- Heavy
	[1500,2500], //--- Naval
	[1500,2500,3500], //--- Air
	[1500], //--- Air FFAR
	[1500], //--- Air DAR
	[1500], //--- Air AT
	[1500], //--- Air AA
	[1500], //--- Air CM
	[5000, 20000, 40000], //--- Towns Occupation
	[1500, 1500], //--- Halo
	[1500], //--- Air Radar
	[1500], //--- Art Radar
	[1500,2500,3500], //--- Respawn Range
	[1500], //--- IR SMOKE
	[75000], //--- Satellite
	[100000] //--- Nuke
]];

if (CTI_GUERILLA_MODE == 1 || CTI_ZOMBIE_MODE == 1) then {
missionNamespace setVariable [Format["CTI_%1_UPGRADES_LEVELS", _side], [
	3, //--- Gear
	2, //--- Barracks
	2, //--- Light
	0, //--- Heavy
	1, //--- Naval
	1, //--- Air
	0, //--- Air FFAR
	0, //--- Air DAR
	0, //--- Air AT
	0, //--- Air AA
	0, //--- Air CM
	0, //--- Towns Occupation
	0, //--- Halo
	0, //--- Air Radar
	0, //--- Art Radar
	3, //--- Respawn Range
	0, //--- IR Smoke
	0, //--- Satellite
	0 //--- Nuke
]];
} else {
missionNamespace setVariable [Format["CTI_%1_UPGRADES_LEVELS", _side], [
	3, //--- Gear
	3, //--- Barracks
	4, //--- Light
	3, //--- Heavy
	2, //--- Naval
	3, //--- Air
	1, //--- Air FFAR
	1, //--- Air DAR
	1, //--- Air AT
	1, //--- Air AA
	1, //--- Air CM
	3, //--- Towns Occupation
	2, //--- Halo
	1, //--- Air Radar
	1, //--- Art Radar
	3, //--- Respawn Range
	1, //--- IR Smoke
	1, //--- Satellite
	1 //--- Nuke
]];
};

missionNamespace setVariable [Format["CTI_%1_UPGRADES_LINKS", _side], [
	[[],[],[]], //--- Gear
	[[],[],[]], //--- Barracks
	[[],[],[],[CTI_UPGRADE_NUKE, 1]], //--- Light
	[[],[],[]], //--- Heavy
	[[],[]], //--- Naval
	[[],[],[]], //--- Air
	[[CTI_UPGRADE_AIR, 1]], //--- Air FFAR
	[[CTI_UPGRADE_AIR, 1]], //--- Air DAR
	[[CTI_UPGRADE_AIR, 1]], //--- Air AT
	[[CTI_UPGRADE_AIR, 1]], //--- Air AA
	[[]], //--- Air CM
	[[CTI_UPGRADE_BARRACKS,1],[CTI_UPGRADE_LIGHT,1],[CTI_UPGRADE_HEAVY,1]], //--- Towns Occupation
	[[CTI_UPGRADE_AIR, 1],[CTI_UPGRADE_AIR, 2]], //--- Halo
	[[]], //--- Air Radar
	[[]], //--- Art Radar
	[[],[],[]], //--- Respawn Range
	[[]], //--- IR Smoke
	[[CTI_UPGRADE_AIR, 3]], //--- Satellite
	[[CTI_UPGRADE_LIGHT,3]] //--- Nuke
]];

if (CTI_DEV_MODE > 0) then { 
missionNamespace setVariable [Format["CTI_%1_UPGRADES_TIMES", _side], [
		[1, 1, 1], //--- Gear
		[1, 1, 1], //--- Barracks
		[1, 1, 1, 1], //--- Light
		[1, 1, 1], //--- Heavy
		[1, 1], //--- Naval
		[1, 1, 1], //--- Air
		[1], //--- Air FFAR
		[1], //--- Air DAR
		[1], //--- Air AT
		[1], //--- Air AA
		[1], //--- Air CM
		[1, 1, 1], //--- Towns Occupation
		[1, 1], //--- Halo
		[1], //--- Air Radar
		[1], //--- Art Radar
		[1, 1, 1], //--- Respawn Range
		[1], //--- IR Smoke
		[1], //--- Satellite
		[1] //--- Nuke
]];
}else {
missionNamespace setVariable [Format["CTI_%1_UPGRADES_TIMES", _side], [
		[60,60,60], //--- Gear
		[60,60,60], //--- Barracks
		[60,60,60,60], //--- Light
		[60,60,60], //--- Heavy
		[60,60], //--- Naval
		[60,60,60], //--- Air
		[60], //--- Air FFAR
		[60], //--- Air DAR
		[60], //--- Air AT
		[60], //--- Air AA
		[60], //--- Air CM
		[60, 120, 180], //--- Towns Occupation
		[60, 60], //--- Halo
		[60], //--- Air Radar
		[60], //--- Art Radar
		[60,60,60], //--- Respawn Range
		[60], //--- IR Smoke
		[600], //--- Satellite
		[300] //--- Nuke
]];
};

//todo, on commander missing link checkup, skip disabled upgrades.
missionNamespace setVariable [Format["CTI_%1_UPGRADES_AI_ORDER", _side], [
	[CTI_UPGRADE_GEAR, 1],
	[CTI_UPGRADE_BARRACKS, 1],
	[CTI_UPGRADE_LIGHT, 1],
	[CTI_UPGRADE_GEAR, 2],
	[CTI_UPGRADE_TOWNS, 1],
	[CTI_UPGRADE_HEAVY, 1],
	[CTI_UPGRADE_NAVAL, 1],
	[CTI_UPGRADE_AIR, 1],
	[CTI_UPGRADE_GEAR, 3],
	[CTI_UPGRADE_TOWNS, 2],
	[CTI_UPGRADE_AIR_FFAR, 1],
	[CTI_UPGRADE_AIR_DAR, 1],
	[CTI_UPGRADE_AIR_AT, 1],
	[CTI_UPGRADE_AIR_AA, 1],
	[CTI_UPGRADE_AIR_CM, 1],
	[CTI_UPGRADE_TOWNS, 3],
	[CTI_UPGRADE_HALO, 1],
	[CTI_UPGRADE_AIRR, 1],
	[CTI_UPGRADE_ARTR, 1],
	[CTI_UPGRADE_REST, 1],
	[CTI_UPGRADE_IRSMOKE, 1],
	[CTI_UPGRADE_SATELLITE, 1],
	[CTI_UPGRADE_NUKE, 1]
]];

if (CTI_IsClient) then {
	missionNamespace setVariable [Format["CTI_%1_UPGRADES_LABELS", _side], [
		["Gear", "Unlock better gear"], //--- Gear
		["Barracks", "Unlock better infantry units"], //--- Barracks
		["Light Factory", "Unlock better motorized units"], //--- Light
		["Heavy Factory", "Unlock better armored units"], //--- Heavy
		["Naval Factory", "Unlock better naval units"], //--- Naval
		["Aircraft Factory", "Unlock better aircraft units"], //--- Air
		["(DISABLED) Aircraft FFAR", "Unlocks the FFAR Rockets for Aircrafts"], //--- Air FFAR
		["(DISABLED) Aircraft DAR", "Unlocks the DAR Rockets for Aircrafts"], //--- Air DAR
		["Aircraft AT", "Unlocks the Anti Tank Missiles for Aircrafts"], //--- Air AT
		["Aircraft AA", "Unlocks the Anti Air Missiles for Aircrafts"], //--- Air AA
		["Aircraft Countermeasures", "Allows Aircraft to deploy countermeasures"], //--- Air CM
		["(DISABLED) Towns Occupation", "Increase Speed of Supply"], //--- Towns Occupation
		["(DISABLED) Halo", "Enable HALO Jumping from the Air factory"], //--- Halo
		["(DISABLED) Air Radar", "Enable Air Radars"], //--- Air Radar
		["(DISABLED) Artillery Radar", "Enable Artillery radar on Air Radars"], //--- Art Radar
		["Respawn Range", "Increase the max range of the respawn truck."], //--- Respawn Range
		["(DISABLED) IR Smoke", "Enable IR Smoke Deployment from Vehicles"], //--- IR Smoke
		["(DISABLED) Satellite", "Allows the use of the satellite camera"], //--- Satellite
		["Nuclear Arms Deal", "Unlock Nuke Truck in Light Factory"] //--- Nuke
	]];
};

//--- Check potential missing definition.
(_side) Call Compile preprocessFileLineNumbers "Common\Config\Upgrades\Check_Upgrades.sqf";

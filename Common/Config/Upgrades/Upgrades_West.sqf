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
	(missionNamespace getVariable "CTI_VEHICLES_AIR_AT") isEqualTo 1, //--- Air AT
	(missionNamespace getVariable "CTI_VEHICLES_AIR_AA") isEqualTo 1, //--- Air AA
	(missionNamespace getVariable "CTI_VEHICLES_AIR_CM") isEqualTo 1, //--- Air CM
	(missionNamespace getVariable "CTI_TOWNS_OCCUPATION") > 0, //--- Towns Occupation
	true, //--- Halom
	true, //--- Air Radar
	true, //--- Art Radar
	true, //--- Respawn Range
	true, //--- IR SMOKE
	true, //--- Satellite
	true //--- Supply Rate
]];

missionNamespace setVariable [Format["CTI_%1_UPGRADES_COSTS", _side], [
	[1500,2500,3500], //--- Gear
	[1500,2500,3500], //--- Barracks
	[1500,2500,3500], //--- Light
	[1500,2500,3500], //--- Heavy
	[1500,2500], //--- Naval
	[1500,2500,3500], //--- Air
	[1500], //--- Air FFAR
	[1500], //--- Air AT
	[1500], //--- Air AA
	[1500], //--- Air CM
	[5000, 20000, 40000], //--- Towns Occupation
	[1500, 1500], //--- Halo
	[1500, 3000, 5000], //--- Air Radar
	[1500, 3000, 5000], //--- Art Radar
	[1500,2500,3500], //--- Respawn Range
	[1500], //--- IR SMOKE
	[75000], //--- Satellite
	[12000, 24000, 36000] //--- Supply Rate
]];

missionNamespace setVariable [Format["CTI_%1_UPGRADES_LEVELS", _side], [
	3, //--- Gear
	3, //--- Barracks
	3, //--- Light
	3, //--- Heavy
	2, //--- Naval
	3, //--- Air
	1, //--- Air FFAR
	1, //--- Air AT
	1, //--- Air AA
	1, //--- Air CM
	3, //--- Towns Occupation
	2, //--- Halo
	3, //--- Air Radar
	3, //--- Art Radar
	3, //--- Respawn Range
	1, //--- IR Smoke
	1, //--- Satellite
	3 //--- Supply Rate
]];

missionNamespace setVariable [Format["CTI_%1_UPGRADES_LINKS", _side], [
	[[],[],[]], //--- Gear
	[[],[],[]], //--- Barracks
	[[],[],[]], //--- Light
	[[],[],[]], //--- Heavy
	[[],[]], //--- Naval
	[[],[],[]], //--- Air
	[[CTI_UPGRADE_AIR, 1]], //--- Air FFAR
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
	[[],[],[]] //--- Supply Rate
]];

if (CTI_DEBUG) then { 
	missionNamespace setVariable [Format["CTI_%1_UPGRADES_TIMES", _side], [
			[1, 1, 1], //--- Gear
			[1, 1, 1], //--- Barracks
			[1, 1, 1], //--- Light
			[1, 1, 1], //--- Heavy
			[1, 1], //--- Naval
			[1, 1, 1], //--- Air
			[1], //--- Air FFAR
			[1], //--- Air AT
			[1], //--- Air AA
			[1], //--- Air CM
			[1, 1, 1], //--- Towns Occupation
			[1, 1], //--- Halo
			[1, 1, 1], //--- Air Radar
			[1, 1, 1], //--- Art Radar
			[1, 1, 1], //--- Respawn Range
			[1], //--- IR Smoke
			[1], //--- Satellite
			[1,1,1] //--- Supply Rate
	]];
} else {
	missionNamespace setVariable [Format["CTI_%1_UPGRADES_TIMES", _side], [
		[60,60,60], //--- Gear
		[60,60,60], //--- Barracks
		[60,60,60], //--- Light
		[60,60,60], //--- Heavy
		[60,60], //--- Naval
		[60,60,60], //--- Air
		[60], //--- Air FFAR
		[60], //--- Air AT
		[60], //--- Air AA
		[60], //--- Air CM
		[60, 120, 180], //--- Towns Occupation
		[60, 60], //--- Halo
		[60, 60, 60], //--- Air Radar
		[60, 60, 60], //--- Art Radar
		[60,60,60], //--- Respawn Range
		[60], //--- IR Smoke
		[600], //--- Satellite
		[60, 75, 90] //--- Supply Rate
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
	[CTI_UPGRADE_HEAVY, 2],
	[CTI_UPGRADE_LIGHT, 2],
	[CTI_UPGRADE_NAVAL, 1],
	[CTI_UPGRADE_AIR, 1],
	[CTI_UPGRADE_SUPPLY_RATE, 1],
	[CTI_UPGRADE_GEAR, 3],
	[CTI_UPGRADE_TOWNS, 2],
	[CTI_UPGRADE_AIR_FFAR, 1],
	[CTI_UPGRADE_AIR_AT, 1],
	[CTI_UPGRADE_AIR_AA, 1],
	[CTI_UPGRADE_AIR_CM, 1],
	[CTI_UPGRADE_SUPPLY_RATE, 2],
	[CTI_UPGRADE_TOWNS, 3],
	[CTI_UPGRADE_HALO, 1],
	[CTI_UPGRADE_AIRR, 1],
	[CTI_UPGRADE_ARTR, 1],
	[CTI_UPGRADE_REST, 1],
	[CTI_UPGRADE_IRSMOKE, 1],
	[CTI_UPGRADE_SATELLITE, 1]
]];

missionNamespace setVariable [Format["CTI_%1_UPGRADES_LABELS", _side], [
	["Gear", "Unlock better gear"], //--- Gear
	["Barracks", "Unlock better infantry units"], //--- Barracks
	["Light Factory", "Unlock better motorized units"], //--- Light
	["Heavy Factory", "Unlock better armored units"], //--- Heavy
	["Naval Factory", "Unlock better naval units"], //--- Naval
	["Aircraft Factory", "Unlock better aircraft units"], //--- Air
	["Aircraft FFAR", "Unlocks the FFAR Rockets for Aircrafts"], //--- Air FFAR
	["Aircraft AT", "Unlocks the Anti Tank Missiles for Aircrafts"], //--- Air AT
	["Aircraft AA", "Unlocks the Anti Air Missiles for Aircrafts"], //--- Air AA
	["Aircraft Countermeasures", "Allows Aircraft to deploy countermeasures"], //--- Air CM
	["Towns Depot", "Improves Vehicles available at Depots"], //--- Towns Depot
	["(DISABLED) Halo", "Enable HALO Jumping from the Air factory"], //--- Halo
	["Air Radar", "Enable Air Radars"], //--- Air Radar
	["Artillery Radar", "Enable Artillery radar on Air Radars"], //--- Art Radar
	["(DISABLED) Respawn Range", "Increase the max range of the respawn truck."], //--- Respawn Range
	["(DISABLED) IR Smoke", "Enable IR Smoke Deployment from Vehicles"], //--- IR Smoke
	["Satellite", "Allows the use of the satellite camera"], //--- Satellite
	["Supply Rate", "Improves the Supply delivery rate"] //--- Supply Rate
]];

//--- Check potential missing definition.
(_side) Call Compile preprocessFileLineNumbers "Common\Config\Upgrades\Check_Upgrades.sqf";

private ["_town"];

CTI_Towns = [];

for '_i' from 0 to 1000 do {
	if (isNil Format ["Town%1", _i]) exitWith {};
	
	_town = call compile Format ["Town%1", _i];
	waitUntil {!isNil {_town getVariable "cti_town_value"}};
	[CTI_Towns, _town] call CTI_CO_FNC_ArrayPush;
};

CTI_InitTowns = true;
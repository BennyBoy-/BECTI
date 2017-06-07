private ["_bounty", "_created_units", "_created_vehicles", "_crew", "_crews", "_extra_units", "_group", "_locked", "_net", "_position", "_side", "_sideID", "_unit", "_units", "_vehicle", "_vehicle_crew"];

_units = _this select 0;
_position = _this select 1;
_side = _this select 2;
_group = _this select 3;
_locked = if (count _this > 4) then {_this select 4} else {true};
_net = if (count _this > 5) then {_this select 5} else {false};
_bounty = if (count _this > 6) then {_this select 6} else {false};
_extra_units = if (count _this > 7) then {_this select 7} else {true};

_sideID = (_side) call CTI_CO_FNC_GetSideID;
if (isNull _group) then {_group = createGroup _side};

_created_units = [];
_created_vehicles = [];
_crews = [];

{
	if (_x isKindOf "Man") then {
		_unit_pos = if (typeName _position isEqualTo "OBJECT") then {(_position buildingPos -1) select floor (random count (_position buildingPos -1))} else {[_position, 2, 15, 50] call CTI_CO_FNC_GetRandomPosition};
		if (_unit_pos isEqualTo [0,0,0]) then {_unit_pos = _position};
		_unit = [_x, _group, _unit_pos, _sideID] call CTI_CO_FNC_CreateUnit;
		_created_units pushBack _unit;
	} else {
		_crew = switch (true) do {
			case (_x isKindOf "Tank"): { missionNamespace getVariable format["%1_SOLDIER_CREW", _side] };
			case (_x isKindOf "Air"): { missionNamespace getVariable format["%1_SOLDIER_PILOT", _side] };
			default { missionNamespace getVariable format["%1_SOLDIER", _side] };
		};
		if (typeName _crew == "ARRAY") then {_crew = _crew select 0};
		_vehicle = [_x, [_position, 2, 15, 50] call CTI_CO_FNC_GetRandomPosition, random 360, _sideID, _locked, _net, _bounty] call CTI_CO_FNC_CreateVehicle;
		_created_vehicles pushBack _vehicle;
		_vehicle_crew = [_vehicle, _crew, _group, _sideID, _extra_units] call CTI_CO_FNC_ManVehicle;
		_crews = _crews + _vehicle_crew;
	};
} forEach _units;

{_group addVehicle _x} forEach _created_vehicles;

[_created_units, _created_vehicles, _crews, _group]
private ["_groups", "_positions", "_side", "_sideID", "_teams", "_town"];

_town = _this select 0;
_side = _this select 1;
_teams = _this select 2;
_groups = _this select 3;
_positions = _this select 4;

_sideID = (_side) call CTI_CO_FNC_GetSideID;

_created_vehicles = [];
_shk_members = [];

//--- Create all the requested units for a town at the explicit given location
for '_i' from 0 to count(_groups)-1 do {
	_position = _positions select _i;
	_team = _teams select _i;
	_group = _groups select _i;
	
	//--- Create the given team
	_return = [_team, _position, _side, _group, true, false, true] call CTI_CO_FNC_CreateTeam;
	_vehicles = _return select 1;
	
	//--- Patrol the town
	[_town, _group, _sideID] execFSM "Server\FSM\town_patrol.fsm";
	
	//--- Our units are strong!
	_group allowFleeing 0;
	
	_created_vehicles = _created_vehicles + _vehicles;
	
	//--- If SHK Building Position mode is enabled, some AI groups can be placed in buildings
	if (CTI_SHK_BUILDING_ENABLED) then {
		_members = _return select 0;
		//--- Roll the dice, also make sure that the group has no vehicles
		if (CTI_SHK_BUILDING_PLACEMENT_CHANCE > random 100 && count _vehicles < 1 && count _members <= CTI_SHK_GROUP_SIZE_MAX) then {
			if (CTI_Log_Level >= CTI_Log_Debug) then {
				["DEBUG", "FILE: Common\Functions\Common_CreateTownUnits.sqf", format["Group [%1] members in town [%2] will be placed in nearby building if possible via SHK", _group, _town getVariable "cti_town_name"]] call CTI_CO_FNC_Log;
			};
			
			{_shk_members pushBack _x} forEach _members;
		};
	};
	
	//--- Zeus
	ADMIN_ZEUS addCuratorEditableObjects [units _group, true];
};

//--- SHK AI placement
if (CTI_SHK_BUILDING_ENABLED && count _shk_members > 0) then { 
	//--- Place the units in the nearby building if possible
	[getPos _town, _shk_members, (CTI_SHK_BUILDING_SCAN_RANGE + random(CTI_SHK_BUILDING_SCAN_RANGE_RAN) - random(CTI_SHK_BUILDING_SCAN_RANGE_RAN)), 0, [], true, true, _side] Call SHK_BuildingPosExec; 
};

{
	if (CTI_IsServer) then {
		[_x] spawn CTI_SE_FNC_HandleEmptyVehicle;
	} else {
		["SERVER", "Request_HandleAction", ["empty", _x]] call CTI_CO_FNC_NetSend;
	};
} forEach _created_vehicles;

_created_vehicles
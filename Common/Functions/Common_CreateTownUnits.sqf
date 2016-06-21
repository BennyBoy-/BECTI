private ["_groups", "_index", "_limit", "_positions", "_ratio", "_safe_range", "_side", "_sideID", "_teams", "_town", "_tvar", "_vvar"];

_town = _this select 0;
_side = _this select 1;
_teams = _this select 2;
_groups = _this select 3;
_positions = _this select 4;

_sideID = (_side) call CTI_CO_FNC_GetSideID;

_vvar = if (_side == resistance) then {"cti_town_resistance_active_vehicles"} else {"cti_town_occupation_active_vehicles"};
_tvar = if (_side == resistance) then {"cti_town_resistance_groups"} else {"cti_town_occupation_groups"};
_limit = if (_side == resistance) then {missionNamespace getVariable "CTI_TOWNS_RESISTANCE_LIMIT_AI"} else {missionNamespace getVariable "CTI_TOWNS_OCCUPATION_LIMIT_AI"};
_ratio = if (_side == resistance) then {missionNamespace getVariable "CTI_TOWNS_RESISTANCE_LIMIT_AI_QUEUE_RATIO"} else {missionNamespace getVariable "CTI_TOWNS_OCCUPATION_LIMIT_AI_QUEUE_RATIO"};
_safe_range = if (_side == resistance) then {CTI_TOWNS_RESISTANCE_SPAWN_SAFE_RANGE} else {CTI_TOWNS_OCCUPATION_SPAWN_SAFE_RANGE};

_index = 0;
_ratio = round(count _groups * (_ratio/100));
if (_ratio < 1) then {_ratio = 1};

while {true} do {
	_town_groups = _town getVariable [_tvar, []];
	
	//--- Town got de-activated?
	_valid_groups = 0;
	{if (_x in _town_groups && !isNull _x) then {_valid_groups = _valid_groups + 1}} forEach _groups;
	
	//--- Abort if there are no more valid groups
	if (_valid_groups < 1) exitWith {
		if (CTI_Log_Level >= CTI_Log_Information) then {
			["INFORMATION", "FILE: Common\Functions\Common_CreateTownUnits.sqf", format["Town [%1] has been de-activated. Queued units for side [%2] will not be spawned.", _town getVariable "cti_town_name", _side]] call CTI_CO_FNC_Log;
		};
	};
	
	//--- Retrieve the total towns AI
	_total = 0;
	{
		{if !(isNull _x) then {_total = _total + count(_x call CTI_CO_FNC_GetLiveUnits)}} foreach (_x getVariable [_tvar, []]);
	} forEach CTI_Towns;
	
	//--- Retrieve this town's total AI along with it's active squads
	_current = 0;
	_active_squads = 0;
	{
		if !(isNull _x) then {
			_live = count(_x call CTI_CO_FNC_GetLiveUnits);
			_current = _current + _live;
			if (_live > 0) then {_active_squads = _active_squads + 1};
			
		};
	} foreach _town_groups;
	
	//--- Create if the total AI count is below the given limit and if the the active squad value is below the threshold or if the current town AI size is below the given value
	if ((_total < _limit && _active_squads < _ratio) || _current < 4) then {
		_position = _positions select _index;
		_team = _teams select _index;
		_group = _groups select _index;
		
		//--- If the position holds enemies, try to get a new "safe" one, only applies to meadow areas
		if (isNil {_town getVariable "cti_naval"}) then {
			if (([_position nearEntities _safe_range, _side] call CTI_CO_FNC_GetAreaEnemiesCount) > 0) then {
				{
					if (([_x nearEntities _safe_range, _side] call CTI_CO_FNC_GetAreaEnemiesCount) < 1) exitWith {
						_position = _x;
						
						if (CTI_Log_Level >= CTI_Log_Information) then {
							["INFORMATION", "FILE: Common\Functions\Common_CreateTownUnits.sqf", format["Retrieved a new enemy-free position within [%1] meters to spawn the [%2] units in group [%3] for town [%4], the new position is [%5]", count _team, _group, _town getVariable "cti_town_name", _side, _position]] call CTI_CO_FNC_Log;
						};
					};
				} forEach ([_position, _safe_range*3, "meadow", 8, 6, 0.1, false] call CTI_CO_FNC_GetRandomBestPlaces);
			};
		};
		
		if (CTI_Log_Level >= CTI_Log_Information) then {
			["INFORMATION", "FILE: Common\Functions\Common_CreateTownUnits.sqf", format["Spawning [%1] units in group [%2] for town [%3] on side [%4]. Overall AI [%5] and current limit [%6]. Active Squad in town [%7] with current Ratio [%8]. Current Live AI in town [%9]", count _team, _group, _town getVariable "cti_town_name", _side, _total, _limit, _active_squads, _ratio, _current]] call CTI_CO_FNC_Log;
		};
		
		_index = _index + 1;
		
		//--- Create the given team
		_return = [_team, _position, _side, _group, true, false, true] call CTI_CO_FNC_CreateTeam;
		_men = _return select 0;
		_vehicles = _return select 1;
		
		_group allowFleeing 0;
		
		//--- Patrol the town
		[_town, _group, _sideID] execFSM "Server\FSM\town_patrol.fsm";
		
		//--- Add potential vehicles to the town for late cleanup and handle their lifespan
		if (count _vehicles > 0) then {
			if (CTI_IsServer) then { //--- Pure Server
				{[_x] spawn CTI_SE_FNC_HandleEmptyVehicle} forEach _vehicles;
				_town setVariable [_vvar, (_town getVariable [_vvar, []]) + _vehicles];
			} else { //--- HC
				(_vehicles) remoteExec ["CTI_PVF_SRV_RequestHandleEmptyVehicles", CTI_PV_SERVER];
				[_town, _side, _vehicles] remoteExec ["CTI_PVF_SRV_RequestTownAddVehicles", CTI_PV_SERVER];
			};
		};
		
		//--- Man the nearby structures if needed
		if (CTI_SHK_BUILDING_ENABLED) then {
			if (count _vehicles < 1 && ((CTI_SHK_BUILDING_PLACEMENT_CHANCE > random 100 && count _men <= CTI_SHK_GROUP_SIZE_MAX) || !isNil {_town getVariable "cti_naval"})) then {
				if (CTI_Log_Level >= CTI_Log_Information) then {
					["INFORMATION", "FILE: Common\Functions\Common_CreateTownUnits.sqf", format["Group [%1] members in town [%2] will be placed in nearby building if possible via SHK", _group, _town getVariable "cti_town_name"]] call CTI_CO_FNC_Log;
				};
				
				_scan_range = if (isNil {_town getVariable "cti_naval"}) then {CTI_SHK_BUILDING_SCAN_RANGE} else {CTI_SHK_BUILDING_SCAN_RANGE * 1.75};
				[ASLToAGL getPosASL _town, _men, (_scan_range + random(CTI_SHK_BUILDING_SCAN_RANGE_RAN) - random(CTI_SHK_BUILDING_SCAN_RANGE_RAN)), 0, [], true, true, _side] Call SHK_BuildingPosExec; 
			};
		};
		
		//--- ZEUS Curator Editable
		if !(isNil "ADMIN_ZEUS") then {
			if (CTI_IsServer) then {
				ADMIN_ZEUS addCuratorEditableObjects [_men, true];
			} else {
				[ADMIN_ZEUS, _men] remoteExec ["CTI_PVF_SRV_RequestAddCuratorEditable", CTI_PV_SERVER];
			};
		};
	};
	
	if (_index >= count _groups) exitWith {
		if (CTI_Log_Level >= CTI_Log_Information) then {
			["INFORMATION", "FILE: Common\Functions\Common_CreateTownUnits.sqf", format["All the units for town [%1] were spawned on side [%2]", _town getVariable "cti_town_name", _side]] call CTI_CO_FNC_Log;
		};
	}; //--- All groups are allocated
	
	sleep 3;
};
if (CTI_Log_Level >= CTI_Log_Information) then { ["INFORMATION", "FILE: Client\Init\Init_Client_Headless.sqf", "Waiting for the Headless Client stabilization before sending the register request"] call CTI_CO_FNC_Log };

while {isNull player} do {
	sleep 5;
	if (CTI_Log_Level >= CTI_Log_Information) then { ["INFORMATION", "FILE: Client\Init\Init_Client_Headless.sqf", format["Waiting for Headless Client player object to be non-null: %1", player]] call CTI_CO_FNC_Log };
};

//--- PVF
if (CTI_Log_Level >= CTI_Log_Information) then { ["INFORMATION", "FILE: Client\Init\Init_Client_Headless.sqf", "Attempting to register this Headless Client on the server..."] call CTI_CO_FNC_Log };
["SERVER", "Request_HCRegister", player] call CTI_CO_FNC_NetSend;

with missionNamespace do {
	CTI_PVF_Client_OnDefenseDelegationLocalityChanged = {
		private ["_group", "_sideID"];
		
		_group = _this select 0;
		_sideID = _this select 1;
		
		if (CTI_Log_Level >= CTI_Log_Information) then {
			["INFORMATION", "FUNCTION: CTI_PVF_Client_OnDefenseDelegationLocalityChanged", format["Attempting to find the units which could lack initialization on this HC for group [%1]", _group]] call CTI_CO_FNC_Log;
		};
		
		//--- Find the units which could miss the Killed EH
		{
			if (alive _x && isNil {_x getVariable "cti_hc_managed"}) then {
				if (CTI_Log_Level >= CTI_Log_Debug) then {
					["DEBUG", "FUNCTION: CTI_PVF_Client_OnDefenseDelegationLocalityChanged", format["Unit [%1] (%2) was not initialized by this HC. Initializing it now", _x, typeOf _x]] call CTI_CO_FNC_Log;
				};
				
				_x addEventHandler ["killed", format["[_this select 0, _this select 1, %1] spawn CTI_CO_FNC_OnUnitKilled", _sideID]];
				_x setVariable ["cti_hc_managed", true];
			};
		} forEach units _group;
	};

	CTI_PVF_Client_OnDefenseDelegationReceived = {
		private ["_ai", "_ai_args", "_static"];
		
		_static = _this select 0;
		_ai_args = _this select 1;
		
		_gunner = gunner _static;
		
		if (CTI_Log_Level >= CTI_Log_Information) then {
			["INFORMATION", "FUNCTION: CTI_PVF_Client_OnDefenseDelegationReceived", format["A Delegation request was received from the server for the static [%1] (%2) with AI arguments [%3]", _static, typeOf _static, _ai_args]] call CTI_CO_FNC_Log;
		};
		
		diag_log format ["[CTI_PVF_Client_OnDefenseDelegationReceived - benny DEBUG - START] - Defense->%1, is local?->%2 | assignedGunner->%3, is local?->%4 | gunner ->%5 is local?->%6", _static, local _static, assignedGunner _static, local(assignedGunner _static), gunner _static, local gunner _static];
		
		//--- Was there an AI in there previously?
		if !(isNull _gunner) then {
			if (CTI_Log_Level >= CTI_Log_Debug) then {
				["DEBUG", "FUNCTION: CTI_PVF_Client_OnDefenseDelegationReceived", format["Defense [%1] (%2) has an assigned gunner (%3), attempting to unassign him", _static, typeOf _static, assignedGunner _static]] call CTI_CO_FNC_Log;
				diag_log format ["[CTI_PVF_Client_OnDefenseDelegationReceived - benny DEBUG - BEFORE UNASSIGN] - Defense->%1, is local?->%2 | assignedGunner->%3, is local?->%4 | gunner ->%5 is local?->%6", _static, local _static, assignedGunner _static, local(assignedGunner _static), gunner _static, local gunner _static];
			};
			unassignVehicle (assignedGunner _static);
			diag_log format ["[CTI_PVF_Client_OnDefenseDelegationReceived - benny DEBUG - AFTER UNASSIGN] - Defense->%1, is local?->%2 | assignedGunner->%3, is local?->%4 | gunner ->%5 is local?->%6", _static, local _static, assignedGunner _static, local(assignedGunner _static), gunner _static, local gunner _static];
			deleteVehicle _gunner;
			diag_log format ["[CTI_PVF_Client_OnDefenseDelegationReceived - benny DEBUG - AFTER DELETE] - Defense->%1, is local?->%2 | assignedGunner->%3, is local?->%4 | gunner ->%5 is local?->%6", _static, local _static, assignedGunner _static, local(assignedGunner _static), gunner _static, local gunner _static];
			deleteVehicle (gunner _static);
		};
		
		//--- Create the unit
		_ai = (_ai_args) call CTI_CO_FNC_CreateUnit;
		
		//--- Mark the unit as initialized localy, if the locality changed we don't want to have 2 KEH.
		_ai setVariable ["cti_hc_managed", true];
		_ai reveal _static;
		
		//--- Assign him to the defense
		[_ai] allowGetIn true;
		_ai assignAsGunner _static;
		[_ai] orderGetIn true;
		_ai moveInGunner _static;
		
		diag_log format ["[CTI_PVF_Client_OnDefenseDelegationReceived - benny DEBUG - END] - Defense->%1, is local?->%2 | assignedGunner->%3, is local?->%4 | gunner ->%5 is local?->%6", _static, local _static, assignedGunner _static, local(assignedGunner _static), gunner _static, local gunner _static];
	};
	
	CTI_PVF_Client_OnRegisterAnswer = {
		if (_this) then {
			if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FUNCTION: CTI_PVF_Client_OnRegisterAnswer", "The Headless Client has been registered"] call CTI_CO_FNC_Log};
		} else {
			if (CTI_Log_Level >= CTI_Log_Error) then {["ERROR", "FUNCTION: CTI_PVF_Client_OnRegisterAnswer", "The Headless Client could not be registered"] call CTI_CO_FNC_Log};
		};
	};
	
	/*CTI_PVF_Client_OnTownDelegationReceived = {
		private ["_groups", "_hc_tvar", "_positions", "_side", "_teams", "_town", "_town_vehicles"];
		
		_town = _this select 0;
		_side = _this select 1;
		_teams = _this select 2;
		_groups = _this select 3;
		_positions = _this select 4;
		
		if (CTI_Log_Level >= CTI_Log_Information) then {
			["INFORMATION", "FUNCTION: CTI_PVF_Client_OnTownDelegationReceived", format["A Delegation request was received from the server for [%1] teams in town [%2] on [%3]", count _teams, _town getVariable "cti_town_name", _side]] call CTI_CO_FNC_Log;
		};
		
		_town_vehicles = [_town, _side, _teams, _groups, _positions] call CTI_CO_FNC_CreateTownUnits;
		
		if (count _town_vehicles > 0) then {
			["SERVER", "Request_TownAddVehicles", [_town, _side, _town_vehicles]] call CTI_CO_FNC_NetSend;
		};
		
		_hc_tvar = if (_side == resistance) then {"cti_hc_delegated_groups_resistance"} else {"cti_hc_delegated_groups_occupation"};
		
		{
			//--- Register each groups on the town for deletion
			if (isNil {_town getVariable _hc_tvar}) then {_town setVariable [_hc_tvar, [_x]]} else {_town setVariable [_hc_tvar, (_town getVariable _hc_tvar) + [_x]]};
		// commented in for delegation removal via pvf
			// _x spawn {
				// while {count units _this > 0} do {sleep 5}; 
				// deleteGroup _this;
			// };
		} forEach _groups; //--- Delete the group client-sided.
	};*/
	CTI_PVF_Client_OnTownDelegationReceived = {
		private ["_groups", "_hc_tvar", "_positions", "_side", "_sleep_thread", "_teams", "_town", "_town_vehicles"];
		
		_town = _this select 0;
		_side = _this select 1;
		_teams = _this select 2;
		_groups = _this select 3;
		_positions = _this select 4;
		_sleep_thread = _this select 5;//--- Debug: add a delay while HC are fucked
		
		if (CTI_Log_Level >= CTI_Log_Information) then {
			["INFORMATION", "FUNCTION: CTI_PVF_Client_OnTownDelegationReceived", format["A Delegation request was received from the server for [%1] teams in town [%2] on [%3]", count _teams, _town getVariable "cti_town_name", _side]] call CTI_CO_FNC_Log;
		};
		
		sleep _sleep_thread;
		
		[_town, _side, _teams, _groups, _positions] spawn CTI_HC_CreateTownUnits;
		
		_hc_tvar = if (_side == resistance) then {"cti_hc_delegated_groups_resistance"} else {"cti_hc_delegated_groups_occupation"};
		
		{
			//--- Register each groups on the town for deletion
			if (isNil {_town getVariable _hc_tvar}) then {_town setVariable [_hc_tvar, [_x]]} else {_town setVariable [_hc_tvar, (_town getVariable _hc_tvar) + [_x]]};
		// commented in for delegation removal via pvf
			/*_x spawn {
				while {count units _this > 0} do {sleep 5}; 
				deleteGroup _this;
			};*/
		} forEach _groups; //--- Delete the group client-sided.
	};
	
	CTI_PVF_Client_OnTownDelegationRemoval = {
		private ["_hc_tvar", "_side", "_town"];
		
		_town = _this select 0;
		_side = _this select 1;
		
		_hc_tvar = if (_side == resistance) then {"cti_hc_delegated_groups_resistance"} else {"cti_hc_delegated_groups_occupation"};
		
		//--- Triggered only if we have units over here
		if !(isNil {_town getVariable _hc_tvar}) then {
			if (CTI_Log_Level >= CTI_Log_Information) then {
				["INFORMATION", "FUNCTION: CTI_PVF_Client_OnTownDelegationRemoval", format["A Delegation removal request was received from the server for [%1] teams present in town [%2] on side [%3]", count(_town getVariable _hc_tvar), _town getVariable "cti_town_name", _side]] call CTI_CO_FNC_Log;
			};
		
			{
				["DEBUG", "FUNCTION: CTI_PVF_Client_OnTownDelegationRemoval", format["Town [%1] group [%2] units will be removed", _town getVariable "cti_town_name", _x]] call CTI_CO_FNC_Log;
				if !(isNil '_x') then {
					["DEBUG", "FUNCTION: CTI_PVF_Client_OnTownDelegationRemoval", format["Town [%1] group [%2] is not nil", _town getVariable "cti_town_name", _x]] call CTI_CO_FNC_Log;
					if !(isNull _x) then {
						["DEBUG", "FUNCTION: CTI_PVF_Client_OnTownDelegationRemoval", format["Town [%1] group [%2] is not null ([%3] units), is local? [%4]", _town getVariable "cti_town_name", _x, count units _x, local _x]] call CTI_CO_FNC_Log;
						{
							["DEBUG", "FUNCTION: CTI_PVF_Client_OnTownDelegationRemoval", format["Town [%1] deleting unit [%2] from group [%3], local? [%4]", _town getVariable "cti_town_name", _x, group _x, local _x]] call CTI_CO_FNC_Log;
							deleteVehicle _x;
							sleep 4;
							["DEBUG", "FUNCTION: CTI_PVF_Client_OnTownDelegationRemoval", format["Town [%1] is unit removed? unit [%2]", _town getVariable "cti_town_name", _x]] call CTI_CO_FNC_Log;
						} forEach units _x;
						["DEBUG", "FUNCTION: CTI_PVF_Client_OnTownDelegationRemoval", format["Town [%1] group [%2] is about to be removed, units count [%3]", _town getVariable "cti_town_name", _x, count units _x]] call CTI_CO_FNC_Log;
						sleep 2;
						deleteGroup _x;
						["DEBUG", "FUNCTION: CTI_PVF_Client_OnTownDelegationRemoval", format["Town [%1] group [%2] was deleted?", _town getVariable "cti_town_name", _x]] call CTI_CO_FNC_Log;
					};
				};
			} forEach (_town getVariable _hc_tvar);
			
			//--- Destroy the variable at the end
			_town setVariable [_hc_tvar, nil];
		};
	};
};


//--- Extra function
CTI_HC_CreateTownUnits = {
	private ["_groups", "_positions", "_side", "_sideID", "_teams", "_town"];

	_town = _this select 0;
	_side = _this select 1;
	_teams = _this select 2;
	_groups = _this select 3;
	_positions = _this select 4;

	_sideID = (_side) call CTI_CO_FNC_GetSideID;

	//--- Create all the requested units for a town at the explicit given location
	for '_i' from 0 to count(_groups)-1 do {
		_position = _positions select _i;
		_team = _teams select _i;
		_group = _groups select _i;
		
		//--- Create the given team
		[_team, _position, _side, _group, true, false, true, _town] Spawn CTI_HC_CreateTeam;
		
		sleep 5; // delay while HC are fubar
	};
};

CTI_HC_CreateTeam = {
	private ["_bounty", "_created_units", "_created_vehicles", "_crew", "_group", "_locked", "_net", "_position", "_side", "_sideID", "_unit", "_units", "_vehicle"];

	_units = _this select 0;
	_position = _this select 1;
	_side = _this select 2;
	_group = _this select 3;
	_locked = if (count _this > 4) then {_this select 4} else {true};
	_net = if (count _this > 5) then {_this select 5} else {false};
	_bounty = if (count _this > 6) then {_this select 6} else {false};
	_town = _this select 7;

	_sideID = (_side) call CTI_CO_FNC_GetSideID;
	if (isNull _group) then {_group = createGroup _side};

	_created_units = [];
	_created_vehicles = [];

	{
		if (_x isKindOf "Man") then {
			_unit = [_x, _group, [_position, 2, 15] call CTI_CO_FNC_GetRandomPosition, _sideID] call CTI_CO_FNC_CreateUnit;
			_created_units pushBack _unit;
		} else {
			_crew = switch (true) do {
				case (_x isKindOf "Tank"): { missionNamespace getVariable format["%1_SOLDIER_CREW", _side] };
				case (_x isKindOf "Air"): { missionNamespace getVariable format["%1_SOLDIER_PILOT", _side] };
				default { missionNamespace getVariable format["%1_SOLDIER", _side] };
			};
			if (typeName _crew == "ARRAY") then {_crew = _crew select 0};
			_vehicle = [_x, [_position, 2, 15] call CTI_CO_FNC_GetRandomPosition, random 360, _sideID, _locked, _net, _bounty] call CTI_CO_FNC_CreateVehicle;
			_created_vehicles pushBack _vehicle;
			[_vehicle, _crew, _group, _sideID] spawn CTI_HC_ManVehicle;
			["SERVER", "Request_HandleAction", ["empty", _vehicle]] call CTI_CO_FNC_NetSend;
		};
		
		sleep 5;
	} forEach _units;

	{_group addVehicle _x} forEach _created_vehicles;
	_group allowFleeing 0;
	
	["SERVER", "Request_TownAddVehicles", [_town, _side, _created_vehicles]] call CTI_CO_FNC_NetSend;
	
	if (CTI_SHK_BUILDING_ENABLED) then {
		if (count _created_vehicles < 1 && ((CTI_SHK_BUILDING_PLACEMENT_CHANCE > random 100 && count _created_units <= CTI_SHK_GROUP_SIZE_MAX) || !isNil {_town getVariable "cti_naval"})) then {
			if (CTI_Log_Level >= CTI_Log_Debug) then {
				["DEBUG", "FUNCTION: CTI_HC_CreateTeam", format["Group [%1] members in town [%2] will be placed in nearby building if possible via SHK", _group, _town getVariable "cti_town_name"]] call CTI_CO_FNC_Log;
			};
			
			_scan_range = if (isNil {_town getVariable "cti_naval"}) then {CTI_SHK_BUILDING_SCAN_RANGE} else {CTI_SHK_BUILDING_SCAN_RANGE * 1.75};
			[ASLToAGL getPosASL _town, _created_units, (_scan_range + random(CTI_SHK_BUILDING_SCAN_RANGE_RAN) - random(CTI_SHK_BUILDING_SCAN_RANGE_RAN)), 0, [], true, true, _side] Call SHK_BuildingPosExec; 
		};
	};
	
	[_town, _group, _sideID] execFSM "Server\FSM\town_patrol.fsm";
};

CTI_HC_ManVehicle = {
	private ["_crew", "_config", "_config_sub", "_group", "_net", "_position", "_sideID", "_turrets", "_units", "_vehicle"];

	_vehicle = _this select 0;
	_crew = _this select 1;
	_group = _this select 2;
	_sideID = _this select 3;

	_turrets = [];
	_config = configFile >> "CfgVehicles" >> typeOf _vehicle >> "turrets";
	for '_i' from 0 to (count _config)-1 do {
		_turret_main = _config select _i;
		_turrets = _turrets + [[_i]];
		
		_config_sub = _turret_main >> "turrets";
		for '_j' from 0 to (count _config_sub) -1 do {
			_turret_sub = _config_sub select _j;
			_turrets = _turrets + [[_i, _j]];
		};
	};

	// _turrets
	_units = [];
	_position = getPos _vehicle;
	_position = [(_position select 0) + 5, (_position select 1) + 5, 0];

	_net = if ((missionNamespace getVariable "CTI_MARKERS_INFANTRY") == 1 && _sideID in [CTI_WEST_ID, CTI_EAST_ID]) then { true } else { false };

	if (_vehicle emptyPositions "driver" > 0) then {
		sleep 5;
		_unit = [_crew, _group, _position, _sideID, _net] call CTI_CO_FNC_CreateUnit;
		_unit moveInDriver _vehicle;
		_units = _units + [_unit];
	};

	{
		sleep 5;
		_unit = [_crew, _group, _position, _sideID, _net] call CTI_CO_FNC_CreateUnit;
		_unit moveInTurret [_vehicle, _x];
		_units = _units + [_unit];
	} forEach _turrets;

	_units
};

CTI_UI_Respawn_GetAvailableLocations = {
	private ["_fobs", "_hq", "_ignore_mobile_crew", "_list", "_mobile", "_structures","_up","_respawnrangefob"];
	
	_list = [];
	
	_hq = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideHQ;
	_structures = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideStructures;
	if (alive _hq) then { _list pushBack _hq };
	_list = _list + _structures;
	if (count _list < 1) then { _list = [_hq] };
	
	//--- Add FOBs if available.
	if (CTI_BASE_FOB_MAX > 0) then {
		_fobs = CTI_P_SideLogic getVariable ["cti_fobs", []];
		_up=if (!( count ((CTI_P_SideJoined) call CTI_CO_FNC_GetSideUpgrades) == 0)) then {((CTI_P_SideJoined) call CTI_CO_FNC_GetSideUpgrades) select CTI_UPGRADE_REST} else {0};
		_respawnrangefob=CTI_RESPAWN_FOB_RANGE+500*_up;
		{if (alive _x && _x distance CTI_DeathPosition <= _respawnrangefob) then {_list pushBack _x}} forEach _fobs;
	};
	
	//--- Add camps if camp respawn is enabled
	if ((missionNamespace getVariable "CTI_RESPAWN_CAMPS") > 0) then {
		_list = _list + ([CTI_DeathPosition, CTI_P_SideID, group player] Call CTI_CO_FNC_GetRespawnCamps);
	};
	
	//--- Add mobile respawns if available (Also we retrieve the crew which may belong to the player to prevent "in-AI-respawn" over those)
	_ignore_mobile_crew = [];
	if ((missionNamespace getVariable "CTI_RESPAWN_MOBILE") > 0) then {
		_mobile = (CTI_DeathPosition) call CTI_UI_Respawn_GetMobileRespawn;
		_list = _list + _mobile;
		{{if (group _x == group player) then {_ignore_mobile_crew pushBack _x}} forEach crew _x} forEach _mobile;
	};
	
	//--- Add the nearest player's AI (impersonation) minus the mobile's crew
	if ((missionNamespace getVariable "CTI_RESPAWN_AI") > 0) then {
		{
			if (_x distance CTI_DeathPosition <= CTI_RESPAWN_AI_RANGE && !(_x in _ignore_mobile_crew) && !isPlayer _x) then {_list pushBack _x};
		} forEach ((units player - [player]) call CTI_CO_FNC_GetLiveUnits);
	};
	
	_list
};

CTI_UI_Respawn_GetMobileRespawn = {
	private ["_available", "_center"];
	_center = _this;
	_up=if (!( count ((CTI_P_SideJoined) call CTI_CO_FNC_GetSideUpgrades) == 0)) then {((CTI_P_SideJoined) call CTI_CO_FNC_GetSideUpgrades) select CTI_UPGRADE_REST} else {0};
	_range=500+500*_up;
	_available = [];

	{
		if ((_x getVariable ["cti_spec", -1]) == CTI_SPECIAL_MEDICALVEHICLE && (_x getVariable ["cti_net", -1]) == CTI_P_SideID) then {_available pushBack _x};
	} forEach (_center nearEntities [["Car","Air","Tank","Ship","Thing","StaticWeapon"], _range]);
	_available
};

CTI_UI_Respawn_GetListLabels = {
	private ["_emplacements", "_hq", "_list"];
	
	_emplacements = _this;
	
	_list = [];
	_hq = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideHQ;
	
	{
		_list = _list + [format["%1 - %2", _x call CTI_UI_Respawn_GetRespawnLabel, _x call CTI_UI_Respawn_GetLocationInformation]];
	} forEach _emplacements;
	
	_list
};

CTI_UI_Respawn_GetRespawnLabel = {
	private ["_location", "_value"];
	_location = _this;
	
	_value = "Structure";
	switch (true) do {
		case (_location == (CTI_P_SideJoined call CTI_CO_FNC_GetSideHQ)): { _value = "Headquarters"	};
		case (!isNil {_location getVariable "cti_camp_town"}): { 
			_town = _location getVariable "cti_camp_town";
			switch (missionNamespace getVariable "CTI_RESPAWN_CAMPS_CONDITION") do {
				case 1: {
					_coefficient = if (_town getVariable "cti_town_sideID" == CTI_P_SideID) then {CTI_RESPAWN_CAMPS_CONDITION_PRICED_COEF_FRIENDLY} else {CTI_RESPAWN_CAMPS_CONDITION_PRICED_COEF_ENEMY};
					_price = round((_town getVariable "cti_town_sv") * _coefficient);
					_value = format["Camp (%1) - $%2", _town getVariable "cti_town_name", _price];
				};
				case 2: {_value = format["Camp (%1) - %2 Spawn Remaining", _town getVariable "cti_town_name", _town getVariable "cti_camp_respawn_count"]};
				default {_value = format["Camp (%1)", _town getVariable "cti_town_name"]};
			};
		};
		case (!isNil {_location getVariable "cti_structure_type"}): { 
			_var = missionNamespace getVariable format ["CTI_%1_%2", CTI_P_SideJoined, _location getVariable "cti_structure_type"];
			_value = (_var select 0) select 1;
		};
		case (_location isKindOf "AllVehicles"): { _value = getText(configFile >> "CfgVehicles" >> typeOf _location >> "displayName") };
	};
	
	_value
};

CTI_UI_Respawn_GetLocationInformation = {
	private ["_closest", "_direction", "_direction_eff", "_distance", "_distance_near", "_format", "_location"];
	
	_location = _this;
	_format = "";
	
	_closest = (_location) call CTI_CO_FNC_GetClosestTown;
	_direction = [_closest, _location] call CTI_CO_FNC_GetDirTo;
	if (_direction < 0) then { _direction = _direction + 360};
	
	_direction_eff = ["N", "NE", "E", "SE", "S", "SW", "W", "NW", "N"];
	_direction_eff = _direction_eff select round((_direction + 22.5)/45);
	
	_distance = _closest distance _location;
	_distance_near = _distance - (_distance % 100);
	
	format ["%1 %2 %3", _closest getVariable "cti_town_name", _direction_eff, _distance_near]
};

CTI_UI_Respawn_AppendTracker = {
	private ["_location", "_marker", "_tracker"];
	
	_location = _this;
	
	_marker = createMarkerLocal [Format ["cti_respawn_marker %1", CTI_P_MarkerIterator], getPos _location];
	CTI_P_MarkerIterator = CTI_P_MarkerIterator + 1;
	_marker setMarkerTypeLocal "Select";
	_marker setMarkerColorLocal "ColorYellow";
	_marker setMarkerSizeLocal [1,1];
	
	_tracker = uiNamespace getVariable "cti_dialog_ui_respawnmenu_locations_tracker";
	_tracker pushBack [_location, _marker];
	
	if (_location isKindOf "AllVehicles") then {
		[_location, _marker] spawn {
			_location = _this select 0;
			_marker = _this select 1;
			
			while {!isNil {uiNamespace getVariable "cti_dialog_ui_respawnmenu"} && alive _location} do {
				_locations_tracker = uiNamespace getVariable "cti_dialog_ui_respawnmenu_locations_tracker";
				
				_marker setMarkerPosLocal (getPos _location);
				
				_abort = true;
				{ if ((_x select 0) == _location) exitWith {_abort = false} } forEach _locations_tracker;
				sleep .25;
			};
		};
	};
};

CTI_UI_Respawn_LoadLocations = {
	private ["_old_locations", "_respawn_locations", "_respawn_locations_formated", "_set", "_spawn"];
	_respawn_locations = call CTI_UI_Respawn_GetAvailableLocations;
	
	_respawn_locations = [CTI_DeathPosition, _respawn_locations] call CTI_CO_FNC_SortByDistance;
	_respawn_locations_formated = (_respawn_locations) call CTI_UI_Respawn_GetListLabels;
	
	_old_locations = uiNamespace getVariable "cti_dialog_ui_respawnmenu_locations";
	if (isNil '_old_locations') then { _old_locations = [] };
	uiNamespace setVariable ["cti_dialog_ui_respawnmenu_locations", _respawn_locations];
	
	{if !(_x in _old_locations) then {(_x) call CTI_UI_Respawn_AppendTracker}} forEach _respawn_locations;
	
	lbClear ((uiNamespace getVariable "cti_dialog_ui_respawnmenu") displayCtrl 120002);
	
	{
		((uiNamespace getVariable "cti_dialog_ui_respawnmenu") displayCtrl 120002) lbAdd _x;
		// ((uiNamespace getVariable "cti_dialog_ui_respawnmenu") displayCtrl 120002) lbSetValue [_forEachIndex, _forEachIndex];
	} forEach _respawn_locations_formated;
	
	//--- Is a spawn currently selected?
	_spawn = uiNamespace getVariable "cti_dialog_ui_respawnmenu_respawnat";
	
	_set = false;
	{
		if (_x == _spawn) exitWith { _set = true; uiNamespace setVariable ["cti_dialog_ui_respawnmenu_respawn_update", false]; ((uiNamespace getVariable "cti_dialog_ui_respawnmenu") displayCtrl 120002) lbSetCurSel _forEachIndex; };
	} forEach _respawn_locations;
	
	if !(_set) then {
		((uiNamespace getVariable "cti_dialog_ui_respawnmenu") displayCtrl 120002) lbSetCurSel 0;
	};
};

CTI_UI_Respawn_CenterMap = {
	private ["_position"];
	_position = _this;
	
	ctrlMapAnimClear ((uiNamespace getVariable "cti_dialog_ui_respawnmenu") displayCtrl 120001);
	((uiNamespace getVariable "cti_dialog_ui_respawnmenu") displayCtrl 120001) ctrlMapAnimAdd [.65, .35, _position];
	ctrlMapAnimCommit ((uiNamespace getVariable "cti_dialog_ui_respawnmenu") displayCtrl 120001);
};

CTI_UI_Respawn_UseSelector = {
	private ["_marker","_marker_difference","_marker_expand","_marker_dir","_marker_min_size","_marker_max_size","_marker_size","_target"];
	
	_target = _this;
	_marker_size = 1.4;
	_marker_min_size = 1.4;
	_marker_max_size = 1.8;
	_marker_dir = 0;
	_marker_difference = (_marker_max_size - _marker_min_size)/10;
	_marker_expand = true;

	_marker = createMarkerLocal [format["cti_respawn_selector_%1", CTI_P_MarkerIterator], [0,0,0]];
	CTI_P_MarkerIterator = CTI_P_MarkerIterator + 1;
	_marker setMarkerTypeLocal "Select";
	_marker setMarkerColorLocal CTI_P_SideColor;
	_marker setMarkerSizeLocal [_marker_size, _marker_size];

	while {_target == (uiNamespace getVariable "cti_dialog_ui_respawnmenu_respawnat") && !isNil {uiNamespace getVariable "cti_dialog_ui_respawnmenu"}} do {
		_marker_dir = (_marker_dir + 1) % 360;
		_marker setMarkerDirLocal _marker_dir;
		_marker setMarkerSizeLocal [_marker_size, _marker_size];
		
		if (_marker_size > _marker_max_size) then {_marker_expand = false};
		if (_marker_size < _marker_min_size) then {_marker_expand = true};
		if (_marker_expand) then {_marker_size = _marker_size + _marker_difference} else {_marker_size = _marker_size - _marker_difference};
		
		if (getMarkerPos _marker distance _target > 0.5) then {_marker setMarkerPosLocal getPos _target};
		
		sleep .03;
	};

	deleteMarkerLocal _marker;
};

CTI_UI_Respawn_OnRespawnReady = {
	_where = uiNamespace getVariable "cti_dialog_ui_respawnmenu_respawnat";
	
	_respawn_ai = false;
	_respawn_ai_gear = [];
	if (_where isKindOf "Man") then { //--- The location is an AI?
		if (_where in units player) then { //--- The AI is in the player group?
			_pos = getPos _where; //--- Get the AI position (todo: copy the stance)
			_respawn_ai_gear = (_where) call CTI_CO_FNC_GetUnitLoadout; //--- Get the AI current equipment using the Gear UI function
			deleteVehicle _where; //--- Remove the AI
			player setPos _pos; //--- Place the player where the AI was
			_respawn_ai = true;
		};
	};
	
	if !(_respawn_ai) then { //--- Stock respawn
		_spawn_args = [_where, 8, 30];
		_spawn_in = false;
		
		//--- Camp respawn, check for conditions
		if !(isNil {_where getVariable "cti_camp_town"}) then {
			if ((missionNamespace getVariable "CTI_RESPAWN_CAMPS_CONDITION") > 0) then {
				_town = _where getVariable "cti_camp_town";
				switch (missionNamespace getVariable "CTI_RESPAWN_CAMPS_CONDITION") do {
					case 1: {
						_coefficient = if (_town getVariable "cti_town_sideID" == CTI_P_SideID) then {CTI_RESPAWN_CAMPS_CONDITION_PRICED_COEF_FRIENDLY} else {CTI_RESPAWN_CAMPS_CONDITION_PRICED_COEF_ENEMY};
						_price = round((_town getVariable "cti_town_sv") * _coefficient);
						(-_price) call CTI_CL_FNC_ChangePlayerFunds
					}; //--- Priced, deduce the cost from the player's funds
					case 2: {_town setVariable ["cti_camp_respawn_count", (_town getVariable "cti_camp_respawn_count") - 1]};
				};
			};
		};
		
		if (_where isKindOf "AllVehicles") then { //--- Vehicle respawn
			if (_where emptyPositions "cargo" > 0 && (locked _where in [0, 1])) then {
				_spawn_in = true;
				player moveInCargo _where;
			} else {
				if (_where isKindOf "Ship") then {
					_spawn_args = [_where, 5, 15, 0];
				};
			};
		};
		
		if !(_spawn_in) then { //--- If the unit did not respawn in a vehicle, we place it near
			_spawn_at = _spawn_args call CTI_CO_FNC_GetRandomPosition;
			player setPos _spawn_at;
		};
	};
	
	titleCut["","BLACK IN",1];
	
	closeDialog 0;
	
	if !(isNil "CTI_DeathCamera") then {
		CTI_DeathCamera cameraEffect ["TERMINATE", "BACK"];
		camDestroy CTI_DeathCamera;
	};
	
	if !(_respawn_ai) then { //--- Stock respawn
		//--- Determine whether the last known gear should be used or the default one
		_respawn_gear = if (isNil 'CTI_P_CurrentGear') then {missionNamespace getVariable format ["CTI_AI_%1_DEFAULT_GEAR", CTI_P_SideJoined]} else {CTI_P_CurrentGear};
		[player, _respawn_gear] call CTI_CO_FNC_EquipUnit; //--- Equip the equipment
	} else { //--- Respawn in own AI
		[player, _respawn_ai_gear] call CTI_CO_FNC_EquipUnit; //--- Equip the equipment of the AI on the player
	};
	
	if ((missionNamespace getVariable "CTI_UNITS_FATIGUE") == 0) then {player enableFatigue false}; //--- Disable the unit's fatigue
	
	//Earplugs
	player spawn {call CTI_CL_FNC_EarPlugsSpawn; };
	
	CTI_P_Respawning = false;
};

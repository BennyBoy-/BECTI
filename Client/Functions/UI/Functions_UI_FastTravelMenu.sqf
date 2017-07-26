CTI_UI_FastTravel_LoadLocations = {
	_available_locations = call CTI_UI_FastTravel_GetAvailableLocations;
	
	_available_locations = [vehicle player, _available_locations] call CTI_CO_FNC_SortByDistance;
	_available_locations_formated = (_available_locations) call CTI_UI_FastTravel_GetListLabels;
	
	_old_locations = uiNamespace getVariable "cti_dialog_ui_fasttravelmenu_locations";
	if (isNil '_old_locations') then { _old_locations = [] };
	uiNamespace setVariable ["cti_dialog_ui_fasttravelmenu_locations", _available_locations];
	
	{if !(_x in _old_locations) then {(_x) call CTI_UI_FastTravel_AppendTracker}} forEach _available_locations;
	
	lbClear ((uiNamespace getVariable "cti_dialog_ui_fasttravelmenu") displayCtrl 310002);
	
	{
		((uiNamespace getVariable "cti_dialog_ui_fasttravelmenu") displayCtrl 310002) lbAdd _x;
	} forEach _available_locations_formated;
	
	//--- Is a spawn currently selected?
	_destination = uiNamespace getVariable "cti_dialog_ui_fasttravelmenu_destination";
	
	_set = false;
	{
		if (_x isEqualTo _destination) exitWith { _set = true; uiNamespace setVariable ["cti_dialog_ui_fasttravelmenu_update", false]; ((uiNamespace getVariable "cti_dialog_ui_fasttravelmenu") displayCtrl 310002) lbSetCurSel _forEachIndex; };
	} forEach _available_locations;
	
	if (count _available_locations > 0) then {
		if (!_set) then {((uiNamespace getVariable "cti_dialog_ui_fasttravelmenu") displayCtrl 310002) lbSetCurSel 0};
	} else {
		uiNamespace setVariable ["cti_dialog_ui_fasttravelmenu_destination", objNull];
	};
};

CTI_UI_FastTravel_GetListLabels = {
	private ["_list"];
	
	_list = [];
	
	{
		_list pushBack format["%1 - %2m", _x call CTI_UI_FastTravel_GetLocationLabel, round (_x distance (uiNamespace getVariable "cti_dialog_ui_fasttravelmenu_source"))];
	} forEach _this;
	
	_list
};

CTI_UI_FastTravel_GetLocationLabel = {
	private ["_location", "_value"];
	_location = _this;
	
	_value = "Structure";
	switch (true) do {
		case (_location isEqualTo (CTI_P_SideJoined call CTI_CO_FNC_GetSideHQ)): { _value = "Headquarters" };
		case (!isNil {_location getVariable "cti_town_name"}): { _value = _location getVariable "cti_town_name"};
		case (!isNil {_location getVariable "cti_structure_type"}): { 
			_var = missionNamespace getVariable format ["CTI_%1_%2", CTI_P_SideJoined, _location getVariable "cti_structure_type"];
			_value = (_var select 0) select 1;
		};
		case (_location isKindOf "AllVehicles"): { _value = getText(configFile >> "CfgVehicles" >> typeOf _location >> "displayName") };
	};
	
	_value
};

CTI_UI_FastTravel_GetAvailableLocations = {
	_hq = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideHQ;
	
	_locations = [];
	_source = objNull;
	_range = -1;
	
	//--- Command Center
	_structures = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideStructures;
	_command_center = [CTI_CONTROLCENTER, vehicle player, _structures, CTI_FASTTRAVEL_DISTANCE_USE_BASE_MIN] call CTI_CO_FNC_GetClosestStructure;
	if !(isNull _command_center) then {
		if (_range < CTI_FASTTRAVEL_DISTANCE_CC_MAX) then {_range = CTI_FASTTRAVEL_DISTANCE_CC_MAX; _source = _command_center};
	};
	
	//--- HQ
	if (alive _hq && (CTI_P_SideJoined) call CTI_CO_FNC_IsHQDeployed && vehicle player distance _hq < CTI_FASTTRAVEL_DISTANCE_USE_BASE_MIN) then {
		if (_range < CTI_FASTTRAVEL_DISTANCE_BASE_MAX) then {_range = CTI_FASTTRAVEL_DISTANCE_BASE_MAX; _source = _hq};
	};
	
	//--- Town
	_town = [vehicle player, CTI_P_SideID] call CTI_CO_FNC_GetClosestFriendlyTown;
	if (vehicle player distance _town < CTI_FASTTRAVEL_DISTANCE_USE_TOWN_MIN && [_town, CTI_P_SideJoined] call CTI_CO_FNC_HasAllCamps) then {
		if (_range < CTI_FASTTRAVEL_DISTANCE_TOWN_MAX) then {_range = CTI_FASTTRAVEL_DISTANCE_TOWN_MAX; _source = _town};
	} else {
		_town = objNull;
	};
	
	//--- Retrieve the potential travel locations
	if !(isNull _source) then {
		//--- Release some objects if needed
		if !(_source isEqualTo _command_center) then {_command_center = objNull};
	
		uiNamespace setVariable ["cti_dialog_ui_fasttravelmenu_source", _source];
		
		{
			if (_x getVariable "cti_town_sideID" isEqualTo CTI_P_SideID) then {
				if ([_x, CTI_P_SideJoined] call CTI_CO_FNC_HasAllCamps) then {_locations pushBack _x};
			};
		} forEach ([_source, (CTI_Towns - [_town]), _range] call CTI_CO_FNC_GetEntitiesInRange);
		
		if (alive _hq && (CTI_P_SideJoined) call CTI_CO_FNC_IsHQDeployed && _hq distance _source <= _range && _source != _hq) then {_locations pushBack _hq};
		
		{_locations pushBack _x} forEach (([CTI_CONTROLCENTER, _structures, false, _range] call CTI_CO_FNC_GetSideStructuresByType) - [_command_center]);
	};
	
	_locations
};

CTI_UI_FastTravel_CenterMap = {
	private ["_position"];
	_position = _this;
	
	ctrlMapAnimClear ((uiNamespace getVariable "cti_dialog_ui_fasttravelmenu") displayCtrl 310001);
	((uiNamespace getVariable "cti_dialog_ui_fasttravelmenu") displayCtrl 310001) ctrlMapAnimAdd [.65, .35, _position];
	ctrlMapAnimCommit ((uiNamespace getVariable "cti_dialog_ui_fasttravelmenu") displayCtrl 310001);
};

CTI_UI_FastTravel_UseSelector = {
	private ["_marker","_marker_difference","_marker_expand","_marker_dir","_marker_min_size","_marker_max_size","_marker_size","_target"];
	
	_target = _this;
	_marker_size = 1.4;
	_marker_min_size = 1.4;
	_marker_max_size = 1.8;
	_marker_dir = 0;
	_marker_difference = (_marker_max_size - _marker_min_size)/10;
	_marker_expand = true;

	_marker = createMarkerLocal [format["cti_fasttravel_marker%1", CTI_P_MarkerIterator], [0,0,0]];
	CTI_P_MarkerIterator = CTI_P_MarkerIterator + 1;
	_marker setMarkerTypeLocal "Select";
	_marker setMarkerColorLocal CTI_P_SideColor;
	_marker setMarkerSizeLocal [_marker_size, _marker_size];

	while {_target isEqualTo (uiNamespace getVariable "cti_dialog_ui_fasttravelmenu_destination") && !isNil {uiNamespace getVariable "cti_dialog_ui_fasttravelmenu"}} do {
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

CTI_UI_FastTravel_AppendTracker = {
	private ["_location", "_marker", "_tracker"];
	
	_location = _this;
	
	_marker = createMarkerLocal [Format ["cti_fasttravel_marker %1", CTI_P_MarkerIterator], getPos _location];
	CTI_P_MarkerIterator = CTI_P_MarkerIterator + 1;
	_marker setMarkerTypeLocal "Select";
	_marker setMarkerColorLocal "ColorYellow";
	_marker setMarkerSizeLocal [1,1];
	
	_tracker = uiNamespace getVariable "cti_dialog_ui_fasttravelmenu_locations_tracker";
	_tracker pushBack [_location, _marker];
	
	if (_location isKindOf "AllVehicles") then {
		[_location, _marker] spawn {
			_location = _this select 0;
			_marker = _this select 1;
			
			_abort = false;
			while {!isNil {uiNamespace getVariable "cti_dialog_ui_fasttravelmenu"} && alive _location && !_abort} do {
				_marker setMarkerPosLocal (getPos _location);
				
				_abort = true;
				{ if ((_x select 0) isEqualTo _location) exitWith {_abort = false} } forEach (uiNamespace getVariable "cti_dialog_ui_fasttravelmenu_locations_tracker");
				
				sleep .25;
			};
		};
	};
};
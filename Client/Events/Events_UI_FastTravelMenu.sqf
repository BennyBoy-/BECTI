private ["_action"];
_action = _this select 0;

switch (_action) do {
	case "onLoad": {
		uiNamespace setVariable ["cti_dialog_ui_fasttravelmenu_destination", objNull];
		uiNamespace setVariable ["cti_dialog_ui_fasttravelmenu_locations", []];
		uiNamespace setVariable ["cti_dialog_ui_fasttravelmenu_locations_tracker", []];
		uiNamespace setVariable ["cti_dialog_ui_fasttravelmenu_source", objNull];
		uiNamespace setVariable ["cti_dialog_ui_fasttravelmenu_update", true];
	
		mouseButtonDown = -1;
		mouseButtonUp = -1;
	
		execVM "Client\GUI\GUI_FastTravelMenu.sqf";
		
		call CTI_UI_FastTravel_LoadLocations;// todo: something bout naval
	};
	case "onLocationLBSelChanged": {
		_changeto = _this select 1;
		
		_selected = (uiNamespace getVariable "cti_dialog_ui_fasttravelmenu_locations") select _changeto;
		_old_destination = uiNamespace getVariable "cti_dialog_ui_fasttravelmenu_destination";
		uiNamespace setVariable ["cti_dialog_ui_fasttravelmenu_destination", _selected];
		if (uiNamespace getVariable "cti_dialog_ui_fasttravelmenu_update") then {
			(_selected) call CTI_UI_FastTravel_CenterMap;
		} else {
			uiNamespace setVariable ["cti_dialog_ui_fasttravelmenu_update", true];
		};
		
		if !(_old_destination isEqualTo _selected) then {(_selected) spawn CTI_UI_FastTravel_UseSelector};
	};
	case "onFastTravel": {
		0 spawn {
			closeDialog 0;
			
			_destination = uiNamespace getVariable ["cti_dialog_ui_fasttravelmenu_destination", objNull];
			_source = uiNamespace getVariable ["cti_dialog_ui_fasttravelmenu_source", objNull];
			
			if !(isNull (uiNamespace getVariable "cti_dialog_ui_fasttravelmenu_destination")) then {
				_travelingWith = [];
				{if (_x distance player < CTI_FASTTRAVEL_AI_RANGE && !(_x in _travelingWith) && canMove _x && !(vehicle _x isKindOf "StaticWeapon") && !stopped _x && !((currentCommand _x) in ["WAIT", "STOP"])) then {_travelingWith pushBack (vehicle _x)}} forEach units (group player);
				
				forceMap true;
				_compass = shownCompass;
				_GPS = shownGPS;
				_pad = shownPad;
				_radio = shownRadio;
				_watch = shownWatch;

				showCompass false;
				showGPS false;
				showPad false;
				showRadio false;
				showWatch false;

				mapAnimClear;
				mapAnimCommit;
				
				_locationPosition = getPos _destination;
				_camera = "camera" camCreate _locationPosition;
				_camera camSetDir [0, 0, 0];
				_camera camSetFov 1;
				_camera cameraEffect["Internal", "TOP"];

				_camera camSetTarget _locationPosition;
				_camera camSetPos [_locationPosition select 0, (_locationPosition select 1) + 2, 100];
				_camera camCommit 0;
				
				mapAnimAdd [0,0.05, getPos _source];
				mapAnimCommit;
				
				_delay = ((_source distance _destination) / 50) * (missionNamespace getVariable "CTI_FASTTRAVEL_SPEED_COEF");
				mapAnimAdd [_delay, .18, getPos _destination];
				mapAnimCommit;
				
				waitUntil {mapAnimDone || !alive player};
				
				if (alive player) then {
					_has_vehicles = false;
					{if !(_x isKindOf "Man") exitWith {_has_vehicles = true}} forEach (units group player);
					_center = [getPos _destination, 10, 300, 10, ["infantry", "vehicles"] select (_has_vehicles)] call CTI_CO_FNC_GetSafePosition;
					
					{
						if (_x isKindOf "Man") then {
							_x setPos ([_center, 3, 30, 5, "infantry", ["Man","Car","Motorcycle","Tank","Ship","Air","StaticWeapon"], 5] call CTI_CO_FNC_GetSafePosition);
						} else {
							(vehicle _x) setPos ([_center, 5, 60, 7, "vehicles", ["Man","Car","Motorcycle","Tank","Ship","Air","StaticWeapon"], 6] call CTI_CO_FNC_GetSafePosition);
						};
					} forEach _travelingWith;
				};
				sleep 1;
				
				forceMap false;
				showCompass _compass;
				showGPS _GPS;
				showPad _pad;
				showRadio _radio;
				showWatch _watch;
				
				_camera cameraEffect["TERMINATE","BACK"];
				camDestroy _camera;
			};
		};
	};
	case "onUnload": {
		{ deleteMarkerLocal (_x select 1) } forEach (uiNamespace getVariable "cti_dialog_ui_fasttravelmenu_locations_tracker");
	};
};
private ["_sideID", "_town", "_town_camps", "_town_name", "_town_side", "_town_value"];

_town = _this select 0;
_town_name = _this select 1;
_town_side = _this select 2;
_town_value = _this select 3;

_town setVariable ["cti_town_name", _town_name];
_town setVariable ["cti_town_value", _town_value];

waitUntil {!isNil 'CTI_Init_JIP' && !isNil 'CTI_Init_Common'};

_sideID = _town_side call CTI_CO_FNC_GetSideID;

if (CTI_IsServer) then {
	//--- Check for potential synchronized objects
	_town_camps = [];
	{
		//--- Synchronized Camp
		if (typeOf _x in CTI_TOWNS_CAMPS_CLASSNAMES) then {
			_x setVariable ["cti_camp_value", _town_value];
			_x setVariable ["cti_camp_sideID", _sideID, true];
			_x setVariable ["cti_camp_lastSideID", _sideID, true];
			[_town, _x] execFSM "Server\FSM\town_capture_camp.fsm":
			[_town_camps, _x] call CTI_CO_FNC_ArrayPush;
		};
	} forEach synchronizedObjects _town;

	//--- Make sure that we have at least one camp and publish the camps
	if (count _town_camps > 0) then { _town setVariable ["cti_town_camps", _town_camps, true] };
	
	_town setVariable ["cti_town_sideID", _sideID, true];
	_town setVariable ["cti_town_lastSideID", _sideID, true];
	
	(_town) execFSM "Server\FSM\town_capture.fsm";
	(_town) execFSM "Server\FSM\town_resistance.fsm";
	if (missionNamespace getVariable "CTI_TOWNS_OCCUPATION" > 0) then {(_town) execFSM "Server\FSM\town_occupation.fsm"};
};

if (CTI_IsClient) then {
	//--- The client awaits for the MP variable to be available
	waitUntil {!isNil "CTI_Init_Client"};
	
	waitUntil {!(isNil {_town getVariable "cti_town_sideID"}) && !(isNil {_town getVariable "cti_town_lastSideID"})};
	
	_coloration = CTI_RESISTANCE_COLOR;
	if (CTI_P_SideID in [_town getVariable "cti_town_lastSideID", _town getVariable "cti_town_sideID"]) then { //--- Environment awareness
		_coloration = ((_town getVariable "cti_town_sideID") call CTI_CO_FNC_GetSideFromID) call CTI_CO_FNC_GetSideColoration;
	};
	
	//--- Area marker
	_marker = createMarkerLocal [format ["cti_town_areaMarker_%1", _town], getPos _town];
	_marker setMarkerShapeLocal "ELLIPSE"; 
	_marker setMarkerBrushLocal "SolidBorder"; 
	_marker setMarkerSizeLocal [CTI_MARKERS_TOWN_AREA_RANGE, CTI_MARKERS_TOWN_AREA_RANGE]; 
	_marker setMarkerColorLocal _coloration;
	_marker setMarkerAlphaLocal 0;
	
	//--- Center marker
	_marker = createMarkerLocal [format ["cti_town_marker_%1", _town], getPos _town];
	_marker setMarkerTypeLocal "mil_flag";
	_marker setMarkerColorLocal _coloration;
	_marker setMarkerSizeLocal [0.5, 0.5]; 
	// _marker setMarkerAlphaLocal CTI_MARKERS_OPACITY;
	
	//--- Possible camp markers
	_town_camps = _town getVariable "cti_town_camps";
	if !(isNil "_town_camps") then {
		{
			_coloration = CTI_RESISTANCE_COLOR;
			if (CTI_P_SideID in [_x getVariable "cti_camp_lastSideID", _x getVariable "cti_camp_sideID"]) then { //--- Environment awareness
				_coloration = ((_x getVariable "cti_camp_sideID") call CTI_CO_FNC_GetSideFromID) call CTI_CO_FNC_GetSideColoration;
			};
			
			_marker = createMarkerLocal [format ["cti_camp_marker_%1_%2", _town, _forEachIndex], getPos _x];
			_marker setMarkerTypeLocal "mil_marker";
			_marker setMarkerColorLocal _coloration;
			_marker setMarkerSizeLocal [0.3, 0.3]; 
			
			_x setVariable ["cti_camp_marker", _marker];
		} forEach _town_camps;
	};
};
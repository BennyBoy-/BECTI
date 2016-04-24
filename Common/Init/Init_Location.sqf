private ["_sideID", "_town", "_town_name", "_town_side", "_town_value"];

_town = _this select 0;
_town_name = _this select 1;
_town_side = _this select 2;
_town_value = _this select 3;

_town setVariable ["cti_town_name", _town_name];
_town setVariable ["cti_town_value", _town_value];

if (CTI_Log_Level >= CTI_Log_Information) then {
	["INFORMATION", "FILE: Common\Init\Init_Location.sqf", format["Initializing town [%1] (%2) for side [%3] and value [%4]", _town, _town_name, _town_side, _town_value]] call CTI_CO_FNC_Log;
};

waitUntil {!isNil 'CTI_Init_JIP' && !isNil 'CTI_Init_Common'};

_sideID = _town_side call CTI_CO_FNC_GetSideID;

if (CTI_IsServer) then {
	_town setVariable ["cti_town_lastSideID", _sideID, true];
	_town setVariable ["cti_town_sideID", _sideID, true];
	
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
};
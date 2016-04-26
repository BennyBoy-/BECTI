private ["_sideID", "_town", "_town_camps", "_town_name", "_town_side"];

_town = _this select 0;
_camp = _this select 1;

if (CTI_Log_Level >= CTI_Log_Information) then {
	["INFORMATION", "FILE: Common\Init\Init_Camp.sqf", format["Initializing camp [%1] (%2) for town [%3]", _camp, typeOf _camp, _town]] call CTI_CO_FNC_Log;
};

//--- Common Variables
if (isNil {_town getVariable "cti_town_camps"}) then {_town setVariable ["cti_town_camps", []]};
_town setVariable ["cti_town_camps", (_town getVariable "cti_town_camps") + [_camp]];
_camp setVariable ["cti_camp_town", _town];

waitUntil {!isNil 'CTI_Init_JIP' && !isNil 'CTI_Init_Common'};

//--- Server Initialization
if (CTI_IsServer) then {
	//--- The camp is initialized after the town
	waitUntil {!isNil {_town getVariable "cti_town_sideID"} && !isNil {_town getVariable "cti_town_lastSideID"}};
	
	//--- Camp variables
	_camp setVariable ["cti_camp_sv", _town getVariable "cti_town_sv_default", true];
	_camp setVariable ["cti_camp_sideID", _town getVariable "cti_town_sideID", true];
	_camp setVariable ["cti_camp_lastSideID", _town getVariable "cti_town_lastSideID", true];
	
	//--- Camp FSM
	[_town, _camp] execFSM "Server\FSM\town_capture_camp.fsm";
};

//--- Client Initialization
if (CTI_IsClient) then {
	//--- The client awaits for the MP variable to be available
	waitUntil {!isNil "CTI_Init_Client"};
	
	//--- The client need to be aware of the given side IDs before painting the camps
	waitUntil {!isNil {_camp getVariable "cti_camp_sideID"} && !isNil {_camp getVariable "cti_camp_lastSideID"}};
	
	//--- Paint the camp according to the side ID's
	_coloration = CTI_RESISTANCE_COLOR;
	if (CTI_P_SideID in [_camp getVariable "cti_camp_lastSideID", _camp getVariable "cti_camp_sideID"]) then { //--- Environment awareness
		_coloration = ((_camp getVariable "cti_camp_sideID") call CTI_CO_FNC_GetSideFromID) call CTI_CO_FNC_GetSideColoration;
	};
	
	_marker = createMarkerLocal [format ["cti_camp_marker_%1_%2", _town, (_town getVariable "cti_town_camps") find _camp], getPos _camp];
	_marker setMarkerTypeLocal "mil_marker";
	_marker setMarkerColorLocal _coloration;
	_marker setMarkerSizeLocal [0.3, 0.3]; 
	
	_camp setVariable ["cti_camp_marker", _marker];
};
//--- PVF Are store within the mission namespace
with missionNamespace do {
	CTI_PVF_Client_OnStructureConstructed = { _this spawn CTI_CL_FNC_OnStructureConstructed };
	CTI_PVF_Client_OnTownCaptured = { _this spawn CTI_CL_FNC_OnTownCaptured };
	CTI_PVF_Client_OnPurchaseOrderReceived = { _this spawn CTI_CL_FNC_OnPurchaseOrderReceived };
	CTI_PVF_Client_OnPurchaseDelegationReceived = { _this spawn CTI_CL_FNC_OnPurchaseDelegationReceived };
	
	CTI_PVF_Client_OnMissionEnding = { _this spawn CTI_CL_FNC_OnMissionEnding };
	CTI_PVF_Client_OnMessageReceived = { _this spawn CTI_CL_FNC_DisplayMessage };
	CTI_PVF_Client_OnStructureKilled = { _this spawn CTI_CL_FNC_OnFriendlyStructureDestroyed };
	
	CTI_PVF_Client_ReceiveStructureBase = {	CTI_P_LastStructurePreBuilt = _this };
	CTI_PVF_Client_ReceiveDefense = { CTI_P_LastDefenseBuilt = _this };
	
	CTI_PVF_Client_PurchaseDelegationStart = { 
		_req_seed = _this select 0;
		_req_classname = _this select 1;
		_req_target = _this select 2;
		_factory = _this select 3;
		
		_index = -1;
		{ if ((_x select 0) == _req_seed && (_x select 1) == _req_classname) exitWith {_index = _forEachIndex} } forEach CTI_P_PurchaseRequests;
		
		if (_index != -1) then {
			CTI_P_PurchaseRequests set [_index, "!REMOVE!"];
			CTI_P_PurchaseRequests = CTI_P_PurchaseRequests - ["!REMOVE!"];
		};
		//todo cash deduction!
		if (CTI_Log_Level >= CTI_Log_Information) then { ["INFORMATION", "FUNCTION: CTI_PVF_Client_PurchaseDelegationStart", format["Removed purchase delegation for [%1] concerning classname [%2] with seed [%3] on factory [%4, (%5)]", _req_target, _req_classname, _req_seed, _factory, _factory getVariable "cti_structure_type"]] call CTI_CO_FNC_Log };
	};
	
	CTI_PVF_Client_OnPurchaseOrderCancelled = {
		_req_seed = _this select 0;
		_req_classname = _this select 1;
		_factory = _this select 2;
		
		_index = -1;
		{ if ((_x select 0) == _req_seed && (_x select 1) == _req_classname) exitWith {_index = _forEachIndex} } forEach CTI_P_PurchaseRequests;
		
		if (_index != -1) then {
			CTI_P_PurchaseRequests set [_index, "!REMOVE!"];
			CTI_P_PurchaseRequests = CTI_P_PurchaseRequests - ["!REMOVE!"];
		};
		
		if (CTI_Log_Level >= CTI_Log_Information) then { ["INFORMATION", "FUNCTION: CTI_PVF_Client_PurchaseDelegationStart", format["Removed queued purchase concerning classname [%1] with seed [%2] on factory [%3, (%4)]", _req_classname, _req_seed, _factory, _factory getVariable "cti_structure_type"]] call CTI_CO_FNC_Log };
	};
	
	CTI_PVF_Client_AwardBounty = {
		_type_killed = _this select 0;
		_award = _this select 1;
		
		_delay = 5 + random 30;
		sleep _delay;
		
		_var = missionNamespace getVariable _type_killed;
		_label = _var select CTI_UNIT_LABEL;
		
		(_award) call CTI_CL_FNC_ChangePlayerFunds;
		["award-bounty", [_award, _label]] call CTI_CL_FNC_DisplayMessage;
	};
	
	CTI_PVF_Client_OnSpottedTargetReceived = {
		_position = _this select 0;
		_type = _this select 1;
		_from = _this select 2;
		
		_position = [_position, 5, CTI_AI_TEAMS_OBSERVATION_ACCURACY] call CTI_CO_FNC_GetRandomPosition;
		_markerType = if (_type == "base") then {"mil_warning"} else {"mil_unknown"};
		_marker = createMarkerLocal [Format ["cti_report_%1", CTI_P_MarkerIterator], _position];CTI_P_MarkerIterator = CTI_P_MarkerIterator + 1;
		_marker setMarkerTypeLocal _markerType;
		_marker setMarkerColorLocal "ColorBlack";
		_marker setMarkerSizeLocal [0.5, 0.5]; 
		
		if (_type == "base") then {["spot-base", [_from, _position]] call CTI_CL_FNC_DisplayMessage} else {["spot-unit", [_from, _position]] call CTI_CL_FNC_DisplayMessage};
		
		sleep CTI_AI_TEAMS_OBSERVATION_MARKER_LIFESPAN;
		
		deleteMarkerLocal _marker;
	};
	
	CTI_PVF_Client_OnTeamkill = {
		["teamkill"] call CTI_CL_FNC_DisplayMessage;
		if (time - CTI_P_LastTeamkill > 5) then {
			CTI_P_LastTeamkill = time;
			["SERVER", "Request_NoobLogger", [player, 1]] call CTI_CO_FNC_NetSend;
		};
	};
	
	CTI_PVF_Client_OnUbernessReached = { 0 spawn CTI_CL_FNC_OnJailed };
	CTI_PVF_Client_RemoveRuins = { _this spawn CTI_CL_FNC_RemoveRuins };
	
	CTI_PVF_Client_AddHQActions = {
		waitUntil {local _this};
		_this lock 2;
		_this addAction ["<t color='#86F078'>Unlock</t>","Client\Actions\Action_ToggleLock.sqf", [], 99, false, true, '', 'alive _target && locked _target == 2'];
		_this addAction ["<t color='#86F078'>Lock</t>","Client\Actions\Action_ToggleLock.sqf", [], 99, false, true, '', 'alive _target && locked _target == 0'];
	};
	
	CTI_PVF_Client_OnRequestAnswered = { _this spawn CTI_UI_Request_OnRequestAnswered }; //--- The commander answer a request
	CTI_PVF_Client_OnRequestReceived = { _this spawn CTI_UI_Request_OnRequestReceived }; //--- The commander receive a request
	
	CTI_PVF_Client_OnSpecialConstructed = {
		_fob = _this select 0;
		_label = _this select 1;
		
		_marker = createMarkerLocal [Format ["cti_structure_%1", CTI_P_MarkerIterator], getPos _fob];CTI_P_MarkerIterator = CTI_P_MarkerIterator + 1;
		_marker setMarkerTypeLocal format["%1med", CTI_P_MarkerPrefix];
		_marker setMarkerColorLocal CTI_P_SideColor;
		_marker setMarkerSizeLocal [0.75, 0.75]; 
		_marker setMarkerTextLocal _label;
		
		[_fob, _marker] spawn {
			_structure = _this select 0;
			_marker = _this select 1;
			
			waitUntil { sleep 5; !alive _structure };
			
			deleteMarkerLocal _marker;
		};
	};
};
//--- PVF Are store within the mission namespace
with missionNamespace do {
	//--- The client answers a purchase request
	CTI_PVF_SRV_AnswerPurchase = { _this spawn CTI_SE_FNC_OnClientPurchaseComplete };
	
	//--- The client forwards the HQ killed EH
	CTI_PVF_SRV_ForwardHQDestroyed = { _this spawn CTI_SE_FNC_OnHQDestroyed };
	
	//--- The Client request the addin of a Curator Editable to the ZEUS module
	CTI_PVF_SRV_RequestAddCuratorEditable = { 
		private ["_module", "_objects"];
		
		_module = _this select 0;
		_objects = _this select 1;
		
		if (typeName _objects != "ARRAY") then {_objects = [_objects]};
		
		_module addCuratorEditableObjects [_objects, true];
	};
	
	//--- The client request a score addition
	CTI_PVF_SRV_RequestAddScore = { _this spawn CTI_SE_FNC_AddScore };
	
	//--- The client request a specific AI Order
	CTI_PVF_SRV_RequestAIOrderAction = {
		private ["_groups", "_order", "_side"];
		_groups = _this select 0;
		_order = _this select 1;
		_side = _this select 2;
		
		if (typeName _groups != "ARRAY") then {_groups = [_groups]};
		
		{
			_message = "";
			
			switch (_order) do {
				case CTI_ORDER_EMBARKCOMMANDVEH: {_message = "order-getin"; (_x) call CTI_FSM_UpdateAI_EmbarkCommandableVehicles};
				case CTI_ORDER_DISEMBARKCOMMANDVEH: {_message = "order-getout"; (_x) call CTI_FSM_UpdateAI_DisembarkCommandableVehicles};
				case CTI_ORDER_EMBARKCARGOVEH: {_message = "order-getinc"; (_x) call CTI_FSM_UpdateAI_EmbarkCargoVehicles};
				case CTI_ORDER_DISEMBARKCARGOVEH: {_message = "order-getoutc"; (_x) call CTI_FSM_UpdateAI_DisembarkCargoVehicles};
			};
			
			if (_message != "") then {[_message, leader _x] remoteExec ["CTI_PVF_CLT_OnMessageReceived", _side]};
		} forEach _groups;
	};
	
	//--- The client request a new building
	CTI_PVF_SRV_RequestBuilding = { _this spawn CTI_SE_FNC_BuildStructure };
	
	//--- The client request a new commander vote
	CTI_PVF_SRV_RequestCommanderVote = {
		private ["_logic", "_name", "_side", "_team"];
		
		_side = _this select 0;
		_name = _this select 1;
		
		_logic = (_side) Call CTI_CO_FNC_GetSideLogic;
		_team = (_side) Call CTI_CO_FNC_GetSideCommanderTeam;
		
		//--- Make sure that no vote is running
		if (_logic getVariable "cti_votetime" <= 0) then {
			//--- Set the votes for the default commander
			{
				_vote_update = false;
				if (isNull (_x getVariable "cti_vote") && !isNull _team || !isNull (_x getVariable "cti_vote") && isNull _team) then {_vote_update = true};
				if (!isNull (_x getVariable "cti_vote") && !isNull _team) then {
					if ((_x getVariable "cti_vote") != _team) then {_vote_update = true};
				};
				if (_vote_update) then {_x setVariable ["cti_vote", _team, true]};
			} forEach (_logic getVariable "cti_teams");
			
			//--- Call in for a vote
			(_side) Spawn CTI_SE_FNC_VoteForCommander;
		};
	};
	
	//--- The client request a new defense
	CTI_PVF_SRV_RequestDefense = { _this spawn CTI_SE_FNC_BuildDefense };
	
	//--- The client request an empty vehicle handling
	CTI_PVF_SRV_RequestHandleEmptyVehicles = { 
		if (typeName _this == "ARRAY") then {
			{[_x] spawn CTI_SE_FNC_HandleEmptyVehicle} forEach _this;
		} else {
			[_this] spawn CTI_SE_FNC_HandleEmptyVehicle;
		};
	};
	
	//--- The client request for the management of a special vehicle
	CTI_PVF_SRV_RequestHandleSpecialVehicle = { 
		private ["_action", "_param"];
		_action = _this select 0;
		_param = _this select 1;
		
		switch (_action) do {
			case "repair": {_param execFSM "Server\FSM\update_repairtruck.fsm"};
			case "salvager": {_param execFSM "Server\FSM\update_salvager.fsm"};
		};
	};
	
	//--- The Headless Client request a server-side Registration
	CTI_PVF_SRV_RequestHCRegister = { 
		private ["_client", "_ownerID", "_uid"];
		_client = _this;
		
		_ownerID = owner _client;
		_uid = getPlayerUID _client;
		
		if (_ownerID != 0) then { //--- The ID is different than 0, the client is not local to the server
			_candidates = missionNamespace getVariable "CTI_HEADLESS_CLIENTS";
			if (isNil '_candidates') then {_candidates = []};
			_candidates pushBack [_ownerID, _client, _uid];
			missionNamespace setVariable ["CTI_HEADLESS_CLIENTS", _candidates];
			if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FUNCTION: CTI_PVF_SRV_RequestHCRegister", format["Headless Client [%1] with owner ID [%2] has been registered as a valid Headless Client. There is now [%3] Headless Clients", _uid, _ownerID, count _candidates]] call CTI_CO_FNC_Log};
			(true) remoteExec ["CTI_PVF_HC_OnRegisterAnswer", _ownerID];
		} else { //--- An ID of 0 mean that the object is local to the server
			if (CTI_Log_Level >= CTI_Log_Error) then {["ERROR", "FUNCTION: CTI_PVF_SRV_RequestHCRegister", format ["Client [%1] sent a request but his owner ID is 0. It will not be registered as a valid Headless Client", _uid]] call CTI_CO_FNC_Log};
			(false) remoteExec ["CTI_PVF_HC_OnRegisterAnswer", _ownerID];
		};
	};
	
	//--- The client request an HQ repair
	CTI_PVF_SRV_RequestHQRepair = { _this spawn CTI_SE_FNC_RepairHQ };
	
	//--- The client request an HQ toggle (deployed/mobilized)
	CTI_PVF_SRV_RequestHQToggle = { _this spawn CTI_SE_FNC_ToggleHQ };
	
	//--- The client request his Join in Progress gear if possible
	CTI_PVF_SRV_RequestJIPGear = {
		private ["_get", "_loadout"];
		
		_get = missionNamespace getVariable [format["CTI_SERVER_CLIENT_%1", getPlayerUID _this], []];
		
		if (count _get > 0) then {
			_loadout = _get select 4;
			
			if (count _loadout > 0) then { //--- Make sure that there is a valid loadout in there
				(_loadout) remoteExec ["CTI_PVF_CLT_OnJIPGearReceived", owner _this];
			};
		};
	};
	
	//--- The client request a Joining ticket
	CTI_PVF_SRV_RequestJoin = {
		private ["_client", "_join", "_original_side", "_side", "_special"];
		_client = _this select 0;
		_side = _this select 1;
		
		_name = name _client;
		_uid = getPlayerUID _client;
		_join = true;
		_original_side = false;
		_special = "";
		
		_get = missionNamespace getVariable Format["CTI_SERVER_CLIENT_%1",_uid];
		
		if !(isNil '_get') then { //--- Retrieve JIP Information if there's any.
			_side_origin = _get select 2; //--- Get the original side.
			
			if (_side_origin != _side) then { //--- The joined side differs from the original one.
				_join = false;
				["teamswap", _name] remoteExec ["CTI_PVF_CLT_OnMessageReceived", CTI_PV_CLIENTS];
				if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FUNCTION: CTI_PVF_SRV_RequestJoin", format["Player [%1] [%2] tried to teamswap from it's original side [%3] to side [%4]. The server explicitely answered that he should be sent back to the lobby.", _name, _uid, _side_origin, _side]] call CTI_CO_FNC_Log};
			} else {
				if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FUNCTION: CTI_PVF_SRV_RequestJoin", format["Player [%1] [%2] joined back it's original side [%3].", _name, _uid, _side_origin]] call CTI_CO_FNC_Log};
				_original_side = true;
			};
		} else {
			if (CTI_Log_Level >= CTI_Log_Warning) then {["WARNING", "FUNCTION: CTI_PVF_SRV_RequestJoin", format["Player [%1] [%2] doesn't have any JIP information yet. If this is the start of the mission then this message can be safely ignored.", _name, _uid]] call CTI_CO_FNC_Log};
		};
		
		//--- Apply the team stack system if enabled
		if ((missionNamespace getVariable "CTI_TEAMSTACK") > 0 && _join) then {
			//--- Retrieve the player count for each given side (minus the connecting client)
			_west_players = {side _x == west && isPlayer _x} count (playableUnits - [_client]);
			_east_players = {side _x == east && isPlayer _x} count (playableUnits - [_client]);
			
			if (CTI_Log_Level >= CTI_Log_Information) then {["FUNCTION: CTI_PVF_SRV_RequestJoin", format["Player [%1] [%2] on side [%3]. Without this player, there are [%4] players on west and [%5] players on east. The stack limit is set on [%6] with a current value of [%7]", _name, _uid, _side, _west_players, _east_players, missionNamespace getVariable "CTI_TEAMSTACK", abs(_west_players - _east_players)];
			
			if ((abs(_west_players - _east_players) <= (missionNamespace getVariable "CTI_TEAMSTACK")) || _original_side) then {
				//--- Team stacking is ok so far
				if (CTI_Log_Level >= CTI_Log_Information) then {["FUNCTION: CTI_PVF_SRV_RequestJoin", format["Player [%1] [%2] can join, the teams are still balanced or the player joined back it's original side [%3]", _name, _uid, _original_side]] call CTI_CO_FNC_Log};
			} else {
				//--- The team stack limit has been reached, send this player back to the lobby
			//--- Todo check if the client is present in the "premium" UID array
				if (CTI_Log_Level >= CTI_Log_Information) then {["FUNCTION: CTI_PVF_SRV_RequestJoin", format["Player [%1] [%2] cannot join, the teams are no longer balanced", _name, _uid]] call CTI_CO_FNC_Log};
				_special = "teamstack";
				_join = false;
			};
		};
		
		if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FUNCTION: CTI_PVF_SRV_RequestJoin", format["Player [%1] [%2] can join? -> [%3].", _name, _uid, _join]] call CTI_CO_FNC_Log};
		
		
		_get = missionNamespace getVariable format ["CTI_SERVER_CLIENT_ELITE_%1", _uid];
		if !(isNil '_get') then {if (_get select 1 == 1) then {_special = "jailed"}};
		[_join, _special] remoteExec ["CTI_PVF_CLT_JoinRequestAnswer", owner _client];
	};
	
	//--- The client request a noob logging
	CTI_PVF_SRV_RequestNoobLogger = { _this spawn CTI_SE_FNC_NoobLogger };
	
	//--- The client request the end of the noob logging
	CTI_PVF_SRV_RequestNoobLoggerEnd = { _this spawn CTI_SE_FNC_NoobLoggerEnd };
	
	//--- The client request a unit purchase
	CTI_PVF_SRV_RequestPurchase = { _this spawn CTI_SE_FNC_OnClientPurchase };
	
	//--- The client request a unit purchase cancellation
	CTI_PVF_SRV_RequestPurchaseCancel = { _this spawn CTI_SE_FNC_OnClientPurchaseCancelled };
	
	//--- The client request the addin of vehicles to a town for late-cleanup
	CTI_PVF_SRV_RequestTownAddVehicles = {
		private ["_side", "_town", "_tvar", "_vehicles"];
		
		_town = _this select 0;
		_side = _this select 1;
		_vehicles = _this select 2;
		
		_tvar = if (_side == resistance) then {"cti_town_resistance_active_vehicles"} else {"cti_town_occupation_active_vehicles"};
		
		_town setVariable [_tvar, (_town getVariable _tvar) + _vehicles];
	};
	
	//--- The client request an upgrade
	CTI_PVF_SRV_RequestUpgrade = { _this spawn CTI_SE_FNC_StartUpgrade };
	
	//--- The client request a vehicle refuel
	CTI_PVF_SRV_RequestVehicleRefuel = {
		private ["_fuel", "_vehicle"];
		_vehicle = _this select 0;
		_fuel = _this select 1;
		
		if (local _vehicle) then {
			if (CTI_Log_Level >= CTI_Log_Information) then {
				["INFORMATION", "FUNCTION: CTI_PVF_SRV_RequestVehicleRefuel", format["Performing a refuel operation on [%1] (%2) with a fuel value of [%3]", _vehicle, typeOf _vehicle, _fuel]] call CTI_CO_FNC_Log;
			};
		
			_vehicle setFuel _fuel;
		} else {
			[_vehicle, _fuel] remoteExec ["CTI_PVF_CLT_RequestVehicleRefuel", owner _vehicle];
		};
	};
	
	//--- The client request a vehicle lock toggle
	CTI_PVF_SRV_RequestVehicleLock = {
		private ["_locked", "_vehicle"];
		_vehicle = _this select 0;
		_locked = _this select 1;
		
		if (local _vehicle) then {
			if (CTI_Log_Level >= CTI_Log_Information) then {
				["INFORMATION", "FUNCTION: CTI_PVF_SRV_RequestVehicleLock", format["Performing a lock operation on [%1] (%2) with a lock value of [%3]", _vehicle, typeOf _vehicle, _locked]] call CTI_CO_FNC_Log;
			};
		
			_vehicle lock _locked;
		} else {
			[_vehicle, _locked] remoteExec ["CTI_PVF_CLT_RequestVehicleLock", owner _vehicle];
		};
	};
	
	//--- The client requests a vehicle part(s) repair
	CTI_PVF_SRV_RequestVehicleHitPointsRepair = {
		private ["_damages", "_locked", "_repair", "_vehicle"];
		_vehicle = _this select 0;
		_hitPoints = _this select 1;
		_repair = _this select 2;
		
		if (local _vehicle) then {
			if (CTI_Log_Level >= CTI_Log_Information) then {
				["INFORMATION", "FUNCTION: CTI_PVF_SRV_RequestVehicleHitPointsRepair", format["Performing a part repair operation on [%1] (%2) with a repair value of [%3]", _vehicle, typeOf _vehicle, _repair]] call CTI_CO_FNC_Log;
			};
		
			{
				_damages = _vehicle getHit _x;
				
				if !(isNil '_damages') then {
					if (_damages > 0) then {
						_repair = if (_damages - _repair < 0) then {0} else {_damages - _repair};
						_vehicle setHit [_x, _repair];
					};
				};
			} forEach _hitPoints;
		} else {
			[_vehicle, _hitPoints, _repair] remoteExec ["CTI_PVF_CLT_RequestVehicleHitPointsRepair", owner _vehicle];
		};
	};
	
	//--- The client request a worker creation
	CTI_PVF_SRV_RequestWorker = { _this spawn CTI_SE_FNC_CreateWorker };
};
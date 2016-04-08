if (CTI_Log_Level >= CTI_Log_Information) then { ["INFORMATION", "FILE: Client\Init\Init_Client_Headless.sqf", "Waiting for the Headless Client stabilization before sending the register request"] call CTI_CO_FNC_Log };

//--- Wait for the headless client to "stabilize" itself
while {isNull player} do {
	sleep 5;
	if (CTI_Log_Level >= CTI_Log_Information) then { ["INFORMATION", "FILE: Client\Init\Init_Client_Headless.sqf", format["Waiting for Headless Client player object to be non-null: %1", player]] call CTI_CO_FNC_Log };
};

//--- Register the HC as active and valid on the server
if (CTI_Log_Level >= CTI_Log_Information) then { ["INFORMATION", "FILE: Client\Init\Init_Client_Headless.sqf", "Attempting to register this Headless Client on the server..."] call CTI_CO_FNC_Log };
["SERVER", "Request_HCRegister", player] call CTI_CO_FNC_NetSend;

//--- Exclusive HC PVF
with missionNamespace do {
	//--- Triggers upon the server HC Registration
	CTI_PVF_Client_OnRegisterAnswer = {
		if (_this) then {
			if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FUNCTION: CTI_PVF_Client_OnRegisterAnswer", "The Headless Client has been registered"] call CTI_CO_FNC_Log};
		} else {
			if (CTI_Log_Level >= CTI_Log_Error) then {["ERROR", "FUNCTION: CTI_PVF_Client_OnRegisterAnswer", "The Headless Client could not be registered"] call CTI_CO_FNC_Log};
		};
	};
	
	//--- Triggers upon a town activation
	CTI_PVF_Client_OnTownDelegationReceived = {
		private ["_groups", "_positions", "_side", "_teams", "_town", "_town_vehicles"];
		
		_town = _this select 0;
		_side = _this select 1;
		_teams = _this select 2;
		_groups = _this select 3;
		_positions = _this select 4;
		
		if (CTI_Log_Level >= CTI_Log_Information) then {
			["INFORMATION", "FUNCTION: CTI_PVF_Client_OnTownDelegationReceived", format["A Delegation request was received from the server for [%1] teams in town [%2] on [%3]", count _teams, _town getVariable "cti_town_name", _side]] call CTI_CO_FNC_Log;
		};
		
		//--- Create the town units
		_town_vehicles = [_town, _side, _teams, _groups, _positions] call CTI_CO_FNC_CreateTownUnits;
		
		//--- If at least one vehicle is created, we need to let the server know about it
		if (count _town_vehicles > 0) then {
			["SERVER", "Request_TownAddVehicles", [_town, _side, _town_vehicles]] call CTI_CO_FNC_NetSend;
		};
	};
	
	//--- Triggers upon a town deactivation (Note: Multiple HC will receive the same values, locality reduces the scope)
	CTI_PVF_Client_OnTownCleanup = {
		private ["_groups", "_vehicles"];
		
		_groups = _this select 0;
		_vehicles = _this select 1;
		
		//--- Perform a local units/groups cleanup first
		{
			if !(isNil '_x') then {
				if !(isNull _x) then {
					if (local _x) then {
						{deleteVehicle _x} forEach units _x;
						deleteGroup _x;
					};
				};
			};
		} forEach _groups;
		
		//--- Perform a local vehicle cleanup next
		{
			if (alive _x && local _x) then {
				if (!isPlayer _x) then {deleteVehicle _x};
			};
		} forEach _vehicles;
	};
};
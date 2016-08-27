//--- Initial View Distance and Object View Distance for both clients and server
setViewDistance 1000;
setObjectViewDistance 1000;

//--- Early definition, will be override later on in the init files.
CTI_P_SideJoined = civilian;

// CTI_DEBUG = true;
CTI_DEBUG = false;

//--- Log levels
CTI_Log_Debug = 3;
CTI_Log_Information = 2;
CTI_Log_Warning = 1;
CTI_Log_Error = 0;

//--- Log level to use
CTI_Log_Level = CTI_Log_Debug;

//--- We define the log function early so that we may use it
CTI_CO_FNC_Log = compile preprocessFileLineNumbers "Common\Functions\Common_Log.sqf";

//--- Global gameplay variables
CTI_GameOver = false;

//--- Determine which machine is running this init script
CTI_IsHostedServer = if (isServer && !isDedicated) then {true} else {false};
CTI_IsServer = if (isDedicated || CTI_IsHostedServer) then {true} else {false};
CTI_IsClient = if (CTI_IsHostedServer || !isDedicated) then {true} else {false};
CTI_IsHeadless = if !(hasInterface || isDedicated) then {true} else {false};

//--- Create a resistance center
createCenter resistance;
resistance setFriend [west, 0];
resistance setFriend [east, 0];

if (CTI_Log_Level >= CTI_Log_Information) then { //--- Information
	["INFORMATION", "FILE: init.sqf", format["Environment is Multiplayer? [%1]", isMultiplayer]] call CTI_CO_FNC_Log;
	["INFORMATION", "FILE: init.sqf", format["Current Actor is: Hosted Server [%1]? Dedicated [%2]? Client [%3]? Headless [%4]?", CTI_IsHostedServer, isDedicated, CTI_IsClient, CTI_IsHeadless]] call CTI_CO_FNC_Log
};

//--- Hide first to prevent spoils
if (CTI_IsClient && isMultiplayer) then {
	0 spawn {
		waitUntil {!(isNull player)};
		12452 cutText ["Receiving mission intel...", "BLACK FADED", 50000];
	};
};

//--- In MP, we get the parameters.
if (isMultiplayer) then {call Compile preprocessFileLineNumbers "Common\Init\Init_Parameters.sqf"};

//--- Server JIP/DC Handler
if (isMultiplayer && CTI_IsServer) then {
	CTI_SE_FNC_OnPlayerConnected = compileFinal preprocessFileLineNumbers "Server\Functions\Server_OnPlayerConnected.sqf";
	CTI_SE_FNC_OnPlayerDisconnected = compileFinal preprocessFileLineNumbers "Server\Functions\Server_OnPlayerDisconnected.sqf";

	// onPlayerConnected {[_uid, _name, _id] spawn CTI_SE_FNC_OnPlayerConnected};
	// onPlayerDisconnected {[_uid, _name, _id] call CTI_SE_FNC_OnPlayerDisconnected};
	addMissionEventHandler ["HandleDisconnect",{_this spawn CTI_SE_FNC_OnPlayerDisconnected}];
	["CTI_Join", "onPlayerConnected", {[_uid, _name, _id] spawn CTI_SE_FNC_OnPlayerConnected}] call BIS_fnc_addStackedEventHandler;
};

//--- JIP Part is over
CTI_Init_JIP = true;

if (CTI_Log_Level >= CTI_Log_Information) then { ["INFORMATION", "FILE: init.sqf", "Running common initialization"] call CTI_CO_FNC_Log };

//--- Common Part execution
call compile preprocessFileLineNumbers "Common\Init\Init_CommonConstants.sqf";
call compile preprocessFileLineNumbers "Common\Init\Init_Common.sqf";

//--- Towns init
execVM "Common\Init\Init_Locations.sqf";
if ((missionNamespace getVariable "CTI_TOWNS_TERRITORIAL") > 0) then {
	call compile preprocessFileLineNumbers "Common\Init\Init_LocationsTerritorial.sqf";
};

//--- Common Part is over
CTI_Init_Common = true;

//--- Server execution
if (CTI_IsServer) then {
	if (CTI_Log_Level >= CTI_Log_Information) then { ["INFORMATION", "FILE: init.sqf", "Running server initialization"] call CTI_CO_FNC_Log	};
	execVM "Server\Init\Init_Server.sqf";
};

//--- Pure client execution
if (CTI_IsClient && !CTI_IsHeadless) then {
	if (CTI_Log_Level >= CTI_Log_Information) then { ["INFORMATION", "FILE: init.sqf", "Running client initialization"] call CTI_CO_FNC_Log	};

	waitUntil {!(isNull player)};

	execVM "Client\Init\Init_Client.sqf";
};

//--- Headless client execution
if (CTI_IsHeadless) then {
	if (CTI_Log_Level >= CTI_Log_Information) then { ["INFORMATION", "FILE: init.sqf", "Running headless client initialization"] call CTI_CO_FNC_Log };

	execVM "Client\Init\Init_Client_Headless.sqf";
};

//--- Set the group ID
execVM "Common\Init\Init_GroupsID.sqf";

//---Igiload script
_igiload = execVM "Client\Functions\Externals\IgiLoad\IgiLoadInit.sqf";

//--Drag and drop
attached = false;
0 = execVM "Client\Functions\Externals\BDD\Greifer.sqf";

//--Advanced Towing
execVM "Client\Functions\Externals\AdvancedTowing\fn_advancedTowingInit.sqf";

//--Advanced Sling Loading
execVM "Client\Functions\Externals\AdvancedSlingLoad\fn_advancedSlingLoadingInit.sqf";

//--Advanced Rapel
execVM "Client\Functions\Externals\AdvancedRappel\fn_advancedRappellingInit.sqf";

//--Advanced Urban Rapel
execVM "Client\Functions\Externals\AdvancedUrbanRapel\functions\fn_advancedUrbanRappellingInit.sqf";

//cmEARPLUGS
call compile preProcessFileLineNumbers "Client\Functions\Externals\cmEarplugs\config.sqf";

//Vehicle HUD
0 execVM	 "Client\Functions\Externals\Veh_Hud\HUD_init.sqf";

//-- Explosives on Vehicles Script
waitUntil {time > 0};
execVM "Client\Functions\Externals\Attach_Charge\Action_Attach_charge.sqf";
waitUntil {!isNil "EtVInitialized"};

//-- disable ambient life
waitUntil {time > 0};
enableEnvironment false;

//--- No more weapon sway
if (local player) then {
	_swayamount = CTI_WEAPON_SWAY / 100;
	player setCustomAimCoef _swayamount;
	player addMPEventhandler ["MPRespawn", {player setCustomAimCoef _swayamount;}];
};

//Briefing Entries
0 execVM "Briefing.sqf";

///Snow and Sand Weather
if (CTI_WEATHER_SNOW > 0) then { 		
    MKY_arSnowEFX = [];
	// snow - [[fog data],int Overcast,ppEfx,allow rain, vary fog, use audio]
	if (CTI_WEATHER_SNOW == 1) then { 
		MKY_arSnowEFX = [[0.23,0.021,100],1,true,false,true,true];
	};
	if (CTI_WEATHER_SNOW == 2) then { 
		MKY_arSnowEFX = [[0.23,0.021,100],1,true,false,true,true];
	};
	if (CTI_WEATHER_SNOW == 3) then { 
		MKY_arSnowEFX = [[0.23,0.021,100],1,true,false,true,true];
	};
	if (CTI_WEATHER_SNOW == 4) then { 
		MKY_arSnowEFX = [[0.23,0.021,100],1,true,false,true,true];
	};
	
	// suggested to disable environment so butterflies and snakes aren't seen during snow lol
	[] spawn {enableEnvironment false;};
	// handle JIP with this
	if (!isServer && isNull player) then {
		waitUntil {sleep 1;!(isNull player)};
		JIP_varSnowData = [player];
		publicVariableServer "JIP_varSnowData";
	};
	// wait for snow data to exist before starting snow
	if (hasInterface) then {
		0 = [] spawn {
			// wait for variable to exist
			waitUntil {sleep 5;!(isNil "varEnableSnow")};
			0 = MKY_arSnowEFX execVM "Client\Functions\Externals\MKY_Snow_Client.sqf";
		};
	};
	// when the rest of mission is ready, start the snow server script
	if (isServer) then {
		nul = [] execVM "Server\Functions\Externals\MKY_Snow_Server.sqf";
	};
};
if (CTI_WEATHER_SAND > 0) then { 
	MKY_arSandEFX = [];				
	//sand - [fog,overcast,use ppEfx,allow rain,force wind,vary fog,use wind audio,EFX strength]
	if (CTI_WEATHER_SAND == 1) then { 
		MKY_arSandEFX = [[0.23,0.021,100],"",true,false,true,true,true,1];
	};
	if (CTI_WEATHER_SAND == 2) then { 
		MKY_arSandEFX = [[0.23,0.021,100],"",true,false,true,true,true,2];
	};
	if (CTI_WEATHER_SAND == 3) then { 
		MKY_arSandEFX = [[0.23,0.021,100],"",true,false,true,true,true,3];
	};
	if (CTI_WEATHER_SAND == 4) then { 
		MKY_arSandEFX = [[0.23,0.021,100],"",true,false,true,true,true,3];
	};
	
	// suggested to disable environment so butterflies and snakes aren't seen during snow lol
	[] spawn {enableEnvironment false;};
	// handle JIP with this
	if (!isServer && isNull player) then {
		waitUntil {sleep 1;!(isNull player)};
		JIP_varSandData = [player];
		publicVariableServer "JIP_varSandData";
	};
	// wait for snow data to exist before starting snow
	if (hasInterface) then {
		0 = [] spawn {
			// wait for variable to exist
			waitUntil {sleep 5;!(isNil "varEnableSand")};
			0 = MKY_arSandEFX execVM "Client\Functions\Externals\MKY_Sand_Client.sqf";
		};
	};
	// when the rest of mission is ready, start the snow server script
	if (isServer) then {
		nul = [] execVM "Server\Functions\Externals\MKY_Sand_Server.sqf";
	};
};

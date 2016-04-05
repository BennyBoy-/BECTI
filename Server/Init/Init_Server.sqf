//todo: Kerberos Tracker -> perma track main infos with clients UID (teamkills, kills, hq killed (ff/no ff)).

//--- Create a resistance center
createCenter resistance;
resistance setFriend [west, 0];
resistance setFriend [east, 0];

CTI_SE_FNC_AddScore = compileFinal preprocessFileLineNumbers "Server\Functions\Server_AddScore.sqf";
CTI_SE_FNC_AI_PurchaseSquad = compileFinal preprocessFileLineNumbers "Server\Functions\Server_AI_PurchaseSquad.sqf";
CTI_SE_FNC_AttemptDelegation = compileFinal preprocessFileLineNumbers "Server\Functions\Server_AttemptDelegation.sqf";
CTI_SE_FNC_BuildStructure = compileFinal preprocessFileLineNumbers "Server\Functions\Server_BuildStructure.sqf";
CTI_SE_FNC_BuildDefense = compileFinal preprocessFileLineNumbers "Server\Functions\Server_BuildDefense.sqf";
CTI_SE_FNC_CreateWorker = compileFinal preprocessFileLineNumbers "Server\Functions\Server_CreateWorker.sqf";
CTI_SE_FNC_HandleAIPurchase = compileFinal preprocessFileLineNumbers "Server\Functions\Server_HandleAIPurchase.sqf";
CTI_SE_FNC_HandleEmptyVehicle = compileFinal preprocessFileLineNumbers "Server\Functions\Server_HandleEmptyVehicle.sqf";
CTI_SE_FNC_HandleStaticDefenses = compileFinal preprocessFileLineNumbers "Server\Functions\Server_HandleStaticDefenses.sqf";
CTI_SE_FNC_HandleStructureConstruction = compileFinal preprocessFileLineNumbers "Server\Functions\Server_HandleStructureConstruction.sqf";
CTI_SE_FNC_InitializeGroup = compileFinal preprocessFileLineNumbers "Server\Functions\Server_InitializeGroup.sqf";
CTI_SE_FNC_InitializeStructure = compileFinal preprocessFileLineNumbers "Server\Functions\Server_InitializeStructure.sqf";
CTI_SE_FNC_NoobLogger = compileFinal preprocessFileLineNumbers "Server\Functions\Server_NoobLogger.sqf";
CTI_SE_FNC_NoobLoggerEnd = compileFinal preprocessFileLineNumbers "Server\Functions\Server_NoobLoggerEnd.sqf";
CTI_SE_FNC_ObservateEnvironment = compileFinal preprocessFileLineNumbers "Server\Functions\Server_ObservateEnvironment.sqf";
CTI_SE_FNC_OnBuildingDestroyed = compileFinal preprocessFileLineNumbers "Server\Functions\Server_OnBuildingDestroyed.sqf";
CTI_SE_FNC_OnBuildingHandleDamage = compileFinal preprocessFileLineNumbers "Server\Functions\Server_OnBuildingHandleDamage.sqf";
CTI_SE_FNC_OnBuildingHandleVirtualDamage = compileFinal preprocessFileLineNumbers "Server\Functions\Server_OnBuildingHandleVirtualDamage.sqf";
CTI_SE_FNC_OnBuildingHit = compileFinal preprocessFileLineNumbers "Server\Functions\Server_OnBuildingHit.sqf";
CTI_SE_FNC_OnClientPurchase = compileFinal preprocessFileLineNumbers "Server\Functions\Server_OnClientPurchase.sqf";
CTI_SE_FNC_OnClientPurchaseCancelled = compileFinal preprocessFileLineNumbers "Server\Functions\Server_OnClientPurchaseCancelled.sqf";
CTI_SE_FNC_OnClientPurchaseComplete = compileFinal preprocessFileLineNumbers "Server\Functions\Server_OnClientPurchaseComplete.sqf";
CTI_SE_FNC_OnDefenseDestroyed = compileFinal preprocessFileLineNumbers "Server\Functions\Server_OnDefenseDestroyed.sqf";
CTI_SE_FNC_OnHQDestroyed = compileFinal preprocessFileLineNumbers "Server\Functions\Server_OnHQDestroyed.sqf";
CTI_SE_FNC_OnTownCaptured = compileFinal preprocessFileLineNumbers "Server\Functions\Server_OnTownCaptured.sqf";
CTI_SE_FNC_RepairHQ = compileFinal preprocessFileLineNumbers "Server\Functions\Server_RepairHQ.sqf";
CTI_SE_FNC_SpawnTownOccupation = compileFinal preprocessFileLineNumbers "Server\Functions\Server_SpawnTownOccupation.sqf";
CTI_SE_FNC_SpawnTownResistance = compileFinal preprocessFileLineNumbers "Server\Functions\Server_SpawnTownResistance.sqf";
CTI_SE_FNC_StartFactoryQueue = compileFinal preprocessFileLineNumbers "Server\Functions\Server_StartFactoryQueue.sqf";
CTI_SE_FNC_StartUpgrade = compileFinal preprocessFileLineNumbers "Server\Functions\Server_StartUpgrade.sqf";
CTI_SE_FNC_TrashObject = compileFinal preprocessFileLineNumbers "Server\Functions\Server_TrashObject.sqf";

funcCalcAlignPosDir = compileFinal preprocessFileLineNumbers "Server\Functions\Externals\fCalcAlignPosDir.sqf";
funcVectorAdd = compileFinal preprocessFileLineNumbers "Server\Functions\Externals\fVectorAdd.sqf";
funcVectorCross = compileFinal preprocessFileLineNumbers "Server\Functions\Externals\fVectorCross.sqf";
funcVectorDot = compileFinal preprocessFileLineNumbers "Server\Functions\Externals\fVectorDot.sqf";
funcVectorScale = compileFinal preprocessFileLineNumbers "Server\Functions\Externals\fVectorScale.sqf";
funcVectorSub = compileFinal preprocessFileLineNumbers "Server\Functions\Externals\fVectorSub.sqf";

call compile preprocessFileLineNumbers "Server\Init\Init_PublicVariables.sqf";
call compile preprocessFileLineNumbers "Server\Functions\FSM\Functions_FSM_RepairTruck.sqf";
call compile preprocessFileLineNumbers "Server\Functions\FSM\Functions_FSM_UpdateAI.sqf";
call compile preprocessFileLineNumbers "Server\Functions\FSM\Functions_FSM_UpdateCommander.sqf";

execVM "Server\Init\Init_Prison.sqf";

//--- Get the starting locations.
_startup_locations = [];
for '_i' from 0 to 30 do {
	_location = getMarkerPos format ["cti-spawn%1", _i];
	if (_location select 0 == 0 && _location select 1 == 0) exitWith {};
	[_startup_locations, _location] call CTI_CO_FNC_ArrayPush;
};

//--- Place both sides.
_range = missionNamespace getVariable "CTI_BASE_STARTUP_PLACEMENT";

_westLocation = getMarkerPos "cti-spawn0";
_eastLocation = getMarkerPos "cti-spawn0";

_attempts = 0;
_total = count _startup_locations;
while {_eastLocation distance _westLocation < _range && _attempts <= 500} do {
	_eastLocation = _startup_locations select floor(random _total);
	_westLocation = _startup_locations select floor(random _total);
	_attempts = _attempts + 1;
};

if (_attempts >= 500) then {
	_westLocation = getMarkerPos "cti-spawn0";//N
	_eastLocation = getMarkerPos "cti-spawn1";//S
};

{
	_side = _x select 0;
	_logic = _x select 1;
	_startPos = _x select 2;
	_sideID = _side call CTI_CO_FNC_GetSideID;
	
	_hq = [missionNamespace getVariable Format["CTI_%1_HQ", _side], _startPos, 0, _side, true, false] call CTI_CO_FNC_CreateVehicle;
	_hq setVariable ["cti_gc_noremove", true]; //--- HQ wreck cannot be removed nor salvaged
	_hq setVariable ["cti_ai_prohib", true]; //--- HQ may not be used by AI as a commandable vehicle
	_hq addEventHandler ["killed", format["[_this select 0, _this select 1, %1] spawn CTI_SE_FNC_OnHQDestroyed", _sideID]];
	if (CTI_BASE_NOOBPROTECTION == 1) then {
		_hq addEventHandler ["handleDamage", format["[_this select 2, _this select 3, %1] call CTI_CO_FNC_OnHQHandleDamage", _sideID]]; //--- You want that on public
	};
	
	//--- Generic per-logic variables
	_logic setVariable ["cti_hq", _hq, true];
	_logic setVariable ["cti_structures_wip", []];
	_logic setVariable ["cti_structures", [], true];
	_logic setVariable ["cti_structures_areas", [], true];
	_logic setVariable ["cti_structures_lasthit", -600];
	_logic setVariable ["cti_workers", [], true];
	_logic setVariable ["cti_commander", grpNull, true];
	_logic setVariable ["cti_commander_funds", missionNamespace getVariable format ["CTI_ECONOMY_STARTUP_FUNDS_%1_COMMANDER", _side], true];
	_logic setVariable ["cti_pool_award", missionNamespace getVariable format ["CTI_ECONOMY_POOL_AWARD_PERCENTAGE_%1", _side], true];
	_logic setVariable ["cti_pool_resources", missionNamespace getVariable format ["CTI_ECONOMY_POOL_RESOURCES_PERCENTAGE_%1", _side], true];
	_logic setVariable ["cti_salvagers", [], true];
	_logic setVariable ["cti_spotted_units", []];
	_logic setVariable ["cti_spotted_structures", []];
	
	_upgrades = [];
	for '_i' from 1 to count(missionNamespace getVariable format["CTI_%1_UPGRADES_LEVELS", _side]) do { [_upgrades, 0] call CTI_CO_FNC_ArrayPush };
	// for '_i' from 1 to count(missionNamespace getVariable format["CTI_%1_UPGRADES_LEVELS", _side]) do { [_upgrades, 1] Call CTI_CO_FNC_ArrayPush };
	_logic setVariable ["cti_upgrades", _upgrades, true];
	_logic setVariable ["cti_upgrade", -1, true];
	
	//--- Create the defensive teams if needed
	if (CTI_BASE_DEFENSES_AUTO_LIMIT > 0) then {
		_defense_team = createGroup _side;
		_defense_team setGroupID ["Defense Team"];
		_logic setVariable ["cti_defensive_team", _defense_team];
	};
	
	//--- Add FOB if needed
	if (CTI_BASE_FOB_MAX > 0) then {_logic setVariable ["cti_fobs", [], true]};
	
	//--- Startup vehicles
	{
		_model = _x select 0;
		_equipment = _x select 1;
		
		_vehicle = [_model, _startPos, 0, _side, false, true, true] call CTI_CO_FNC_CreateVehicle;
		[_vehicle, getPos _hq, 45, 60, true, false, true] call CTI_CO_FNC_PlaceNear;
		[_vehicle] spawn CTI_SE_FNC_HandleEmptyVehicle;
		if (count _equipment > 0) then {[_vehicle, _equipment] call CTI_CO_FNC_EquipVehicleCargoSpace};
	} forEach (missionNamespace getVariable format["CTI_%1_Vehicles_Startup", _side]);
	
	//--- Handle the Team
	_teams = [];
	{
		if !(isNil '_x') then {
			if (_x isKindOf "Man") then {
				_group = group _x;
				[_teams, _group] call CTI_CO_FNC_ArrayPush;
				[_group, _side] call CTI_SE_FNC_InitializeGroup;
				
				[leader _group, missionNamespace getVariable format ["CTI_AI_%1_DEFAULT_GEAR", _side]] call CTI_CO_FNC_EquipUnit;
				
				if !(isPlayer leader _group) then {
					if (missionNamespace getVariable "CTI_AI_TEAMS_ENABLED" == 1) then { //--- Wait for the player to be "ready"
						(leader _group) setPos ([_startPos, 8, 30] call CTI_CO_FNC_GetRandomPosition);
						leader _group addEventHandler ["killed", format["[_this select 0, _this select 1, %1] spawn CTI_CO_FNC_OnUnitKilled", _sideID]]; //--- Called on destruction
						if ((missionNamespace getVariable "CTI_UNITS_FATIGUE") == 0) then {leader _group enableFatigue false}; //--- Disable the unit's fatigue
						
						[_group, _side, _logic] spawn {
							_group = _this select 0;
							_side = _this select 1;
							_logic = _this select 2;
							
							if (isMultiplayer) then { sleep 20 };
							
							if (typeOf (leader _group) != (missionNamespace getVariable format["CTI_%1_Commander", _side])) then { //--- An AI Team
								sleep (random 5); //--- Differ each threads.
								if (isNil {_group getVariable "cti_aifsm_handled"}) then {
									[_group, _side] execFSM "Server\FSM\update_ai.fsm";
								};
							} else { //--- The Commander
								if (isNull (_logic getVariable "cti_commander")) then { _logic setVariable ["cti_commander", _group, true] };
							};
						};
					};
				};
			};
		};
	} forEach (synchronizedObjects _logic);
	
	_logic setVariable ["cti_teams", _teams, true];
	
	//--- Handle the Commander
	if (missionNamespace getVariable "CTI_AI_TEAMS_ENABLED" == 1) then {
		[_side, _logic] spawn {
			_side = _this select 0;
			_logic = _this select 1;
			
			sleep 2;
			if (isMultiplayer) then { sleep 25 };
			
			if !(isNull (_logic getVariable "cti_commander")) then {
				if !(isPlayer leader (_logic getVariable "cti_commander")) then { 
					_logic setVariable ["cti_ai_commander", true];
					(_side) execFSM "Server\FSM\update_commander.fsm";
				};
			};
		};
	};
} forEach [[west, CTI_WEST, _westLocation], [east, CTI_EAST, _eastLocation]];

//--- Towns init thread
0 spawn {
	waitUntil {!isNil 'CTI_InitTowns'};
	
	execFSM "Server\FSM\update_garbage_collector.fsm";
	execFSM "Server\FSM\update_resources.fsm";
	execFSM "Server\FSM\update_victory.fsm";
};

if (CTI_WEATHER_FAST > 0) then { execFSM "Server\FSM\weather_fast.fsm" };

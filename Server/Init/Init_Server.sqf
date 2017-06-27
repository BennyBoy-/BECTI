//todo: Kerberos Tracker -> perma track main infos with clients UID (teamkills, kills, hq killed (ff/no ff)).

CTI_SE_FNC_AddScore = compileFinal preprocessFileLineNumbers "Server\Functions\Server_AddScore.sqf";
CTI_SE_FNC_AI_PurchaseSquad = compileFinal preprocessFileLineNumbers "Server\Functions\Server_AI_PurchaseSquad.sqf";
CTI_SE_FNC_AttemptDefenseDelegation = compileFinal preprocessFileLineNumbers "Server\Functions\Server_AttemptDefenseDelegation.sqf";
CTI_SE_FNC_AttemptTownDelegation = compileFinal preprocessFileLineNumbers "Server\Functions\Server_AttemptTownDelegation.sqf";
CTI_SE_FNC_AttemptTownDefenseDelegation = compileFinal preprocessFileLineNumbers "Server\Functions\Server_AttemptTownDefenseDelegation.sqf";
CTI_SE_FNC_BuildStructure = compileFinal preprocessFileLineNumbers "Server\Functions\Server_BuildStructure.sqf";
CTI_SE_FNC_BuildDefense = compileFinal preprocessFileLineNumbers "Server\Functions\Server_BuildDefense.sqf";
CTI_SE_FNC_CanCaptureTerritorialTown = compileFinal preprocessFileLineNumbers "Server\Functions\Server_CanCaptureTerritorialTown.sqf";
CTI_SE_FNC_CreateTownDefenses = compileFinal preprocessFileLineNumbers "Server\Functions\Server_CreateTownDefenses.sqf";
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
CTI_SE_FNC_OnCampCaptured = compileFinal preprocessFileLineNumbers "Server\Functions\Server_OnCampCaptured.sqf";
CTI_SE_FNC_OnClientPurchase = compileFinal preprocessFileLineNumbers "Server\Functions\Server_OnClientPurchase.sqf";
CTI_SE_FNC_OnClientPurchaseCancelled = compileFinal preprocessFileLineNumbers "Server\Functions\Server_OnClientPurchaseCancelled.sqf";
CTI_SE_FNC_OnClientPurchaseComplete = compileFinal preprocessFileLineNumbers "Server\Functions\Server_OnClientPurchaseComplete.sqf";
CTI_SE_FNC_OnDefenseDestroyed = compileFinal preprocessFileLineNumbers "Server\Functions\Server_OnDefenseDestroyed.sqf";
CTI_SE_FNC_OnHQDestroyed = compileFinal preprocessFileLineNumbers "Server\Functions\Server_OnHQDestroyed.sqf";
CTI_SE_FNC_OnTownActivation = compileFinal preprocessFileLineNumbers "Server\Functions\Server_OnTownActivation.sqf";
CTI_SE_FNC_OnTownCaptured = compileFinal preprocessFileLineNumbers "Server\Functions\Server_OnTownCaptured.sqf";
CTI_SE_FNC_OnTownDeactivation = compileFinal preprocessFileLineNumbers "Server\Functions\Server_OnTownDeactivation.sqf";
CTI_SE_FNC_RepairHQ = compileFinal preprocessFileLineNumbers "Server\Functions\Server_RepairHQ.sqf";
CTI_SE_FNC_SpawnTownOccupation = compileFinal preprocessFileLineNumbers "Server\Functions\Server_SpawnTownOccupation.sqf";
CTI_SE_FNC_SpawnTownResistance = compileFinal preprocessFileLineNumbers "Server\Functions\Server_SpawnTownResistance.sqf";
CTI_SE_FNC_StartFactoryQueue = compileFinal preprocessFileLineNumbers "Server\Functions\Server_StartFactoryQueue.sqf";
CTI_SE_FNC_StartUpgrade = compileFinal preprocessFileLineNumbers "Server\Functions\Server_StartUpgrade.sqf";
CTI_SE_FNC_ToggleHQ = compileFinal preprocessFileLineNumbers "Server\Functions\Server_ToggleHQ.sqf";
CTI_SE_FNC_TrashObject = compileFinal preprocessFileLineNumbers "Server\Functions\Server_TrashObject.sqf";
CTI_SE_FNC_UpdateBaseAreas = compileFinal preprocessFileLineNumbers "Server\Functions\Server_UpdateBaseAreas.sqf";
CTI_SE_FNC_VoteForCommander = compileFinal preprocessFileLineNumbers "Server\Functions\Server_VoteForCommander.sqf";
CTI_SE_FNC_Weather_Hook= compileFinal preprocessFileLineNumbers "Server\Functions\Server_Weather_Hook.sqf";

funcCalcAlignPosDir = compileFinal preprocessFileLineNumbers "Server\Functions\Externals\fCalcAlignPosDir.sqf";
funcVectorAdd = compileFinal preprocessFileLineNumbers "Server\Functions\Externals\fVectorAdd.sqf";
funcVectorCross = compileFinal preprocessFileLineNumbers "Server\Functions\Externals\fVectorCross.sqf";
funcVectorDot = compileFinal preprocessFileLineNumbers "Server\Functions\Externals\fVectorDot.sqf";
funcVectorScale = compileFinal preprocessFileLineNumbers "Server\Functions\Externals\fVectorScale.sqf";
funcVectorSub = compileFinal preprocessFileLineNumbers "Server\Functions\Externals\fVectorSub.sqf";

//--- Load Naval Town Structures
call compile preprocessFileLineNumbers "Server\Init\initTownStructures.sqf";

call compile preprocessFileLineNumbers "Server\Init\Init_PublicVariables.sqf";
call compile preprocessFileLineNumbers "Server\Functions\FSM\Functions_FSM_RepairTruck.sqf";
call compile preprocessFileLineNumbers "Server\Functions\FSM\Functions_FSM_UpdateAI.sqf";
call compile preprocessFileLineNumbers "Server\Functions\FSM\Functions_FSM_UpdateCommander.sqf";

execVM "Server\Init\Init_Prison.sqf";

//--- Get the starting locations.
_startup_locations = [];
for '_i' from 0 to 30 do {
	_location = getMarkerPos format ["cti-spawn%1", _i];
	if (_location select 0 isEqualTo 0 && _location select 1 isEqualTo 0) exitWith {};
	_startup_locations pushBack _location;
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
	
	_position = [_startPos, 1, 35, 5, "vehicles", ["Man","Car","Motorcycle","Tank","Ship","Air","StaticWeapon"], 5] call CTI_CO_FNC_GetSafePosition;
	
	_hq = [missionNamespace getVariable Format["CTI_%1_HQ", _side], _position, 0, _side, true, false] call CTI_CO_FNC_CreateVehicle;
	_hq setVariable ["cti_gc_noremove", true]; //--- HQ wreck cannot be removed nor salvaged
	_hq setVariable ["cti_ai_prohib", true]; //--- HQ may not be used by AI as a commandable vehicle
	_hq addEventHandler ["killed", format["[_this select 0, _this select 1, %1] spawn CTI_SE_FNC_OnHQDestroyed", _sideID]];
	if (CTI_BASE_NOOBPROTECTION isEqualTo 1) then {
		_hq addEventHandler ["handleDamage", format["[_this select 2, _this select 3, %1] call CTI_CO_FNC_OnHQHandleDamage", _sideID]]; //--- You want that on public
	};
	
	//--- Generic per-logic variables
	_logic setVariable ["cti_hq", _hq, true];
	_logic setVariable ["cti_hq_deployed", false, true];
	_logic setVariable ["cti_structures_wip", []];
	_logic setVariable ["cti_structures", [], true];
	_logic setVariable ["cti_structures_areas", [], true];
	_logic setVariable ["cti_structures_lasthit", -600];
	_logic setVariable ["cti_workers", [], true];
	_logic setVariable ["cti_commander_team", grpNull, true];
	_logic setVariable ["cti_ai_commander", false];
	_logic setVariable ["cti_commander_funds", missionNamespace getVariable format ["CTI_ECONOMY_STARTUP_FUNDS_%1_COMMANDER", _side], true];
	_logic setVariable ["cti_pool_award", missionNamespace getVariable format ["CTI_ECONOMY_POOL_AWARD_PERCENTAGE_%1", _side], true];
	_logic setVariable ["cti_pool_resources", missionNamespace getVariable format ["CTI_ECONOMY_POOL_RESOURCES_PERCENTAGE_%1", _side], true];
	_logic setVariable ["cti_salvagers", [], true];
	_logic setVariable ["cti_spotted_units", []];
	_logic setVariable ["cti_spotted_structures", []];
	_logic setVariable ["cti_supply", missionNamespace getVariable format ["CTI_ECONOMY_STARTUP_SUPPLY_%1", _side], true];
	
	_upgrades = [];
	for '_i' from 1 to count(missionNamespace getVariable format["CTI_%1_UPGRADES_LEVELS", _side]) do { _upgrades pushBack 0 };
	// for '_i' from 1 to count(missionNamespace getVariable format["CTI_%1_UPGRADES_LEVELS", _side]) do { _upgrades pushBack 1 };
	_logic setVariable ["cti_upgrades", _upgrades, true];
	_logic setVariable ["cti_upgrade", -1, true];
	
	//--- Create the defensive teams if needed
	if (CTI_BASE_DEFENSES_AUTO_MODE > 0) then {
		_defense_team = createGroup _side;
		_defense_team setGroupID ["Defense Team"];
		_defense_team setBehaviour "COMBAT";
		_defense_team setCombatMode "RED";
		_defense_team enableAttack true;
		_logic setVariable ["cti_defensive_team", _defense_team];
	};
	
	//--- Add FOB if needed
	if (CTI_BASE_FOB_MAX > 0) then {_logic setVariable ["cti_fobs", [], true]};
	
	//--- Startup vehicles
	{
		_model = _x select 0;
		_equipment = _x select 1;
		
		_position = [getPos _hq, 30, 60, 10, "vehicles", ["Man","Car","Motorcycle","Tank","Ship","Air","StaticWeapon"], 8] call CTI_CO_FNC_GetSafePosition;
		
		_vehicle = [_model, _position, [_hq, _position] call CTI_CO_FNC_GetDirTo, _side, false, true, true] call CTI_CO_FNC_CreateVehicle;
		[_vehicle] spawn CTI_SE_FNC_HandleEmptyVehicle;
		if (count _equipment > 0) then {[_vehicle, _equipment] call CTI_CO_FNC_EquipVehicleCargoSpace};
	} forEach (missionNamespace getVariable format["CTI_%1_Vehicles_Startup", _side]);
	
	//--- Handle the Team
	_teams = [];
	{
		if !(isNil '_x') then {
			if (_x isKindOf "Man") then {
				_group = group _x;
				_teams pushBack _group;
				[_group, _side] call CTI_SE_FNC_InitializeGroup;
				
				[leader _group, missionNamespace getVariable format ["CTI_AI_%1_DEFAULT_GEAR", _side]] call CTI_CO_FNC_EquipUnit;
				
				if !(isPlayer leader _group) then {
					if (missionNamespace getVariable "CTI_AI_TEAMS_ENABLED" > 0) then { //--- Wait for the player to be "ready"
						_position = [getPos _hq, 8, 30, 5, "infantry", ["Man","Car","Motorcycle","Tank","Ship","Air","StaticWeapon"], 5] call CTI_CO_FNC_GetSafePosition;
						(leader _group) setPos _position;
						leader _group addEventHandler ["killed", format["[_this select 0, _this select 1, %1] spawn CTI_CO_FNC_OnUnitKilled", _sideID]]; //--- Called on destruction
						if ((missionNamespace getVariable "CTI_UNITS_FATIGUE") isEqualTo 0) then {leader _group enableFatigue false}; //--- Disable the unit's fatigue
						
						[_group, _side, _logic] spawn {
							_group = _this select 0;
							_side = _this select 1;
							_logic = _this select 2;
							
							if (isMultiplayer) then { sleep 20 };
							
							sleep (random 5); //--- Differ each threads.
							if (isNil {_group getVariable "cti_aifsm_handled"}) then {
								[_group, _side] execFSM "Server\FSM\update_ai.fsm";
							};
						};
					} else { //--- Disable those AI
						(leader _group) enableSimulationGlobal false;
						(leader _group) hideObjectGlobal true;
						(leader _group) disableAI "FSM";
					};
				};
				
				//--- ZEUS Curator Editable
				if !(isNil "ADMIN_ZEUS") then {ADMIN_ZEUS addCuratorEditableObjects [[leader _group], true]};
			};
		};
	} forEach (synchronizedObjects _logic);
	
	_logic setVariable ["cti_teams", _teams, true];
} forEach [[west, CTI_WEST, _westLocation], [east, CTI_EAST, _eastLocation]];

//--- Towns init thread + Vote
0 spawn {
	waitUntil {!isNil 'CTI_InitTowns'};
	
	//--- Initialize the game FSM after that the towns are initialized
	execFSM "Server\FSM\update_ai_defensive.fsm";
	execFSM "Server\FSM\update_garbage_collector.fsm";
	execFSM "Server\FSM\update_resources.fsm";
	execFSM "Server\FSM\update_victory.fsm";
	
	waitUntil {time > 0};
	
	{_x Spawn CTI_SE_FNC_VoteForCommander} forEach CTI_PLAYABLE_SIDES;
};

if !(CTI_DEBUG) then {
	// Date init
	_it=0;
	_possible_it_off=[0,0,0,0,0,0,6,6,6,12,12,12,18];
	if ((missionNamespace getVariable "CTI_WEATHER_INITIAL") < 10) then {
		_it=(missionNamespace getVariable "CTI_WEATHER_INITIAL")*6;
	} else {
		_it= _possible_it_off select floor random (count _possible_it_off);
	};
	skipTime _it;

	// dynamic wheather
	0 spawn CTI_SE_FNC_Weather_Hook;
			
	// Fast time compression
	0 spawn {
		_day_ratio = 14/CTI_WEATHER_FAST;
		_night_ratio = 10/CTI_WEATHER_FAST_NIGHT;
		while {!CTI_Gameover} do {
			if (daytime > 5 && daytime <19 ) then {
				if (timeMultiplier != _day_ratio) then  {setTimeMultiplier _day_ratio ; };
			} else {
				if (timeMultiplier !=  _night_ratio) then {setTimeMultiplier _night_ratio ; };
			};
			sleep 120;
		};
	};
};

//--- The server is initialized, notify everyone
CTI_InitServer = true;
publicVariable "CTI_InitServer";
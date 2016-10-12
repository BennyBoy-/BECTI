//todo: Kerberos Tracker -> perma track main infos with clients UID (teamkills, kills, hq killed (ff/no ff)).

CTI_SE_FNC_AddScore = compileFinal preprocessFileLineNumbers "Server\Functions\Server_AddScore.sqf";
CTI_SE_FNC_AI_PurchaseSquad = compileFinal preprocessFileLineNumbers "Server\Functions\Server_AI_PurchaseSquad.sqf";
CTI_SE_FNC_AttemptDefenseDelegation = compileFinal preprocessFileLineNumbers "Server\Functions\Server_AttemptDefenseDelegation.sqf";
CTI_SE_FNC_AttemptTownDelegation = compileFinal preprocessFileLineNumbers "Server\Functions\Server_AttemptTownDelegation.sqf";
CTI_SE_FNC_BuildStructure = compileFinal preprocessFileLineNumbers "Server\Functions\Server_BuildStructure.sqf";
CTI_SE_FNC_BuildDefense = compileFinal preprocessFileLineNumbers "Server\Functions\Server_BuildDefense.sqf";
CTI_SE_FNC_CanCaptureTerritorialTown = compileFinal preprocessFileLineNumbers "Server\Functions\Server_CanCaptureTerritorialTown.sqf";
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
CTI_SE_FNC_OnTownCaptured = compileFinal preprocessFileLineNumbers "Server\Functions\Server_OnTownCaptured.sqf";
CTI_SE_FNC_RepairHQ = compileFinal preprocessFileLineNumbers "Server\Functions\Server_RepairHQ.sqf";
CTI_SE_FNC_SpawnTownOccupation = compileFinal preprocessFileLineNumbers "Server\Functions\Server_SpawnTownOccupation.sqf";
CTI_SE_FNC_SpawnTownResistance = compileFinal preprocessFileLineNumbers "Server\Functions\Server_SpawnTownResistance.sqf";
CTI_SE_FNC_StartFactoryQueue = compileFinal preprocessFileLineNumbers "Server\Functions\Server_StartFactoryQueue.sqf";
CTI_SE_FNC_StartUpgrade = compileFinal preprocessFileLineNumbers "Server\Functions\Server_StartUpgrade.sqf";
CTI_SE_FNC_ToggleHQ = compileFinal preprocessFileLineNumbers "Server\Functions\Server_ToggleHQ.sqf";
CTI_SE_FNC_TrashObject = compileFinal preprocessFileLineNumbers "Server\Functions\Server_TrashObject.sqf";
CTI_SE_FNC_UpdateBaseAreas = compileFinal preprocessFileLineNumbers "Server\Functions\Server_UpdateBaseAreas.sqf";
CTI_SE_FNC_VoteForCommander = compileFinal preprocessFileLineNumbers "Server\Functions\Server_VoteForCommander.sqf";

funcCalcAlignPosDir = compileFinal preprocessFileLineNumbers "Server\Functions\Externals\fCalcAlignPosDir.sqf";
funcVectorAdd = compileFinal preprocessFileLineNumbers "Server\Functions\Externals\fVectorAdd.sqf";
funcVectorCross = compileFinal preprocessFileLineNumbers "Server\Functions\Externals\fVectorCross.sqf";
funcVectorDot = compileFinal preprocessFileLineNumbers "Server\Functions\Externals\fVectorDot.sqf";
funcVectorScale = compileFinal preprocessFileLineNumbers "Server\Functions\Externals\fVectorScale.sqf";
funcVectorSub = compileFinal preprocessFileLineNumbers "Server\Functions\Externals\fVectorSub.sqf";

//--- Load Naval Town Structures
call compile preprocessFileLineNumbers "Server\Init\initMapStructures.sqf";
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
	if (_location select 0 == 0 && _location select 1 == 0) exitWith {};
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
	
	_hq = [missionNamespace getVariable Format["CTI_%1_HQ", _side], _startPos, 0, _side, true, false] call CTI_CO_FNC_CreateVehicle;
	_hq setVariable ["cti_gc_noremove", true]; //--- HQ wreck cannot be removed nor salvaged
	_hq setVariable ["cti_ai_prohib", true]; //--- HQ may not be used by AI as a commandable vehicle
	_hq addEventHandler ["killed", format["[_this select 0, _this select 1, %1] spawn CTI_SE_FNC_OnHQDestroyed", _sideID]];
	if (CTI_BASE_NOOBPROTECTION == 1) then {
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
	_logic setVariable ["cti_upgrade_lt", -1, true];
	
	//--- Create the defensive teams if needed
	if (CTI_BASE_DEFENSES_AUTO_LIMIT > 0) then {
		_defense_team = createGroup _side;
		_defense_team setGroupID ["Defense Team"];
		_defense_team setBehaviour "COMBAT";
		_defense_team setCombatMode "RED";
		_defense_team enableAttack true;
		_logic setVariable ["cti_defensive_team", _defense_team, true];
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
		if ((missionNamespace getVariable [format ["%1", _model],["","","","","","","",""]]) select 7 != "") then {[_vehicle, _side, ((missionNamespace getVariable [format ["%1", _model],["","","","","","","",""]]) select 7)] call CTI_CO_FNC_InitializeCustomVehicle;};
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
						(leader _group) setPos ([_startPos, 8, 30] call CTI_CO_FNC_GetRandomPosition);
						leader _group addEventHandler ["killed", format["[_this select 0, _this select 1, %1] spawn CTI_CO_FNC_OnUnitKilled", _sideID]]; //--- Called on destruction
						if ((missionNamespace getVariable "CTI_UNITS_FATIGUE") == 0) then {leader _group enableFatigue false}; //--- Disable the unit's fatigue
						
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
			};
		};
	} forEach (synchronizedObjects _logic);
	
	//--- Disable Thermals and Statics
	if ( (missionNamespace getVariable 'CTI_SM_NV_THER_VEH') > 0 || (missionNamespace getVariable 'CTI_ZOMBIE_MODE')==1 || (missionNamespace getVariable 'CTI_GUERILLA_MODE')==1) then {
		0 spawn {
			while {! CTi_GameOver} do {
				{
					if ((missionNamespace getVariable 'CTI_SM_NV_THER_VEH')== 1) then {_x disableNVGEquipment true;};
					if ((missionNamespace getVariable 'CTI_SM_NV_THER_VEH')== 2) then {_x disableTIEquipment true;};
					if ((missionNamespace getVariable 'CTI_SM_NV_THER_VEH')== 3 || (missionNamespace getVariable 'CTI_ZOMBIE_MODE')==1 || (missionNamespace getVariable 'CTI_GUERILLA_MODE')==1) then {_x disableTIEquipment true;_x disableNVGEquipment true;};
				}
				forEach vehicles;
				sleep 10;
			};
		};
	};
	_logic setVariable ["cti_teams", _teams, true];
} forEach [[west, CTI_WEST, _westLocation], [east, CTI_EAST, _eastLocation]];

//--- Towns init thread + Vote
0 spawn {
	waitUntil {!isNil 'CTI_InitTowns'};
	
	execFSM "Server\FSM\update_ai_defensive.fsm";
	execFSM "Server\FSM\update_garbage_collector.fsm";
	execFSM "Server\FSM\update_resources.fsm";
	execFSM "Server\FSM\update_victory.fsm";
	
	waitUntil {time > 0};
	
	{_x Spawn CTI_SE_FNC_VoteForCommander} forEach CTI_PLAYABLE_SIDES;
};

// Date init
if (CTI_ZOMBIE_MODE == 0) then {
	_it=0;
	_possible_it_off=[0,0,0,0,0,0,6,6,6,12,12,12,18];
	if ((missionNamespace getVariable "CTI_WEATHER_INITIAL") < 18) then {
		_it=(missionNamespace getVariable "CTI_WEATHER_INITIAL");
	} else {
		_it= _possible_it_off select floor random (count _possible_it_off);
	};
	//Default Time Starts at 0600am
	skipTime _it;
} else {
	// set time to dusk 6pm
	skipTime 12;
};

// dynamic weather
execVM "Server\Functions\Server_Weather_Hook.sqf";	

// Fast time compression
if (CTI_ZOMBIE_MODE == 0) then {
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

// Zeus admin for players
if !( isNil "ADMIN_ZEUS") then {
	0 spawn {
		while {!CTI_GameOver} do {
			ADMIN_ZEUS addCuratorEditableObjects [playableUnits+switchableUnits,true];
			sleep 5;
		};
	};
};


// Initialize control scripts for Pook SAM Site
// Must have exactly 1 instance per side, running on HC if possible
0 spawn {
	// Give HCs some init time
	sleep 30;
	
	_hcs = missionNamespace getVariable "CTI_HEADLESS_CLIENTS";
	
	// Run on server or HC
	if ( !isNil '_hcs' && {count _hcs > 0} ) then {
		_hc = (_hcs select 0) select 0;
		{
			FNC_HandleSAMSite = compileFinal preprocessFileLineNumbers "Server\Functions\Externals\HandleSAMSite.sqf";
			[east] spawn FNC_HandleSAMSite;
			[west] spawn FNC_HandleSAMSite;
		} remoteExec ["bis_fnc_call", _hc];
	} else {
		FNC_HandleSAMSite = compileFinal preprocessFileLineNumbers "Server\Functions\Externals\HandleSAMSite.sqf";
		[east] spawn FNC_HandleSAMSite;
		[west] spawn FNC_HandleSAMSite;
	};
};

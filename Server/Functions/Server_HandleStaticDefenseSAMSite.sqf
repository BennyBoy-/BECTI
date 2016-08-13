/*
  # HEADER #
	Script: 		Server\Functions\Server_HandleStaticDefenseSAMSite.sqf
	Alias:			CTI_SE_FNC_HandleStaticDefenseSAMSite
	Description:	Fire control of a base defense SAM site consisting of one(!) radar and one or more launchers. All targets within a configurable envelope will be engaged.
					The launchers are exclusively controlled by this script and will also not operate without the radar object.

  # PARAMETERS #
    0	[Object]: Radar vehicle
    1	[Side]: The side of that radar
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[VEHICLE, SIDE] spawn CTI_SE_FNC_HandleStaticDefenseSAMSite
*/

private ["_logFctn", "_radarVehicle","_radarVehiclePos","_maxLauncherDistance","_detectionMinAlt","_side","_DetectedPossibleTargets","_availableLaunchers","_DetectedAirVehicles","_LauncherTarget","_useLauncherIndx"];

_radarVehicle = _this select 0;
_side = _this select 1;
_radarVehiclePos = position _radarVehicle;


_logFctn = {
	_talker = leader _radarVehicle; 
	_t = _this select 0;
	[_talker,_t] remoteExec ["sideChat",-2];
};

// Configuration
_maxLauncherDistance = 400;
_detectionMinAlt = 50;


_useLauncherIndx = -1;
_radarVehicle setskill ["courage", 1];  // prevents drive-away
_radarVehicle setskill ["commanding",1]; // issues orders
_radarVehicle setskill ["spotDistance",1];
_radarVehicle setskill ["spotTime",1];
_radarVehicle setskill ["aimingAccuracy",1];
	
sleep 1;	//??

[format ["SAM Radar at grid %1 ready", mapGridPosition leader _radarVehicle]] call _logFctn;

while {alive _radarVehicle} do {

	// Gather manned launchers in range
	_availableLaunchers = [];
	{
		_g = gunner _x;
		if !(isNil "_g") then { _availableLaunchers pushBack _x};
	} forEach (_radarVehiclePos nearEntities [["pook_MIM104_PAC2Battery"], _maxLauncherDistance]);
	
	// Select all targets in range
	// TODO: nearestObjects only regards 2d distance
    _DetectedAirVehicles = _radarVehiclePos nearEntities [["Air"], 20000];
	
	// Filter for targets - hostile, above minAlt, alive
	_DetectedPossibleTargets = [];
	{	// TODO: better way to detect hostiles?
		if (((_side) getFriend (side _x)) < 0.6 && {(getPos _x select 2) > _detectionMinAlt} && {!terrainIntersect [getPosATL _radarVehicle, getPosATL _x]} && {alive _x}) then {
			_DetectedPossibleTargets pushback _x;
		};
	} forEach _DetectedAirVehicles;

	[format ["Radar Cycle - Launchers: %1, Targets: %2", count _availableLaunchers, count _DetectedPossibleTargets]] call _logFctn;
	
	{  // Select and shoot
	
		private ["_sh", "_useLauncher","_LauncherTarget","_targetSphere","_terrainCheck","_handle"];
		_LauncherTarget = _x;
		
		// Designate a single launcher in the site or abort cycle
		if ((count _availableLaunchers) == 0) exitWith{};
		_useLauncherIndx = (_useLauncherIndx + 1) % (count _availableLaunchers);
		_useLauncher = _availableLaunchers select _useLauncherIndx;

		[format ["Target selected: %1 (%2 m), Launcher %3", typeOf _LauncherTarget, _LauncherTarget distance _radarVehicle, _useLauncherIndx]] call _logFctn;
		
		// Radar target for radar warning
		_radarVehicle doTarget _LauncherTarget;
		
		// Aim and fire. This can take a few seconds and runs detached
		_sh = [_useLauncher,_LauncherTarget,_radarVehicle,_useLauncherIndx,_logFctn] spawn {
			private ["_useLauncher","_LauncherTarget","_radarVehicle","_useLauncherIndx","_logFctn"];
			_useLauncher = _this select 0;
			_LauncherTarget = _this select 1;
			_radarVehicle = _this select 2;
			_useLauncherIndx = _this select 3;
			_logFctn = _this select 4;
			
			_useLauncher doTarget _LauncherTarget;
			
			// Give SAM vehicle time to point at the target
			waitUntil {sleep 0.1; _useLauncher aimedAtTarget [_LauncherTarget] > 0};
			// Time for missile lock
			sleep 2;  

			// Only engage if LOS is clear
			_terrainIntersect = terrainIntersect [getPosATL _radarVehicle, getPosATL _LauncherTarget];
			if (_terrainIntersect) exitWith {[format ["Abort, terrain intersect!: " + str _terrainIntersect]] call _logFctn;};

			// TOOD: should be fixed in upcoming pook version (info as of 2016-08-12)
			// Attach "proximity target" for proximity fuse simulation
			// (Target deletes itself after SAM lifetime expires)
			//_targetSphere = "SAM_targetMIM" createVehicle [0,0,0];
			//_targetSphere attachTo [_LauncherTarget, [0,0,0]];

			[format ["Launcher %1 command fire", _useLauncherIndx]] call _logFctn;
			
			// Command fire
			_useLauncher fireAtTarget [_LauncherTarget,"pook_MIMPAC2"];
			
			// Prevent AI from shooting again on its own
			_SAMGunner = gunner _useLauncher;
			_SAMGunner disableAI "AUTOTARGET";
			_SAMGunner disableAI "TARGET";
			_SAMGunner setCombatMode "BLUE";
			
			// Reset orientation (esthetics)
			_SAMGunner doWatch objNull;
		};

	} forEach _DetectedPossibleTargets;

	sleep 10;
};

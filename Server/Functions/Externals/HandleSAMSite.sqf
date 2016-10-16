/*
  # HEADER #
	Description:	Fire control of base defense SAMs consisting of radars and launchers. All targets within a configurable envelope will be engaged.
					The radar and launchers are exclusively controlled by this script and will also not operate without the radar object.
					This script will automatically use all available launchers/radars.

  # PARAMETERS #
    0	[Side]: The active side
	
  # SYNTAX #
	[SIDE] spawn HandleSAMSite
*/

private ["_detectionMinAlt", "_engagementDistanceMax", "_radarNames", "_launcherNames", "_reloadTime", "_missileLockTime", "_targetEngagementInterval", "_logFctn", "_side", "_sideNum","_detectedPossibleTargets","_availableLaunchers","_availableRadars", "_detectedAirVehicles","_engageTargets", "_launcherTarget","_useLauncherIndx","_sh", "_useLauncher","_launcherTarget","_targetSphere"];

// --- Configuration ---
_detectionMinAlt = 100;
_radarNames = ["pook_SNR75_radar", "POOK_ANMPQ53_CDF"];	// east, west
_launcherNames = ["pook_SA20_static_INS", "pook_MIM104_PAC2Battery"];	// east, west
_reloadTime = 200;	// Launcher reload time. This is the minimum interval in which a single launcher will be fired
_missileLockTime = 5;	// Minimum missile lock time
_targetEngagementInterval = 5;		// Minimum time between engagements of a single target
// ---------------------

sleep 1;

_side = _this select 0;
_sideNum = switch (_side) do {
	case (east): { 0 };
	case (west): { 1 };
};

_logFctn = {
	_text = "SAM Control : " + _this;
	//[player,_text] remoteExec ["commandChat"];
	//diag_log _text;
};

"Ready" call _logFctn;

// Main cycle - prepare, scan for targets, shoot
while {true} do {

	//_engagementDistanceMax = CTI_BASE_AIRRADAR_RANGES select ([_side, CTI_UPGRADE_AIRR] call CTI_CO_FNC_GetUpgrade);
	_engagementDistanceMax = 6000;
	
	// Gather usable launchers
	_availableLaunchers = [];
	{
		_g = gunner _x;
		if (alive _g) then { _availableLaunchers pushBack _x};
	} forEach (entities (_launcherNames select _sideNum));
	
	// Gather usable radars
	_availableRadars = [];
	{
		_g = gunner _x;
		if (alive _g) then { _availableRadars pushBack _x};
	} forEach (entities (_radarNames select _sideNum));
	
	// Gather all targets in range of all radars
	_detectedPossibleTargets = [];
	{
		_radarVehicle = _x;
		
		// TODO: nearestObjects only regards 2d distance
		_detectedAirVehicles = _radarVehicle nearEntities [["Air"], _engagementDistanceMax];

		// Filter for targets - hostile, above minAlt, alive
		{	// TODO: better way to detect hostiles?
			if (((_side) getFriend (side _x)) < 0.6 && {typeOf(_x) find "UAV_01_F" != 2} && {(getPos _x select 2) > _detectionMinAlt} && {!terrainIntersectASL [eyePos _radarVehicle, getPosASL _x]} && {alive _x} ) then {
				_detectedPossibleTargets pushbackUnique _x;
			};
		} forEach _detectedAirVehicles;
	} forEach _availableRadars;
	format ["Radars: %1, Launchers: %2, Targets: %3", count _availableRadars, count _availableLaunchers, count _detectedPossibleTargets] call _logFctn;

	// Engage only targets that haven't been engaged too recently
	_engageTargets = [];
	{
		if (time - (_x getVariable ["samsite_lastEngaged", - _targetEngagementInterval]) >= _targetEngagementInterval) then {
			_engageTargets pushback _x;
		};
	} forEach _detectedPossibleTargets;
	
	// Unassign target from radars 
	// TODO: doesnt work good, they will automatically start to watch target until we tell them to un-watch it over and over
	if (count _detectedPossibleTargets == 0) then {
		{
			(gunner _x) doTarget objNull;
			(gunner _x) doWatch objNull;
		} forEach _availableRadars;
	};

	// Engage a target
	if (count _engageTargets > 0) then {
		// TODO: target priorization
		// Engage an arbitrary target
		_launcherTarget = _engageTargets select 0;
		
		_useLauncherIndx = -1;
		_bestDistance = -1;
		
		// Select the closest ready launcher
		{
			_launcher = _x;
			
			//(format ["launcher %1:%2", _forEachIndex, str (_launcher getVariable ["samsite_lastUsed", - _reloadTime])]) call _logFctn;
			_a = someAmmo _launcher;
			_b = time - (_launcher getVariable ["samsite_lastUsed", - _reloadTime]) >= _reloadTime;
			_c = !(terrainIntersectASL [eyePos _launcher, getPosASL _launcherTarget]);
			
			//(format ["launcher %1: a %2 b %3 c %4", _forEachIndex, _a, _b, _c]) call _logFctn;
				
			if (_a && _b && _c) then {
				_dist = _launcher distance _launcherTarget;
				if (_dist < _bestDistance || _bestDistance == -1) then {
					_bestDistance = _dist;
					_useLauncherIndx = _forEachIndex;
				};
			};
		} forEach _availableLaunchers;
		if (_useLauncherIndx == -1) exitWith{"No launcher available" call _logFctn};

		format ["Target selected: %1 (%2 m), Launcher %3", typeOf _launcherTarget, _bestDistance, _useLauncherIndx] call _logFctn;
		
		_useLauncher = _availableLaunchers select _useLauncherIndx;
		_useLauncher setVariable ["samsite_lastUsed", time];
		_launcherTarget setVariable ["samsite_lastEngaged", time + _missileLockTime];
		
		// Radar target for radar warning
		{
			_x doTarget _launcherTarget;
		} forEach _availableRadars;
		
		// Aim and fire. This can take a few seconds and runs detached
		_sh = [_useLauncher,_launcherTarget,_useLauncherIndx,_logFctn, _missileLockTime] spawn {
			private _useLauncher = _this select 0,
			_launcherTarget = _this select 1,
			_useLauncherIndx = _this select 2,
			_logFctn = _this select 3,
			_missileLockTime = _this select 4;
			
			_useLauncher doTarget _launcherTarget;
			
			// Give SAM vehicle time to point at the target
			waitUntil {sleep 0.1; _useLauncher aimedAtTarget [_launcherTarget] > 0};
			
			// Time for missile lock
			sleep _missileLockTime;
			
			// Last check - LOS is clear and target alive
			if (terrainIntersectASL [eyePos _useLauncher, getPosASL _launcherTarget] || !(alive _launcherTarget)) exitWith {
				// Prevent AI from shooting again on its own
				(gunner _useLauncher) doWatch objNull;
			};

			// Attach "proximity target" for proximity fuse simulation
			// TOOD: doesnt work, prevents any damage (2016-08-20)
			//_targetSphere = "SAM_targetMIM" createVehicle [0,0,0];
			//_targetSphere attachTo [_launcherTarget, [0,0,0]];

			format ["Launcher %1 command fire", _useLauncherIndx] call _logFctn;
			
			// Command fire
			_useLauncher fireAtTarget [_launcherTarget];
			_useLauncher setVariable ["samsite_lastUsed", time];
			_launcherTarget setVariable ["samsite_lastEngaged", time];
			
			// Prevent AI from shooting again on its own
			(gunner _useLauncher) doWatch objNull;
		};
	};
	
	sleep 1;
};

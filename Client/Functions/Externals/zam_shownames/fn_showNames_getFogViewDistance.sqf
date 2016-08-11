/*
	Author(s):
		Phoenix of Zulu-Alpha

	License:
		APL-SA: http://www.bistudio.com/english/community/licenses/arma-public-license-share-alike

	References:
		https://resources.bisimulations.com/w/index.php?title=setFog
		https://community.bistudio.com/wiki/Arma_3_Improved_Fog

	Purpose:
		Returns the view distance factoring in improved A3 fog for the given elevation

	Params:
		Elevation in meters ASL (int)

	Return:
		ViewDistance in meters (int)

	Example:
		viewDistance_fog = (getPosASL player select 2) call compile preProcessFilelinenumbers "fn_zam_getFogViewDistance.sqf";

	Version: 1.0

	Changelog:
		v1.0
			- First release
*/

private ["_elev", "_vd_base", "_ln_x", "_fog", "_fog_decay", "_fog_base", "_vd_max", "_step", "_elev_delta", "_vd", "_power_mod", "_fog_multiplier"];

// Input elevation
_elev = _this;

// Constants
_vd_base = 55;	// Tweak this. Good range is from 45 to 65. It's base view distance
_ln_x = 0.5;	// Based on VBS Wiki. This val based on Arma Wiki is 0.08486869344
// Note that you may also want to tweak the effect of the basic fog value near the end.

// Get fog properties
_fog = fogParams select 0;
_fog_decay = fogParams select 1;
_fog_base = fogParams select 2;

// Max view distance
_vd_max = 15000; // Change back to viewDistance * 0.9 for use outside of showNames

// Quit if there is no fog
if (_fog < 0.01) exitWith {_vd_max};

// Calculate effect of new fog. if it's mot in effect then use base value
_vd = if (_fog_decay != 0) then {

	// Equation Variables
	_step = (ln _ln_x) / -_fog_decay;	// Elevation step that causes _vd to double
	_elev_delta = _elev - _fog_base;	// Elevation difference between given elevation and base fog elevation

	// The equation
	/*
		Doubles (or halves) the base view distance for every multiple of step elevation
		that the elevation delta is over (or under) the base fog elevation.
			Console ver: (50*2^((((getPosASL player select 2)-(fogParams select 2))/((ln 0.5)/-(fogParams select 1))))) min viewdistance
	*/
	_vd_base * 2^(_elev_delta/_step);

} else {_vd_base};

// Handle the effect of the basic fog value (_fog)
_power_mod = abs(0.6-_fog) * 2	;			// To tweak the power that fog is multiplied to (as it was found to be inconsistent)
_fog_multiplier = _fog ^ (3 - _power_mod);	// Multiplier (rather divident) effect that the fog value has on view distance

// Apply effect
_vd = _vd / _fog_multiplier;

// You can't get a higher view distance than the view distance setting allows
_vd = _vd min _vd_max;

// Return result
_vd
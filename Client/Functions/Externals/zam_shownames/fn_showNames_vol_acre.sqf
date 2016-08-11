/*
	Author(s):
		Phoenix of Zulu-Alpha

	Require:
		fn_showNames_acre_eh (setvariable)

	Purpose:
		Actual function that predicts the true volume that the given listener hears the given speaker for acre,
		considering the distance and the voice curve modifier.

	Params
		0: OBJECT - Speaker
		1: OBJECT - Listener

	Return
		INT - Ratio of Max possible volume to actual volume (i.e: Range 0 -> 1, where 0 is no speaking at all)

	Reference:
		"ZAM_showNames_var_tfar_speaking"
			nil
			distance in meters (int)
*/

private ["_speaker","_listener","_speak_volume","_dist","_dist_app","_vol"];

_speaker = _this select 0;
_listener = _this select 1;

// Gets speak type (can be nil, see reference)
_speak_volume = _speaker getVariable ["ZAM_showNames_var_acre_speaking", -1];

// Sanity check (quit with a vol of 0 if speaker is not speaking)
if (_speak_volume == -1) exitWith {0};

// The distance
_dist = _speaker distance _listener;

// Convert the distance to an apparant distance based on the volume modifier and round it.
_dist_app = round (_dist / _speak_volume);

// We now have an index to get from the curve array (_dist_app). First lets see if it is out of range
if (_dist_app >= count ZAM_showNames_acre_curve_original) exitWith {0};

// Otherwise get the volume from the curve array
_vol = ZAM_showNames_acre_curve_original select _dist_app;

// Cap to 1 (just in case)
_vol = _vol min 1;

// Apply ACRE Volume modifier (in case of wound for eg)
_vol = _vol * acre_sys_core_globalVolume;

// Return
_vol
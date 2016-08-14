/*
	Author(s):
		Phoenix of Zulu-Alpha

	Require:
		fn_showNames_tfar_eh (setvariable)

	Purpose:
		Actual function that predicts the true volume that the given listener hears the given speaker for tfar, considering the distance and the type of speaking.

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

private ["_speaker", "_listener", "_speak_dist", "_dist_sqr", "_vol_const", "_vol_ratio", "_vol", "_speaker_mod", "_listener_mod"];

_speaker = _this select 0;
_listener = _this select 1;

// Gets speak distance (can be nil, see reference)
_speak_dist = _speaker getVariable ["ZAM_showNames_var_tfar_speaking", 0];

// Sanity check (quit with a vol of 0 if speaker is not speaking)
if (_speak_dist == 0) exitWith {0};

_dist_sqr = _speaker distanceSqr _listener;	// The square of the distance for calculations

// Determine the vol_constant based on the voice distance and value of 0.1 there
_vol_const = 0.1 * _speak_dist * _speak_dist;

// Main calculation
// vol_ratio = vol_const / _dist_sqr	(cap to 1)
_vol_ratio = _vol_const / (_dist_sqr max 0.01);

// Cap to 1
_vol = _vol_ratio min 1;

// Check speaker and listener modifiers
_speaker_mod = _speaker getVariable ["tf_voiceVolume", 1];
_listener_mod = _listener getVariable ["tf_globalVolume", 1];

// Apply them
_vol = _vol * _speaker_mod * _listener_mod;

// Return
_vol
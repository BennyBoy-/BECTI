/*
	Author(s):
		Phoenix of Zulu-Alpha

	Purpose:
		Predicts the true volume that the given listener hears the given speaker, considering the distance and the type of speaking.

	Params
		0: OBJECT - Speaker
		1: OBJECT - Listener

	Return
		INT - Ratio of Max possible volume to actual volume (i.e: Range 0 -> 1, where 0 is no speaking at all)
*/

private ["_speaker", "_listener", "_vol"];

_speaker = _this select 0;
_listener = _this select 1;

// Uses data for TFAR if TFAR is used:
if (ZAM_showNames_tfar) then {
	_vol = [_speaker, _listener] call zam_fnc_showNames_vol_tfar
};

// Uses data for ACRE if ACRE is used:
if (ZAM_showNames_acre) then {
	_vol = [_speaker, _listener] call zam_fnc_showNames_vol_acre
};

_vol
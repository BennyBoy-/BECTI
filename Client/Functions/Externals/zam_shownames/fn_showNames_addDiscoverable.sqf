/*
	Author(s):
		Phoenix of Zulu-Alpha

	Purpose:
		Adds person to list of discoverable objects. It also makes it already known and gives the specified custom name if also desired.
		This can be used to rename normally discoverable objects (except rucks).
		This function only has a local effect.

	Params
		0: OBJECT - Person to make discoverable
		1 (Optional): BOOL - of whether or not to make the object already known (Default: false)
		2 (Optional): STRING - of the custom name to overwrite it's origional one

	Return
		Nothing
*/

private ["_object", "_isKnown", "_name_custom"];

_object = _this select 0;
_isKnown = if (count _this > 1) then {_this select 1} else {false};
_name_custom = if (count _this > 2) then {_this select 2} else {""};

// Initialize the discoverable array if necessary
if (isNil "ZAM_showNames_var_discoverable") then {ZAM_showNames_var_discoverable = []};

// Add the object to it if it isn't already in
if !(_object in ZAM_showNames_var_discoverable) then {
	ZAM_showNames_var_discoverable set [count ZAM_showNames_var_discoverable, _object]
};

// Note we keep going even if it's already in the list so that the function can be used to make the object known or it's name changed later.

// Make the object already known if applicable
if (_isKnown) then {
	_object setVariable ["zam_showNames_isKnown", true];
};

// Give custom name
if (_name_custom != "") then {
	_object setVariable ["zam_showNames_name", _name_custom];
};
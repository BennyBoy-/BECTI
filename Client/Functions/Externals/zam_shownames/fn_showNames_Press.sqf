/*
	Author(s):
		Phoenix of Zulu-Alpha
		LH

	Purpose:
		Obtain available units for showing of names.
		Adds a stacked eventhandler.

	Params
		Nothing

	Return
		BOOL - As to whether the showNames key was pressed
*/

//diag_log "showNames_press.sqf - Started";

private ["_player", "_player_side", "_ambient_light", "_dist_man", "_dist_ruck", "_dist_misc", "_dist_man_id", "_magn", "_vd", "_temp_array", "_objects", "_isGroup"];


// Used if the key is pressed a second time to turn off show names when toggle mode is used.
if (ZAM_showNames_on && zam_showNames_toggle) exitWith {
	ZAM_showNames_on = false;
	["ZAM_Shownames", "OnEachFrame"] call BIS_fnc_removeStackedEventHandler;
	true
};

// Exit if key already down and toggle mode is not used
if (ZAM_showNames_on) exitWith {false};

_player = player;
_player_side = side (group _player);

// Important for knowing if the key is still down
ZAM_showNames_on = true;

// initiall variables
_ambient_light = sunormoon;

// Distance to get objects from. Also used as max ID ranges (excluding magnification)
_dist_man = 100;  // distance to pick up people
_dist_ruck = 10; // distance to pick up ruck
_dist_misc = 10; // distance to pick up misc objects
_dist_man_id = 10;	// Distance you must be within to learn their name

// Magnification multiplier that will be used to get distances.
_magn = call zam_fnc_showNames_getZoom;

_vd = viewDistance * 0.9;

// Get Array
_temp_array = if (!isMultiplayer) then {allUnits} else {playableUnits};

// Remove player
_temp_array = [_temp_array, [player]] call ZAM_fnc_showNames_filterArrayByEquality;

// Remove if player on different side or too far away (with support for setCaptive)
_objects = [_temp_array, { ( (side (group _this)) != _player_side ) || { player distance _this > ( (_dist_man * _magn) min _vd ) }}] call ZAM_fnc_showNames_filterArrayByCode;


// Check if there are group members for group differentiation
_isGroup = if (ZAM_showNames_group) then {
	( {if (group _x == group _player) exitWith {1}} count _objects ) != 0;
} else {false};


// Ruck name tags
if (ZAM_showNames_rucks) then {
	// Find all gear stacks on ground
	_temp_array = (getPosATL player) nearObjects ["GroundWeaponHolder", (_dist_ruck * _magn) min _vd];

	// Remove gear stacks that don't have rucks or name tags
	_temp_array = [_temp_array, { _ruck = firstBackpack _this; isNull (_ruck) || {_ruck getVariable ["zam_showNames_tag",""] == ""} }] call ZAM_fnc_showNames_filterArrayByCode;

	// Add to names_to_show
	{
		_objects set [count _objects, _x]
	} count _temp_array;
};


// Add Discoverable objects (if not already in the obkects list)
{
	if !(_x in _objects) then {
		_objects set [count _objects, _x]
	};
} count ZAM_showNames_var_discoverable;


// Pass names and variables to draw job generator (that onEachFrame will use to draw names)
scriptHandle = [_objects, _player, _player_side, _isGroup, _ambient_light, _dist_man, _dist_ruck, _dist_misc, _dist_man_id] spawn ZAM_fnc_showNames_pressLoop;

// Pass names to stack handler to display while the key is down
["ZAM_Shownames", "onEachFrame", ZAM_fnc_showNames_onEachFrame] call BIS_fnc_addStackedEventHandler;

true


//diag_log "showNames_press.sqf - Finished";
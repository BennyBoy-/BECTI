/*
	Author(s):
		Phoenix of Zulu-Alpha

	Requires:
		ACRE

	Purpose:
		Starts a custom event handler that monitors the local player's ACRE speak and speak volume curve states.
		It saves this information in a setvariable called "ZAM_showNames_var_acre_speaking" to the player object
		publicly containing the selectable voice curve modifier if the player is speaking. Otherwise it will make
		sure the variable is nil to save on network traffic.

	Params
		None

	Return
		None
*/


[] spawn {

	// Sanity check (check if TFAR even loaded)
	if (configName (configfile >> "CfgPatches" >> "acre_main") == "") exitWith {};

	// wait for TFAR to initialize
	waitUntil {sleep 1; _volume = [] call acre_api_fnc_getSelectableVoiceCurve; !(isNil "_volume")};
	sleep 1;

	private "_var_name";

	_var_name = "ZAM_showNames_var_acre_speaking";	// Used in setVariable

	// Main loop (for loop for performance reasons)
	for "_i" from 0 to 1 step 0 do {


		// Make sure the player is alive and functional
		if ( !(isNull player) && (alive player) && (player == player) ) then {

			private ["_player", "_isSpeaking", "_volume", "_isVar"];

			_player = player;
			_isSpeaking = [player] call acre_api_fnc_isSpeaking;			// Check if speaking
			_volume = [] call acre_api_fnc_getSelectableVoiceCurve;			// Check volume
			_isVar = (_player getVariable [_var_name, -1]) != -1;			// Check if set variable already set (-1 if nil)

			// High performance switch statement (ordered in presumed probability of occurence)
			call {
				// Not speaking and variable not set (non lazy eval as better performance when both false)
				if (!_isSpeaking && !_isVar) exitWith {};
				// Speaking and variable already set
				if (_isSpeaking && _isVar) exitWith {};
				// Speaking and variable not set
				if (_isSpeaking && !_isVar) exitWith {_player setVariable [_var_name, _volume, true];};
				// Not speaking and variable still set
				_player setVariable [_var_name, nil, true];
			};

		};

		// Delay
		sleep ZAM_showNames_var_acre_eh_delay;

	};

};
/*
	Author(s):
		Phoenix of Zulu-Alpha

	Requires:
		TFAR

	Purpose:
		Adds a TFAR 'onspeak' Event Handler that adds or mutates the 'ZAM_showNames_var_tfar_speaking' setvariable,
		containing the audible speaking distance of the player according to TF_speak_volume_meters.
		If the player is not speaking, then it will make sure the variable is nil to save on network traffic.

	Params
		None

	Return
		None
*/


[] spawn {

	// Sanity check (check if TFAR even loaded)
	if (configName (configfile >> "CfgPatches" >> "task_force_radio") == "") exitWith {};

	// wait for TFAR to initialize
	waitUntil {sleep 1; !(isNil "TF_speak_volume_meters")};
	sleep 1;

 	private ["_fnc"];

	// Function to add to TFAR event handler
	_fnc = {

		private ["_unit", "_isSpeaking", "_speaking"];

		_unit = _this select 0;	// Unit that spoke
		_isSpeaking = _this select 1;	// Whether or not the person is speaking

		_var_name = "ZAM_showNames_var_tfar_speaking";	// Used in setVariable

		if (!_isSpeaking) then {
			// If not speaking, set variable to nil in order to prevent network transmit of setvariable
			_speaking = nil;
		} else {
			// Otherwise record the distance that the person can be heard.
			_speaking = TF_speak_volume_meters;
		};

		// Transmits the speaking state over the network if speaking
		_unit setVariable [_var_name, _speaking, true];

	};

	// Add TFAR event handler: Whenever the local player is detected as speaking by TFAR.
	["ZAM_showNames", "OnSpeak", _fnc, TFAR_currentUnit] call TFAR_Fnc_addEventHandler;

};
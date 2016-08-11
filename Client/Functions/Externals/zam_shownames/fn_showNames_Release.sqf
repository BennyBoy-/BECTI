/*
	Author(s):
		Phoenix of Zulu-Alpha
		LH

	Purpose:
		Removes the OnEachFrame eventhandler when the shownames key is released

	Params
		Nothing

	Return
		BOOL - If the key has been released
*/

//diag_log "fn_showNames_release.sqf - Started";

// Exit if key wasn't down.
if (!ZAM_showNames_on || zam_showNames_toggle) exitWith {false};

// End showNames process
ZAM_showNames_on = false;
["ZAM_Shownames", "OnEachFrame"] call BIS_fnc_removeStackedEventHandler;

// Successful return
true

//diag_log "showNames_release.sqf - Finished";
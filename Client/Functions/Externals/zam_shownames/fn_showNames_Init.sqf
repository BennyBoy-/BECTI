/*
	Author(s):
		Phoenix of Zulu-Alpha
		LH
	Purpose:
		Initialises ShowNames after 5 seconds has passed.
	Params
		Nothing
	Return
	    Nothing
*/


if !(hasInterface) exitWith {/*diag_log "showNames_init.sqf - Finished (!hasInterface)"*/};
	
// Load in keys and settings from userconfig
#include "zam_shownames.hpp"

[] spawn {

	waitUntil {player == player};
	waitUntil {time >= 5};

	//// Setting config settings if not defined by mission maker to userconfig setting if it exists, else hardcoded default.

	// Enable the mod
	if (isNil "zam_showNames_enabled"            ) then {
		zam_showNames_enabled = 			if !(isNil "zam_showNames_enabled") then {zam_showNames_enabled} else {true}
	};

	// Enable Show by default
	if (isNil "ZAM_showNames_default_on"            ) then {
		ZAM_showNames_default_on = 			if !(isNil "ZAM_showNames_default_on") then {ZAM_showNames_default_on} else {true}
	};
	
	// Use key as toggle
	if (isNil "zam_showNames_toggle"             ) then {
		zam_showNames_toggle = 				if !(isNil "zam_showNames_toggle") then {zam_showNames_toggle} else {false}
	};

	// Enable ranks
	if (isNil "ZAM_showNames_ranks"              ) then {
		ZAM_showNames_ranks = 				if !(isNil "zam_showNames_ranks") then {zam_showNames_ranks} else {true}
	};

	// Enable rucks
	if (isNil "ZAM_showNames_rucks"              ) then {
		ZAM_showNames_rucks = 				if !(isNil "zam_showNames_rucks") then {zam_showNames_rucks} else {true}
	};

	// Enable group differentiation (using boldness)
	if (isNil "ZAM_showNames_group"              ) then {
		ZAM_showNames_group = 				if !(isNil "zam_showNames_group") then {zam_showNames_group} else {true}
	};

	// Enable group names for other groups
	if (isNil "ZAM_showNames_group_names"         ) then {
		ZAM_showNames_group_names = 			if !(isNil "ZAM_showNames_group_names") then {ZAM_showNames_group_names} else {true}
	};

	// Enable team names for current group
	if (isNil "ZAM_showNames_group_teams"         ) then {
		ZAM_showNames_group_teams = 			if !(isNil "ZAM_showNames_group_teams") then {ZAM_showNames_group_teams} else {true}
	};

	// Enable fade of name tag with distance
	if (isNil "ZAM_showNames_fade"               ) then {
		ZAM_showNames_fade = 				if !(isNil "zam_showNames_fade") then {zam_showNames_fade} else {true}
	};

	// Enable fog to exaggerate fade
	if (isNil "ZAM_showNames_fog"                ) then {
		ZAM_showNames_fog = 				if !(isNil "zam_showNames_fog") then {zam_showNames_fog} else {true}
	};

	// Enable magnification effect (only for non optical zoom)
	if (isNil "ZAM_showNames_magn"               ) then {
		ZAM_showNames_magn = 				if !(isNil "zam_showNames_magn") then {zam_showNames_magn} else {true}
	};

	// Knowledge system
	if (isNil "ZAM_showNames_knowledge"          ) then {
		ZAM_showNames_knowledge = 			if !(isNil "zam_showNames_knowledge") then {zam_showNames_knowledge} else {true}
	};

	// Support for TFAR
	if (isNil "ZAM_showNames_voice"               ) then {
		ZAM_showNames_voice = 				if !(isNil "zam_showNames_voice") then {zam_showNames_voice} else {true}
	};

	// For adjusting the performance of shownames (smaller is better)
	if (isNil "ZAM_showNames_var_pressLoop_delay") then {
		ZAM_showNames_var_pressLoop_delay = if !(isNil "zam_showNames_var_pressLoop_delay") then {zam_showNames_var_pressLoop_delay} else {0.005}
	};

	// For adjusting frequency at which player acre activity is monitored (for Voice feature)
	if (isNil "ZAM_showNames_var_acre_eh_delay"  ) then {
		ZAM_showNames_var_acre_eh_delay = 	if !(isNil "zam_showNames_var_acre_eh_delay") then {zam_showNames_var_acre_eh_delay} else {0.25}
	};



	// Double check for deprecated version
	if ( (!(isNil "zam_showname_enabled") && {!(zam_showname_enabled)}) || !(isNil "zam_showNames_enabled") && {!(zam_showNames_enabled)} ) exitwith {/*diag_log "showNames_init.sqf - Finished (disabled)";*/};


	// Start a voice EH if TFAR or ACRE loaded, else disable voice support
	ZAM_showNames_tfar = false;
	ZAM_showNames_acre = false;

	// For TFAR
	if (ZAM_showNames_voice && {configName (configfile >> "CfgPatches" >> "task_force_radio") != ""}) then {
		ZAM_showNames_voice = true;
		ZAM_showNames_tfar = true;
		call zam_fnc_showNames_tfar_eh
	};

	// For ACRE
	if (ZAM_showNames_voice && {configName (configfile >> "CfgPatches" >> "acre_main") != ""}) then {
		ZAM_showNames_voice = true;
		ZAM_showNames_acre = true;

		// Voice curve. Array with a volume level of 0 -> 1 for every discrete meter up to any distance, starting from 0m. Eg: select 20 should give the volume level for meter 20
		ZAM_showNames_acre_curve_original = [1,1,1,1,1,1,1,1,1,0.857339,0.694445,0.573921,0.482253,0.410914,0.354308,0.308642,0.271267,0.240292,0.214335,0.192367,0.173611,0.15747,0.14348,0.131275,0.120563,0.111111,0.102728,0.09526,0.088577,0.082574,0.07716,0072263,0.067817,0.063769,0.060073,0.056689,0.053584,0.050726,0.048092,0.045657,0.043403,0.041311,0.039368,0.037558,0.03587,0.034294,0.032819,0.031437,0.030141,0.028923,0.027778,0.026699,0.025682,0.024722,0.023815,0.022957,0.022144,0.021374,0.020643,0.01995,0.01929,0.018663,0.018066,0.017497,0.016954,0.016437,0.015942,0.01547,0.015018,0.014586,0.014172,0.013776,0.013396,0.013031,0.012682,0.012346,0.012023,0.011713,0.011414,0.011127,0.010851,0.010584,0.010328,0.01008,0.009842,0.009612,0.009389,0.009175,0.008968,0.008767,0.008573,0.008386,0.008205,0.008029,0.007859,0.007695,0.007535,0.007381,0.007231,0.007085,0.006944,0.006808,0.006675,0.006546,0.006421,0.006299,0.006181,0.006066,0.005954,0.005845,0.005739,0.005636,0.005536,0.005439,0.005344,0.005251,0.005161,0.005073,0.004987,0.004904,0.004823,0.004743,0.004666,0.00459,0.004516,0.004444,0.004374,0.004306,0.004239,0.004173,0.004109,0.004047,0.003986,0.003926,0.003867,0.00381,0.003755,0.0037,0.003647,0.003594,0.003543,0.003493,0.003444,0.003396,0.003349,0.003303,0.003258,0.003214,0.00317,0.003128,0];

		call zam_fnc_showNames_acre_eh
	};

	// Disable Voice support if neither TFAR or ACRE is available
	if (!ZAM_showNames_tfar && !ZAM_showNames_acre) then {
		ZAM_showNames_voice = false;
	};

	// Initialize variables
	if (isNil "ZAM_showNames_var_discoverable") then {ZAM_showNames_var_discoverable = []};
	ZAM_showNames_var_drawJobs = [];


	// Tagging backpacks
	// with support for multiple rucks from different people in the same pile
	if (ZAM_showNames_rucks) then {

		// Attach name tag when put on ground
		player addEventHandler ["Put", {
			private ["_putter", "_container", "_ruck_class", "_ruck"];
			_putter = _this select 0;
			_container = _this select 1;
			_ruck_class = _this select 2;
			if ((_ruck_class isKindOf "bag_base") && {_container isKindOf "GroundWeaponHolder"}) then {
				_ruck = (everyBackpack _container) select ((count everyBackpack _container)-1);
				_ruck setVariable ["zam_showNames_tag", format ["%1's ruck", name _putter], true];
			};
		}];

		// For removing the tag when taken from ground to save on network traffic
		player addEventHandler ["Take", {
			private ["_taker", "_container", "_ruck_class", "_ruck"];
			_taker = _this select 0;
			_container = _this select 1;
			_ruck_class = _this select 2;
			if ((_ruck_class isKindOf "bag_base") && {_container isKindOf "GroundWeaponHolder"}) then {
				_ruck = backpackContainer _taker;
				_ruck setVariable ["zam_showNames_tag", nil, true];
			};
		}];

	};

	// Font management
	/*
		"EtelkaMonospacePro"
		"EtelkaMonospaceProBold"
		"EtelkaNarrowMediumPro"
		"LucidaConsoleB"
		"PuristaBold"
		"PuristaLight"
		"PuristaMedium"
		"PuristaSemibold"
		"TahomaB"
	*/
	zam_shownames_var_smallFont = "TahomaB";
	zam_shownames_var_bigFont = "TahomaB";

	//// Key Handlers are added using CBA

	// Toggle for group names, handled with a different variable to allow for default off
	ZAM_showNames_group_names_toggle = false;
	if (ZAM_showNames_group_names) then {
		["ZAM", "Toggle group names", ["Toggle Group Names", "Show the person's Group ID next to their name."], {ZAM_showNames_group_names_toggle = !(call compile "ZAM_showNames_group_names_toggle"); true}, "", [0x15, [false, true, false]]] call cba_fnc_addKeybind;
	};
	ZAM_showNames_on = false;
	// Key press and release. No release code if toggle mode is on.
	if !(zam_showNames_toggle) then {
		["ZAM", "showNames", ["Show Names", "To actually show the names"], {_this call ZAM_fnc_showNames_Press}, {_this call ZAM_fnc_showNames_Release}, [0x15, [false, false, false]]] call cba_fnc_addKeybind;
	} else {
		["ZAM", "showNames", ["Show Names", "To actually show the names"], {_this call ZAM_fnc_showNames_Press}, "", [0x15, [false, false, false]]] call cba_fnc_addKeybind;
	};
	
	//If default On Mode
	if(ZAM_showNames_default_on) then {
		ZAM_showNames_on = false;
		sleep 10;
		_this call ZAM_fnc_showNames_Press;
	};

};
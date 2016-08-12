/*
	All the following settings can be set by the mission maker, where it will take precedence over this userconfig.
	However, ommit the '_conf' from the variable name when doing so, Eg: zam_showNames_enabled instead of zam_showNames_conf_enabled
*/


//// showNames:

// Enable
zam_showNames_enabled = true;	// Enable the mod

// Key
// Change the key in Main Menu, Configure -> Controls -> Configure Addons -> ZAM -> showNames. Note that the key options will appear in that menu only 5 seconds into the game.
zam_showNames_toggle = true;	// Use the key in toggle mode; Tap to turn on, tap again to turn off. As opposed to hold down to keep on.

// Config (can be overwritten by mission maker)
ZAM_showNames_ranks = true; 	// Enable ranks
ZAM_showNames_rucks = true; 	// Enable rucks
ZAM_showNames_group = true; 	// Enable group differentiation (using boldness)
ZAM_showNames_group_names = true; 	// Enable group names for other groups
ZAM_showNames_group_teams = true; 	// Enable team names for current group
ZAM_showNames_fade  = true; 	// Enable fade of name tag with distance
ZAM_showNames_fog   = true; 	// Enable fog to exaggerate fade
ZAM_showNames_magn  = true; 	// Enable magnification effect (only for temporary zoom)
ZAM_showNames_knowledge = true;	// Knowledge system
ZAM_showNames_voice = true; 	// Support for TFAR and ACRE

ZAM_showNames_var_pressLoop_delay = 0.005;	// For adjusting the performance of shownames (smaller is better)
ZAM_showNames_var_acre_eh_delay = 0.1;	// For adjusting frequency at which player acre activity is monitored (for Voice feature)

//Enable by default
ZAM_showNames_on = true;
// by ALIAS
// Road Flare DEMO
// Tutorial: https://www.youtube.com/user/aliascartoons


// Road FLARE - recommended for vanilla missions and assets only, with mods you might have problems

// flare brightness, replace 30 with desired value
al_Roadflare_brightness= 30;
publicvariable "al_Roadflare_brightness";

// flare range - scalar in meters, replace 80 with desired value
al_Roadflare_range = 150;
publicvariable "al_Roadflare_range";

// flare lifetime - scalar in seconds, replace 600 with desired value
al_Roadflare_lifetime = 600;
publicvariable "al_Roadflare_lifetime";

// Chemlights Tweak - make al_chem false if you want to disable chemlight feature
al_chem = true;
publicVariable "al_chem";

sleep 1;

// If you want to use ROAD FLARE>>>>>>> Do Not Edit or Remove Line Bellow !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
player addEventHandler ["Fired",{private ["_al_throwable"]; _al_throwable = _this select 6;[[[_al_throwable],"Client\Functions\Externals\AL_roadflare\al_roadflare.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;}];
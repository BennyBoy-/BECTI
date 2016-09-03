// MKY Snow version 100 - 4/10/2016
/*
	_this: 0-EFX Strength
	0 - random snow type
	1 - light (flurry)
	2 - moderate
	3 - heavy

	_this: 1-vary EFX
	boolean

	ie. nul = [3,true] execVM "MKY\MKY_Sand_Snow_Init.sqf";
*/

MKY_iStrengthEFX = 0;
if ((count _this) > 0) then {if (typeName (_this select 0) == "SCALAR") then {MKY_iStrengthEFX = (_this select 0);};};

// vary EFX dropInterval ?
MKY_bVaryEFX = false; // default
if ((count _this) > 1) then {if (typeName (_this select 1) == "BOOL") then {MKY_bVaryEFX = (_this select 1);};};

// server creates the variable to hold the "snow data" the clients need
// index 0 = snow EFX strength 0-random, 1-light, 2-moderate, 3-heavy
// index 1 = custom dropInterval amount ("" to ignore)
varSnowData = [3,""];

// server can send message to start or stop the snow effect
// varEnableSnow = true; // publicize when ready

// server may need to send data to JIP client
"JIP_varSnowData" addPublicVariableEventHandler {
	// (owner (_this select 0)) publicVariableClient "varFadeIn";
	// sleep 1;
	(owner (_this select 0)) publicVariableClient "varEnableSnow";
	sleep 1;
	(owner (_this select 0)) publicVariableClient "varSnowData";
	sleep 1;
};

0 = [] spawn {
	// publicize the variables for clients
	// you can also comment this out, and publicize the variables
	// in a specific trigger/event you have !!
	publicVariable "varSnowData";
	sleep 2;
	varEnableSnow = true;
	publicVariable "varEnableSnow";

	// could use this as spot to "fade in" if using that feature
	// varFadeIn = true;
	// publicVariable "varFadeIn";

	// sleep while initial clients prepare with flurries first
	// sleep 15; //60;
	_iSleep = 15;

	// loop forever
	while {true} do {
		// while looping, check if snow is enabled
		if (varEnableSnow) then {
			// check if current snow data is the same as original parameters
			if ((varSnowData select 0) != MKY_iStrengthEFX) then {
				// check if snow type is random, if so, choose next type
				if (MKY_iStrengthEFX == 0) then {
					varSnowData set [0,([1,2,3] call BIS_fnc_selectRandom)];
				} else {
					varSnowData set [0,MKY_iStrengthEFX];
				};
				// broadcast new value (which may not have changed)
				publicVariable "varSnowData";
			};

			sleep _iSleep; // adjust as needed

			if (MKY_bVaryEFX) then {
				switch (varSnowData select 0) do {
					case 1: {varSnowData set [1,([.03,.04,.05,.06,.07] call BIS_fnc_selectRandom)];};
					case 2: {varSnowData set [1,([.07,.08,.09,.1,.2] call BIS_fnc_selectRandom)];};
					case 3: {varSnowData set [1,([.02,.03,.04,.05,.06] call BIS_fnc_selectRandom)];};
				};
				publicVariable "varSnowData";
			};
			sleep _iSleep;
		};
		sleep 1;
	};
};

/*
	could set the dropInterval to whatever you like by also including this
	varSnowData set [1,0.03];

	snow uses from .09 (fewer particles) to .03 (more particles) as defaults

*/
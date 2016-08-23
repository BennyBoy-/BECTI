// MKY Snow version 100 - 4/10/2016
///////////////////////////////// m0nkey snow client /////////////////////////////////////
/*
	_this:
	0 - array 		- fog data 											-- ie. [.3,.5,200] -- use 0 to ignore (can omit)
	1 - integer 	- overcast  											-- use "" to ignore (can omit)
	2 - boolean 	- use ppEffects (default is false)					-- (can omit or use 0 to ignore)
	3 - boolean 	- allow rain (default is false) 					-- (can omit or use 0 to ignore)
	4 - boolean 	- vary fog effect (default is true)				-- (can omit or use 0 to ignore)
	5 - boolean	- use wind audio file (default is true)			-- (can omit or use 0 to ignore)
	NOTE: omitting a value means you can stop there and not have to list the remaining parameters (defaults will be applied)

	EXAMPLES:
	0 = [[0.23,0.021,100],"",true] execVM "script.sqf";
	0 = [0,.3,false,true] execVM "script.sqf";
	0 = [0,"",false,true,false] execVM "script.sqf";
	0 = [] execVM "script.sqf";

	NOTES:
	fog array values [overall fog density, amount of dissipation with altitude, altitude]
	using [0.25,0,5] will create a thick, low fog that does not dissipate - same from top to bottom
	using [0.25,1,5] will create a thick on bottom and hazy on top fog
	these values [0.23,0.021,60] will give a nice thick distance fog while allowing a few hundred yards of some visibility
	when allowed to vary the fog effect, this script will try to maintain the altitude of fog that you gave
	this means if you gave [.2,.1,10] that you would not see the fog most likely at 50m altitude (a hilltop)


*/


////////////////////////// FUNCTIONS //////////////////////////
MKY_fnc_ppEffect_On = {
	if !(isNil "effsnow") exitWith {true;};
	effsnow = ppEffectCreate ["colorCorrections", 1501];
	effsnow ppEffectEnable true;
	effsnow ppEffectAdjust [1,1.0,0.0,[.55,.55,.52,.2],[.88,.88,.93,.75],[1,.1,.4,0.03]];
	effsnow ppEffectCommit 0; // can also fade colorization in slowly if not using black in /black out
	(true);
};
MKY_fnc_ppEffect_Off = {
	if (isNil "effsnow") exitWith {true;};
	0 = [] spawn {
		effsnow ppEffectAdjust [1,1.0,0.0,[.55,.55,.52,0],[.88,.88,.93,1],[1,.1,.4,0.03]];
		effsnow ppEffectCommit 30;  // fade colorization out slowly
		sleep 35;
		ppEffectDestroy effsnow;
		effsnow = nil;
	};
	(true);
};
MKY_fnc_Exit_Snow = {

	// fade out the EFX
	0 = [0.09] call MKY_fnc_setDI;
	sleep 5;
	0 = [.5] call MKY_fnc_setDI;
	sleep 5;

	//~ terminate scriptSetObjDir;
	deleteVehicle objSnow;
	deleteVehicle objSnowN;
	deleteVehicle objSnowS;
	deleteVehicle objSnowE;
	deleteVehicle objSnowW;
	deleteVehicle objEmitterHost;
	objEmitterHost = nil;
	varEnableSnow = false;
	(true);
};
MKY_fnc_setDI = {

	{
		_x setDropInterval (_this select 0);
	} forEach [objSnow,objSnowN,objSnowW,objSnowS,objSnowE];
	(true);
};
MKY_fnc_create_Emitter_Host = {
	if !(isNil "objEmitterHost") exitWith {true;};
	objEmitterHost = "Land_Bucket_F" createVehicleLocal (position player);
	objEmitterHost attachTo [player,[0,0,0]];
	objEmitterHost hideObject true;
	objEmitterHost allowDamage false;
	objEmitterHost enableSimulation false;
	(true);
};
MKY_fnc_set_Object_Direction = {
	// spawn a thread that sets attached object to the bearing variable
	0 = [] spawn {
		// wait for dummy object to exist
		waitUntil {sleep 0.25;!(isNil "objEmitterHost")};
		while {true} do {
			sleep 0.25;
			if (isNil "objEmitterHost") exitWith {true;};
			// face emitters towards direction wind is coming from (face the wind)
			_vel = velocity (vehicle player);
			objEmitterHost setDir ((windDir - 180) - getDir player);
			objEmitterHost setVelocity _vel;
		};
	};
	(true);
};
MKY_fnc_light_Init = {
	private ["_w","_wr"];
	_w = windStr * 30;
	_wr = windStr * -20;

	// define light (flurry) characteristics
	snow_Array set [0,["\A3\data_f\ParticleEffects\Universal\Universal", 16,13,6,0]];
	snow_Array set [4,10];				// lifetime
	snow_Array set [9,1.1015]; 			// volume
	snow_Array set [10,0.4051]; 			// rubbing
	snow_Array set [11,[.03]];			// size
	snow_Array set [12,[[1,1,1,1]]];		// color
	snow_Array set [14,0.7];				// random direction period
	snow_Array set [15,0.3];				// random direction intensity

	// for each emitter, define positions and rate

	// parent object is slightly forward of player
	snow_Array set [5,[0,_w,5]]; 				// [left/right, forward/back, up/down]
	snow_Rand_Array set [1,[15,15,.25]]; 	// [forward/back,left/right,up/down]
	objSnow setParticleParams snow_Array;
	objSnow setParticleRandom snow_Rand_Array;
	objSnow setDropInterval 0;

	snow_Array set [5,[0,_wr,10]];
	snow_Rand_Array set [1,[15,25,1]];
	objSnowS setParticleParams snow_Array;
	objSnowS setParticleRandom snow_Rand_Array;
	objSnowS setDropInterval 0;

	snow_Array set [5,[0,_w,8]];
	snow_Rand_Array set [1,[25,15,1]];
	objSnowN setParticleParams snow_Array;
	objSnowN setParticleRandom snow_Rand_Array;
	objSnowN setDropInterval 0;

	snow_Array set [5,[25,_w,8]];
	snow_Rand_Array set [1,[25,15,1]];
	objSnowE setParticleParams snow_Array;
	objSnowE setParticleRandom snow_Rand_Array;
	objSnowE setDropInterval 0;

	snow_Array set [5,[-25,_w,8]];
	snow_Rand_Array set [1,[25,15,1]];
	objSnowW setParticleParams snow_Array;
	objSnowW setParticleRandom snow_Rand_Array;
	objSnowW setDropInterval 0;

	{
		_x setDropInterval 0.05;
	} forEach [objSnow,objSnowN,objSnowW,objSnowS,objSnowE];

	(true);
};
MKY_fnc_moderate_Init = {
	private ["_w","_wr"];
	_w = windStr * 30;
	_wr = windStr * -20;

	snow_Array set [0,["\A3\data_f\ParticleEffects\Universal\Universal", 16,13,6,0]];
	snow_Array set [4,9];				// lifetime
	snow_Array set [9,1.1015]; 			// volume
	snow_Array set [10,0.4051]; 			// rubbing
	snow_Array set [11,[5,15]];			// size
	snow_Array set [12,[[1,1,1,0],[1,1,1,0.20]]];	// color
	snow_Array set [14,0];				// random direction period
	snow_Array set [15,0];				// random direction intensity

	// snow_Array set [11,[10,4]];
	// snow_Array set [12,[[1,1,1,0.0],[1,1,1,.05],[1,1,1,.1],[1,1,1,.05],[1,1,1,0]]];

	// parent object is slightly forward and is a 25 x 25m square
	snow_Array set [5,[0,_w,8]]; // light
	snow_Rand_Array set [1,[15,25,3]];
	objSnow setParticleParams snow_Array;
	objSnow setParticleRandom snow_Rand_Array;
	objSnow setDropInterval 0;

	// rear object is centered 30m to rear (downwind) and is 30 wide by 15 long/deep
	snow_Array set [5,[0,_wr,8]];
	snow_Rand_Array set [1,[15,30,1]];
	objSnowS setParticleParams snow_Array;
	objSnowS setParticleRandom snow_Rand_Array;
	objSnowS setDropInterval 0;

	// front/right/left (n/e/w) are each rectangle areas 30 long x 15 wide, centered 10m forward
	snow_Array set [5,[0,_w,8]];			// [-left/right, forward/-back, up/-down]
	snow_Rand_Array set [1,[30,15,1]]; 	// [forward/back,left/right,up/down]
	objSnowN setParticleParams snow_Array;
	objSnowN setParticleRandom snow_Rand_Array;
	objSnowN setDropInterval 0;

	snow_Array set [5,[30,_w,8]];
	snow_Rand_Array set [1,[30,15,1]];
	objSnowE setParticleParams snow_Array;
	objSnowE setParticleRandom snow_Rand_Array;
	objSnowE setDropInterval 0;

	snow_Array set [5,[-30,_w,8]];
	snow_Rand_Array set [1,[30,15,1]];
	objSnowW setParticleParams snow_Array;
	objSnowW setParticleRandom snow_Rand_Array;
	objSnowW setDropInterval 0;

	{
		_x setDropInterval 0.09;
	} forEach [objSnow,objSnowN,objSnowS,objSnowW,objSnowE];

	(true);
};
MKY_fnc_heavy_Init = {
	private ["_w","_wr"];
	_w = windStr * 30;
	_wr = windStr * -20;

	snow_Array set [0,["\A3\data_f\ParticleEffects\Universal\Universal", 16,13,6,0]];
	snow_Array set [4,9];				// lifetime
	snow_Array set [9,1.1015]; 			// volume
	snow_Array set [10,0.2051]; 			// rubbing
	snow_Array set [11,[5,15]];			// size
	snow_Array set [12,[[1,1,1,0.0],[1,1,1,.25]]];	// color
	snow_Array set [14,0.7];				// random direction period
	snow_Array set [15,0.3];				// random direction intensity

snow_Array set [11,[10,4]];
snow_Array set [12,[[1,1,1,0.0],[1,1,1,.05],[1,1,1,.1],[1,1,1,.05],[1,1,1,0]]];

	snow_Array set [5,[0,_w,7]];
	snow_Rand_Array set [1,[15,25,1]];
	objSnow setParticleParams snow_Array;
	objSnow setParticleRandom snow_Rand_Array;
	objSnow setDropInterval 0;

	snow_Array set [5,[0,_w,10]];			// [-left/right, forward/-back, up/-down]
	snow_Rand_Array set [1,[30,15,1]]; 	// [forward/back,left/right,up/down]
	objSnowN setParticleParams snow_Array;
	objSnowN setParticleRandom snow_Rand_Array;
	objSnowN setDropInterval 0;

	snow_Array set [5,[0,_wr,10]];
	snow_Rand_Array set [1,[15,30,1]];
	objSnowS setParticleParams snow_Array;
	objSnowS setParticleRandom snow_Rand_Array;
	objSnowS setDropInterval 0;

	snow_Array set [5,[20,_w,10]];
	snow_Rand_Array set [1,[30,15,1]];
	objSnowE setParticleParams snow_Array;
	objSnowE setParticleRandom snow_Rand_Array;
	objSnowE setDropInterval 0;

	snow_Array set [5,[-20,_w,10]];
	snow_Rand_Array set [1,[30,15,1]];
	objSnowW setParticleParams snow_Array;
	objSnowW setParticleRandom snow_Rand_Array;
	objSnowW setDropInterval 0;

	{
		_x setDropInterval 0.03;
	} forEach [objSnowN,objSnowS,objSnow,objSnowW,objSnowE];//

	(true);
};

MKY_fnc_snow_Init = {

	// create the parent particle emitter and attach to the emitter host object (the bucket)
	objSnow = "#particlesource" createVehicleLocal (getPosASL player);

	// create the children emitters that will follow the parent emitter
	objSnowN = "#particlesource" createVehicleLocal (getPosASL player);
	objSnowS = "#particlesource" createVehicleLocal (getPosASL player);
	objSnowE = "#particlesource" createVehicleLocal (getPosASL player);
	objSnowW = "#particlesource" createVehicleLocal (getPosASL player);

	// be sure to wait until emitter host is present
	waitUntil {sleep 1;!(isNil "objEmitterHost")};

	// define a master array for the EFX
	snow_Array = [
		["\A3\data_f\ParticleEffects\Universal\Universal", 16,13,6,0],
		"",
		"Billboard",
		1,					//Time Period
		10,					//LifeTime
		[0,0,0],			//Position - [+right,+forward,+up]
		[0,0,0],			//Velocity
		0,					//rotationVel
		1.59,				//Weight
		1.1015,				//Volume - higher number causes more float (in relation to weight)
		0.4051,				//Rubbing - 0 is no influence of environment, even .0001 is significant.
		[5,15],				//Scale
		[[1,1,1,0.0],[1,1,1,0.15]], //Color
		[1000],				//AnimSpeed
		0,					//randDirPeriod
		0.0,				//randDirIntesity
		"",
		"",
		objSnow
	];

	// define a master random array for the EFX
	snow_Rand_Array = [
		0, 					// random time period
		[0,0,0],			// [+right, +forward, +upward] random position based on position emitter is attached to
		[0,0,0],			// random velocity value
		0,					// random rotation value
		0.5,				// random scale value (ie. .25 or 25% of the declared value in param array)
		[0.0,0,0.0,0.03],	// randomized color
		0,					// random direction period value
		0					// random direction period intensity value
	];

	// attach and set parent emitter
	objSnow attachTo [objEmitterHost,[0,0,0]];
	objSnow setParticleClass "HousePartDust";
	objSnow setParticleCircle [0.0,[0,0,0]];
	objSnow setDropInterval 0;

	// for each child emitter, set class/circle and attach
	{
		_x setParticleClass "HousePartDust";
		_x setParticleCircle [0.0,[0,0,0]];
		_x attachTo [objSnow,[0,0,0]];
		_x setDropInterval 0;
	} forEach [objSnowN,objSnowS,objSnowE,objSnowW];

	(true);
};
f_handle_Respawn = {
// simple event handler would sometimes fail to reattach the objEmitterHost
// calling a function like this appears to work every time
	private ["_unit","_body"];
	_unit = (_this select 0);
	_body = (_this select 1);
	// detach from dead body
	detach objEmitterHost;
	// attach to new body
	objEmitterHost attachTo [player,[0,0,0]];
	if !(isNil "objEmitterHost") then {
		{
			_x setPosATL (getPosATL player);
		} forEach [objEmitterHost,objSnow,objSnowN,objSnowW,objSnowS,objSnowE];
	};

	(true);
};
///////////////////////////////////////////////////////////////

private ["_arFog_org","_arFog","_intOvercast_org","_intOvercast"];

MKY_bAllowRain = false; 				// global boolean - default stop rain during snow
bDoSetDirection = false; 			// global boolean - used to toggle setting direction of objEmitterHost
MKY_bVaryFog = true; 					// global boolean - used to vary the amount of fog and reset the elevation
MKY_bUseAudio = true;					// global boolean - used to enable/disable playing of audio file

// varEnableSnow = false; 			// needed for testing only

// allow rain during snow
if ((count _this) > 3) then {if (typeName (_this select 3) == "BOOL") then {MKY_bAllowRain = (_this select 3);};};
// allow fog variation
if ((count _this) > 4) then {if (typeName (_this select 4) == "BOOL") then {MKY_bVaryFog = (_this select 4);};};
// use wind audio if allowed
if ((count _this) > 5) then {if (typeName (_this select 5) == "BOOL") then {MKY_bUseAudio = (_this select 5);};};

// create an object that hosts the particle emitters
0 = [] call MKY_fnc_create_Emitter_Host;

// add event handler to always reattach the emitter host to new player vehicle
if (isNil "bool_Respawn") then {bool_Respawn = player addEventHandler ["Respawn",f_handle_Respawn];};

// prepare overcast
_intOvercast_org = overcast;
if ((count _this) > 1) then {
	if (typeName (_this select 1) == "SCALAR") then {
		_oldWind = wind;
		_oldWindStr = windStr;
		_oldGusts = gusts;
		skipTime -24;
		86400 setOvercast (_this select 1);
		skipTime 24;
		0 = [] spawn {
			sleep 0.1;
			simulWeatherSync;
		};
		sleep 1;
		setWind [(_oldWind select 0),(_oldWind select 2),true];
		sleep 0.1;
		0 setWindStr _oldWindStr;
		sleep 0.1;
		0 setGusts _oldGusts;
		sleep 0.1;
	};
};
sleep 2;

// prepare ppEffect
if ((count _this) > 2) then {
	if (typeName (_this select 2) == "BOOL") then {
		if (_this select 2) then {
			0 = [] call MKY_fnc_ppEffect_On;
		};
	};
};

// start audio
if (MKY_bUseAudio) then {
	eh_MKYaudio = addMusicEventHandler ["MusicStop",{playMusic "MKY_Blizzard";}];
	playMusic "MKY_Blizzard";
};

// prepare fog
_arFog_org = fogParams;
if ((count _this) > 0) then {
	if (typeName (_this select 0) == "ARRAY") then {
		0 setFog (_this select 0); // can use a delay if needed, its at 0 for black out / black in
		if (MKY_bVaryFog) then {
			// create variance in fog values
			[((_this select 0) select 0),((_this select 0) select 1),((_this select 0) select 2)] spawn {
				sleep 20; // give initial setFog time to change
				while {true} do {
					while {varEnableSnow} do {
						sleep 30;
						20 setFog [(_this select 0),(_this select 1),((getPosASL player) select 2) + ([-15,15] call BIS_fnc_randomInt)];;
					};
					sleep 5;
				};
			};
		};
	};
};

// continually set rain value (regardless of mod/addon weather system, no rain with snow !)
[] spawn {
	while {true} do {
		_iCnt = 0;
		while {varEnableSnow} do {
			sleep 1;
			if !(MKY_bAllowRain) then {0 setRain 0;};
			_iCnt = _iCnt + 1;
			if (_iCnt >= 8) then {
				if !(isNil "objSnow") then {
					{
						_x setPosATL (getPosATL player);
					} forEach [objSnow,objSnowN,objSnowW,objSnowS,objSnowE];
				};
				_iCnt = 0;
			};

		};
		sleep 1;
	};
};

while {true} do {

	if (varEnableSnow) then {

		/*
			each mission may be different, but you might need to wait to create the particles
			if the player will be moved. Here we are going to wait for player to NOT be
			at the 0,0,0 position, which would indicate preparations have been met and things are
			ready to go
			waitUntil {sleep 1; (player distance [0,0,0] > 100)};
		*/

		// spawn thread that continually sets direction of emitter host
		0 = [] call MKY_fnc_set_Object_Direction;

		// create the emitters
		0 = [] call MKY_fnc_snow_Init;

		/*
			this was a good spot to blackin because the weather and fog changing is done
			you can comment it out if not using blackout/in or move it somewhere else
		*/
		//~ titleText ["","BLACK IN",4];

		// wait for varSnowData to be publicized
		waitUntil {sleep 1;!(isNil "varSnowData")};

		_intIndex = "SCALAR";
		_intDI = "SCALAR";

		// create the while loop here, until varEnableSnow is false
		while {varEnableSnow} do {
			// is current local EFX type different from servers publicized EFX type ??
			if !(_intIndex isEqualTo (varSnowData select 0)) then {
				// get what the server has stated is current
				_intIndex = (varSnowData select 0);
				// 0 should not exist usually, but will make precautions anyway !!
				if (_intIndex == 0) then {([1,2,3] call BIS_fnc_selectRandom);};
				// process according to which EFX type is present
				switch (_intIndex) do {
					case 1: {0 = [] call MKY_fnc_light_Init;};
					case 2: {0 = [] call MKY_fnc_moderate_Init;};
					case 3: {0 = [] call MKY_fnc_heavy_Init;};
				};
			};
			// is current local dropInterval different from servers value ?
			if !(_intDI isEqualTo (varSnowData select 1)) then {
				if ((typeName (varSnowData select 1)) == "SCALAR") then {
					// get servers current value
					// lack of value or not of SCALAR type is normal, so ignore
					// this value is available for customization of each EFX
					_intDI = (varSnowData select 1);
					0 = [_intDI] call MKY_fnc_setDI;
				};

			};
			sleep 1;
		};

		// remove effects and exit
		0 = [] call MKY_fnc_ppEffect_Off;
		if ((count _this) > 0) then {if (typeName (_this select 0) == "ARRAY") then {60 setFog _arFog_org;};};
		// leave overcast as it is
		0 = [] call MKY_fnc_Exit_Snow;
	};
	sleep 1;
};
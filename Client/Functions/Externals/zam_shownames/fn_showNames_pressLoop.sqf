/*
	Author(s):
		Phoenix of Zulu-Alpha
		LH

	Purpose:
		Continually gather variables to feed into global variable used by zam_showNames_fnc_onEachFrame in order to offload processing. Must be spawned!

	Params
		[_objects, _player, _player_side, _isGroup, _ambient_light, _dist_man, _dist_ruck, _dist_misc, _dist_man_id]

	Return
		Nothing
*/

// To make sure only one of these loops are running at a time. Var will be deleted when done.
if !(isNil "ZAM_showNames_var_loopExlusion_pressLoop") exitWith {/*hint "I tried to run more than one loop at once"*/};
ZAM_showNames_var_loopExlusion_pressLoop = 1;

private ["_objects", "_dist_man", "_isGroup", "_dist_ruck", "_ambient_light", "_player", "_ambient_light", "_dist_man_id", "_magn", "_vd", "_temp_array", "_isGroup"];

_objects = _this select 0;
_player = _this select 1;
_player_side = _this select 2;
_isGroup = _this select 3;
_ambient_light = _this select 4;
_dist_man = _this select 5;
_dist_ruck = _this select 6;
_dist_misc = _this select 7;
_dist_man_id = _this select 8;

// Safety
if (isNil "ZAM_showNames_var_drawJobs") then {ZAM_showNames_var_drawJobs = []};


//===================== Code run continuously to update name tags =====================
for "" from 0 to 1 step 0 do {

	// Loop ends when the key is released
	if !(ZAM_showNames_on) exitWith {};

	private ["_player_eye_pos", "_magn", "_magn_top", "_magn_bottom", "_fade_ambi", "_fade_optic", "_vd_player", "_currentJobs", "_count_currentJobs", "_count_jobs"];

	_player_eye_pos = eyePos _player;

	// Magnification due to zoom
	_magn = if (ZAM_showNames_magn) then {
		call zam_fnc_showNames_getZoom
	} else {1};

	// Default view distance
	_vd_player = viewDistance;

	// Fade effect intial values
	if (ZAM_showNames_fade) then {
		_fade_ambi = 0.5 + (_ambient_light * 0.5);	// Ambient light effect on fog coefficient, to be applied to fade later (0->1)

		_fade_optic = if (currentVisionMode player == 2) then {0} else {1};	// Disable use with thermals

		// For making the name tag fade even more with fog
		if ((fog != 0) && {ZAM_showNames_fog}) then {
			_vd_player = ((_player_eye_pos select 2) call zam_fnc_showNames_getFogViewDistance) * 0.77 // Multiplier To exaggerate fog effect
		};
	};

	// Current objects to draw (needed for garbage collector)
	_currentJobs = [];


	//===================== Code run for each unit =====================
	{

		// Check if non existant
		if (isNull _x) exitWith {};

		private ["_distance", "_isKnown", "_isSpeaking", "_x_eye_pos", "_same_side", "_height_mod", "_text_size_max", "_height", "_colour_r", "_colour_g", "_colour_b", "_volume", "_alpha", "_vd", "_vd_x", "_vd_fog", "_fade_atmo", "_m", "_c", "_rank_path", "_icon_size", "_name_tag", "_name_new", "_team", "_team_name", "_font", "_icon_size_base", "_text_size", "_ruck_pos", "_vd_id", "_height_mod_icon", "_vd_fog_mod_x", "_index"];

		// For making objects smaller with distance
		_distance = _x distance _player;

		// High performance switch statement for handling different kinds of objects
		// Introduced for backpacks
		call {

			//------------ For People ------------
			if (_x isKindOf "man") exitWith {

				// Same side?
				_same_side = _player_side == side (group _x);

				// Check if known
				_isKnown = if ZAM_showNames_knowledge then {
					_x getVariable ["zam_showNames_isKnown", false]
				} else {true};

				// Set to known if close enough
				if ( !_isKnown && {_same_side || {_distance < _dist_man_id}} ) then {
					_x setVariable ["zam_showNames_isKnown", true];
					_isKnown = true;
				};

				// Name tag (switch like statement for planned expansion)
				_name_tag = call {

					// Not known
					if (!_isKnown) exitWith {""};

					// If it has been given a name
					_name_new = _x getVariable ["zam_showNames_name", ""];
					if (_name_new != "") exitWith {_name_new};

					// Dead perhaps
					_name_tag = name _x;
					if (_name_tag == "Error: No unit") exitWith {""};

					// Uses it's origional name
					_name_tag

				};

				// If group differentiation applicable, handle Font size and icon size
				if ( ZAM_showNames_group && (group _player == group _x) ) then {
					_font = zam_shownames_var_bigFont;
					_icon_size_base = 4.9;
				} else {
					_font = zam_shownames_var_smallFont;
					_icon_size_base = 4.9;
				};

				// Apply additions to name tag (group/team names, etc)
				if ( (_name_tag != "") && _same_side) then {

					// If in same group then team names in round brackets
					if ( ZAM_showNames_group_teams && (group _player == group _x) ) then {

						// Switch statement for different team names, as they cant be added directly to name tag
						_team_name = call {
							_team = assignedTeam _x;
							if (_team == "MAIN") exitWith {""};	// Not used at all if not in sub team
							if (_team == "RED") exitWith {"R"};
							if (_team == "GREEN") exitWith {"G"};
							if (_team == "BLUE") exitWith {"B"};
							if (_team == "YELLOW") exitWith {"Y"};
							""
						};

						// If in main team then don't waste space by adding a team name extension
						if (_team_name == "") exitWith {};

						// Add name tag extension
						_name_tag = "(" + _team_name + ")" + _name_tag;

					};

					// If in another group then group names in square brackets
					if ( ZAM_showNames_group_names_toggle && (group _player != group _x) ) then {
						_name_tag = "[" + groupId group _x + "] " + _name_tag;
					};

				};

				// Eye pos
				_x_eye_pos = eyePos _x;

				// Tweak height depending on state
				call {
					// In a vehicle
					if ((vehicle _x) != _x) exitWith {
						_text_size_max = 0.08; // was 0.05 (then 0.035)
						_height_mod = -1;
					};
					// Crouching
					if ((stance _x) == "CROUCH") exitWith {
						_text_size_max = 0.08; // was 0.15 (then 0.105)
						_height_mod = -0.4;
					};
					// Prone
					if ((stance _x) == "PRONE") exitWith {
						_text_size_max = 0.08; // was 0.15 (then 0.105)
						_height_mod = 0.03;
					};
					// Default (Standing)
					_text_size_max = 0.08; // was 0.15 (then 0.105)
					_height_mod = 0.1;
				};

				// Apply rank option
				call {
					if (ZAM_showNames_ranks && {_same_side && _isKnown}) exitWith {
						//set rank according to current score
						_rank = (_x) call CTI_CO_FNC_GetUnitsRank;
					
						_rank_path = [rank _x] call ZAM_fnc_showNames_getRankIcon;
						_icon_size = ((_icon_size_base / (_distance max 0.01)) * _magn) min 1.8;	// Cap icon size (was 7 and 2)
						_height_mod_icon = 0.10;					// Edit name height due to rank icon
					};
					_rank_path = "";
					_icon_size = 0.01;
					_height_mod_icon = 0;
				};

				// Text size
				_text_size = ((1 / (_distance max 0.01)) * _magn) min _text_size_max;	// Cap text size (was 0.55)

				// Height above head
				_height = _height_mod + _height_mod_icon;

				// Max ID range
				_vd_id = _dist_man;

				// Fog effect exaggeration modifier (How easily an object can be identified through fog by it's nature, lower is worse)
				_vd_fog_mod_x = 0.77;

				// Handle colors
				if (ZAM_showNames_voice) then {
					_volume = [_x, _player] call zam_fnc_showNames_vol;
					_colour_r = (_ambient_light + _volume) min 1;	// Add red proportional to volume	(cap 1)
					_colour_g = (_ambient_light - _volume) max 0;	// Subtract other colors proportional to volume	(floor 0)
					_colour_b = (_ambient_light - _volume) max 0;	// Subtract other colors proportional to volume	(floor 0)
				} else {
					_colour_r = _ambient_light_r;
					_colour_g = _ambient_light_g;
					_colour_b = _ambient_light_b;
				};

			};
			//------------------------------------


			//------------ For rucks -------------
			if (_x isKindOf "GroundWeaponHolder") exitWith {
				_name_tag = (firstBackpack _x) getVariable ["zam_showNames_tag", "No tag!"];
				_font = zam_shownames_var_smallFont;
				_text_size = ((0.16 / (_distance max 0.01)) * _magn) min 0.08;	// Cap text size (was 0.2 and 0.1)
				_ruck_pos = getPosASL _x;
				_x_eye_pos = [_ruck_pos select 0, _ruck_pos select 1, (_ruck_pos select 2) + 0.25];
				_rank_path = "";
				_icon_size = 0.01;
				_height = - 1.65;
				_vd_id = _dist_ruck;
				_vd_fog_mod_x = 0.4;
				_colour_r = _ambient_light_r;
				_colour_g = _ambient_light_g;
				_colour_b = _ambient_light_b;
			};
			//------------------------------------


			//------------ For Misc --------------
				_name_tag = _x getVariable ["zam_showNames_name", ""];
				_font = zam_shownames_var_smallFont;
				_text_size = ((0.16 / (_distance max 0.01)) * _magn) min 0.08;	// Cap text size (was 0.2 and 0.1)
				_ruck_pos = getPosASL _x;
				_x_eye_pos = [_ruck_pos select 0, _ruck_pos select 1, (_ruck_pos select 2) + 0.25];
				_rank_path = "";
				_icon_size = 0.01;
				_height = - 1.65;
				_vd_id = _dist_misc;
				_vd_fog_mod_x = 0.77;
				_colour_r = _ambient_light_r;
				_colour_g = _ambient_light_g;
				_colour_b = _ambient_light_b;
			//------------------------------------

		};


		// For making name tag fade with distance
		_alpha = if (ZAM_showNames_fade) then {

			// Visual ID distance (Take into account fog at both player's and x's positions and magnification)
			_vd = if ((fog != 0) && {ZAM_showNames_fog}) then {

				// _x's view distance
				_vd_x = ((_x_eye_pos select 2) call zam_fnc_showNames_getFogViewDistance) * _vd_fog_mod_x;

				// Pick the smallest view distance
				_vd_fog = _vd_player min _vd_x;

				// View distance
				_vd_fog min (_vd_id * _magn)	// Either max ID range (with magnification taken into account) or fog reduces it

			} else {_vd_id * _magn};

			// Atmospheric deterioratation with distance (based on straight line eq with y= coeff 0->1, m=-0.0002, x=distance, c=1)
			_fade_atmo = ( -0.00025 * _distance + 1 ) max 0.0001;

			// Straight line equation to get alpha effect with distance.
			// Fade level depends on fade coefficients (ambient light and simulated atmospheric distortion with distance), effective visual ID distance (factoring in fog, magnification and VD settings).
			_c = 1;
			_m = (0 - _c) / _vd * _fade_ambi * _fade_atmo;	// Denominator is visual distance with fade effect coefficients and magnification. Min for safety
			(_m * _distance + _c) * _fade_optic	// Factor in optical mode

		} else {1};

		_alpha = (_alpha max 0) min 1;	// Needs to be 0->1

		// For debug of LOS
		//drawLine3D [[_player_eye_pos select 0, _player_eye_pos select 1, (getPosATL _player select 2) + (_player_eye_pos select 2) - (getPosASL _player select 2)],_x_eye_pos, [1,0,0,1]];

		// If player in vehicle and viewing through optics, then set player to that vehicle to ignore it in LOS checks
		if ((vehicle _player != _player) && (cameraView == "GUNNER")) then {_player = vehicle _player};

		// add draw job (if line of sight)
		if (!lineIntersects [_player_eye_pos, _x_eye_pos, _player, _x] and {!terrainIntersectASL [_player_eye_pos, _x_eye_pos]}) then {

			// Add object to array of current objects if not already there
			_index = _currentJobs find _x;
			if (_index == -1) then {_index = count _currentJobs};
			_currentJobs set [_index, _x];

			// Add object or update object in/to draw job by mirroring _currentJobs index
			// [texture, color, [object, height], width, height, angle, text, shadow, textSize, font]
			ZAM_showNames_var_drawJobs set [_index,
				[
					_rank_path,
					[_colour_r, _colour_g, _colour_b, _alpha],
					[_x, _height],
					_icon_size,
					_icon_size,
					0,
					_name_tag,
					0,
					_text_size,
					_font
				]
			];
		};

	} count _objects;
	//===================== /End Code run for each unit =====================


	// Remove any extra draw jobs in ZAM_showNames_var_drawJobs that aren't current anymore (not in _currentJobs)
	_count_currentJobs = count _currentJobs;
	_count_jobs = count ZAM_showNames_var_drawJobs;

	if (_count_jobs > _count_currentJobs) then {
		ZAM_showNames_var_drawJobs resize _count_currentJobs;
	};

	//hint format ["ZAM_showNames_fnc_pressLoop count: %1", count ZAM_showNames_var_drawJobs];
		
	// Update sun/moon
	_ambient_light = sunormoon;
	if (_ambient_light > 0.4) then {
		_ambient_light_r = 0.77;
		_ambient_light_g = 0.51;
		_ambient_light_b = 0.08;
	} else {
		_ambient_light_r = _ambient_light;
		_ambient_light_g = _ambient_light;
		_ambient_light_b = _ambient_light;
	};
	
	//////////////////////////////////////////////////////////////////////////////////UPDATE OBJECTS	
	if(ZAM_showNames_default_on) then {
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
	};
	//////////////////////////////////////////////////////////////////////////////////END UPDATE	
	

	// Delay
	sleep ZAM_showNames_var_pressLoop_delay;


};
//===================== /End Code run continuously to update name tags =====================

// Allow new loop to start later
ZAM_showNames_var_loopExlusion_pressLoop = nil;

//hint format ["ZAM_showNames_fnc_pressLoop  ended"];
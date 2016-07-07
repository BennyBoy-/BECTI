// Parameter(s): createmenu
		// _this select 0 - STRING or ARRAY - Name of menu or [Name, Context sensitive]
		// _this select 1 - STRING - Variable in which will be menu params stored (as variable_0, variable_1, ...)
		// _this select 2 - ARRAY - Array with menu items (can be either [items] or [[items],[itemNames],[itemEnable]] if you want to set custom params (names, enable values))
		// _this select 3 - STRING - Name of submenu which will open when item is activated. Name of selected item is passed to string as %1
		// _this select 4 - STRING - Expression which is executed when item is activated. Name of selected item is passed to string as %1, ID is %2.
		// _this select 5 - ANYTHING (Optional) - params passed to expression. Whole argument is passed as %3
		// _this select 6 - BOOLEAN - False to hide number shortcuts

//--- Param
_origin = _this select 0;
_source = _this select 1;
_areaSize = _this select 2;

_startPos = getPos _origin;
/*
//--- HQ Area checkin
_area_max = false;
if (_source == 'HQ') then {
	_in_area = false;
	{if ([_startPos select 0, _startPos select 1] distance [_x select 0, _x select 1] <= CTI_BASE_AREA_RANGE) exitWith {_in_area = true}} forEach (CTI_P_SideLogic getVariable "cti_structures_areas");
	
	if !(_in_area) then {
		if (count (CTI_P_SideLogic getVariable "cti_structures_areas") < (missionNamespace getVariable "CTI_BASE_AREA_MAX")) then {
			CTI_P_SideLogic setVariable ["cti_structures_areas", (CTI_P_SideLogic getVariable "cti_structures_areas") + [[_startPos select 0, _startPos select 1]], true];
		} else {
			_area_max = true;
		};
	};
};

if (_area_max) exitWith {hint parseText "<t size='1.3' color='#2394ef'>Information</t><br /><br />The base area limit has been reached."};*/

if !(isNil {missionNamespace getVariable "CTI_COIN_CAMCONSTRUCT"}) exitWith {};

112200 cutRsc ["CTI_ConstructionInterface", "plain"]; 
uiNamespace setVariable ["CTI_COIN_DISPLAY", finddisplay 46];

//--- Hide the other titles if needed
if !(isNull (uiNamespace getVariable "cti_title_capture")) then {
	600200 cutFadeOut 1;
};

//--- Initialize some variables and create the construction camera
with missionNamespace do {
	//--- Wipe the previous variables just in case
	CTI_COIN_EXIT = false;
	CTI_COIN_HELPER = objNull;
	CTI_COIN_KEYS = [];
	CTI_COIN_MENU = nil;
	CTI_COIN_MENUTRANS = false;
	CTI_COIN_PARAM = nil;
	CTI_COIN_PARAM_KIND = nil;
	CTI_COIN_PREVIEW = nil;
	CTI_COIN_LASTFUNDS = [0,0];
	
	//--- Define the source parameters
	CTI_COIN_SOURCE = _source;
	CTI_COIN_ORIGIN = _origin;
	CTI_COIN_RANGE = _areaSize select 0;
	
	//--- Define the colors
	CTI_COIN_COLOR_INVALID = "#ff3333";
	CTI_COIN_COLOR_INVALID_UI = [1,0.2,0.2,0.4];
	CTI_COIN_COLOR_VALID = "#42b6ff";
	CTI_COIN_COLOR_VALID_UI = [0.259,0.713,1,0.3];
	CTI_COIN_COLOR_OUTOFRANGE = "#bababa";
	CTI_COIN_COLOR_OUTOFRANGE_UI = [1,1,1,0.1];

	//--- Create the construction camera
	CTI_COIN_CAMCONSTRUCT = "camconstruct" camCreate [_startPos select 0, _startPos select 1, 15];
	CTI_COIN_CAMCONSTRUCT cameraEffect ["internal","back"];
	CTI_COIN_CAMCONSTRUCT camPrepareFov 0.900;
	CTI_COIN_CAMCONSTRUCT camPrepareFocus [-1,-1];
	CTI_COIN_CAMCONSTRUCT camCommitPrepared 0;
	cameraEffectEnableHUD true;
	CTI_COIN_CAMCONSTRUCT setdir direction player;
	[CTI_COIN_CAMCONSTRUCT, -30, 0] call BIS_fnc_setPitchBank;
	CTI_COIN_CAMCONSTRUCT camConstuctionSetParams ([_startPos] + _areaSize);
	
	//--- Apply NVG or not depending on the daytime
	_nvgstate = if (daytime > 18.5 || daytime < 5.5) then {true} else {false};
	camUseNVG _nvgstate;
	CTI_COIN_CAMUSENVG = _nvgstate;
	
	//--- We add the Display EH which the camera use
	CTI_COIN_DISPLAYEH_KEYDOWN = (uiNamespace getVariable "CTI_COIN_DISPLAY") displayAddEventHandler ["KeyDown", {(_this) call CTI_Coin_OnKeyDown}];
	CTI_COIN_DISPLAYEH_KEYUP = (uiNamespace getVariable "CTI_COIN_DISPLAY") displayAddEventHandler ["KeyUp", {(_this) call CTI_Coin_OnKeyUp}];
	CTI_COIN_DISPLAYEH_MOUSESCROLL = (uiNamespace getVariable "CTI_COIN_DISPLAY") displayAddEventHandler ["MouseZChanged", {(_this select 1) spawn CTI_Coin_OnMouseZChanged}];
	CTI_COIN_DISPLAYEH_MOUSECLICK = (uiNamespace getVariable "CTI_COIN_DISPLAY") displayAddEventHandler ["MouseButtonDown", {(_this) spawn CTI_Coin_OnMouseButtonDown}];
};

showCinemaBorder false;

//--- Load up the initial menu
_categories = _source call CTI_Coin_CreateRootMenu;

showCommandingMenu "#USER:CTI_COIN_Categories_0";
_last_collision_update = -100;
_last_menu = "";
_last_wallalign = false;
_last_autodefense = false;

with missionNamespace do {
	CTI_COIN_CATEGORIES = _categories;
	
	while {!isNil 'CTI_COIN_CAMCONSTRUCT' && !CTI_COIN_EXIT && alive player} do {
		//--- Check if the HQ was mobilized/deployed
		if (CTI_COIN_SOURCE == 'HQ' && isNull CTI_COIN_ORIGIN) then {
			_hq = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideHQ;
			if (alive _hq) then {CTI_COIN_ORIGIN = _hq};
		};
		
		//--- Abort if the source is destroyed
		if !(alive CTI_COIN_ORIGIN) exitWith {};
		
		//--- Parameters are set, a preview is being created or is being moved
		if !(isNil 'CTI_COIN_PARAM') then {
			if (isNil 'CTI_COIN_PREVIEW') then {
				_preview = objNull;
				_hq_mobilize = false;
				switch (CTI_COIN_PARAM_KIND) do {
					case 'STRUCTURES': {
						_preview = (CTI_COIN_PARAM select 1) select 0;
						if (((CTI_COIN_PARAM select 0) select 0) == CTI_HQ_MOBILIZE) then {_hq_mobilize = true};
						if (count(CTI_COIN_PARAM select 4) < 3) then {CTI_COIN_HELPER = "Sign_Arrow_Large_Blue_F" createVehicleLocal [0,0,0]};
					};
					case 'DEFENSES': {
						_preview = CTI_COIN_PARAM select 1;
					};
				};
				
				//--- We're dealing with something else than the HQ
				if !(_hq_mobilize) then {
					//--- Create the preview item
					_preview_item = _preview createVehicleLocal (screenToWorld [0.5,0.5]);
					_preview_item allowDamage false;
					if !(isNil 'CTI_COIN_LASTDIR') then {_preview_item setDir CTI_COIN_LASTDIR};
					CTI_COIN_DIR = getDir _preview_item;
					
					//--- Update the overlay description
					(_preview_item) call CTI_Coin_UpdatePreview;
					
					//--- Attach the preview item to the camera
					CTI_COIN_CAMCONSTRUCT camSetTarget _preview_item;
					CTI_COIN_CAMCONSTRUCT camCommit 0;
					CTI_COIN_PREVIEW = _preview_item;
					
					//--- Remove collision again
					_last_collision_update = -1;
				} else { //--- The HQ is mobilized
					call CTI_Coin_OnHQMobilized;
				};
			} else {
				//--- Update the direction to prevent it from moving by itself on sloppy hills
				CTI_COIN_PREVIEW setDir CTI_COIN_DIR;
				CTI_COIN_PREVIEW setVectorUp [0,0,0];
				if (time - _last_collision_update > 2) then {_last_collision_update = time;{CTI_COIN_PREVIEW disableCollisionWith _x} forEach (CTI_COIN_PREVIEW nearEntities 150)};
				
				//--- Update the coloration if needed
				(CTI_COIN_PREVIEW) call CTI_Coin_UpdatePreview;
				
				//--- Update the helper
				if !(isNull CTI_COIN_HELPER) then {
					_direction_structure = (CTI_COIN_PARAM select 4) select 0;
					_distance_structure = (CTI_COIN_PARAM select 4) select 1;
					_helper_pos = CTI_COIN_PREVIEW modelToWorld [(sin (360 -_direction_structure) * _distance_structure), (cos (360 -_direction_structure) * _distance_structure), 0];
					_helper_pos set [2, 0];
					CTI_COIN_HELPER setPos _helper_pos;
					CTI_COIN_HELPER setDir direction CTI_COIN_PREVIEW;
				};
			};
		} else { //--- The player's commanding menu is gone
			if (commandingMenu == '' && !CTI_COIN_MENUTRANS) then {
				showCommandingMenu '#USER:CTI_COIN_Categories_0';
			};
		};
		
		//--- Check if the funds overlay control need an update
		_update = false;
		if (_source == 'HQ') then {
			if ((CTI_P_SideJoined call CTI_CO_FNC_GetSideSupply) != (CTI_COIN_LASTFUNDS select 0)) then {_update = true};
			if ((call CTI_CL_FNC_GetPlayerFunds) != (CTI_COIN_LASTFUNDS select 1)) then {_update = true};
			CTI_COIN_LASTFUNDS set [0, CTI_P_SideJoined call CTI_CO_FNC_GetSideSupply];
			CTI_COIN_LASTFUNDS set [1, call CTI_CL_FNC_GetPlayerFunds];
		} else {
			if ((call CTI_CL_FNC_GetPlayerFunds) != (CTI_COIN_LASTFUNDS select 1)) then {_update = true};
			CTI_COIN_LASTFUNDS set [1, call CTI_CL_FNC_GetPlayerFunds];
		};
		
		//--- Update the overlay control if needed along with the current menu
		if (_update) then {
			//--- Since the cash changed, we have to reload the commanding menus
			(CTI_COIN_CATEGORIES) call CTI_Coin_LoadSubMenu;
			showCommandingMenu commandingMenu;
			
			//--- Update the overlay cash controls
			_cashValues = "";
			_cashSize = 2;
			if (_source == 'HQ') then {
				_cashValues = _cashValues + format ["S %1<br />", CTI_P_SideJoined call CTI_CO_FNC_GetSideSupply];
				_cashValues = _cashValues + format ["$ %1<br />", call CTI_CL_FNC_GetPlayerFunds];
				_cashSize = 1.4;
			} else {
				_cashValues = _cashValues + format ["$ %1<br />", call CTI_CL_FNC_GetPlayerFunds];
			};
			
			_cashText = format ["<t color='#42b6ff' shadow='2' size='%1' align='left' valign='middle'>%2</t>", _cashSize, _cashValues];
			((uiNamespace getVariable "cti_title_coin") displayCtrl 112224) ctrlSetStructuredText (parseText _cashText);
			((uiNamespace getVariable "cti_title_coin") displayCtrl 112224) ctrlCommit 0;
		};
		
		//--- Update the controls if the menu differs from the last
		if (commandingMenu != _last_menu) then {
			_textControls = "";
			
			if (isNil 'CTI_COIN_PREVIEW') then { //--- Menu browsing
				_textAlign = format["<t color='#42b6ff' shadow='2' size='1'>Auto Align:<t align='right'>%1</t></t><br />", actionKeysNames ["Diary", 1]];
				_textAutoDefense = format["<t color='#42b6ff' shadow='2' size='1'>Auto Defense:<t align='right'>%1</t></t><br />", actionKeysNames ["Gear", 1]];
				_textControls = format ["%1%2", _textAutoDefense, _textAlign];
				if (commandingMenu == "#USER:CTI_COIN_Categories_0") then {
					_textControls = _textControls + format ["<t color='%2' shadow='2' size='1'>Exit:<t align='right'>%1</t></t>", actionKeysNames ["NavigateMenu", 1], CTI_COIN_COLOR_INVALID];
				} else {
					_textControls = _textControls + format ["<t color='#42b6ff' shadow='2' size='1'>Back:<t align='right'>%1</t></t>", actionKeysNames ["NavigateMenu", 1]];
				};
			} else { //--- Preview mode
				_textBuild = format["<t color='#42b6ff' shadow='2' size='1'>Build:<t align='right'>%1</t></t><br />", actionKeysNames ["DefaultAction", 1]];
				_textRotate = format["<t color='#42b6ff' shadow='2' size='1'>Rotate:<t align='right'>%1</t></t><br />", actionKeysNames ["PrevAction", 1]];
				_textQuit = format["<t color='#42b6ff' shadow='2' size='1'>Back:<t align='right'>%1</t></t>", actionKeysNames ["NavigateMenu", 1]];
				
				_textControls = format["%1%2%3", _textBuild, _textRotate, _textQuit];
			};
			
			((uiNamespace getVariable "cti_title_coin") displayCtrl 112215) ctrlSetStructuredText (parseText _textControls);
			((uiNamespace getVariable "cti_title_coin") displayCtrl 112215) ctrlCommit 0;
			
			_last_menu = commandingMenu;
		};
		
		//--- Update Wall Alignment icon if needed (and if enabled)
		if !(_last_wallalign isEqualTo (profileNamespace getVariable ["CTI_COIN_WALLALIGN", true])) then {
			_last_wallalign = profileNamespace getVariable ["CTI_COIN_WALLALIGN", true];
			
			_color = CTI_COIN_COLOR_OUTOFRANGE_UI;
			if (profileNamespace getVariable ["CTI_COIN_WALLALIGN", true]) then {
				_color_valid_lum = +CTI_COIN_COLOR_VALID_UI;
				_color_valid_lum set [3, 0.6];
				_color = _color_valid_lum;
			};
			
			((uiNamespace getVariable "cti_title_coin") displayCtrl 112216) ctrlSetTextColor _color;
			((uiNamespace getVariable "cti_title_coin") displayCtrl 112216) ctrlCommit 0;
		};
		
		//--- Update Auto defense icon if needed (and if enabled)
		if (!(_last_autodefense isEqualTo (profileNamespace getVariable ["CTI_COIN_AUTODEFENSE", true])) && CTI_BASE_DEFENSES_AUTO_LIMIT > 0) then {
			_last_autodefense = profileNamespace getVariable ["CTI_COIN_AUTODEFENSE", true];
			
			_color = CTI_COIN_COLOR_OUTOFRANGE_UI;
			if (profileNamespace getVariable ["CTI_COIN_AUTODEFENSE", true]) then {
				_color_valid_lum = +CTI_COIN_COLOR_VALID_UI;
				_color_valid_lum set [3, 0.6];
				_color = _color_valid_lum;
			};
			
			((uiNamespace getVariable "cti_title_coin") displayCtrl 112217) ctrlSetTextColor _color;
			((uiNamespace getVariable "cti_title_coin") displayCtrl 112217) ctrlCommit 0;
		};
		
		sleep .01;
	};
};

//--- Cleanup
with missionNamespace do {
	//--- Cleanup the preview if needed
	if !(isNil 'CTI_COIN_PREVIEW') then {deleteVehicle CTI_COIN_PREVIEW};
	
	//--- Remove the Construction Overlay
	112200 cutText ["", "plain"];
	
	//--- Remove the menu
	showCommandingMenu '';
	
	//--- We add the Display EH which the camera use
	(uiNamespace getVariable "CTI_COIN_DISPLAY") displayRemoveEventHandler ["KeyDown", CTI_COIN_DISPLAYEH_KEYDOWN];
	(uiNamespace getVariable "CTI_COIN_DISPLAY") displayRemoveEventHandler ["KeyUp", CTI_COIN_DISPLAYEH_KEYUP];
	(uiNamespace getVariable "CTI_COIN_DISPLAY") displayRemoveEventHandler ["MouseZChanged", CTI_COIN_DISPLAYEH_MOUSESCROLL];
	(uiNamespace getVariable "CTI_COIN_DISPLAY") displayRemoveEventHandler ["MouseButtonDown", CTI_COIN_DISPLAYEH_MOUSECLICK];

	//--- We remove the camera
	if !(isNil 'CTI_COIN_CAMCONSTRUCT') then {
		CTI_COIN_CAMCONSTRUCT cameraEffect ["terminate","back"];
		camDestroy CTI_COIN_CAMCONSTRUCT;
	};
	
	CTI_COIN_CAMCONSTRUCT = nil;
};
//--- Used to create the root menu
CTI_Coin_CreateRootMenu = {
	params["_source"];
	private ["_categories"];
	
	_categories = switch (_source) do {
		case "HQ": {
			[
				["CTI_COIN_Items_0", "CTI_COIN_Items_1"],
				["Base", "Defenses"],
				[1, 1]
			]
		};
		case "RepairTruck": {
			[
				["CTI_COIN_Items_1"],
				["Defenses"],
				[1]
			]
		};
		default {[[]]};
	};
	
	if (count _categories > 0) then {
		["Construction Menu", "CTI_COIN_Categories", _categories, "#USER:%1_0", ""] call BIS_FNC_createmenu; 
		[_categories select 0] call CTI_Coin_LoadSubMenu;
	};
	
	[_categories select 0]
};

//--- Used to create the root submenus
CTI_Coin_LoadSubMenu = {
	params["_categories"];

	//--- Load the structures if needed
	if ("CTI_COIN_Items_0" in _categories) then {
		_items = [];
		_itemEnabled = [];
		_itemVariable = [];
		
		_supply = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideSupply;
		
		{
			_info = missionNamespace getVariable _x;
			if (call (_info select CTI_STRUCTURE_CONDITION)) then { //--- Make sure that the structure match it's present condition
				_items pushBack format["%1  -  S%2", (_info select CTI_STRUCTURE_LABELS) select 1, _info select CTI_STRUCTURE_PRICE];
				_itemEnabled pushBack (if (_supply >= _info select CTI_STRUCTURE_PRICE) then {1} else {0});
				_itemVariable pushBack _x;
			};
		} forEach (missionNamespace getVariable format ["CTI_%1_STRUCTURES", CTI_P_SideJoined]);
		
		["Base", "CTI_COIN_Items_0", [_itemVariable, _items, _itemEnabled], "", "missionNamespace setVariable ['CTI_COIN_PARAM', %1]; missionNamespace setVariable ['CTI_COIN_PARAM_KIND', 'STRUCTURES']; missionNamespace setVariable ['CTI_COIN_MENU', commandingMenu]"] call BIS_FNC_createmenu;
	};
	
	//--- Load the defenses if needed
	if ("CTI_COIN_Items_1" in _categories) then {
		//--- Load the defenses categories
		_items = [];
		_itemEnabled = [];
		_itemVariable = [];
		
		_funds = call CTI_CL_FNC_GetPlayerFunds;
		
		{
			_category = (missionNamespace getVariable format["CTI_COIN_%1_DEFENSE_CATEGORIES", CTI_P_SideJoined]) select _x;
			_items pushBack _category;
			_itemVariable pushBack _x;
			_itemEnabled pushBack true;
			
			//--- Load the Menu for that category
			_sub_items = [];
			_sub_itemEnabled = [];
			_sub_itemVariable = [];
			{
				_info = missionNamespace getVariable _x;
				if ((missionNamespace getVariable "CTI_COIN_SOURCE") in (_info select CTI_DEFENSE_COINMENU)) then {
					_sub_items pushBack format["%1  -  $%2", _info select CTI_DEFENSE_LABEL, _info select CTI_DEFENSE_PRICE];
					_sub_itemEnabled pushBack (if (_funds >= _info select CTI_DEFENSE_PRICE) then {1} else {0});
					_sub_itemVariable pushBack _x;
				};
			} forEach (missionNamespace getVariable format["CTI_COIN_%1_DEFENSE_CATEGORY_%2", CTI_P_SideJoined, _x]);
			
			[_category, format["CTI_COIN_SubItem_%1", _x], [_sub_itemVariable, _sub_items, _sub_itemEnabled], "", "missionNamespace setVariable ['CTI_COIN_PARAM', %1]; missionNamespace setVariable ['CTI_COIN_PARAM_KIND', 'DEFENSES']; missionNamespace setVariable ['CTI_COIN_MENU', commandingMenu]"] call BIS_FNC_createmenu;
		} forEach (missionNamespace getVariable format["CTI_COIN_%1_DEFENSE_CATEGORIES_INDEX", CTI_P_SideJoined]);
		
		["Defenses", "CTI_COIN_Items_1", [_itemVariable, _items, _itemEnabled], "#USER:CTI_COIN_SubItem_%1_0", ""] call BIS_FNC_createmenu;
	};
};

//--- Update the preview's label
CTI_Coin_UpdateItemLabel = {
	private["_color", "_label", "_textHint"];
	
	_color = _this;
	
	with missionNamespace do {
		
		_label = switch (CTI_COIN_PARAM_KIND) do {
			case 'STRUCTURES': {(CTI_COIN_PARAM select 0) select 1};
			case 'DEFENSES': {CTI_COIN_PARAM select 0};
			default {""};
		};
		
		//--- Update the overlay description
		_textHint =  format ["<t align='center'><t size='1.4' color='%2'>%1</t><br /><t size='1'></t></t>", _label, _color];
		((uiNamespace getVariable "cti_title_coin") displayCtrl 112214) ctrlSetStructuredText (parseText _textHint);
		((uiNamespace getVariable "cti_title_coin") displayCtrl 112214) ctrlCommit 0;
	};
};

//--- Check if a defense may be placed at it's given position
CTI_Coin_DefenseCanBePlaced = {
	_preview = _this;
	
	_valid = true;
	
	if !((CTI_COIN_PARAM select CTI_DEFENSE_COINBLACKLIST) isEqualTo []) then { //--- Check if the defense can be placed according to the blacklist
		{
			if !(((_preview nearObjects _x) - [_preview]) isEqualTo []) exitWith {_valid = false};
		} forEach (CTI_COIN_PARAM select CTI_DEFENSE_COINBLACKLIST);
	};
	
	_valid
};

//--- Update the preview's lifespan
CTI_Coin_UpdatePreview = {
	private ["_color", "_preview"];
	
	_preview = _this;
	
	with missionNamespace do {
		_color = CTI_COIN_COLOR_VALID;
		
		if (_preview distance CTI_COIN_ORIGIN > CTI_COIN_RANGE) then { //--- Out of boundaries, apply grey
			_color = CTI_COIN_COLOR_OUTOFRANGE;
		} else { //--- In boundaries, check for obstruction
			if !(_preview call CTI_Coin_PreviewSurfaceIsValid) then { //--- Check if the surface is valid
				_color = CTI_COIN_COLOR_INVALID;
			} else {
				if (CTI_COIN_PARAM_KIND == "DEFENSES") then {
					if !((CTI_COIN_PARAM select CTI_DEFENSE_COINBLACKLIST) isEqualTo []) then { //--- A blacklist is specified
						if ((CTI_COIN_PARAM select CTI_DEFENSE_COINBLACKLIST) isEqualTo ["*"]) then { //--- If a wildcard is specified, treat the defense as a structure
							if !(_preview call CTI_Coin_PreviewSurfaceIsValid) then {_color = CTI_COIN_COLOR_INVALID};
						} else { //--- A Grain-based blacklist is specified
							if !(_preview call CTI_Coin_DefenseCanBePlaced) then {_color = CTI_COIN_COLOR_INVALID};
						};
					};
				};
			};
		};
		
		//--- Show or hide the object depending on the boundary presence
		// if (_color == CTI_COIN_COLOR_OUTOFRANGE && !isObjectHidden _preview) then {_preview hideObject true};
		// if (_color != CTI_COIN_COLOR_OUTOFRANGE && isObjectHidden _preview) then {_preview hideObject false};
		
		//--- Get the matching UI color
		_colorUI = switch (_color) do {
			case CTI_COIN_COLOR_INVALID: {CTI_COIN_COLOR_INVALID_UI};
			case CTI_COIN_COLOR_OUTOFRANGE: {CTI_COIN_COLOR_OUTOFRANGE_UI};
			case CTI_COIN_COLOR_VALID: {CTI_COIN_COLOR_VALID_UI};
			default {CTI_COIN_COLOR_OUTOFRANGE_UI};
		};
		
		((uiNamespace getVariable "cti_title_coin") displayCtrl 112201) ctrlSetTextColor _colorUI;
		((uiNamespace getVariable "cti_title_coin") displayCtrl 112201) ctrlCommit 0;
		
		//--- Update the Centered description color with the matching color
		(_color) call CTI_Coin_UpdateItemLabel;
	};
};

//--- Check if the preview's surface is valid
CTI_Coin_PreviewSurfaceIsValid = {
	private ["_isValid", "_preview"];
	
	_preview = _this;
	
	_isValid = true;
	
	with missionNamespace do {
		if (surfaceIsWater position _preview) then {
			_isValid = false
		} else {
			if (count((position _preview) nearEntities [['Man','Car','Motorcycle','Tank','Air','Ship'], 10]) > 0) then {
				_isValid = false
			} else {
				_defense_collide = false;
				if (CTI_COIN_PARAM_KIND == "DEFENSES") then {
					if ((CTI_COIN_PARAM select 7) isEqualTo ["*"]) then {_defense_collide = true};
				};
				
				if (CTI_COIN_PARAM_KIND == "STRUCTURES" || _defense_collide) then {
					_maxGrad = 24;
					_minDist = 20;
					
					_isFlat = (position _preview) isFlatEmpty [
						(sizeof typeof _preview) / _minDist, 	//--- Minimal distance from another object
						0, 										//--- If 0, just check position. If >0, select new one
						_maxGrad, 								//--- Max gradient
						(sizeof typeof _preview), 				//--- Gradient area
						0, 										//--- 0 for restricted water, 2 for required water,
						false, 									//--- True if some water can be in 25m radius
						_preview 								//--- Ignored object
					];
					
					if (count _isFlat == 0) then {_isValid = false};
				};
			};
		};
	};
	
	_isValid
};

//--- Display EH: MouseZChanged (Scrolling), rotate a building while in preview mode
CTI_Coin_OnMouseZChanged = {
	with missionNamespace do {
		if !(isNil "CTI_COIN_PREVIEW") then {
			_ctrl = (29 in CTI_COIN_KEYS) || (157 in CTI_COIN_KEYS);
			_shift = (42 in CTI_COIN_KEYS) || (54 in CTI_COIN_KEYS);
			_alt = (56 in CTI_COIN_KEYS);
			
			_angle = 5;
			
			if (_shift) then {
				_angle = 10;
			} else {
				if (_alt) then {
					_angle = 20;
				} else {
					if (_ctrl) then {_angle = 1};
				};
			};
			
			if (_this < 0) then {_angle = -_angle};
			
			CTI_COIN_DIR = (direction CTI_COIN_PREVIEW) + _angle;
			CTI_COIN_PREVIEW setDir CTI_COIN_DIR;
		};
	};
};

//--- Display EH: The LMB or RMB is clicked down
CTI_Coin_OnMouseButtonDown = {
	private["_button"];
	
	_button = _this select 1;
	
	with missionNamespace do {
		switch (_button) do {
			case 0: {
				if !(isNil 'CTI_COIN_PREVIEW') then {
					call CTI_Coin_OnPreviewPlacement;
				};
			};
			case 1: {
				if !(isNil 'CTI_COIN_PREVIEW') then {
					call CTI_Coin_OnPreviewCanceled;
				} else {
					if (commandingMenu == "#USER:CTI_COIN_Categories_0") then {CTI_COIN_EXIT = true};
				};
			};
		};
	};
};

//--- Update the base area limits for CoIn menu
CTI_Coin_UpdateBaseAreaLimits = {
	private ["_position", "_valid"];
	_position = _this;
	
	_valid = "";
	
	with missionNamespace do {
		if (CTI_COIN_SOURCE == 'HQ') then {
			_in_area = false;
			{if (_position distance2D _x <= CTI_BASE_AREA_RANGE) exitWith {_in_area = true}} forEach (CTI_P_SideLogic getVariable "cti_structures_areas");
			
			//--- If the structure is not within an existing base area, check if we may create a new area
			if !(_in_area) then {
				if (count (CTI_P_SideLogic getVariable "cti_structures_areas") < (missionNamespace getVariable "CTI_BASE_AREA_MAX")) then {
					CTI_P_SideLogic setVariable ["cti_structures_areas", (CTI_P_SideLogic getVariable "cti_structures_areas") + [[_position select 0, _position select 1]], true];
				} else {
					_valid = "baseAreaLimit";
				};
			};
			
			//--- The structure is in a valid area, check about the amount of structures located within that area
			if (_valid isEqualTo "" && (missionNamespace getVariable "CTI_BASE_AREA_STRUCTURES_IDENTICAL_LIMIT") > -1) then {
				_nearest_area = [_position, CTI_P_SideLogic getVariable "cti_structures_areas"] call CTI_CO_FNC_GetClosestEntity;
				_structures_kind = [(CTI_COIN_PARAM select 0) select 0, (CTI_P_SideJoined call CTI_CO_FNC_GetSideStructures)] call CTI_CO_FNC_GetSideStructuresByType;
				_structure_count = count([_nearest_area, _structures_kind, CTI_BASE_AREA_RANGE, true] call CTI_CO_FNC_GetEntitiesInRange);
				
				//--- The structure limit has been reached for that base area
				if (_structure_count >= (missionNamespace getVariable "CTI_BASE_AREA_STRUCTURES_IDENTICAL_LIMIT")) then {_valid = "structureLimitInArea"};
			};
		};
	};
	
	_valid
};

//--- A structure or defense preview is placed down
CTI_Coin_OnPreviewPlacement = {
	with missionNamespace do {
		_item = objNull;//debug
		_defense_pos_valid = true;
		switch (CTI_COIN_PARAM_KIND) do {
			case 'STRUCTURES': {
				_item = (CTI_COIN_PARAM select CTI_STRUCTURE_CLASSES) select 0;
			};
			case 'DEFENSES': {
				_item = CTI_COIN_PARAM select CTI_DEFENSE_CLASS;
				
				if !((CTI_COIN_PARAM select CTI_DEFENSE_COINBLACKLIST) isEqualTo []) then { //--- A blacklist is specified
					if !((CTI_COIN_PARAM select CTI_DEFENSE_COINBLACKLIST) isEqualTo ["*"]) then { _defense_pos_valid = CTI_COIN_PREVIEW call CTI_Coin_DefenseCanBePlaced };
				};
			};
		};
		
		_direction = direction CTI_COIN_PREVIEW;
		_position = position CTI_COIN_PREVIEW;
		
		if (CTI_COIN_PREVIEW call CTI_Coin_PreviewSurfaceIsValid && _defense_pos_valid && CTI_COIN_PREVIEW distance CTI_COIN_ORIGIN <= CTI_COIN_RANGE) then { //--- Last check to make sure that the position is valid
			deleteVehicle CTI_COIN_PREVIEW;
			
			//--- Remove the description overlay content
			((uiNamespace getVariable "cti_title_coin") displayCtrl 112214) ctrlSetStructuredText (parseText "");
			((uiNamespace getVariable "cti_title_coin") displayCtrl 112214) ctrlCommit 0;
			
			//--- Reset the selector to default
			((uiNamespace getVariable "cti_title_coin") displayCtrl 112201) ctrlSetTextColor CTI_COIN_COLOR_OUTOFRANGE_UI;
			((uiNamespace getVariable "cti_title_coin") displayCtrl 112201) ctrlCommit 0;
			
			//--- Create the desired item
			_reload_expression = nil;
			switch (CTI_COIN_PARAM_KIND) do {
				case 'STRUCTURES': {
					_area_valid = _position call CTI_Coin_UpdateBaseAreaLimits;
					if (_area_valid isEqualTo "") then {
						_variable = format ["CTI_%1_%2", CTI_P_SideJoined, (CTI_COIN_PARAM select CTI_STRUCTURE_LABELS) select 0];
						[CTI_P_SideJoined, -(CTI_COIN_PARAM select CTI_STRUCTURE_PRICE)] call CTI_CO_FNC_ChangeSideSupply;
						
						//--- Check whether we're dealing with the HQ or a normal structure
						if (((CTI_COIN_PARAM select CTI_STRUCTURE_LABELS) select 0) != CTI_HQ_DEPLOY) then {
							[_variable, CTI_P_SideJoined, _position, _direction, player] remoteExec ["CTI_PVF_SRV_RequestBuilding", CTI_PV_SERVER];
						} else {
							//--- When the HQ is being deployed or mobilized, the commanding menu must be reloaded
							_reload_expression = CTI_Coin_OnHQToggle;
							if ((CTI_COIN_PARAM select CTI_STRUCTURE_TIME) > 0) then {CTI_P_SideLogic setVariable ["cti_hq_ready", false, true]};
							[_variable, CTI_P_SideJoined, _position, _direction] remoteExec ["CTI_PVF_SRV_RequestHQToggle", CTI_PV_SERVER];
						};
					} else {
						switch (_area_valid) do {
							case "baseAreaLimit": {hint parseText "<t size='1.3' color='#2394ef'>Information</t><br /><br />The base area limit has been reached."};
							case "structureLimitInArea": {hint parseText "<t size='1.3' color='#2394ef'>Information</t><br /><br />The structure limit has been reached for this building in the current base area."};
						};
					};
				};
				case 'DEFENSES': {
					_variable = format ["CTI_%1_%2", CTI_P_SideJoined, CTI_COIN_PARAM select CTI_DEFENSE_CLASS];
					-(CTI_COIN_PARAM select CTI_DEFENSE_PRICE) call CTI_CL_FNC_ChangePlayerFunds;
					[_variable, CTI_P_SideJoined, _position, _direction, player, profileNamespace getVariable ["CTI_COIN_WALLALIGN", true], profileNamespace getVariable ["CTI_COIN_AUTODEFENSE", true]] remoteExec ["CTI_PVF_SRV_RequestDefense", CTI_PV_SERVER];
				};
			};
			
			if !(isNull CTI_COIN_HELPER) then {deleteVehicle CTI_COIN_HELPER};
			
			CTI_COIN_PARAM = nil;
			CTI_COIN_PREVIEW = nil;
			CTI_COIN_LASTDIR = _direction;
			
			//--- If HQ construction requires time, simply quit the menu
			if !(CTI_P_SideLogic getVariable ['cti_hq_ready', true]) exitWith {CTI_COIN_EXIT = true};
			
			//--- Show the last known menu or the root menu again if no expression is required
			if (isNil '_reload_expression') then {
				showCommandingMenu (missionNamespace getVariable ["CTI_COIN_MENU", "#USER:CTI_COIN_Categories_0"]);
			} else { //--- Trigger an expression if needed to show the menu after a certain unscheduled event
				0 spawn _reload_expression;
			};
		};
	};
};

//--- The HQ is being deployed or mobilized
CTI_Coin_OnHQToggle = {
	with missionNamespace do {
		CTI_COIN_MENUTRANS = true;
		_state = (CTI_P_SideJoined call CTI_CO_FNC_IsHQDeployed);
		_start = time;
		waitUntil {!(_state isEqualTo (CTI_P_SideJoined call CTI_CO_FNC_IsHQDeployed)) || CTI_COIN_EXIT || time - _start > 7};
		
		if (alive (CTI_P_SideJoined call CTI_CO_FNC_GetSideHQ) && !CTI_COIN_EXIT) then {
			(CTI_COIN_CATEGORIES) call CTI_Coin_LoadSubMenu;
			showCommandingMenu (missionNamespace getVariable ["CTI_COIN_MENU", "#USER:CTI_COIN_Categories_0"]);
			
			//--- Update the camera area
			_areaSize = if (CTI_P_SideJoined call CTI_CO_FNC_IsHQDeployed) then {CTI_COIN_AREA_HQ_DEPLOYED} else {CTI_COIN_AREA_HQ_MOBILIZED};
			if !(isNil 'CTI_COIN_CAMCONSTRUCT') then {
				_position = getPos (CTI_P_SideJoined call CTI_CO_FNC_GetSideHQ);
				{if (_position distance2D _x <= CTI_BASE_AREA_RANGE) exitWith {_position = [_x select 0, _x select 1, 0]}} forEach (CTI_P_SideLogic getVariable "cti_structures_areas");
				CTI_COIN_CAMCONSTRUCT camConstuctionSetParams ([_position] + _areaSize);
			};
			CTI_COIN_RANGE = _areaSize select 0;
		};
		
		CTI_COIN_MENUTRANS = false;
	};
};

//--- The HQ is being mobilized
CTI_Coin_OnHQMobilized = {
	//--- Remove the description overlay content
	((uiNamespace getVariable "cti_title_coin") displayCtrl 112214) ctrlSetStructuredText (parseText "");
	((uiNamespace getVariable "cti_title_coin") displayCtrl 112214) ctrlCommit 0;
	
	//--- Reset the selector to default
	((uiNamespace getVariable "cti_title_coin") displayCtrl 112201) ctrlSetTextColor CTI_COIN_COLOR_OUTOFRANGE_UI;
	((uiNamespace getVariable "cti_title_coin") displayCtrl 112201) ctrlCommit 0;
	
	_hq = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideHQ;
	_direction = getDir _hq;
	
	_variable = format ["CTI_%1_%2", CTI_P_SideJoined, (CTI_COIN_PARAM select CTI_STRUCTURE_LABELS) select 0];
	[_variable, CTI_P_SideJoined, position _hq, getDir _hq] remoteExec ["CTI_PVF_SRV_RequestHQToggle", CTI_PV_SERVER];
	
	//--- If HQ construction requires time, simply quit the menu
	if ((CTI_COIN_PARAM select CTI_STRUCTURE_TIME) > 0) exitWith {
		CTI_P_SideLogic setVariable ["cti_hq_ready", false, true];
		CTI_COIN_PARAM = nil;
		CTI_COIN_EXIT = true;
	};
	
	CTI_COIN_PARAM = nil;
	CTI_COIN_LASTDIR = _direction;
	
	0 spawn CTI_Coin_OnHQToggle;
};

//--- The structure preview is canceled
CTI_Coin_OnPreviewCanceled = {
	with missionNamespace do {
		if !(isNull CTI_COIN_HELPER) then {deleteVehicle CTI_COIN_HELPER};
		
		deleteVehicle CTI_COIN_PREVIEW;
		CTI_COIN_PARAM = nil;
		CTI_COIN_PREVIEW = nil;
		
		//--- Remove the description overlay content
		((uiNamespace getVariable "cti_title_coin") displayCtrl 112214) ctrlSetStructuredText (parseText "");
		((uiNamespace getVariable "cti_title_coin") displayCtrl 112214) ctrlCommit 0;
		
		//--- Reset the selector to default
		((uiNamespace getVariable "cti_title_coin") displayCtrl 112201) ctrlSetTextColor CTI_COIN_COLOR_OUTOFRANGE_UI;
		((uiNamespace getVariable "cti_title_coin") displayCtrl 112201) ctrlCommit 0;
		
		//--- Show the last known menu or the root menu again if nil
		showCommandingMenu (missionNamespace getVariable ["CTI_COIN_MENU", "#USER:CTI_COIN_Categories_0"]);
	};
};

//--- Called whenever building (structure or defense) is about to be sold
CTI_Coin_OnBuildingSold = {
	if (call CTI_CL_FNC_IsPlayerCommander) then {
		_list = [];
		_position = screenToWorld [0.5,0.5];
		{if ((_x getVariable ["cti_defense_sideID", -1]) isEqualTo CTI_P_SideID) then {_list pushBack _x}} forEach (nearestObjects [_position, ["StaticWeapon", "Static"], 15]);
		
		if (count _list > 0) then {
			_nearest = [_position, _list] call CTI_CO_FNC_GetClosestEntity;
			
			if (isNil {_nearest getVariable "cti_building_sold"}) then {
				_nearest setVariable ["cti_building_sold", true];

				_var = missionNamespace getVariable [format["CTI_%1_%2", CTI_P_SideJoined, typeOf _nearest], []];
				if !(_var isEqualTo []) then {
					_refund = round((_var select 2) * CTI_BASE_DEFENSES_SOLD_COEF);
					(_refund) call CTI_CL_FNC_ChangePlayerFunds;
					["defense-sold", [_var select 0, _refund]] call CTI_CL_FNC_DisplayMessage;
				};
				
				//--- TODO: if !local, delete where the owner matches
				deleteVehicle _nearest;
			};
		};
	};
};

//--- Display EH: KeyDown, a key has been pressed (and is still being pressed)
CTI_Coin_OnKeyDown = {
	_key = _this select 1;
	_shift = _this select 2;
	_ctrl = _this select 3;
	_alt = _this select 4;
	
	_handled = false;
	
	with missionNamespace do {
		CTI_COIN_KEYS pushBack _key;
	
		
		switch (true) do {
			// case (_key in [1,14]): { //--- Either exit the camera or cancel the preview depending on where the player's at in the menu
			case (_key == 1 || _key in actionKeys "NavigateMenu"): { //--- Either exit the camera or cancel the preview depending on where the player's at in the menu
				_handled = true;
				if !(isNil 'CTI_COIN_PREVIEW') then {
					call CTI_Coin_OnPreviewCanceled;
				} else {
					// if (_key == 14 && commandingMenu != "#USER:CTI_COIN_Categories_0") then {_handled = false} else {CTI_COIN_EXIT = true};
					if (_key in actionKeys "NavigateMenu" && commandingMenu != "#USER:CTI_COIN_Categories_0") then {_handled = false} else {CTI_COIN_EXIT = true};
				};
			};
			case (_key in [28, 156]): {if !(isNil 'CTI_COIN_PREVIEW') then {call CTI_Coin_OnPreviewPlacement}};
			case (_key in actionKeys "Diary"): {profileNamespace setVariable ["CTI_COIN_WALLALIGN", !(profileNamespace getVariable ["CTI_COIN_WALLALIGN", true])]};
			case (_key in actionKeys "Gear"): {profileNamespace setVariable ["CTI_COIN_AUTODEFENSE", !(profileNamespace getVariable ["CTI_COIN_AUTODEFENSE", true])]};
			case (_key in actionKeys "NightVision"): {if !(isNil 'CTI_COIN_CAMCONSTRUCT') then {camUseNVG !CTI_COIN_CAMUSENVG; CTI_COIN_CAMUSENVG = !CTI_COIN_CAMUSENVG}};
			case (_key in actionKeys "Watch"): {call CTI_Coin_OnBuildingSold};
		};
	};
	
	_handled
};

//--- Display EH: KeyUp, a key press has been released
CTI_Coin_OnKeyUp = {
	_key = _this select 1;
	_shift = _this select 2;
	_ctrl = _this select 3;
	_alt = _this select 4;
	
	with missionNamespace do {
		CTI_COIN_KEYS = CTI_COIN_KEYS - [_key];
	};
	
	false;
};
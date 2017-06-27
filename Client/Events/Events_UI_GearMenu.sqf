_action = _this select 0;

switch (_action) do {
	case "onLoad": { //--- Triggered on the very first loading of the UI
		//-- Load the list.
		call CTI_UI_Gear_LoadAvailableUnits;
		
		execVM "Client\GUI\GUI_GearMenu.sqf";
		
		//--- Handle drag stop //todo check the getVariable modification.
		if (uiNamespace getVariable ["cti_dialog_ui_gear_dragging", false]) then {uiNamespace setVariable ["cti_dialog_ui_gear_dragging", false]};
		(findDisplay 70000) displaySetEventHandler ["mouseButtonUp", "if (uiNamespace getVariable ['cti_dialog_ui_gear_dragging', fase]) then {['onShoppingListMouseUp', _this select 1] call compile preprocessFileLineNumbers 'Client\Events\Events_UI_GearMenu.sqf'}"];
	};
	case "onShoppingTabClicked": { //--- A shopping tab was clicked upon
		//--- New tab
		_changedto = _this select 1;
		
		(_changedto) call CTI_UI_Gear_DisplayShoppingItems;
		uiNamespace setVariable ["cti_dialog_ui_gear_shop_tab", _changedto];
	};
	case "onUnitLBSelChanged": { //--- The units combo was changed
		_changedto = _this select 1;
		
		_target = (uiNamespace getVariable "cti_dialog_ui_gear_units") select _changedto;
		
		//--- The target
		uiNamespace setVariable ["cti_dialog_ui_gear_target", _target];
		
		if (_target isKindOf "Man") then {
			//--- Get the target's equipment
			_gear = (_target) call CTI_CO_FNC_GetUnitLoadout;
			
			//--- Calculate the initial mass
			_mass = (_gear) call CTI_UI_Gear_GetTotalMass;
			
			//--- Default
			uiNamespace setVariable ["cti_dialog_ui_gear_target_staticgear", +_gear];
			uiNamespace setVariable ["cti_dialog_ui_gear_target_gear", _gear];
			uiNamespace setVariable ["cti_dialog_ui_gear_target_gear_mass", _mass];
			
			//--- Progress UI Updates.
			{[_forEachIndex, _x] call CTI_UI_Gear_UpdateContainerProgress} forEach [70301,70302,70303];
			
			//--- Do we have a default gear tab? if not we give the template one to the player
			if (isNil {uiNamespace getVariable "cti_dialog_ui_gear_shop_tab"}) then {uiNamespace setVariable ["cti_dialog_ui_gear_shop_tab", CTI_GEAR_TAB_TEMPLATES]};
			(uiNamespace getVariable "cti_dialog_ui_gear_shop_tab") call CTI_UI_Gear_DisplayShoppingItems;
			
			call CTI_UI_Gear_UpdatePrice;
			(_gear) call CTI_UI_Gear_DisplayInventory;
		} else {
			_gear = (_target) call CTI_CO_FNC_GetVehicleCargo;
			
			//--- Calculate the initial mass
			_maxmass = getNumber(configFile >> "CfgVehicles" >> typeOf _target >> "maximumLoad");
			_mass = (_gear) call CTI_UI_Gear_GetVehicleLoad;
			
			//--- Update the overlay
			call CTI_UI_Gear_EnableVehicleOverlay;
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl 70001) ctrlSetText getText(configFile >> "CfgVehicles" >> typeOf _target >> 'picture');
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl 70001) ctrlSetTooltip getText(configFile >> "CfgVehicles" >> typeOf _target>> 'displayName');
			
			//--- Default
			uiNamespace setVariable ["cti_dialog_ui_gear_target_staticgear", +_gear];
			uiNamespace setVariable ["cti_dialog_ui_gear_target_gear", _gear];
			uiNamespace setVariable ["cti_dialog_ui_gear_target_gear_mass", [_maxmass, _mass]];
			
			//--- Do we have a default gear tab? if not we give the template one to the player
			if (isNil {uiNamespace getVariable "cti_dialog_ui_gear_shop_tab"}) then {uiNamespace setVariable ["cti_dialog_ui_gear_shop_tab", CTI_GEAR_TAB_PRIMARY]};
			(uiNamespace getVariable "cti_dialog_ui_gear_shop_tab") call CTI_UI_Gear_DisplayShoppingItems;
			
			//--- Progress UI Updates.
			call CTI_UI_Gear_UpdateVehicleContainerProgress;
			
			call CTI_UI_Gear_UpdatePrice;
			(_gear) call CTI_UI_Gear_DisplayInventoryVehicle;
		};
	};
	case "onShoppingListLBDblClick": {
		//--- Item
		_selected = _this select 1;
		
		//--- Get the current tab
		if !(uiNamespace getVariable "cti_dialog_ui_gear_shop_tab" isEqualTo 7) then {//--- Skip on template tab
			_updated = false;
			if (uiNamespace getVariable "cti_dialog_ui_gear_target" isKindOf "Man") then {
				_updated = (lnbData [70108, [_selected,0]]) call CTI_UI_Gear_AddItem;
			} else {
				_updated = [uiNamespace getVariable "cti_dialog_ui_gear_target_gear", lnbData [70108, [_selected,0]]] call CTI_UI_Gear_AddVehicleItem;
			};
			
			if (_updated) then { call CTI_UI_Gear_UpdatePrice };
		} else {
			if (uiNamespace getVariable "cti_dialog_ui_gear_target" isKindOf "Man") then {
				(lnbValue[70108, [_selected, 1]]) call CTI_UI_Gear_EquipTemplate;
			};
		};
	};
	case "onShoppingListLBDrag": {
		//--- Item (Data)
		_selected = ((_this select 1) select 0) select 2;
		
		if !(uiNamespace getVariable "cti_dialog_ui_gear_shop_tab" isEqualTo 7) then { //--- Skip on template tab
			uiNamespace setVariable ["cti_dialog_ui_gear_dragging", true];
			(_selected) call CTI_UI_Gear_OnShoppingItemDrag;
		};
	};
	case "onShoppingListLBDrop": {
		_kind = _this select 1;
		_idc = _this select 2;
		_dropped = _this select 3;
		_path = _this select 4;
		
		if !(uiNamespace getVariable "cti_dialog_ui_gear_shop_tab" isEqualTo 7) then { //--- Skip on template tab
			_updated = [_idc, _dropped, _kind, _path] call CTI_UI_Gear_OnShoppingItemDrop;
			if (_updated) then { call CTI_UI_Gear_UpdatePrice };
		};
	};
	case "onShoppingListLBSelChanged": {
		//--- Item
		_selected = _this select 1;
		
		(lnbData [70108, [_selected,0]]) call CTI_UI_Gear_UpdateLinkedItems;
	};
	case "onShoppingListMouseUp": {
		{
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _x) ctrlSetBackgroundColor [1, 1, 1, 0.15];
		} forEach (uiNamespace getVariable ["cti_dialog_ui_gear_drag_colored_idc", []]);
		
		{
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _x) ctrlSetBackgroundColor [1, 1, 1, 0.15];
		} forEach (uiNamespace getVariable ["cti_dialog_ui_gear_drag_colored_idc_red", []]);
		
		//--- Todo: highlight current container.
		((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl (77001 + (uiNamespace getVariable "cti_dialog_ui_gear_items_tab"))) ctrlSetBackgroundColor [1, 1, 1, 0.4];
		
		uiNamespace setVariable ["cti_dialog_ui_gear_dragging", false];
	};
	case "onLinkedListLBDblClick": {
		//--- Item
		_selected = _this select 1;
		_updated = false;
		
		if (uiNamespace getVariable "cti_dialog_ui_gear_target" isKindOf "Man") then {
			_updated = (lnbData [70601, [_selected,0]]) call CTI_UI_Gear_AddItem;
		} else {
			_updated = [uiNamespace getVariable "cti_dialog_ui_gear_target_gear", lnbData [70601, [_selected,0]]] call CTI_UI_Gear_AddVehicleItem;
		};
		
		if (_updated) then { call CTI_UI_Gear_UpdatePrice };
	};
	case "onItemContainerClicked": { //--- Uniform (0), vest (1) or backpack (2) container was clicked upon
		//--- The container
		_container = _this select 1;
		_background = _this select 2;
		
		//--- Get the target's gear
		_gear = uiNamespace getVariable "cti_dialog_ui_gear_target_gear";
		
		if (uiNamespace getVariable "cti_dialog_ui_gear_target" isKindOf "Man") then {
			//--- Make sure that the container is present.
			if !((((_gear select 1) select _container) select 0) isEqualTo "") then {
				(((_gear select 1) select _container) select 1) call CTI_UI_Gear_DisplayContainerItems;
				
				//--- Change the color
				((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _background) ctrlSetBackgroundColor [1, 1, 1, 0.4];
				{((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _x) ctrlSetBackgroundColor [1, 1, 1, 0.15]} forEach ([77001,77002,77003] - [_background]);
			
				//--- Set the current items tab
				uiNamespace setVariable ["cti_dialog_ui_gear_items_tab", _container];
			};
		};
	};	
	case "onItemContainerMouseClicked": { //--- Uniform (0), vest (1) or backpack (2) container was clicked upon
		//--- The container
		_container = _this select 1;
		_idc = _this select 2;
		_mouse = _this select 3;
		
		//--- Remove the container & its content if needed
		if (_mouse isEqualTo 1 && uiNamespace getVariable "cti_dialog_ui_gear_target" isKindOf "Man") then { //--- Right click
			_updated = ["", _container] call CTI_UI_Gear_ReplaceContainer;
			if (_updated) then { call CTI_UI_Gear_UpdatePrice };
		};
	};
	case "onAccessoryClicked": { //--- Helm or Goggles were clicked upon
		//--- The array slot, idc and default picture
		_slot = _this select 1;
		_idc = _this select 2;
		_default = _this select 3;
		
		_gear = uiNamespace getVariable "cti_dialog_ui_gear_target_gear";
		
		if (!((_gear select 2) select _slot isEqualTo "") && uiNamespace getVariable "cti_dialog_ui_gear_target" isKindOf "Man") then {
			//--- Apply the default picture and release the tooltip
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _idc) ctrlSetText _default;
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _idc) ctrlSetTooltip "";
			
			(_gear select 2) set [_slot, ""];
			call CTI_UI_Gear_UpdatePrice;
		};
	};
	case "onItemClicked": { //--- NVG, Binocular or items were clicked upon
		//--- The array slot, idc and default picture
		_slot = _this select 1;
		_idc = _this select 2;
		_default = _this select 3;
		
		_gear = uiNamespace getVariable "cti_dialog_ui_gear_target_gear";
		
		if (!((((_gear select 3) select (_slot select 0)) select (_slot select 1)) isEqualTo "") && uiNamespace getVariable "cti_dialog_ui_gear_target" isKindOf "Man") then {
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _idc) ctrlSetText _default;
			((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _idc) ctrlSetTooltip "";
			
			((_gear select 3) select (_slot select 0)) set [(_slot select 1), ""];
			call CTI_UI_Gear_UpdatePrice;
		};
	};
	case "onWeaponClicked": { //--- Primary, Secondary or Handgun was clicked upon
		//--- The array slot, idc and default picture
		_slot = _this select 1;
		_idc = _this select 2;
		
		if (uiNamespace getVariable "cti_dialog_ui_gear_target" isKindOf "Man") then {
			["", _slot] call CTI_UI_Gear_ReplaceWeapon;
			call CTI_UI_Gear_UpdatePrice;
		};
	};
	case "onUnitItemsLBDblClick": { //--- Item container
		_row = _this select 1;
		
		_item = lnbData[70109, [_row,0]];
		_count = lnbValue[70109, [_row,0]];
		
		_gear = uiNamespace getVariable "cti_dialog_ui_gear_target_gear";

		if (uiNamespace getVariable ["cti_dialog_ui_gear_target", objNull] isKindOf "Man") then {
			_container = uiNamespace getVariable "cti_dialog_ui_gear_items_tab";
			_items = ((_gear select 1) select _container) select 1;
			
			_items deleteAt (_items find _item);
			(_gear select 1) select (uiNamespace getVariable "cti_dialog_ui_gear_items_tab") set [1, _items];
			
			//--- Update the mass.
			["ContainerItem", _item, "", [_container]] call CTI_UI_Gear_UpdateMass;
			
			//--- Update the Mass RscProgress
			[_container, 70301+_container] call CTI_UI_Gear_UpdateContainerProgress;
		} else {
			//--- Update the Mass RscProgress
			// [0, 70301] call CTI_UI_Gear_UpdateContainerProgress;
			
			_gear deleteAt (_gear find _item);
			
			//--- Update the mass.
			[_item, "delete"] call CTI_UI_Gear_UpdateVehicleLoad;
			
			//--- Update the Mass RscProgress
			call CTI_UI_Gear_UpdateVehicleContainerProgress;
		};
		
		if (_count > 1) then { //--- Decrement
			lnbSetText[70109, [_row,0], Format["x%1",_count - 1]];
			lnbSetValue[70109, [_row,0], _count - 1];
		} else { //--- Remove
			lnbDeleteRow[70109, _row];
		};
		
		call CTI_UI_Gear_UpdatePrice;
	};
	
	case 'onWeaponAccessoryClicked': { //--- Primary, Secondary or Handgun accessory was clicked upon
		//--- The array slot, idc and default picture
		_slot_type = _this select 1;
		_slot = _this select 2;
		_idc = _this select 3;
		_default = _this select 4;
		
		_gear = uiNamespace getVariable "cti_dialog_ui_gear_target_gear";
		if (uiNamespace getVariable "cti_dialog_ui_gear_target" isKindOf "Man") then {
			if (count(((_gear select 0) select _slot_type) select 1) > 0) then {
				if !(((((_gear select 0) select _slot_type) select 1) select _slot) isEqualTo "") then {
					((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _idc) ctrlSetText _default;
					((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl _idc) ctrlSetTooltip "";
					
					(((_gear select 0) select _slot_type) select 1) set [_slot, ""];
					call CTI_UI_Gear_UpdatePrice;
				};
			};
		};
	};
	
	case "onWeaponCurrentMagazineClicked": { //--- Primary, Secondary or Handgun current magazine was clicked upon
		_slot_type = _this select 1;
		_idc = _this select 2;
		
		if (uiNamespace getVariable "cti_dialog_ui_gear_target" isKindOf "Man") then {
			_updated = ["", _slot_type, _idc] call CTI_UI_Gear_ChangeCurrentMagazine;
			if (_updated) then {call CTI_UI_Gear_UpdatePrice};
		};
	};
	
	case "onPurchase": {
		_funds = call CTI_CL_FNC_GetPlayerFunds;
		_cost = uiNamespace getVariable "cti_dialog_ui_gear_tradein";
		if (_funds >= _cost) then {
			if (uiNamespace getVariable "cti_dialog_ui_gear_target" isKindOf "Man") then {
				[uiNamespace getVariable "cti_dialog_ui_gear_target", uiNamespace getVariable "cti_dialog_ui_gear_target_gear"] call CTI_CO_FNC_EquipUnit; 
				
				missionNamespace setVariable ["cti_gear_lastpurchased", uiNamespace getVariable "cti_dialog_ui_gear_target_gear"];
			} else {
				[uiNamespace getVariable "cti_dialog_ui_gear_target", uiNamespace getVariable "cti_dialog_ui_gear_target_gear"] call CTI_CO_FNC_EquipVehicleCargo;
			};
			uiNamespace setVariable ["cti_dialog_ui_gear_target_staticgear", +(uiNamespace getVariable "cti_dialog_ui_gear_target_gear")];
			
			call CTI_UI_Gear_UpdatePrice;
			-(_cost) call CTI_CL_FNC_ChangePlayerFunds;
		} else {
			hint "not enough funds";
		};
	};
	
	case "onInventoryClear": {
		if (uiNamespace getVariable "cti_dialog_ui_gear_target" isKindOf "Man") then {
			_gear = [
				[["", [], []], ["", [], []], ["", [], []]], 
				[["", []], ["", []], ["", []]], 
				["", ""], 
				[["", ""], ["", "", "", "", ""]]
			];
			uiNamespace setVariable ["cti_dialog_ui_gear_target_gear", _gear];
			
			_mass = (_gear) call CTI_UI_Gear_GetTotalMass;
			uiNamespace setVariable ["cti_dialog_ui_gear_target_gear_mass", _mass];
			
			{[_forEachIndex, _x] call CTI_UI_Gear_UpdateContainerProgress} forEach [70301,70302,70303];
			
			call CTI_UI_Gear_UpdatePrice;
			(_gear) call CTI_UI_Gear_DisplayInventory;
		} else {
			_gear = [];
			uiNamespace setVariable ["cti_dialog_ui_gear_target_gear", _gear];
			(uiNamespace getVariable ["cti_dialog_ui_gear_target_gear_mass", [0, 0]]) set [1, 0];
			
			//--- Progress UI Updates.
			call CTI_UI_Gear_UpdateVehicleContainerProgress;
			
			call CTI_UI_Gear_UpdatePrice;
			(_gear) call CTI_UI_Gear_DisplayInventoryVehicle;
		};
	};
	
	case "onInventoryReload": {
		_gear = missionNamespace getVariable "cti_gear_lastpurchased";
		if (!isNil '_gear' && uiNamespace getVariable "cti_dialog_ui_gear_target" isKindOf "Man") then {
			uiNamespace setVariable ["cti_dialog_ui_gear_target_gear", _gear];
			
			_mass = (_gear) call CTI_UI_Gear_GetTotalMass;
			uiNamespace setVariable ["cti_dialog_ui_gear_target_gear_mass", _mass];
			
			{[_forEachIndex, _x] call CTI_UI_Gear_UpdateContainerProgress} forEach [70301,70302,70303];
			
			call CTI_UI_Gear_UpdatePrice;
			(_gear) call CTI_UI_Gear_DisplayInventory;
		};
		//todo reload from config if nil
	};
	
	case "onTemplateCreation": {
		if (uiNamespace getVariable "cti_dialog_ui_gear_target" isKindOf "Man") then {
			_gear = +(uiNamespace getVariable "cti_dialog_ui_gear_target_gear");
			
			_cost = 0;
			_picture = "";
			_label = "";
			_haspic = false;
			_upgrade_max = 0;
			_side_template = true;
			
			//--- Retrieve the side gear, if a gear piece does not belong to the player side, it will not be persistent
			_side_gear = [];
			{
				_side_gear = _side_gear + ((missionNamespace getVariable _x) call CTI_CO_FNC_ArrayToLower);
			} forEach ["cti_gear_list_primary","cti_gear_list_secondary","cti_gear_list_pistol","cti_gear_list_magazines","cti_gear_list_accessories","cti_gear_list_misc","cti_gear_list_special","cti_gear_list_uniforms","cti_gear_list_vests","cti_gear_list_backpacks","cti_gear_list_headgear","cti_gear_list_glasses","cti_gear_list_explosives"];

			
			{
				_cost = _cost + (_x call CTI_CO_FNC_GetGearItemCost);
				_upgrade = ((missionNamespace getVariable [format["cti_%1", _x], [[0, 0]]]) select 0) select 0; //--- Retrieve the item current upgrade level
				if (_upgrade > _upgrade_max) then {_upgrade_max = _upgrade}; //--- We retrieve the highest upgrade level needed for the template
				if (_side_template) then {if !((toLower _x) in _side_gear) then {_side_template = false}}; //--- Check whether or not the item belong to the player's side
			} forEach (_gear call CTI_CO_FNC_ConvertGearToFlat);
			
			if !(_cost isEqualTo 0) then {
				{
					if !(_x select 0 isEqualTo "") then {
						if !(_label isEqualTo "") then { _label = _label + " | " };
						_label = _label + getText(configFile >> "CfgWeapons" >> (_x select 0) >> "displayName");
						if !(_haspic) then { _picture = getText(configFile >> "CfgWeapons" >> (_x select 0) >> "picture"); _haspic = true};
					};
				} forEach (_gear select 0);
			};
			
			_seed = round(time + random 10000 - random 500 + diag_frameno);
			
			//--- Persistent!
			//todo: template is nil? add a seed.
			
			_upgrade_gear = (CTI_P_SideJoined call CTI_CO_FNC_GetSideUpgrades) select CTI_UPGRADE_GEAR;
			
			if (_upgrade_max <= _upgrade_gear) then {
				if (CTI_Log_Level >= CTI_Log_Debug) then {
					["DEBUG", "FILE: Client\Events\Events_UI_GearMenu.sqf", format["A new template has been created with label [%1], cost of [%2], upgrade level of [%3], seed of [%4] and gear [%5]. Belongs to the client side? [%6]", _label, _cost, _upgrade_max, _seed, _gear, _side_template]] call CTI_CO_FNC_Log;
				};
				
				(missionNamespace getVariable "cti_gear_list_templates") pushBack [_label, _picture, _cost, _gear, _upgrade_max, _seed];
				
				if (_side_template) then { //--- The template match the player side
					_templates = [];
					
					if !(isNil {profileNamespace getVariable format["CTI_PERSISTENT_GEAR_TEMPLATEV3_%1", CTI_P_SideJoined]}) then { //--- Append to the persistent gear array if existing
						_templates = profileNamespace getVariable format["CTI_PERSISTENT_GEAR_TEMPLATEV3_%1", CTI_P_SideJoined];
						_templates pushBack [_label, _picture, _cost, _gear, _upgrade_max, _seed];
					} else { //--- Initialize with the default templates if new
						_templates = +(missionNamespace getVariable "cti_gear_list_templates");
					};
					
					profileNamespace setVariable [format["CTI_PERSISTENT_GEAR_TEMPLATEV3_%1", CTI_P_SideJoined], _templates];
					saveProfileNamespace;
					
					hint parseText format ["<t size='1.3' color='#2394ef'>Information</t><br /><br /><t align='left'>A new persistent template has been created with the name <t color='#bcff70'>%1</t>.<br /><br />You may find it in the <t color='#eaff96'>Template</t> tab</t><br /><br /><img image='Rsc\Pictures\icon_wf_building_barracks.paa' size='2.5'/>", _label];
				} else { //--- The template has foreign items in it, thus, we save it for the session.
					hint parseText format ["<t size='1.3' color='#2394ef'>Information</t><br /><br /><t align='left'>A new temporary template has been created with the name <t color='#bcff70'>%1</t>.<br /><br />You may find it in the <t color='#eaff96'>Template</t> tab</t><br /><br /><img image='Rsc\Pictures\icon_wf_building_barracks.paa' size='2.5'/>", _label];
				};
				
				if (uiNamespace getVariable "cti_dialog_ui_gear_shop_tab" isEqualTo CTI_GEAR_TAB_TEMPLATES) then { //--- Reload the template tab if needed
					(CTI_GEAR_TAB_TEMPLATES) call CTI_UI_Gear_DisplayShoppingItems;
				};
			} else {
				hint parseText format ["<t size='1.3' color='#eded23'>Warning</t><br /><br /><t align='left'>The template labeled <t color='#bcff70'>%1</t> could not be created since the current <t color='#F5D363'>Gear</t> Upgrade level (<t color='#F5D363'>%2</t>) is lower than the current template level (<t color='#F5D363'>%3</t>).<br /><br />", _label, _upgrade_gear, _upgrade_max];
			};
		};
	};
	
	case "onTemplateDeletion": {
		//todo: lnbvalue later when they're hidden
		_index = _this select 1;
		
		if (uiNamespace getVariable "cti_dialog_ui_gear_shop_tab" isEqualTo CTI_GEAR_TAB_TEMPLATES) then {
			_seed = lnbValue[70108, [_index,0]];
			
			if (CTI_Log_Level >= CTI_Log_Debug) then {["DEBUG", "FILE: Client\Events\Events_UI_GearMenu.sqf", format["Attempting to remove the template at index [%1] which has a seed value of [%2]", _index, _seed]] call CTI_CO_FNC_Log};
			
			if (_index > -1 && _index < ((lnbSize((uiNamespace getVariable "cti_dialog_ui_gear") displayCtrl 70108)) select 0)) then {
				if (CTI_Log_Level >= CTI_Log_Debug) then {["DEBUG", "FILE: Client\Events\Events_UI_GearMenu.sqf", format["Removing the template at index [%1] which has a seed value of [%2] from the template list and from the client profile", _index, _seed]] call CTI_CO_FNC_Log};
				
				_templates = missionNamespace getVariable "cti_gear_list_templates";
				_templates deleteAt _index;
				missionNamespace setVariable ["cti_gear_list_templates", _templates];
				
				//--- Persistent!
				(_seed) call CTI_UI_Gear_RemoveProfileTemplate;
				
				if (uiNamespace getVariable "cti_dialog_ui_gear_shop_tab" isEqualTo CTI_GEAR_TAB_TEMPLATES) then { //--- Reload the template tab if needed
					(CTI_GEAR_TAB_TEMPLATES) call CTI_UI_Gear_DisplayShoppingItems;
				};
			};
		} else {
			hint parseText "<t size='1.3' color='#2394ef'>Information</t><br /><br /><t align='left'>Templates may only be removed from the <t color='#eaff96'>Template</t> tab</t><br /><br /><img image='Rsc\Pictures\icon_wf_building_barracks.paa' size='2.5'/>";
		};
	};
	
	case "onItemContainerMouseDblClicked": {
		_container = _this select 1;
		
		if (uiNamespace getVariable "cti_dialog_ui_gear_target" isKindOf "Man") then {
			_gear = uiNamespace getVariable "cti_dialog_ui_gear_target_gear";
			_container_type = ((_gear select 1) select _container) select 0;
			
			if !(_container_type isEqualTo "") then {
				if (uiNamespace getVariable "cti_dialog_ui_gear_items_tab" isEqualTo _container) then {lnbClear 70109};
				
				["Container", "", _container_type, [_container, ((_gear select 1) select _container) select 1]] call CTI_UI_Gear_UpdateMass;
				((_gear select 1) select _container) set [1, []];
				[_container, 70301+_container] call CTI_UI_Gear_UpdateContainerProgress;
				
				call CTI_UI_Gear_UpdatePrice;
			};
		};
	};
	
	case "onFilterLBSelChanged": {
		_selected = _this select 1;
		
		//--- Reload the shopping list (skip templates) to apply the new filter
		if (!((uiNamespace getVariable "cti_dialog_ui_gear_shop_tab") isEqualTo CTI_GEAR_TAB_TEMPLATES) && (uiNamespace getVariable ["cti_dialog_ui_gear_filter_reload", true])) then {
			(uiNamespace getVariable "cti_dialog_ui_gear_shop_tab") call CTI_UI_Gear_DisplayShoppingItems;
		};
		
		uiNamespace setVariable ["cti_dialog_ui_gear_filter_reload", true];
	};
};
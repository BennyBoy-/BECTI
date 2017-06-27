_templates = profileNamespace getVariable format["CTI_PERSISTENT_GEAR_TEMPLATEV3_%1", CTI_P_SideJoined];

_side_gear = [];
{
	_side_gear = _side_gear + ((missionNamespace getVariable _x) call CTI_CO_FNC_ArrayToLower);
} forEach ["cti_gear_list_primary","cti_gear_list_secondary","cti_gear_list_pistol","cti_gear_list_magazines","cti_gear_list_accessories","cti_gear_list_misc","cti_gear_list_special","cti_gear_list_uniforms","cti_gear_list_vests","cti_gear_list_backpacks","cti_gear_list_headgear","cti_gear_list_glasses","cti_gear_list_explosives"];

//--- Attempt to load the "proper" templates
_list = [];
if (typeName _templates isEqualTo "ARRAY") then { //--- The variable itself is an array
	if (CTI_Log_Level >= CTI_Log_Information) then {
		["INFORMATION", "FILE: Client\Init\Init_Persistent_Gear.sqf", format["The client has [%1] templates in it's profile", count _templates]] call CTI_CO_FNC_Log;
	};

	{
		// [_label, _picture, _cost, _x]
		
		_err_reason = "";
		if (CTI_Log_Level >= CTI_Log_Information) then {
			["INFORMATION", "FILE: Client\Init\Init_Persistent_Gear.sqf", format["Attempting to load persistent template number [%1] with the following value [%2]", _forEachIndex, _x]] call CTI_CO_FNC_Log;
		};
		
		if (typeName _x isEqualTo "ARRAY") then { //--- Each items are arrays >> [_label, _picture, _cost, _x, upgrade]
			_gear = _x select 3;
			if (typeName (_x select 0) isEqualTo "STRING" && typeName (_x select 1) isEqualTo "STRING" && typeName _gear isEqualTo "ARRAY") then { //--- The label is a string, the picture is a string and the template is an array. Cost and upgrade are re-calculated at the end to prevent third party modification
				if (count _gear isEqualTo 4) then { //--- Make sure that we have the sections (weapons/container+mags/equipment/equipment2)
					_flag_load = true;
					
					//--- #1 Now the party begin! first we check the weapons (primary/secondary/handgun)
					_gear_sub = _gear select 0;
					if (typeName _gear_sub isEqualTo "ARRAY") then { //--- The weapons items are stored in an array >> [["arifle_mxc_f",["","acc_pointer_ir","optic_Aco"],["30rnd_65x39_caseless_mag"]],["launch_nlaw_f",[],["nlaw_f"]],["",[],[]]]
						{
							//--- Check that the weapon... is a weapon! >> ["arifle_mxc_f",["","acc_pointer_ir","optic_Aco"],["30rnd_65x39_caseless_mag"]]
							if (typeName _x isEqualTo "ARRAY") then {
								if (count _x isEqualTo 3) then { //--- Make sure that we have the weapon/accessories/current magazine
									_weapon = toLower(_x select 0);
									_accessories = (_x select 1) call CTI_CO_FNC_ArrayToLower;
									_magazine = (_x select 2) call CTI_CO_FNC_ArrayToLower;
									
									if (typeName _weapon isEqualTo "STRING" && typeName _accessories isEqualTo "ARRAY" && typeName _magazine isEqualTo "ARRAY") then { //--- The data format is valid
										if ((!isClass (configFile >> "CfgWeapons" >> _weapon) || !(_weapon in _side_gear)) && !(_weapon isEqualTo "")) exitWith {_flag_load = false; _err_reason = format["Weapon [%1] is either not a valid CfgWeapons class or does not belong to the player's side", _weapon]}; //--- Abort if: the weapon is invalid or if it's not within the side's owned templates
										if (!(getNumber(configFile >> "CfgWeapons" >> _weapon >> "type") in [CTI_TYPE_RIFLE,CTI_TYPE_PISTOL,CTI_TYPE_LAUNCHER,CTI_TYPE_RIFLE2H]) && !(_weapon isEqualTo "")) exitWith {_flag_load = false; _err_reason = format["Weapon [%1] type does not match a valid weapon type", _weapon]}; //--- Make sure that the weapon is a weapon
										
										if !(count _accessories in [0,4]) exitWith {_flag_load = false; _err_reason = format["Weapon [%1] accessories count is not within the expected values, expecting [0,4], got [%2]", _weapon, count _accessories]}; //--- The data format is invalid for the accesories
										{
											if (typeName _x isEqualTo "STRING") then { //--- The accessory is a string
												if !(_x isEqualTo "") then { //--- Empty accessories are skipped
													if (!isClass (configFile >> "CfgWeapons" >> _x) || !(_x in _side_gear)) exitWith {_flag_load = false; _err_reason = format["Item [%1] is either not a valid CfgWeapons class or does not belong to the player's side", _x]}; //--- The accessory ain't valid or it's not within the side's gear
													if !(getNumber(configFile >> "CfgWeapons" >> _x >> "type") isEqualTo CTI_TYPE_ITEM) exitWith {_flag_load = false; _err_reason = format["Item [%1] type does not match the Item type [%1] ", _x, CTI_TYPE_ITEM]}; //--- The accessory is not a valid base class!
													if !(getNumber(configFile >> "CfgWeapons" >> _x >> "ItemInfo" >> "type") in [CTI_SUBTYPE_ACC_MUZZLE,CTI_SUBTYPE_ACC_OPTIC,CTI_SUBTYPE_ACC_SIDE,CTI_SUBTYPE_ACC_BIPOD]) exitWith {_flag_load = false; _err_reason = format["Item [%1] type is not within the valid weapons accessories", _x]}; //--- The accessory is not a valid base class (we don't care bout the order)!
												};
											};
											if !(_flag_load) exitWith {};
										} forEach _accessories;
										if !(_flag_load) exitWith {}; //--- Something went wrong with the accessories
										
										if !(count _magazine in [0,1]) exitWith {_flag_load = false; _err_reason = format["Weapon [%1] magazine count does not match the expected value [0,1], got [%2]", _weapon, count _magazine]};
										if (count _magazine isEqualTo 1) then { //--- Make sure that the magazine is valid
											_magazine = _magazine select 0;
											if (!isClass (configFile >> "CfgMagazines" >> _magazine) || !(_magazine in _side_gear)) exitWith {_flag_load = false; _err_reason = format["Magazine [%1] is either not a valid CfgMagazines class or does not belong to the player side", _magazine]};
										};
										if !(_flag_load) exitWith {}; //--- Something went wrong with the magazine
									} else {
										_flag_load = false;
										_err_reason = "The current weapon array format is invalid, expecting [STRING Weapon, ARRAY Accessories, ARRAY Magazine]";
									};
								} else {
									_flag_load = false;
									_err_reason = format["The current weapon array element is invalid, expecting [3] values, got [%1]", count _x];
								};
							} else {
								_flag_load = false;
								_err_reason = "The current weapon array format is invalid, expecting an ARRAY value";
							};
							
							if !(_flag_load) exitWith {}; //--- Something went wrong with the process
						} forEach _gear_sub;
					} else {
						_flag_load = false;
						_err_reason = "The overall weapon array format is invalid, expecting an ARRAY value";
					};
					
					if (_flag_load) then {
						//--- #2 then we check the containers (uniform/vest/backpack)
						_gear_sub = _gear select 1;
						
						if (typeName _gear_sub isEqualTo "ARRAY") then { //--- The weapons items are stored in an array >> [["u_b_combatuniform_mcam",[]],["v_platecarrier1_rgr",[]],["b_assaultpack_mcamo",["firstaidkit","firstaidkit","handgr...
							if (count _gear_sub isEqualTo 3) then { //--- Make sure that we have the sections (uniform/vest/backpack)
								{
									if (typeName _x isEqualTo "ARRAY") then {
										if (count _x isEqualTo 2) then { //--- Each array need to have the container and the items
											if (typeName (_x select 0) isEqualTo "STRING" && typeName (_x select 1) isEqualTo "ARRAY") then { //--- The container is a string, the items are an array
												_container = toLower(_x select 0);
												_items = (_x select 1) call CTI_CO_FNC_ArrayToLower;
												
												if !(_container isEqualTo "") then { //--- If the container is empty, we don't bother any further
													switch (true) do {
														case (_forEachIndex in [0,1]): { //--- Uniform & vest
															if (!isClass (configFile >> "CfgWeapons" >> _container) || !(_container in _side_gear)) exitWith {_flag_load = false; _err_reason = format["Vest or Uniform [%1] is either not a valid CfgWeapons class or does not belong to the player's side", _container]}; //--- Abort if: the container is invalid or if it's not within the side's owned templates
															if !(getNumber(configFile >> "CfgWeapons" >> _container >> "type") isEqualTo CTI_TYPE_ITEM) exitWith {_flag_load = false; _err_reason = format["Vest or Uniform [%1] type does not match the Item type [%2]", _container, CTI_TYPE_ITEM]}; //--- The container is not a valid base class!
															if !(getNumber(configFile >> "CfgWeapons" >> _container >> "ItemInfo" >> "type") in [CTI_SUBTYPE_UNIFORM,CTI_SUBTYPE_VEST]) exitWith {_flag_load = false; _err_reason = format["Vest or Uniform [%1] type does not belong to the Uniform or Vest Subtypes", _container]}; //--- The container is not a valid uniform/vest
														};
														case (_forEachIndex isEqualTo 2): { //--- Backpack
															if (!isClass (configFile >> "CfgVehicles" >> _container) || !(_container in _side_gear)) exitWith {_flag_load = false; _err_reason = format["Backpack [%1] is either not a valid CfgVehicles class or does not belong to the player's side", _container]}; //--- Abort if: the container is invalid or if it's not within the side's owned templates
															if !(getNumber(configFile >> "CfgVehicles" >> _container >> "isbackpack") isEqualTo 1) exitWith {_flag_load = false; _err_reason = format["Backpack [%1] CfgVehicles isbackpack property is set on 0", _container]}; //--- The container is not a valid backpack
														};
													};
													
													if !(_flag_load) exitWith {}; //--- Something went wrong with the container
													
													//--- We check the items sanity now
													{
														if !(typeName _x isEqualTo "STRING") exitWith {_flag_load = false; _err_reason = format["Container [%1] item [%2] is not a string", _container, _x]};
														_config_type = switch (true) do { //--- Determine the kind of item that we're dealing with
															case (isClass (configFile >> "CfgWeapons" >> _x)): {"CfgWeapons"};
															case (isClass (configFile >> "CfgMagazines" >> _x)): {"CfgMagazines"};
															case (isClass (configFile >> "CfgVehicles" >> _x)): {"CfgVehicles"};
															case (isClass (configFile >> "CfgGlasses" >> _x)): {"CfgGlasses"};
															default {"nil"};
														};
														
														if (_config_type isEqualTo "nil") exitWith {_flag_load = false; _err_reason = format["Container [%1] item [%2] config class could not be determined", _container, _x]};
													} forEach _items;
												};
												
												if !(_flag_load) exitWith {};
											} else {
												_flag_load = false;
												_err_reason = "The current Container array format is invalid, expecting [STRING Container, ARRAY Items]";
											};
										} else {
											_flag_load = false;
											_err_reason = format["The current Container array element is invalid, expecting [2] values, got [%1]", count _x];
										};
									} else {
										_flag_load = false;
										_err_reason = "The current Container array format is invalid, expecting an ARRAY value";
									};
								} forEach _gear_sub;
							} else {
								_flag_load = false;
								_err_reason = format["The Container array is invalid, expecting [3] values, got [%1]", count _gear_sub];
							};
						}  else {
							_flag_load = false;
							_err_reason = "The Container array format is invalid, expecting an ARRAY value";
						};
					};
					
					if (_flag_load) then {
						//--- #3 next we check the head equipment (helm/goggles)
						_gear_sub = _gear select 2;
						
						if (typeName _gear_sub isEqualTo "ARRAY") then {
							if (count _gear_sub isEqualTo 2) then {
								_helm = _gear_sub select 0;
								_goggles = _gear_sub select 1;
								
								if !(_helm isEqualTo "") then {
									if (!isClass (configFile >> "CfgWeapons" >> _helm) || !(_helm in _side_gear)) exitWith {_flag_load = false; _err_reason = format["Helm [%1] is either not a valid CfgWeapons class or does not belong to the player's side", _helm]}; //--- The helm ain't valid or it's not within the side's gear
									if !(getNumber(configFile >> "CfgWeapons" >> _helm >> "type") isEqualTo CTI_TYPE_ITEM) exitWith {_flag_load = false; _err_reason = format["Helm [%1] type does not match the Item type [%2]", _helm, CTI_TYPE_ITEM]}; //--- The helm do not have a valid base class!
									if !(getNumber(configFile >> "CfgWeapons" >> _helm >> "ItemInfo" >> "type") isEqualTo CTI_SUBTYPE_HEADGEAR) exitWith {_flag_load = false; _err_reason = format["Helm [%1] type does not belong to the Headgear Subtypes", _helm]}; //--- The helm is not a valid headgear
								};
								
								if !(_flag_load) exitWith {};
								if ((!isClass (configFile >> "CfgGlasses" >> _goggles) || !(_goggles in _side_gear)) && !(_goggles isEqualTo "")) exitWith {_flag_load = false; _err_reason = format["Goggle Item [%1] is either not a valid CfgGlasses class or does not belong to the player's side", _goggles]}; //--- The googles ain't valid or it's not within the side's gear
							} else {
								_flag_load = false;
								_err_reason = format["The Headgear array is invalid, expecting [2] values, got [%1]", count _gear_sub];
							};
						} else {
							_flag_load = false;
							_err_reason = "The Headgear array format is invalid, expecting an ARRAY value";
						};
						
						if (_flag_load) then {
							//--- #4 next we check the items (binoc, nvg, items like gps)
							_gear_sub = _gear select 3;
							
							if (typeName _gear_sub isEqualTo "ARRAY") then {
								if (count _gear_sub isEqualTo 2) then {
									//--- Check nvg/binocs
									if (typeName (_gear_sub select 0) isEqualTo "ARRAY") then {
										if (count(_gear_sub select 0) isEqualTo 2) then {
											{
												if !(typeName _x isEqualTo "STRING") exitWith {_flag_load = false; _err_reason = format["Item [%1] is not a string", _x]};
												if !(_x isEqualTo "") then {
													if (!isClass (configFile >> "CfgWeapons" >> _x) || !(_x in _side_gear)) exitWith {_flag_load = false; _err_reason = format["Item (Binoc/NVG) [%1] is either not a valid CfgWeapons class or does not belong to the player's side", _x]}; //--- The item ain't valid or it's not within the side's gear
													if !(getNumber(configFile >> "CfgWeapons" >> _x >> "type") isEqualTo CTI_TYPE_EQUIPMENT) exitWith {_flag_load = false; _err_reason = format["Item (Binoc/NVG) [%1] type does not belong to the Equipment type", _x]}; //--- The item do not have a valid base class!
												};
											} forEach (_gear_sub select 0);
										} else {
											_flag_load = false;
											_err_reason = format["The Binoc/NVG array is invalid, expecting [2] values, got [%1]", count _gear_sub];
										};
									};
									
									if !(_flag_load) exitWith {}; //--- Something went wrong with the binoc/nvg
									
									//--- Check items
									if (typeName (_gear_sub select 1) isEqualTo "ARRAY") then {
										if (count(_gear_sub select 1) isEqualTo 5) then {
											{
												if !(typeName _x isEqualTo "STRING") exitWith {_flag_load = false; _err_reason = format["Item (Binoc/NVG) [%1] is not a string", _x]};
												if !(_x isEqualTo "") then {
													if (!isClass (configFile >> "CfgWeapons" >> _x) || !(_x in _side_gear)) exitWith {_flag_load = false; _err_reason = format["Item [%1] is either not a valid CfgWeapons class or does not belong to the player's side", _x]}; //--- The item ain't valid or it's not within the side's gear
													if !(getNumber(configFile >> "CfgWeapons" >> _x >> "type") isEqualTo CTI_TYPE_ITEM) exitWith {_flag_load = false; _err_reason = format["Item [%1] type does not belong to the Item type", _x]}; //--- The item do not have a valid base class!
													if !(getNumber(configFile >> "CfgWeapons" >> _x >> "ItemInfo" >> "type") in [CTI_SUBTYPE_ITEM, CTI_SUBTYPE_UAVTERMINAL]) exitWith {_flag_load = false; _err_reason = format["Item [%1] type does not belong to the Item/UAV Terminal Subtype", _x]}; //--- The item is not a valid item
												};
											} forEach (_gear_sub select 1);
										} else {
											_flag_load = false;
											_err_reason = format["The Items array is invalid, expecting [5] values, got [%1]", count(_gear_sub select 1)];
										};
									};
								};
							};
							
							if (_flag_load) then {
								_flat = (_x select 3) call CTI_CO_FNC_ConvertGearToFlat;
								_cost = 0;
								_upgrade_max = 0;
								{
									_cost = _cost + (_x call CTI_CO_FNC_GetGearItemCost); //--- Retrieve the item current cost
									_upgrade = ((missionNamespace getVariable [format["cti_%1", _x], [[0, 0]]]) select 0) select 0; //--- Retrieve the item current upgrade level
									if (_upgrade > _upgrade_max) then {_upgrade_max = _upgrade}; //--- We retrieve the highest upgrade level needed for the template
								} forEach _flat;
								_x set [2, _cost];
								_x set [4, _upgrade_max];
								
								if (CTI_Log_Level >= CTI_Log_Information) then {
									["INFORMATION", "FILE: Client\Init\Init_Persistent_Gear.sqf", format["A persistent template has been loaded with the label [%1], cost of [%2], upgrade level of [%3] and gear [%4]", _x select 0, _cost, _upgrade_max, _x select 3]] call CTI_CO_FNC_Log;
								};
								
								_list pushBack _x;
							};
						};
					};
				} else {
					_err_reason = format["The gear array does not have the expected item count (expecting 4 elements, got %1)", count _gear];
				};
			} else {
				_err_reason = "Template array types are wrong, expecting [STRING Label, STRING Picture, FLOAT Cost, ARRAY Gear]";
			};
		} else {
			_err_reason = "Template value is not an array";
		};
		
		if !(_err_reason isEqualTo "") then {
			if (CTI_Log_Level >= CTI_Log_Error) then {
				["ERROR", "FILE: Client\Init\Init_Persistent_Gear.sqf", format["The persistent template number [%1] could not be loaded due to the following error [%2]", _forEachIndex, _err_reason]] call CTI_CO_FNC_Log;
			};
		};
	} forEach _templates;
} else {
	if (CTI_Log_Level >= CTI_Log_Error) then {
		["ERROR", "FILE: Client\Init\Init_Persistent_Gear.sqf", "The persistent gear variable type does not match the expected ARRAY type, the persistent gear will not be loaded."] call CTI_CO_FNC_Log;
	};
};

if (count _list > 0) then { //--- If we have more than one template then we overwrite the existing one
	missionNamespace setVariable ["cti_gear_list_templates", _list];
};
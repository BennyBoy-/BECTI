/*
  # HEADER #
	Script: 		Common\Functions\Common_GetUnitLoadout.sqf
	Alias:			CTI_CO_FNC_GetUnitLoadout
	Description:	Retrieve the CTI Formated loadout of a unit
	Author: 		Benny
	Creation Date:	20-06-2013
	Revision Date:	20-06-2013
	
  # PARAMETERS #
    0	[Object]: The unit
	
  # RETURNED VALUE #
	[Array]: The CTI Formated loadout
	
  # SYNTAX #
	(OBJECT) call CTI_CO_FNC_GetUnitLoadout
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_ArrayToLower
	
  # EXAMPLE #
    _loadout = (player) call CTI_CO_FNC_GetUnitLoadout
	  -> Will return the loadout of the player, ie:
		[["arifle_mxc_f",["","acc_pointer_ir","optic_Aco", ""],["30rnd_65x39_caseless_mag"]],["launch_nlaw_f",[],["nlaw_f"]],["",[],[]]],
		[["u_b_combatuniform_mcam",["firstaidkit","firstaidkit"]],["v_platecarrier1_rgr",["30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag"]],["b_assaultpack_mcamo",["handgrenade","handgrenade","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","nlaw_f","nlaw_f"]]],
		["h_helmetb",""],[["nvgoggles","binocular"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
*/

params ["_target"];
private ["_allitems", "_backpack", "_backpack_items", "_goggles", "_handgun", "_handgun_accessories", "_handgun_current_magazine", "_headgear", "_items", "_primary", "_primary_accessories", "_primary_current_magazine", "_secondary", "_secondary_accessories", "_secondary_current_magazine", "_slot", "_uniform", "_uniform_items", "_vest", "_vest_items"];

//--- Uniform, Vest and backpack
_uniform = toLower(uniform _target);
_uniform_items = (uniformItems _target) call CTI_CO_FNC_ArrayToLower;
_vest = toLower(vest _target);
_vest_items = (vestItems _target) call CTI_CO_FNC_ArrayToLower;
_backpack = toLower(backpack _target);
_backpack_items = (backpackItems _target) call CTI_CO_FNC_ArrayToLower;

//--- Weapons
_primary = toLower(primaryWeapon _target);
_primary_accessories = (primaryWeaponItems _target) call CTI_CO_FNC_ArrayToLower;
_secondary = toLower(secondaryWeapon _target);
_secondary_accessories = (secondaryWeaponItems _target) call CTI_CO_FNC_ArrayToLower;
_handgun = toLower(handgunWeapon _target);
_handgun_accessories = (handgunItems _target) call CTI_CO_FNC_ArrayToLower;

//--- Currently loaded magazines
_primary_current_magazine = (primaryWeaponMagazine _target) call CTI_CO_FNC_ArrayToLower;
_secondary_current_magazine = (secondaryWeaponMagazine _target) call CTI_CO_FNC_ArrayToLower;
_handgun_current_magazine = (handgunMagazine _target) call CTI_CO_FNC_ArrayToLower;

//--- Accessories
_headgear = toLower(headgear _target);
_goggles = toLower(goggles _target);

//--- Items
_allitems = ((assignedItems _target) call CTI_CO_FNC_ArrayToLower) - [_headgear, _goggles];
_items = [["", ""], ["", "", "", "", ""]];

{
	_slot = switch (getText(configFile >> 'CfgWeapons' >> _x >> 'simulation')) do {
		case "NVGoggles": {[0,0]};
		case "Binocular": {[0,1]};
		case "ItemMap": {[1,0]};
		case "ItemGPS": {[1,1]};
		case "ItemRadio": {[1,2]};
		case "ItemCompass": {[1,3]};
		case "ItemWatch": {[1,4]};
		default {[-1]};
	};
	if ((_slot select 0) isEqualTo -1) then { //--- The simulation couldn't be determined, try to get the subtype maybe?
		if (getNumber(configFile >> 'CfgWeapons' >> _x >> 'ItemInfo' >> 'type') isEqualTo CTI_SUBTYPE_UAVTERMINAL) then {_slot = [1,1]};
		if (getNumber(configFile >> 'CfgWeapons' >> _x >> 'useAsBinocular') isEqualTo 1 && getText(configFile >> 'CfgWeapons' >> _x >> 'simulation') isEqualTo "weapon") then {_slot = [0,1]};
	};
	if !(_slot select 0 isEqualTo -1) then { (_items select (_slot select 0)) set [_slot select 1, _x] };
} forEach _allitems;
_items = [(_items select 0) call CTI_CO_FNC_ArrayToLower, (_items select 1) call CTI_CO_FNC_ArrayToLower];

//--- Return the preformated gear
[
	[[_primary, _primary_accessories, _primary_current_magazine], [_secondary, _secondary_accessories, _secondary_current_magazine], [_handgun, _handgun_accessories, _handgun_current_magazine]], 
	[[_uniform, _uniform_items], [_vest, _vest_items], [_backpack, _backpack_items]], 
	[_headgear, _goggles], 
	_items
]
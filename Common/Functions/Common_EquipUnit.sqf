/*
  # HEADER #
	Script: 		Common\Functions\Common_EquipUnit.sqf
	Alias:			CTI_CO_FNC_EquipUnit
	Description:	Equip a CTI gear variable on a unit
	Author: 		Benny
	Creation Date:	16-09-2013
	Revision Date:	16-09-2013
	
  # PARAMETERS #
    0	[Object]: The unit to equip
    1	[Array]: A CTI gear variable
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[UNIT, ARRAY] call CTI_CO_FNC_EquipUnit
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_ArrayDiffers
	Common Function: CTI_CO_FNC_ArrayToLower
	Common Function: CTI_CO_FNC_EquipContainerBackpack
	Common Function: CTI_CO_FNC_EquipContainerUniform
	Common Function: CTI_CO_FNC_EquipContainerVest
	
  # EXAMPLE #
	_gear = [
		[["arifle_mxc_f",["","acc_pointer_ir","optic_Aco",""],["30rnd_65x39_caseless_mag"]],["launch_nlaw_f",[],["nlaw_f"]],["",[],[]]],
		[["u_b_combatuniform_mcam",[]],["v_platecarrier1_rgr",[]],["b_assaultpack_mcamo",["firstaidkit","nlaw_f","nlaw_f"]]],
		["h_helmetb",""],
		[["nvgoggles","binocular"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]
	];
	
	[player, _gear] call CTI_CO_FNC_EquipUnit; 
*/

private ["_accessories", "_gear", "_item", "_magazines", "_new", "_unit"];

_unit = _this select 0;
_gear = _this select 1;


//--- ######## [Weapons check-in] ########
//--- Primary
_new = (_gear select 0) select 0;
_item = _new select 0;
_accessories = (_new select 1) call CTI_CO_FNC_ArrayToLower;
_magazines = _new select 2;

if (primaryWeapon _unit != _item && primaryWeapon _unit != "") then {_unit removeWeapon (primaryWeapon _unit)};
if (primaryWeapon _unit != _item && _item != "") then {_unit addWeapon _item};
if (_item != "") then {
	_accessories_current = (primaryWeaponItems _unit) call CTI_CO_FNC_ArrayToLower;
	{if (!(_x in _accessories) && (_x != "")) then {_unit removePrimaryWeaponItem _x}} forEach _accessories_current;
	{if (!(_x in _accessories_current) && (_x != "")) then {_unit addPrimaryWeaponItem _x}} forEach (_accessories + _magazines);
};

//--- Secondary
_new = (_gear select 0) select 1;
_item = _new select 0;
_accessories = (_new select 1) call CTI_CO_FNC_ArrayToLower;
_magazines = _new select 2;

if (secondaryWeapon _unit != _item && secondaryWeapon _unit != "") then {_unit removeWeapon (secondaryWeapon _unit)};
if (secondaryWeapon _unit != _item && _item != "") then {_unit addWeapon _item};
if (_item != "") then {
	_accessories_current = (secondaryWeaponItems _unit) call CTI_CO_FNC_ArrayToLower;
	{if (!(_x in _accessories) && (_x != "")) then {_unit removeSecondaryWeaponItem _x}} forEach _accessories_current;
	{if (!(_x in _accessories_current) && (_x != "")) then {_unit addSecondaryWeaponItem _x}} forEach (_accessories + _magazines);
};

//--- Handgun
_new = (_gear select 0) select 2;
_item = _new select 0;
_accessories = (_new select 1) call CTI_CO_FNC_ArrayToLower;
_magazines = _new select 2;

if (handgunWeapon _unit != _item && handgunWeapon _unit != "") then {_unit removeWeapon (handgunWeapon _unit)};
if (handgunWeapon _unit != _item && _item != "") then {_unit addWeapon _item};
if (_item != "") then {
	_accessories_current = (handgunItems _unit) call CTI_CO_FNC_ArrayToLower;
	{if (!(_x in _accessories) && (_x != "")) then {_unit removeHandgunItem _x}} forEach _accessories_current;
	{if (!(_x in _accessories_current) && (_x != "")) then {_unit addHandgunItem _x}} forEach (_accessories + _magazines);
};

//--- Muzzle
{
	if (_x != "") exitWith {
		_muzzles = getArray (configFile >> "CfgWeapons" >> _x >> "muzzles"); 
		if !("this" in _muzzles) then {_unit selectWeapon (_muzzles select 0)} else {_unit selectWeapon _x}; 
	};
} forEach [primaryWeapon _unit, handgunWeapon _unit, secondaryWeapon _unit];


//--- ######## [Equipment check-in] ########
_new = _gear select 1;

//--- Check if the containers are ok
if (((_gear select 1) select 2) select 0 != backpack _unit || [((_gear select 1) select 2) select 1, backpackItems _unit] call CTI_CO_FNC_ArrayDiffers) then {
	[_unit, ((_gear select 1) select 2) select 0, ((_gear select 1) select 2) select 1] call CTI_CO_FNC_EquipContainerBackpack;
};
if (((_gear select 1) select 1) select 0 != vest _unit || [((_gear select 1) select 1) select 1, vestItems _unit] call CTI_CO_FNC_ArrayDiffers) then {
	[_unit, ((_gear select 1) select 1) select 0, ((_gear select 1) select 1) select 1] call CTI_CO_FNC_EquipContainerVest;
};
if (((_gear select 1) select 0) select 0 != uniform _unit || [((_gear select 1) select 0) select 1, uniformItems _unit] call CTI_CO_FNC_ArrayDiffers) then {
	[_unit, ((_gear select 1) select 0) select 0, ((_gear select 1) select 0) select 1] call CTI_CO_FNC_EquipContainerUniform;
};


//--- ######## [Assigned items check-in] ########
removeAllAssignedItems _unit; //--- Due to the lack of commands for some of them, we remove everything first aside from goggles and headgear
_new = _gear select 2;

_item = _new select 0;
if (_item != headgear _unit) then {removeHeadgear _unit};
if (_item != "") then {_unit addHeadgear _item};

_item = _new select 1;
if (_item != goggles _unit) then {removeGoggles _unit};
if (_item != "") then {_unit addGoggles _item};

{ if (_x != "") then {_unit linkItem _x} } forEach ([((_gear select 3) select 0) select 0] + ((_gear select 3) select 1));

//--- Binoculars are special, they can't be linked like the other items.
if (((_gear select 3) select 0) select 1 != "") then {_unit addWeapon (((_gear select 3) select 0) select 1)};
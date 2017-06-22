/*
  # HEADER #
	Script: 		Common\Functions\CTI_CO_FNC_EquipContainerUniform.sqf
	Alias:			CTI_CO_FNC_EquipContainerUniform
					Note that BIS didn't add a command for it...
	Description:	Alter the content of the uniform and it's items on a unit.
	Author: 		Benny
	Creation Date:	16-09-2013
	Revision Date:	16-09-2013
	
  # PARAMETERS #
    0	[Object]: The unit
    1	[String]: The uniform classname
    2	[Array]: The items to add in the uniform
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[UNIT, CLASSNAME, ITEMS] call CTI_CO_FNC_EquipContainerUniform
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_GetItemBaseConfig
	
  # EXAMPLE #
	[player, "U_B_CombatUniform_mcam", ["Laserbatteries","7Rnd_408_Mag",...]] call CTI_CO_FNC_EquipContainerUniform;
*/

params ["_unit", "_uniform", "_items"];
private ["_added", "_count"];

if (uniform _unit != "") then {removeUniform _unit};//todo clearAllItemsFromUniform if it ever gets added someday.
// if (uniform _unit != _uniform) then { removeUniform _unit }; //todo clearAllItemsFromUniform if it ever gets added someday.
if (_uniform != "" && uniform _unit isEqualTo "") then { _unit addUniform _uniform };

_added = [];
{
	_item = _x;
	if (_item != "") then {
		if !(_item in _added) then {
			//_base = (_item) call CTI_CO_FNC_GetItemBaseConfig;
			_added pushBack _item;
			_count = {_x isEqualTo _item} count _items;
			
			(uniformContainer _unit) addItemCargoGlobal [_item, _count];
			/*switch (_base) do { //todo figure out bout that goggle mystery
				case "CfgMagazines": { (uniformContainer _unit) addMagazineCargoGlobal [_item, _count] };
				case "CfgWeapons": { (uniformContainer _unit) addWeaponCargoGlobal [_item, _count] };
				case "Item": { (uniformContainer _unit) addItemCargoGlobal [_item, _count] };
				case "Goggles": { for '_i' from 1 to _count do {_unit addItemToUniform _item} };
			};*/
			// player sidechat format ["when bis will add the commands, maybe i'll be able to add a %1 in my uniform..", _item];
		};
	};
} forEach _items;
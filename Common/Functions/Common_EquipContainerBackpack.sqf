/*
  # HEADER #
	Script: 		Common\Functions\Common_EquipContainerBackpack.sqf
	Alias:			CTI_CO_FNC_EquipContainerBackpack
	Description:	Alter the content of the backpack and it's items on a unit.
	Author: 		Benny
	Creation Date:	16-09-2013
	Revision Date:	16-09-2013
	
  # PARAMETERS #
    0	[Object]: The unit
    1	[String]: The backpack classname
    2	[Array]: The items to add in the backpack
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[UNIT, CLASSNAME, ITEMS] call CTI_CO_FNC_EquipContainerBackpack
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_GetItemBaseConfig
	
  # EXAMPLE #
	[player, "B_FieldPack_blk", ["Laserbatteries","7Rnd_408_Mag",...]] call CTI_CO_FNC_EquipContainerBackpack;
*/

params ["_unit", "_backpack", "_items"];
private ["_added", "_count"];

if !(backpack _unit isEqualTo _backpack) then { removeBackpack _unit };
if (!(_backpack isEqualTo "") && backpack _unit isEqualTo "") then { _unit addBackpack _backpack };
if !(backpack _unit isEqualTo "") then { clearAllItemsFromBackpack _unit };

_added = [];
{
	_item = _x;
	if !(_item isEqualTo "") then {
		if !(_item in _added) then {
			_added pushBack _item;
			_count = {_x isEqualTo _item} count _items;
			
			(unitBackPack _unit) addItemCargoGlobal [_item, _count];
		};
	};
} forEach _items;
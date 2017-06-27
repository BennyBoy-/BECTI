/*
  # HEADER #
	Script: 		Common\Functions\CTI_CO_FNC_EquipContainerVest.sqf
	Alias:			CTI_CO_FNC_EquipContainerVest
					Note that BIS didn't add a command for it...
	Description:	Alter the content of the vest and it's items on a unit.
	Author: 		Benny
	Creation Date:	16-09-2013
	Revision Date:	16-09-2013
	
  # PARAMETERS #
    0	[Object]: The unit
    1	[String]: The vest classname
    2	[Array]: The items to add in the vest
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[UNIT, CLASSNAME, ITEMS] call CTI_CO_FNC_EquipContainerVest
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_GetItemBaseConfig
	
  # EXAMPLE #
	[player, "V_TacVest_oli", ["Laserbatteries","7Rnd_408_Mag",...]] call CTI_CO_FNC_EquipContainerVest;
*/

params ["_unit", "_vest", "_items"];
private ["_added", "_count"];

if !(vest _unit isEqualTo "") then {removeVest _unit}; //todo clearAllItemsFromVest if it ever gets added someday.
if (!(_vest isEqualTo "") && vest _unit isEqualTo "") then { _unit addVest _vest };

_added = [];
{
	_item = _x;
	if !(_item isEqualTo "") then {
		if !(_item in _added) then {
			_added pushBack _item;
			_count = {_x isEqualTo _item} count _items;
			
			(vestContainer _unit) addItemCargoGlobal [_item, _count];
		};
	};
} forEach _items;
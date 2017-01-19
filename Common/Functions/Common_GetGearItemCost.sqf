/*
  # HEADER #
	Script: 		Common\Functions\Common_GetGearItemCost.sqf
	Alias:			CTI_CO_FNC_GetGearItemCost
	Description:	Get an item cost (weapons, magazine, item...)
	Author: 		Benny
	Creation Date:	18-09-2013
	Revision Date:	18-09-2013
	
  # PARAMETERS #
    0	[String]: The item classname
	
  # RETURNED VALUE #
	[Number]: The item cost, 0 by default
	
  # SYNTAX #
	(CLASSNAME) call CTI_CO_FNC_GetGearItemCost
	
  # EXAMPLE #
    _cost = (primaryWeapon player) call CTI_CO_FNC_GetGearItemCost;
    _cost = ("30Rnd_556x45_Stanag") call CTI_CO_FNC_GetGearItemCost;
    _cost = ("arifle_Katiba_F") call CTI_CO_FNC_GetGearItemCost;
    _cost = ("B_AssaultPack_khk") call CTI_CO_FNC_GetGearItemCost;
*/

private ["_item"];

_item = _this;

((missionNamespace getVariable [format["cti_%1", _item], [[0, 0]]]) select 0) select 1
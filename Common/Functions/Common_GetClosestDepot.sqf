/*
  # HEADER #
	Script: 		Common\Functions\Common_GetClosestDepot.sqf
	Alias:			CTI_CO_FNC_GetClosestDepot
	Description:	Get the closest depot
	Author: 		Benny
	Creation Date:	13-07-2016
	Revision Date:	13-07-2016
	
  # PARAMETERS #
    0	[Array/Object]: A position or an object which determine the center
    1	[Side/Integer]: (optional) Side or Side ID requiered
	
  # RETURNED VALUE #
	[Object]: The closest depot (null if none)
	
  # SYNTAX #
	[CENTER] call CTI_CO_FNC_GetClosestDepot
	[CENTER, SIDE] call CTI_CO_FNC_GetClosestDepot
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_GetClosestEntity
	Common Function: CTI_CO_FNC_GetSideID
	
  # EXAMPLE #
    _closest = [player, CTI_P_SideID] call CTI_CO_FNC_GetClosestDepot;
*/

params["_center", ["_sideID", -2]];
private ["_closest"];

_closest = objNull;

if (typeName _sideID isEqualTo "SIDE") then {_sideID = (_sideID) call CTI_CO_FNC_GetSideID};
{
	if !(isNil {_x getVariable "cti_depot"}) then {
		if !(_sideID isEqualTo -2) then {
			if (_sideID isEqualTo ((_x getVariable "cti_depot") getVariable ["cti_town_sideID", -1])) then {_closest = _x;};
		} else {
			_closest = _x;
		};
	};
	
	if !(isNull _closest) exitWith {};
} forEach (nearestObjects [_center, CTI_TOWNS_DEPOT_CLASSNAME, CTI_TOWNS_DEPOT_RANGE]);

_closest
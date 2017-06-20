/*
  # HEADER #
	Script: 		Common\Functions\Common_ChangeFunds.sqf
	Alias:			CTI_CO_FNC_ChangeFunds
	Description:	Change the funds of a group by adding/subtracting funds to the
					existing ones.
					Note that this function determine if the group is the commander's or not
	Author: 		Benny
	Creation Date:	09-10-2013
	Revision Date:	29-04-2016
	
  # PARAMETERS #
    0	[Group]: The group in question
    1	[Number]: The amount to add (int, float, double...)
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[GROUP, AMOUNT] call CTI_CO_FNC_ChangeFunds
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_GetFunds
	
  # EXAMPLE #
	[group player, 500] call CTI_CO_FNC_ChangeFunds; 
	  -> If the player had 5000 before, he'll end up with 5500
*/

params ["_group", "_value"];
private ["_funds", "_side"];

_side = side _group;

if (isNil '_value') exitWith {["ERROR", "FILE: Common\Functions\Common_ChangeFunds.sqf", format["A nil funds value has been specified for side [%1]", _side]] call CTI_CO_FNC_Log};
if (typeName _value != "SCALAR") exitWith {["ERROR", "FILE: Common\Functions\Common_ChangeFunds.sqf", format["A non-scalar funds value has been specified for side [%1]", _side]] call CTI_CO_FNC_Log};

//--- Change a team's funds
if (_group call CTI_CO_FNC_IsGroupCommander) then {
	[_side, _value] call CTI_CO_FNC_ChangeFundsCommander; 
} else {
	_funds = (_group) call CTI_CO_FNC_GetFunds;
	_group setVariable ["cti_funds", _funds + _value, true];
};
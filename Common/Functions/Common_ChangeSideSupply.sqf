/*
  # HEADER #
	Script: 		Common\Functions\Common_ChangeSideSupply.sqf
	Alias:			CTI_CO_FNC_ChangeSideSupply
	Description:	Change the supply of a given side
	Author: 		Benny
	Creation Date:	10-05-2016
	Revision Date:	10-05-2016
	
  # PARAMETERS #
    0	[Side]: The side
    1	[Integer]: The amount to add/subtract
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[SIDE, AMOUNT] call CTI_CO_FNC_ChangeSideSupply
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_GetSideLogic
	Common Function: CTI_CO_FNC_GetSideSupply
	
  # EXAMPLE #
	[West, 600] call CTI_CO_FNC_ChangeSideSupply; 
	  -> Assuming west had 600 before: 1200
	[West, -50] call CTI_CO_FNC_ChangeSideSupply; 
	  -> Assuming west had 1000 before: 950
*/

params ["_side", "_value"];
private ["_logic", "_supply"];

if (isNil '_value') exitWith {["ERROR", "FILE: Common\Functions\Common_ChangeSideSupply.sqf", format["A nil supply value has been specified for side [%1]", _side]] call CTI_CO_FNC_Log};
if (typeName _value != "SCALAR") exitWith {["ERROR", "FILE: Common\Functions\Common_ChangeSideSupply.sqf", format["A non-scalar value has been specified for side [%1]", _side]] call CTI_CO_FNC_Log};

_logic = (_side) call CTI_CO_FNC_GetSideLogic;
_supply = (_side) call CTI_CO_FNC_GetSideSupply;
_logic setVariable ["cti_supply", _supply + _value, true];

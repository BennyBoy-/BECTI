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

private ["_side", "_supply", "_value"];

_side = _this select 0;
_value = _this select 1;

if (isNil '_value') exitWith {"error CTI_CO_FNC_ChangeSideSupply: attempted to set nil value"};
if (typeName _value != "SCALAR") exitWith {"error CTI_CO_FNC_ChangeSideSupply: attempted to set non scalar value"};

_logic = (_side) call CTI_CO_FNC_GetSideLogic;
_supply = (_side) call CTI_CO_FNC_GetSideSupply;
_logic setVariable ["cti_supply", _supply + _value, true];

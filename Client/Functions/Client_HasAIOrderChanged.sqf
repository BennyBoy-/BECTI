/*
  # HEADER #
	Script: 		Client\Functions\Client_HasAIOrderChanged.sqf
	Alias:			CTI_CL_FNC_HasAIOrderChanged
	Description:	Determine whether the Micro AI order changed or not
	Author: 		Benny
	Creation Date:	19-09-2013
	Revision Date:	19-09-2013
	
  # PARAMETERS #
    0	[Object]: The AI unit
    1	[Integer]: The "new" order
    2	[Array/Object]: The "new" order's position
	
  # RETURNED VALUE #
	[Boolean]: True if differs
	
  # SYNTAX #
	[AI, NEW AI MICRO ORDER, NEW AI MICRO ORDER POSITION] call CTI_CL_FNC_HasAIOrderChanged
	
  # EXAMPLE #
    _changed = [loon1, CTI_ORDER_CLIENT_TAKETOWN, Town1] call CTI_CL_FNC_HasAIOrderChanged
    _changed = [loon2, CTI_ORDER_CLIENT_TAKETOWNS, [0,0]] call CTI_CL_FNC_HasAIOrderChanged
*/

params ["_ai", "_order_current", "_order_pos_current"];
private ["_changed", "_order", "_order_pos"];

_order = _ai getVariable "cti_ai_order";

_changed = false;
if !(_order isEqualTo _order_current) then { //--- Order itself changed?
	_changed = true;
} else { //--- Order position changed?
	_order_pos = _ai getVariable "cti_ai_order_pos";
	
	switch (true) do {
		case (typeName _order_pos_current isEqualTo "ARRAY" && typeName _order_pos isEqualTo "ARRAY"): {
			//--- Queued order?
			_nested = [false, true] select (typeName (_order_pos select 0) isEqualTo "ARRAY");
			_nested_current = [false, true] select (typeName (_order_pos_current select 0) isEqualTo "ARRAY");
			
			switch (true) do {
				case (_nested && _nested_current): { //--- Current and new positions are nested
					if !(count _order_pos_current isEqualTo count _order_pos) then { //--- Count differs, don't bother
						_changed = true;
					} else { //--- Check the first element of the nested content
						_first_pos = _order_pos select 0;
						_first_pos_current = _order_pos_current select 0;
						if (!((_first_pos_current select 0) isEqualTo (_first_pos select 0)) || !((_first_pos_current select 1) isEqualTo (_first_pos select 1))) then {_changed = true}; //--- 2D Check
					};
				};
				case ((_nested && !_nested_current) || (!_nested && _nested_current)): { //--- Current or new positions was nested
					_changed = true;
				};
				case (!_nested && !_nested_current): { //--- Current and new positions are not nested
					if (!((_order_pos_current select 0) isEqualTo (_order_pos select 0)) || !((_order_pos_current select 1) isEqualTo (_order_pos select 1))) then {_changed = true}; //--- 2D Check
				};
			};
		};
		case (typeName _order_pos_current isEqualTo "OBJECT" && typeName _order_pos isEqualTo "OBJECT"): {if !(_order_pos_current isEqualTo _order_pos) then {_changed = true}};//--- Object check, it's easier!
	};
};

_changed
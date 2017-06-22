/*
  # HEADER #
	Script: 		Server\Functions\Server_InitializeStructure.sqf
	Alias:			CTI_SE_FNC_InitializeStructure
	Description:	Initialize a structure upon construction completion
					Note that this script is only triggered on the server
	Author: 		Benny
	Creation Date:	14-10-2013
	Revision Date:	14-10-2013
	
  # PARAMETERS #
    0	[Object]: The structure
    1	[Array]: The structure variable array
    2	[Side]: The structure's side
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[STRUCTURE, STRUCTURE ARRAY, SIDE] call CTI_SE_FNC_InitializeStructure
	
  # EXAMPLE #
    [Barracks1, BarrackCoreInfo, East] call CTI_SE_FNC_InitializeStructure
*/

params ["_structure", "_var", "_side"];

switch ((_var select CTI_STRUCTURE_LABELS) select 0) do {
	case CTI_BARRACKS: {
		//--- Handle the nearby statics
		if (CTI_BASE_DEFENSES_AUTO_MODE > 0) then {
			if (CTI_Log_Level >= CTI_Log_Information) then {
				["INFORMATION", "FILE: Server\Functions\Server_InitializeStructure.sqf", format["Initializing a Static Defenses Management Thread for side [%1] on Barracks Structure [%2] at position [%3]", _side, _structure, position _structure]] call CTI_CO_FNC_Log;
			};
			[_structure, _side] spawn CTI_SE_FNC_HandleStaticDefenses;
		};
	};
};
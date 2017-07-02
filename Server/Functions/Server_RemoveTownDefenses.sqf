/*
  # HEADER #
	Script: 		Server\Functions\Server_RemoveTownDefenses.sqf
	Alias:			CTI_SE_FNC_RemoveTownDefenses
	Description:	Remove town defenses / compositions
	Author: 		Benny
	Creation Date:	02-07-2017
	Revision Date:	02-07-2017
	
  # PARAMETERS #
    0	[Object]: The town
    1	[Side]: The side to disable
	
  # RETURNED VALUE #
	[Object]: The constructed defense
	
  # SYNTAX #
	[TOWN, SIDE] call CTI_SE_FNC_RemoveTownDefenses
	
  # EXAMPLE #
    [LaTrinite, resistance] call CTI_SE_FNC_RemoveTownDefenses
*/

params ["_town", "_side"];
private ["_defenses"];

if !(isNil {_town getVariable "cti_town_hasdefenses"}) then {
	if (CTI_Log_Level >= CTI_Log_Information) then {
		["INFORMATION", "FILE: Server\Functions\Server_RemoveTownDefenses.sqf", format["Town Defenses for side [%1] in town [%2] will be removed", _side, _town]] call CTI_CO_FNC_Log;
	};
	
	_defenses = _town getVariable ["cti_town_defenses_active", []];
	if (count _defenses > 0) then {
		_group = _defenses select 0;
		_props = _defenses select 1;
		
		//--- Remove the Town Defenses units
		if !(isNil '_group') then {{deleteVehicle _x} forEach units _group};
		
		//--- Remote the Town Defenses statics/props
		{deleteVehicle _x} forEach _props;
		
		_town setVariable ["cti_town_defenses_active", nil];
	};
};
/*
  # HEADER #
	Script: 		Server\Functions\Server_CreateTownDefenses.sqf
	Alias:			CTI_SE_FNC_CreateTownDefenses
	Description:	Create town static defenses (camps & towns)
	Author: 		Benny
	Creation Date:	12-06-2017
	Revision Date:	12-06-2017
	
  # PARAMETERS #
    0	[Object]: The Town
    1	[Side]: The Side which holds the town
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[TOWN, SIDE] call CTI_SE_FNC_CreateTownDefenses
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_ArrayShuffle
	Common Function: CTI_CO_FNC_GetTownCampsOnSide
	
  # EXAMPLE #
    [Blata, Resistance] call CTI_SE_FNC_CreateTownDefenses
	  -> Blata resistance static defenses will be created
*/

params ["_town", "_side"];
private ["_defenses", "_defenses_inert", "_pool", "_pool_all", "_sideID", "_town_group"];

_sideID = (_side) call CTI_CO_FNC_GetSideID;

_pool = [];
_pool_all = [];

//--- Add the town and the camps defenses to the overall pool
if (count (_town getVariable ["cti_town_defenses", []]) > 0) then {_pool_all = _pool_all + (_town getVariable "cti_town_defenses")};
{
	if (count (_x getVariable ["cti_camp_defenses", []]) > 0) then {_pool_all = _pool_all + (_x getVariable "cti_camp_defenses")};
} forEach ([_town, _side] call CTI_CO_FNC_GetTownCampsOnSide);

//--- Return the valid defenses that may be used
{
	_marker = _x select 0;
	_class = _x select 1;
	
	if !(getMarkerPos _marker isEqualTo [0,0,0]) then {
		if (typeName (_class select 0) isEqualTo "STRING") then { //--- We're dealing with a simple defense
			if (count(missionNamespace getVariable [format["%1_%2", _side, _class select 0], []]) > 0) then {
				_probability = if (count _class > 1) then {_class select 1} else {100};
				
				if (_probability >= random 100) then {
					_pool pushBack [_marker, _class select 0];
				};
			} else {
				if (CTI_Log_Level >= CTI_Log_Warning) then { 
					["WARNING", "FILE: Server\Functions\Server_CreateTownDefenses.sqf", format ["Town Defense classname %1 is nil and will be skipped", format["%1_%2", _side, _class select 0]]] call CTI_CO_FNC_Log;
				};
			};
		} else { //--- We're dealing with multiple defenses choices
			_pool_multi = [];
			
			{
				_classname = _x select 0;
				
				if (count(missionNamespace getVariable [format["%1_%2", _side, _classname], []]) > 0) then {
					_force = if (count _x > 1) then {_x select 1} else {1};
					_probability = if (count _x > 2) then {_x select 2} else {100};
					
					for '_i' from 1 to _force do {_pool_multi pushBack [_x select 0, _probability]};
				} else {
					if (CTI_Log_Level >= CTI_Log_Warning) then { 
						["WARNING", "FILE: Server\Functions\Server_CreateTownDefenses.sqf", format ["Town Defense classname %1 is nil and will be skipped", format["%1_%2", _side, _classname]]] call CTI_CO_FNC_Log;
					};
				};
			} forEach _class;
			
			if (count _pool_multi > 0) then { //--- Pick a random defense based on the given probability
				_pool_multi = _pool_multi call CTI_CO_FNC_ArrayShuffle;
				
				for '_i' from 0 to (count _pool_multi)-1 do {
					if (((_pool_multi select _i) select 1) >= random 100) exitWith {_pool pushBack [_marker, (_pool_multi select _i) select 0]};
				};
			};
		};
	} else {
		if (CTI_Log_Level >= CTI_Log_Warning) then { 
			["WARNING", "FILE: Server\Functions\Server_CreateTownDefenses.sqf", format ["Town Defense Marker %1 does not exist and will be skipped", _marker]] call CTI_CO_FNC_Log;
		};
	};
} forEach _pool_all;

_defenses = [];
_defenses_inert = [];
_town_group = if (count _pool > 0) then {createGroup _side} else {grpNull};

//--- Create the defenses 
{
	_marker = _x select 0;
	_composition = (missionNamespace getVariable format["%1_%2", _side, _x select 1]) select 0;
	
	if (CTI_Log_Level >= CTI_Log_Information) then {
		["INFORMATION", "FILE: Server\Functions\Server_CreateTownDefenses.sqf", format["Creating Town Defense [%1] at marker [%2]", format["%1_%2", _side, _x select 1], _marker]] call CTI_CO_FNC_Log;
	};
	
	if (typeName _composition isEqualTo "STRING") then { //--- Singular classname
		_defense = _composition createVehicle (getMarkerPos _marker);
		_defense setDir (markerDir _marker);
		_defense setVectorUp surfaceNormal position _defense;
		_defense addEventHandler ["killed", format["[_this select 0, _this select 1, %1, true] spawn CTI_CO_FNC_OnUnitKilled", _sideID]];
		
		// _defense setVariable ["cti_defense_town", true, true]; //todo: use later for empty defenses manning
		
		_defenses pushBack _defense;
		
		//--- ZEUS Curator Editable
		if !(isNil "ADMIN_ZEUS") then {ADMIN_ZEUS addCuratorEditableObjects [[_defense], true]};
	} else { //--- Composition (script-block)
		if (typeName _composition isEqualTo "CODE") then {
			_custom_compo = [getMarkerPos _marker, markerDir _marker] call _composition;
			_custom_defenses = _custom_compo select 0;
			_custom_objects = _custom_compo select 1;
			
			{
				_x addEventHandler ["killed", format["[_this select 0, _this select 1, %1, true] spawn CTI_CO_FNC_OnUnitKilled", _sideID]];
				if !(isNil "ADMIN_ZEUS") then {ADMIN_ZEUS addCuratorEditableObjects [[_x], true]}; //--- ZEUS Curator Editable
				_defenses pushBack _x;
			} forEach _custom_defenses;
			
			_defenses_inert = _defenses_inert + _custom_objects;
		} else {
			if (CTI_Log_Level >= CTI_Log_Warning) then { 
				["WARNING", "FILE: Server\Functions\Server_CreateTownDefenses.sqf", format ["Town Defense custom composition %1 is not a script block. Skipping", format["%1_%2", _side, _x select 1]]] call CTI_CO_FNC_Log;
			};
		};
	};
} forEach _pool;

//--- Store the town defenses along with the defender's group in a variable for an easier access
if !(isNull _town_group) then {
	//--- Give the defense group an explicit callsign
	_town_group setGroupIdGlobal [format["(%1-DEF) %2", _town, _town_group]];
	
	//--- Remove the group when it becomes empty
	_town_group deleteGroupWhenEmpty true;
	
	{
		_can_delegate = [false, true] select (count(missionNamespace getVariable ["CTI_HEADLESS_CLIENTS", []]) > 0);
		_ai_args = [missionNamespace getVariable format["CTI_%1_Soldier", _side], _town_group, getPos _x, _sideID, ([false, true] select ((missionNamespace getVariable "CTI_MARKERS_INFANTRY") isEqualTo 1))];
		
		//--- Assign him to the defense
		if !(_can_delegate) then {
			if (CTI_Log_Level >= CTI_Log_Information) then {
				["INFORMATION", "FILE: Server\Functions\Server_CreateTownDefenses.sqf", format["No HC were detected, defense [%1] (%2) from side [%3] will be server-managed", _x, typeOf _x, _side]] call CTI_CO_FNC_Log;
			};
			
			//--- Create the unit
			_ai = (_ai_args) call CTI_CO_FNC_CreateUnit;
			
			//--- The arguments used to create the AI
			[_ai] allowGetIn true;
			_ai assignAsGunner _x;
			[_ai] orderGetIn true;
			_ai moveInGunner _x;
			
			//--- Update the gunner's properties
			_ai setBehaviour "AWARE";
			_ai setCombatMode "RED";
		} else {
			if (CTI_Log_Level >= CTI_Log_Information) then {
				["INFORMATION", "FILE: Server\Functions\Server_HandleStaticDefenses.sqf", format["At least one HC is present, defense [%1] (%2) from side [%3] will be managed by an HC", _x, typeOf _x, _side]] call CTI_CO_FNC_Log;
			};
			
			//--- Attempt town defense delegation
			[_x, _town_group, _side, _ai_args] call CTI_SE_FNC_AttemptTownDefenseDelegation;
		};
	} forEach _defenses;
	
	_town setVariable ["cti_town_defenses_active", [_town_group, _defenses + _defenses_inert]];
};
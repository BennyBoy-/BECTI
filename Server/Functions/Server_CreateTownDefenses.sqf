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
private ["_defenses", "_pool", "_pool_all"];

_town = _this select 0;
_side = _this select 1;

_pool = [];

//--- Add the town and the camps defenses to the overall pool
_pool_all = (_town getVariable ["cti_town_defenses", []]);
{_pool_all = _pool_all + (_x getVariable ["cti_camp_defenses", []])} forEach ([_town, _side] call CTI_CO_FNC_GetTownCampsOnSide);

//--- Return the valid defenses that may be used
{
	_marker = _x select 0;
	_class = _x select 1;
	
	if !(getMarkerPos _marker isEqualTo [0,0,0]) then {
		if (typeName (_class select 0) isEqualTo "STRING") then { //--- We're dealing with a simple defense
			_classname = _x select 0;
			
			if (count(missionNamespace getVariable [format["%1_%2", _side, _classname], []]) > 0) then {
				_probability = if (count _x > 1) then {_this select 1} else {100};
				
				if (_probability >= random 100) then {
					_pool pushBack [_marker, _x select 0];
				};
			} else {
				//--- Warning: classname is nil
			};
		} else { //--- We're dealing with multiple defenses choices
			_pool_multi = [];
			
			{
				_classname = _x select 0;
				
				if (count(missionNamespace getVariable [format["%1_%2", _side, _classname], []]) > 0) then {
					_force = if (count _x > 1) then {_this select 1} else {1};
					_probability = if (count _x > 2) then {_this select 2} else {100};
					
					for '_i' from 1 to _force do {_pool_multi pushBack [_x select 0, _probability]};
				} else {
					//--- Warning: classname is nil
				};
			} forEach _class;
			
			if (count _pool_multi > 0) then { //--- Pick a random defense based on the given probability
				_pool_multi = _pool_multi call CTI_CO_FNC_ArrayShuffle;
				
				_match = false;
				while {!_match} do {
					for '_i' from 0 to (count _pool_multi)-1 do {
						if (((_pool_multi select _i) select 2) >= random 100) exitWith {_match = true; _pool pushBack [_marker, (_pool_multi select _i) select 0]};
					};
				};
			};
		};
	} else {
		//--- Warning: marker is nil
	};
} forEach _pool_all;

_defenses = [];

//--- Create the defenses 
{
	_marker = _x select 0;
	_composition = missionNamespace getVariable format["%1_%2", _side, _x select 1];
	
	if (typeName _composition isEqualTo "STRING") then { //--- Singular classname
		_defense = _composition createVehicle (getMarkerPos _marker);
		_defense setDir (markerDir _marker);
		_defense setVectorUp surfaceNormal position _defense;
		_defense addEventHandler ["killed", format["[_this select 0, _this select 1, %1] spawn CTI_CO_FNC_OnUnitKilled", _side]];

		// _defense setVariable ["cti_defense_town", true, true];
		
		_defenses pushBack _defense;
		
		if !( isNil "ADMIN_ZEUS") then { ADMIN_ZEUS addCuratorEditableObjects [[_defense],true] };
	} else { //--- Composition
		
	};
} forEach _pool;

//--- Store the town defenses in a variable for an easier access
_town setVariable ["cti_town_defenses_active", _defenses];
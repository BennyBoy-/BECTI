/*
  # HEADER #
	Script: 		Server\Functions\Server_HandleStaticDefenses.sqf
	Alias:			CTI_SE_FNC_HandleStaticDefenses
	Description:	Handle the lifespan of a static defense
	Author: 		Benny
	Creation Date:	20-09-2013
	Revision Date:	14-10-2013
	
  # PARAMETERS #
    0	[Object]: The structure which act as a center
    1	[Side]: The side of that structure
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[STRUCTURE, SIDE] spawn CTI_SE_FNC_HandleStaticDefenses
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_GetSideID
	Common Function: CTI_CO_FNC_GetSideLogic
	Common Function: CTI_CO_FNC_CreateUnit
	
  # EXAMPLE #
    [_structure, _side] spawn CTI_SE_FNC_HandleStaticDefenses
	  -> Will search for manable statics around _structure
*/

private ["_ai", "_defense_team", "_delegate", "_direction", "_distance", "_logic", "_manned", "_net", "_position", "_side", "_sideID", "_structure", "_var"];

_structure = _this select 0;
_side = _this select 1;

_logic = (_side) call CTI_CO_FNC_GetSideLogic;
_sideID = (_side) call CTI_CO_FNC_GetSideID;
_defense_team = _logic getVariable "cti_defensive_team";

_var = missionNamespace getVariable format ["CTI_%1_%2", _side, _structure getVariable "cti_structure_type"];
_direction = 360 - ((_var select CTI_DEFENSE_PLACEMENT) select 0);
_distance = (_var select CTI_DEFENSE_PLACEMENT) select 1;
_position = _structure modelToWorld [(sin _direction * _distance), (cos _direction * _distance), 0];

_net = if ((missionNamespace getVariable "CTI_MARKERS_INFANTRY") == 1) then {true} else {false};

//--- Perform a defense manning routine while we can
while {alive _structure} do {
	//--- We man only one defense per loop as we skip the usual queue
	_manned = false;
	{
		if (!(isNil {_x getVariable "cti_aman_enabled"}) && ((_x getVariable ["cti_defense_sideID", -1]) isEqualTo _sideID)) then {
			_last_occupied = _x getVariable ["cti_aman_time_occupied", -6000];
			
			//--- Check if our defense has run out of ammo
			if !(someAmmo _x) then {
				//--- Check if we have a nearby ammo source
				_ammo_trucks = [_x, CTI_SPECIAL_AMMOTRUCK, CTI_BASE_DEFENSES_AUTO_REARM_RANGE] call CTI_CO_FNC_GetNearestSpecialVehicles;
				_nearest = [CTI_AMMO, _x, (_side) call CTI_CO_FNC_GetSideStructures, CTI_BASE_DEFENSES_AUTO_REARM_RANGE] call CTI_CO_FNC_GetClosestStructure;
				
				if (count _ammo_trucks > 0 || !isNull _nearest) then {
					if (CTI_Log_Level >= CTI_Log_Information) then {
						["INFORMATION", "FILE: Server\Functions\Server_HandleStaticDefenses.sqf", format["Rearming [%1] Static Defense [%2] (%3) from Ammo Truck [%4] (%5), defense is local [%6]? gunner is local [%7]?", _side, _x, typeOf _x, _nearest, typeOf _nearest, local _x, local gunner _x]] call CTI_CO_FNC_Log;
					};
					
					if (local gunner _x) then {
						// _x setVehicleAmmoDef 1;
						_x setVehicleAmmo 1;
					} else {
						[_x, 1] remoteExec ["CTI_PVF_CLT_RequestVehicleRearm", owner gunner _x];
					};
				};
			};
			
			//--- The static is occupied
			if (alive gunner _x || alive assignedGunner _x) then {
				_x setVariable ["cti_aman_time_occupied", time];
			} else {
				//--- The static is empty
				if (!alive gunner _x && !alive assignedGunner _x && !_manned && time - _last_occupied > CTI_BASE_DEFENSES_AUTO_DELAY && count(_defense_team call CTI_CO_FNC_GetLiveUnits) < CTI_BASE_DEFENSES_AUTO_LIMIT && vectorUp _x select 2 > .5) then {
					_manned = true;
					
					if (CTI_Log_Level >= CTI_Log_Information) then {
						["INFORMATION", "FILE: Server\Functions\Server_HandleStaticDefenses.sqf", format["Creating a unit to man the defense [%1] (%2) for side [%3]", _x, typeOf _x, _side]] call CTI_CO_FNC_Log;
					};
					
					//--- Was there an AI assigned in there previously?
					if !(isNull assignedGunner _x) then {
						if (CTI_Log_Level >= CTI_Log_Debug) then {
							["DEBUG", "FILE: Server\Functions\Server_HandleStaticDefenses.sqf", format["Defense [%1] (%2) from side [%3] has an assigned gunner (%4), attempting to unassign him", _x, typeOf _x, _side, assignedGunner _x]] call CTI_CO_FNC_Log;
						};
						unassignVehicle (assignedGunner _x);
					};
					
					//--- Check if the AI is still the gunner
					if !(isNull gunner _x) then {
						if (CTI_Log_Level >= CTI_Log_Debug) then {
							["DEBUG", "FILE: Server\Functions\Server_HandleStaticDefenses.sqf", format["Defense [%1] (%2) from side [%3] has a gunner (%4), attempting to delete him", _x, typeOf _x, _side, gunner _x]] call CTI_CO_FNC_Log;
						};
						_x deleteVehicleCrew gunner _x;
					};
					
					//--- Do we have an HC?
					_delegate = false;
					if !(isNil {missionNamespace getVariable "CTI_HEADLESS_CLIENTS"}) then {
						if (count(missionNamespace getVariable "CTI_HEADLESS_CLIENTS") > 0) then { _delegate = true };
					};
					
					//--- The arguments used to create the AI
					_ai_args = [missionNamespace getVariable format["CTI_%1_Soldier", _side], _defense_team, _position, _sideID, _net];
					
					//--- No delegation possible, create on the server
					if !(_delegate) then {
						if (CTI_Log_Level >= CTI_Log_Information) then {
							["INFORMATION", "FILE: Server\Functions\Server_HandleStaticDefenses.sqf", format["No HC were detected, defense [%1] (%2) from side [%3] will be server-managed", _x, typeOf _x, _side]] call CTI_CO_FNC_Log;
						};
						
						//--- Create the unit
						_ai = (_ai_args) call CTI_CO_FNC_CreateUnit;
						
						//--- Assign him to the defense
						[_ai] allowGetIn true;
						_ai assignAsGunner _x;
						[_ai] orderGetIn true;
						_ai moveInGunner _x;
						
						//--- Update the gunner's properties
						_ai setBehaviour "AWARE";
						_ai setCombatMode "RED";
					} else {
						//--- At least one HC is available
						if (CTI_Log_Level >= CTI_Log_Information) then {
							["INFORMATION", "FILE: Server\Functions\Server_HandleStaticDefenses.sqf", format["At least one HC is present, defense [%1] (%2) from side [%3] will be managed by an HC", _x, typeOf _x, _side]] call CTI_CO_FNC_Log;
						};
						
						[_x, _defense_team, _side, _ai_args] call CTI_SE_FNC_AttemptDefenseDelegation;
					};
					
				};
			};
		};
	} forEach (_structure nearEntities [["StaticWeapon"], CTI_BASE_DEFENSES_AUTO_RANGE]);
	
	sleep 15;
};

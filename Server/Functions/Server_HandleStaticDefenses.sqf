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

private ["_ai", "_defense_team", "_delegate", "_direction", "_distance", "_last_scan", "_logic", "_manned", "_net", "_position", "_side", "_sideID", "_statics", "_structure", "_var"];

_structure = _this select 0;
_side = _this select 1;

_logic = (_side) call CTI_CO_FNC_GetSideLogic;
_sideID = (_side) call CTI_CO_FNC_GetSideID;
_defense_team = _logic getVariable "cti_defensive_team";

_var = missionNamespace getVariable format ["CTI_%1_%2", _side, _structure getVariable "cti_structure_type"];
_direction = 360 - ((_var select 4) select 0);
_distance = (_var select 4) select 1;
_position = _structure modelToWorld [(sin _direction * _distance), (cos _direction * _distance), 0];

_last_scan = -5000;
_statics = [];

_net = if ((missionNamespace getVariable "CTI_MARKERS_INFANTRY") == 1) then {true} else {false};

//--- Perform a defense manning routine while we can
while {alive _structure} do {
	
	if (time - _last_scan > 30) then {
		_last_scan = time;
		_statics = _structure nearEntities [["StaticWeapon"], CTI_BASE_DEFENSES_AUTO_RANGE];
	};
	
	//--- We man only one defense per loop as we skip the usual queue
	_manned = false;
	{
		if !(isNil {_x getVariable "cti_aman_enabled"}) then {
			_last_occupied = _x getVariable "cti_aman_time_occupied";
			if (isNil '_last_occupied') then {_last_occupied = -6000};		
			
			//--- Check if our defense has run out of ammo
			if !(someAmmo _x) then {
				//--- Check if we have a nearby ammo source
				_ammo_trucks = [_x, CTI_SPECIAL_AMMOTRUCK, CTI_BASE_DEFENSES_AUTO_REARM_RANGE] call CTI_CO_FNC_GetNearestSpecialVehicles;
				_nearest = [CTI_AMMO, _x, (_side) call CTI_CO_FNC_GetSideStructures, CTI_BASE_DEFENSES_AUTO_REARM_RANGE] call CTI_CO_FNC_GetClosestStructure;
				
				if (count _ammo_trucks > 0 || !isNull _nearest) then {
					if (CTI_Log_Level >= CTI_Log_Information) then {
						["INFORMATION", "FILE: Server\Functions\Server_HandleStaticDefenses.sqf", format["Rearming Static Defense [%1] (%2) from Ammo Truck [%3] (%4), local [%5]?", _x, typeOf _x, _nearest, typeOf _nearest, local _x]] call CTI_CO_FNC_Log;
					};
					
					if (local _x) then {
						_x setVehicleAmmoDef 1;
					} else {
						[_x, 1] remoteExec ["CTI_PVF_CLT_RequestVehicleRearm", owner _x];
					}
				};
			};
			
			//--- The static is occupied
			if (alive gunner _x || alive assignedGunner _x) then {
				_x setVariable ["cti_aman_time_occupied", time];
			} else {
				//--- The static is empty
				if (!alive gunner _x && !alive assignedGunner _x && !_manned && time - _last_occupied > CTI_BASE_DEFENSES_AUTO_DELAY && count(_defense_team call CTI_CO_FNC_GetLiveUnits) < CTI_BASE_DEFENSES_AUTO_LIMIT) then {
					_manned = true;
					
					if (CTI_Log_Level >= CTI_Log_Information) then {
						["INFORMATION", "FILE: Server\Functions\Server_HandleStaticDefenses.sqf", format["Creating a unit to man the defense [%1] (%2)", _x, typeOf _x]] call CTI_CO_FNC_Log;
					};
					
					//--- Was there an AI assigned in there previously?
					if !(isNull assignedGunner _x) then {
						if (CTI_Log_Level >= CTI_Log_Debug) then {
							["DEBUG", "FILE: Server\Functions\Server_HandleStaticDefenses.sqf", format["Defense [%1] (%2) has an assigned gunner (%3), attempting to unassign him", _x, typeOf _x, assignedGunner _x]] call CTI_CO_FNC_Log;
						};
						unassignVehicle (assignedGunner _x);
					};
					
					//--- Check if the AI is still the gunner
					if !(isNull gunner _x) then {
						if (CTI_Log_Level >= CTI_Log_Debug) then {
							["DEBUG", "FILE: Server\Functions\Server_HandleStaticDefenses.sqf", format["Defense [%1] (%2) has a gunner (%3), attempting to delete him", _x, typeOf _x, gunner _x]] call CTI_CO_FNC_Log;
						};
						_x deleteVehicleCrew gunner _x;
					};
					
					//--- Do we have an HC?
					_delegate = false;
					if !(isNil {missionNamespace getVariable "CTI_HEADLESS_CLIENTS"}) then {
						if (count(missionNamespace getVariable "CTI_HEADLESS_CLIENTS") > 0) then { _delegate = true };
					};
					
					//--- The arguments used to create the AI
					_ai_args = [missionNamespace getVariable format["CTI_%1_Static", _side], _defense_team, _position, _sideID, _net];
					
					//--- No delegation possible, create on the server
					if !(_delegate) then {
						if (CTI_Log_Level >= CTI_Log_Information) then {
							["INFORMATION", "FILE: Server\Functions\Server_HandleStaticDefenses.sqf", format["No HC were detected, defense [%1] (%2) will be server-managed", _x, typeOf _x]] call CTI_CO_FNC_Log;
						};
						
						//--- Create the unit
						_ai = (_ai_args) call CTI_CO_FNC_CreateUnit;
						
						//--- Assign him to the defense
						[_ai] allowGetIn true;
						_ai assignAsGunner _x;
						[_ai] orderGetIn true;
						_ai moveInGunner _x;
						
						// TODO: deduplicate code (Init_Client_Headless.sqf)
						// TODO: proper/extensible vehicle switch
						
						//--- Configure the weapon / gunner
						if (typeOf(_x) find "POOK_ANMPQ53" == 0 || typeOf(_x) find "pook_SNR75_radar" == 0) then {
							[_x, _side] spawn CTI_SE_FNC_HandleStaticDefenseSAMSite;
						} else {
							if (typeOf(_x) find "pook_MIM104_PAC2" == 0 || typeOf(_x) find "pook_MIM104_PAC2Battery" == 0 ) then {
								_ai setSkill 1;
								_ai disableAI "AUTOTARGET";
								_ai disableAI "TARGET";
							} else {
								//--- Change Skill
								_ai setSkill ["aimingAccuracy", 1]; // Set accuracy
								_ai setSkill ["aimingShake", 1]; // Set weapon sway handling
								_ai setSkill ["aimingSpeed", 1]; // Set aiming speed
								_ai setSkill ["reloadSpeed", 1]; // Max out reload speed
								_ai setSkill ["spotDistance", 1]; // Set detection distance
								_ai setSkill ["spotTime", 1]; // Set detection time
								_ai setSkill ["courage", 1]; // Never retreat
								_ai setSkill ["commanding", 1]; // Communication skills
								_ai setSkill ["general", 1]; //Sets all above

								//--- Set to Combat
								_ai setBehaviour "AWARE";
								_ai setCombatMode "RED";
								_ai setSpeedMode "FULL";
								_ai enableAttack true;
							};
						};
					} else {
						//--- At least one HC is available
						[_x, _defense_team, _side, _ai_args] Call CTI_SE_FNC_AttemptDefenseDelegation;
					};
					
				};
			};
		};
	} forEach _statics;
	
	sleep 15;
};

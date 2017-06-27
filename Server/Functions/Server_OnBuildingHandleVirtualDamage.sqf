/*
  # HEADER #
	Script: 		Server\Functions\Server_OnBuildingHandleVirtualDamage.sqf
	Alias:			CTI_SE_FNC_OnBuildingHandleVirtualDamage
	Description:	Triggered by the handleDamage EH whenever a structure get hit
					Note this function shall only be called by an Event Handler (EH).
					The damages are virtual so we return 0 all the time.
	Author: 		Benny
	Creation Date:	20-09-2013
	Revision Date:	20-09-2013
	
  # PARAMETERS #
    0	[Object]: The hit structure
    1	[Number]: The inflicted damage by the hit
    2	[Object]: The shooter
    3	[String]: The structure variable name
    4	[Integer]: The Side ID of the structure
    5	[Array]: The structure's position
    6	[Number]: The structure's direction
    7	[Number]: The structure completion speed ratio
    8	[Number]: Damage reduction
	
  # RETURNED VALUE #
	[Number]: The negated afflicted damage
	
  # SYNTAX #
	[STRUCTURE, DAMAGES, SHOOTER, STRUCTURE VARIABLE, SIDE ID, POSITION, DIRECTION, COMPLETION RATIO, POSITION] call CTI_SE_FNC_OnBuildingHandleDamage
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_GetSideFromID
	Common Function: CTI_CO_FNC_GetSideLogic
	Server Function: CTI_SE_FNC_OnBuildingDestroyed
	
  # EXAMPLE #
    _structure addEventHandler ["handledamage", format ["[_this select 0, _this select 2, _this select 3, '%1', %2, %3, %4, %5, %6] call CTI_SE_FNC_OnBuildingHandleVirtualDamage", _variable, (_side) call CTI_CO_FNC_GetSideID, _position, _direction, _completion_ratio, _reduce_damages]];
*/

params ["_damaged", "_damage", "_shooter", "_variable", "_sideID", "_position", "_direction", "_completion_ratio", "_reduce_damages"];
private ["_logic", "_side", "_var", "_variable", "_virtual_damages"];

_side = (_sideID) call CTI_CO_FNC_GetSideFromID;
_logic = (_side) call CTI_CO_FNC_GetSideLogic;

if (CTI_BASE_NOOBPROTECTION isEqualTo 1 && side _shooter in [_side, sideEnemy]) exitWith {0};

//--- Do we have to reduce the damages?
if (_reduce_damages > 0) then {_damage = _damage / _reduce_damages};

_virtual_damages = _damaged getVariable ["cti_altdmg", 0];
_virtual_damages = _virtual_damages + _damage;
if (_virtual_damages > 1) then { _virtual_damages = 1 };

_damaged setVariable ["cti_altdmg", _virtual_damages];

if (_virtual_damages >= 1 || !alive _damaged) then {
	_damaged removeAllEventHandlers "handleDamage";
	_damaged setDammage 1;
	
	_var = missionNamespace getVariable _variable;
	
	if (((_var select CTI_STRUCTURE_LABELS) select 0) isEqualTo CTI_HQ_DEPLOY) then {
		if (CTI_Log_Level >= CTI_Log_Information) then {
			["INFORMATION", "FILE: Server\Functions\Server_OnBuildingHandleVirtualDamage.sqf", format["HQ [%1] from side [%2] has been destroyed (virtual damages) by [%3]", _damaged, _side, _shooter]] call CTI_CO_FNC_Log;
		};
		[_damaged, _shooter, _sideID] spawn CTI_SE_FNC_OnHQDestroyed;
	} else {
		if (CTI_Log_Level >= CTI_Log_Information) then {
			["INFORMATION", "FILE: Server\Functions\Server_OnBuildingHandleVirtualDamage.sqf", format["A [%1] structure from side [%2] has been destroyed (virtual damages) by [%3]", ((_var select CTI_STRUCTURE_LABELS) select 1), _side, _shooter]] call CTI_CO_FNC_Log;
		};
		[_damaged, _shooter, _variable, _sideID, _position, _direction, _completion_ratio] spawn CTI_SE_FNC_OnBuildingDestroyed;
	};
};

//--- Display a message to the team
if (time - (_logic getVariable "cti_structures_lasthit") > 30 && _damage >= 0.02 && alive _damaged) then {
	_logic setVariable ["cti_structures_lasthit", time];
	["structure-attacked", [_variable, _position]] remoteExec ["CTI_PVF_CLT_OnMessageReceived", _side];
};

0
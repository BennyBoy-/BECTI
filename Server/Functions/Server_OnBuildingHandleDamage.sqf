/*
  # HEADER #
	Script: 		Server\Functions\Server_OnBuildingHandleDamage.sqf
	Alias:			CTI_SE_FNC_OnBuildingHandleDamage
	Description:	Triggered by the handleDamage EH whenever a structure get hit
					Note this function shall only be called by an Event Handler (EH)
	Author: 		Benny
	Creation Date:	20-09-2013
	Revision Date:	16-10-2013
	
  # PARAMETERS #
    0	[Object]: The hit structure
    1	[Number]: The inflicted damage by the hit
    2	[Object]: The shooter
    3	[Integer]: The Side ID of the structure
    4	[Number]: Damage reduction
    5	[Number]: The structure variable name
    6	[Array]: The position of the structure
	
  # RETURNED VALUE #
	[Number]: The afflicted damage
	
  # SYNTAX #
	[STRUCTURE, DAMAGES, SHOOTER, SIDE ID, DAMAGE REDUCTION, VARIABLE, POSITION] call CTI_SE_FNC_OnBuildingHandleDamage
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_GetSideFromID
	Common Function: CTI_CO_FNC_GetSideLogic
	
  # EXAMPLE #
    _structure addEventHandler ["handledamage", format ["[_this select 0, _this select 2, _this select 3, %1, %2, '%3', %4] call CTI_SE_FNC_OnBuildingHandleDamage", (_side) call CTI_CO_FNC_GetSideID, _reduce_damages, _variable, _position]];
*/

params ["_damaged", "_damage", "_shooter", "_sideID", "_reduce_damages", "_variable", "_position"];
private ["_logic", "_side"];

_side = (_sideID) call CTI_CO_FNC_GetSideFromID;

if (CTI_BASE_NOOBPROTECTION isEqualTo 1 && side _shooter in [_side, sideEnemy]) exitWith {0};
if (_reduce_damages > 0) then {_currentdmg = getDammage _damaged; _damage = _currentdmg + ((_damage - _currentdmg) / _reduce_damages)};

_logic = (_side) call CTI_CO_FNC_GetSideLogic;

if (time - (_logic getVariable "cti_structures_lasthit") > 30 && _damage >= 0.02 && alive _damaged) then {
	_logic setVariable ["cti_structures_lasthit", time];
	["structure-attacked", [_variable, _position]] remoteExec ["CTI_PVF_CLT_OnMessageReceived", _side];
};

_damage
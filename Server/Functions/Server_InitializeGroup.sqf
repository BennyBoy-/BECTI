/*
  # HEADER #
	Script: 		Server\Functions\Server_InitializeGroup.sqf
	Alias:			CTI_SE_FNC_InitializeGroup
	Description:	Initialize a CTI Groups with the needed variables
	Author: 		Benny
	Creation Date:	15-10-2013
	Revision Date:	15-10-2013
	
  # PARAMETERS #
    0	[Group]: The group to initialize
    1	[Side]: The side of the group
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[GROUP, SIDE] call CTI_SE_FNC_InitializeGroup
	
  # EXAMPLE #
    [group player, side player] call CTI_SE_FNC_InitializeGroup
	  -> Will initialize the player's group on his own side
*/

private ["_side", "_team"];

_team = _this select 0;
_side = _this select 1;

if (isNil {_team getVariable "cti_funds"}) then {_team setVariable ["cti_funds", missionNamespace getVariable format ["CTI_ECONOMY_STARTUP_FUNDS_%1", _side], true]};
_team setVariable ["cti_role_evo", "Infantry"]; //--- Evolutive role
_team setVariable ["cti_order", CTI_ORDER_TAKETOWNS, true];
_team setVariable ["cti_order_pos", [0,0], true];
_team setVariable ["cti_nextrespawn", -600];
_team setVariable ["cti_role", "Infantry", true]; //--- AI use Infantry by default
_team setVariable ["cti_independent", true, true]; //--- AI leaders may purchase things by their own
/*
  # HEADER #
	Script: 		Server\Functions\Server_AI_PurchaseSquad.sqf
	Alias:			CTI_SE_FNC_AI_PurchaseSquad
	Description:	This function buy a bunch of units depending on the given pool
					to an AI CTI Group
	Author: 		Benny
	Creation Date:	20-09-2013
	Revision Date:	20-09-2013
	
  # PARAMETERS #
    0	[Group]: The CTI Group
    1	[Side]: The Side of the group
    2	[Array]: The units pool with force and probability
    3	[Object]: The factory to purchase from
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[GROUP, SIDE, POOL, FACTORY] call CTI_SE_FNC_AI_PurchaseSquad
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_ArrayShuffle
	Server Function: CTI_SE_FNC_OnClientPurchase
	
  # EXAMPLE #
    [_group, _side, _var select 2, _factory_nearest] call CTI_SE_FNC_AI_PurchaseSquad;
*/

params ["_group", "_side", "_squad", "_factory"];
private ["_compose", "_funds", "_need", "_picked", "_squad_members", "_squad_members_weight"];

_need = round(3 + random 2); //--- The amount of units to purchase, todo improve
_compose = [];

_squad_members = +((_squad select CTI_SQUAD_COMPOSITION) select 0);
_squad_members_weight = +((_squad select CTI_SQUAD_COMPOSITION) select 1);

_funds = (_group) call CTI_CO_FNC_GetFunds;

while {_need > 0 && count _squad_members > 0} do {
	_picked = _squad_members selectRandomWeighted _squad_members_weight;
	
	_var = missionNamespace getVariable _picked;
	if !(isNil '_var') then {
		//--- The group can afford the unit
		if (_funds >= (_var select CTI_UNIT_PRICE)) then {
			//--- Don't remove the funds from the AI but make sure that he can afford all the units
			_funds = _funds - (_var select CTI_UNIT_PRICE);
			_compose pushBack _picked;
		} else { //--- No point in picking the same unit again, remove it from the pool
			_index = _squad_members find _picked;
			_squad_members deleteAt _index;
			_squad_members_weight deleteAt _index;
		};
	} else { //--- Not defined, add by default
		_compose pushBack _picked;
	};
	
	_need = _need - 1;
};

//--- Add the units to the purchase queue
{
	_seed = time + random 10000 - random 500 + diag_frameno;
	_crew_count = if (_x isKindOf "Man") then {1} else {count((_x) call compile preprocessFileLineNumbers "Common\Config\Units\Get_DetailedTurrets.sqf")}; //--- TODO, make that a function
	_group setVariable ["cti_ai_units_queued", (_group getVariable ["cti_ai_units_queued", []]) + [[_seed, _crew_count]]];
	[_group, _group, _side, _x, _factory, [true, true, true, true, true], _seed] call CTI_SE_FNC_OnClientPurchase;
} forEach _compose;
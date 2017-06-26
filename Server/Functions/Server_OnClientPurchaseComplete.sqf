/*
  # HEADER #
	Script: 		Server\Functions\Server_OnClientPurchaseComplete.sqf
	Alias:			CTI_SE_FNC_OnClientPurchaseComplete
	Description:	Called whenever a client's purchase is complete
	Author: 		Benny
	Creation Date:	20-09-2013
	Revision Date:	20-09-2013
	
  # PARAMETERS #
    0	[Number]: The purchase seed
    1	[String]: The purchased classname
    2	[Group]: The buyer's group
	3	[Object]: The factory
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[SEED, CLASSNAME, BUYER, FACTORY] call CTI_SE_FNC_OnClientPurchaseComplete
	
  # EXAMPLE #
    [_req_seed, _req_classname, _req_target, _factory] call CTI_SE_FNC_OnClientPurchaseComplete;
*/

params ["_req_seed", "_req_classname", "_req_buyer", "_factory"];
private ["_index", "_list"];

_list = _factory getVariable "cti_queue_processing";

if (CTI_Log_Level >= CTI_Log_Information) then { ["INFORMATION", "FILE: Server\Functions\Server_OnClientPurchaseComplete.sqf", format["Request from group [%1] concerning classname [%2] with seed [%3] on factory [%4 (%5)] has been completed by the target", _req_buyer, _req_classname, _req_seed, _factory, _factory getVariable "cti_structure_type"]] call CTI_CO_FNC_Log };

if (isNil '_list') exitWith {};

_index = -1;
{
	if ((_x select 0) isEqualTo _req_seed && (_x select 1) isEqualTo _req_classname) exitWith {_index = _forEachIndex};
} forEach _list;

if !(_index isEqualTo -1) then {
	_list deleteAt _index;
	_factory setVariable ["cti_queue_processing", _list];
};
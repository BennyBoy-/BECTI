/*
  # HEADER #
	Script: 		Client\Functions\Client_OnPurchaseDelegationReceived.sqf
	Alias:			CTI_CL_FNC_OnPurchaseDelegationReceived
	Description:	Triggered when the commander or another leading unit buy an entity to another one (delegation)
					Note this function is called automatically upon a delegated purchase by the "CTI_PVF_CLT_OnPurchaseDelegationReceived" PVF
	Author: 		Benny
	Creation Date:	19-09-2013
	Revision Date:	19-09-2013
	
  # PARAMETERS #
    0	[Number]: The purchase seed
    1	[String]: The classname
    2	[Group]: The unit which made the purchase order
    3	[Array]: The vehicle special info (lock, crew)
    4	[Object]: The factory
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[SEED, CLASSNAME, BUYER, INFORMATION, FACTORY] call CTI_CL_FNC_OnPurchaseDelegationReceived
	
  # EXAMPLE #
	[_seed, _classname, group player, _veh_infos, _factory] call CTI_CL_FNC_OnPurchaseDelegationReceived
*/

params ["_req_seed", "_req_classname", "_req_buyer", "_req_vehinfos", "_factory"];

CTI_P_PurchaseRequests pushBack [_req_seed, _req_classname, _req_vehinfos, _factory, group player, false];
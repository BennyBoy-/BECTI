/*
  # HEADER #
	Script: 		Common\Functions\Common_GetVehicleCargo.sqf
	Alias:			CTI_CO_FNC_GetVehicleCargo
	Description:	Retrieve the CTI Formated cargo content of a vehicle
	Author: 		Benny
	Creation Date:	31-08-2016
	Revision Date:	31-08-2016
	
  # PARAMETERS #
    0	[Object]: The vehicle
	
  # RETURNED VALUE #
	[Array]: The CTI Formated loadout
	
  # SYNTAX #
	(OBJECT) call CTI_CO_FNC_GetVehicleCargo
	
  # EXAMPLE #
    _loadout = (vehicle player) call CTI_CO_FNC_GetUnitLoadout
	  -> Will return the mixed cargo content of the player's vehicle
		["arifle_mxc_f", "30rnd_65x39_caseless_mag", "30rnd_65x39_caseless_mag", ...]
*/

weaponCargo _this + magazineCargo _this + itemCargo _this + backpackCargo _this
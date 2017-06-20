/*
  # HEADER #
	Script: 		Client\Functions\Client_OnPlayerFired.sqf
	Alias:			CTI_CL_FNC_OnPlayerFired
	Description:	Triggered from the "Fired" EH whenever the player fires
					Note this function shall be called by an Event Handler (EH)
	Author: 		Benny
	Creation Date:	19-09-2013
	Revision Date:	19-09-2013
	
  # PARAMETERS #
    0	[Object]: The shooter
    1	[String]: The weapon used to shoot
    2	[String]: The muzzle of the weapon
    3	[String]: The mode used to fire the weapon
    4	[String]: The ammunition used
    5	[String]: The magazine used on the weapon
    6	[String]: The projectile fired
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[SHOOTER, WEAPON, MUZZLE, MODE, AMMO, MAGAZINE, PROJECTILE] spawn CTI_CL_FNC_OnPlayerFired
	
  # DEPENDENCIES #
	Client Function: CTI_CL_FNC_OnExplosivePlaced
	
  # EXAMPLE #
	player addEventHandler ["fired", {_this spawn CTI_CL_FNC_OnPlayerFired}];
	  -> This function be triggered everytime the player fire
*/

params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile"];
private ["_type"];

_type = getText(configFile >> "CfgAmmo" >> _ammo >> "explosionType");

if (_type in ["bomb","mine"]) then {[_unit, _projectile] spawn CTI_CL_FNC_OnExplosivePlaced};
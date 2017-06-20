/*
  # HEADER #
	Script: 		Client\Functions\Client_OnArtilleryFired.sqf
	Alias:			CTI_CL_FNC_OnArtilleryFired
	Description:	Triggered upon a CTI Based Artillery piece fire
	Author: 		Benny
	Creation Date:	01-09-2016
	Revision Date:	01-09-2016
	
  # PARAMETERS #
    0	[Object]: The artillery piece
    1	[String]: The ammo used
    2	[Object]: The projectile
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[ARTILLERY, AMMO, PROJECTILE] spawn CTI_CL_FNC_OnArtilleryFired
	
  # EXAMPLE #
	_artillery addEventHandler ["Fired", {[_this select 0, _this select 4, _this select 6] spawn CTI_CL_FNC_OnArtilleryFired}];
*/

params ["_artillery", "_ammo", "_projectile"];
private ["_magazine", "_side"];

_artillery = _this select 0;
_ammo = _this select 1;
_projectile = _this select 2;

//--- Only track the Artillery Shells
if (getNumber(configFile >> "CfgAmmo" >> _ammo >> "artilleryLock") > 0) then {
	sleep CTI_BASE_ARTRADAR_TRACK_FLIGHT_DELAY;
	
	if !(isNull _projectile) then { //--- Projectile is still kicking
		_pos_proj = getPos _projectile;
		_side = side _artillery;
		
		{
			_structures = (_x) call CTI_CO_FNC_GetSideStructures;
			_range = CTI_BASE_ARTRADAR_RANGES select ([_x, CTI_UPGRADE_ARTR] call CTI_CO_FNC_GetUpgrade);
			_art_radar = [CTI_RADAR_ART, _pos_proj, _structures, _range] call CTI_CO_FNC_GetClosestStructure;
			
			if (!isNull _art_radar && time - (_artillery getVariable [format["cti_artradar_lastreport_%1", _x], -6000]) > CTI_BASE_ARTRADAR_REPORT_COOLDOWN) then { //--- Artillery Radar is in the projectile's range
				_accuracy = (_artillery distance _art_radar) / CTI_BASE_ARTRADAR_MARKER_ACCURACY;
				_direction = [_artillery, _pos_proj] call CTI_CO_FNC_GetDirTo;
				_position = getPos _artillery;
				_position = [(_position select 0)+(_accuracy - (random (_accuracy * 2))),(_position select 1)+(_accuracy - (random (_accuracy * 2))),0];
				
				[_position, _direction] remoteExec ["CTI_PVF_CLT_OnArtilleryPieceFire", _x];
				
				_artillery setVariable [format["cti_artradar_lastreport_%1", _x], time];
			};
		} forEach CTI_PLAYABLE_SIDES - [_side];
	};	
};
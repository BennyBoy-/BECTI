/*
  # HEADER #
	Script: 		Server\Functions\Server_CanCaptureTerritorialTown.sqf
	Alias:			CTI_SE_FNC_CanCaptureTerritorialTown
	Description:	Determine whether a town can be captured or not while using
					Territorial mode by a given side
	Author: 		Benny
	Creation Date:	19-04-2016
	Revision Date:	19-04-2016
	
  # PARAMETERS #
    0	[Object]: The town
    1	[Integer/Side]: The side
	
  # RETURNED VALUE #
	[Boolean]: True if capturable
	
  # SYNTAX #
	[TOWN, SIDE] call CTI_SE_FNC_CanCaptureTerritorialTown
	
  # EXAMPLE #
    [Gravette, East] call CTI_SE_FNC_CanCaptureTerritorialTown;
	  -> Returns true if Gravette can be captured by the East side
*/

private ["_canCapture", "_hq", "_hq_closest_town", "_sideCapturing", "_town"];

_town = _this select 0;
_sideCapturing = _this select 1;

if (typeName _sideCapturing == "SIDE") then {_sideCapturing = (_sideCapturing) call CTI_CO_FNC_GetSideID};

//--- Check if the capturing side is holding at least 1 town, if not, the HQ's closest town is capturable.
_hq_closest_town = objNull;
if ((_sideCapturing call CTI_CO_FNC_GetSideTownCount) < 1) then {
	_hq = (_sideCapturing) call CTI_CO_FNC_GetSideHQ;
	if !(isNull _hq) then { //--- Resistance has no HQ by default
		_hq_closest_town = [_hq, _sideCapturing] call CTI_CO_FNC_GetClosestEnemyTown;
	};
};

_canCapture = false;
if (isNull _hq_closest_town) then {
	//--- Check if this town's neighbors are held by the capturing side
	{
		if ((_x getVariable "cti_town_sideID") == _sideCapturing) exitWith {_canCapture = true};
	} forEach (_town getVariable "cti_town_neighbors");
} else {
	//--- Check if this town is the closest one
	if (_hq_closest_town == _town) then {_canCapture = true};
};

_canCapture
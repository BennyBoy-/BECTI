/*
  # HEADER #
	Script: 		Client\Functions\Client_UpdateRadarMarkerAir.sqf
	Alias:			CTI_CL_FNC_UpdateRadarMarkerAir
	Description:	Update an Air Radar Circle Marker
	Author: 		Benny
	Creation Date:	01-09-2016
	Revision Date:	01-09-2016
	
  # PARAMETERS #
    0	[Object]: The radar vehicle
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	(RADAR) spawn CTI_CL_FNC_UpdateRadarMarkerAir
	
  # EXAMPLE #
    (RADAR) spawn CTI_CL_FNC_UpdateRadarMarkerAir
	  -> will track the radar range
*/

private ["_marker", "_side", "_vehicle","_rangeair"];

_vehicle = _this;

_rangeair = CTI_BASE_AIRRADAR_RANGES select ([CTI_P_SideJoined, CTI_UPGRADE_AIRR] call CTI_CO_FNC_GetUpgrade);
_marker_name=format ["RADAR_AIR_%1",_this];
_marker=createMarkerLocal [_marker_name,getposATL _this];
_marker setMarkerShapeLocal "ELLIPSE";
_marker setMarkerBrushLocal "Border";
_marker setMarkerSizeLocal [_rangeair,_rangeair];
_marker setMarkerColorLocal "ColorYellow";
_marker setMarkerAlphaLocal 0.6;

while {alive _vehicle} do {
	_rangeair = CTI_BASE_AIRRADAR_RANGES select ([CTI_P_SideJoined, CTI_UPGRADE_AIRR] call CTI_CO_FNC_GetUpgrade);
	_marker setMarkerSizeLocal [_rangeair,_rangeair];
	sleep 5;
};

deleteMarkerLocal _marker;
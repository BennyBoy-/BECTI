/*
  # HEADER #
	Script: 		Client\Functions\Client_UpdateRadarMarkerArt.sqf
	Alias:			CTI_CL_FNC_UpdateRadarMarkerArt
	Description:	Update an Artillery Radar Circle Marker
	Author: 		Benny
	Creation Date:	01-09-2016
	Revision Date:	01-09-2016
	
  # PARAMETERS #
    0	[Object]: The radar vehicle
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	(RADAR) spawn CTI_CL_FNC_UpdateRadarMarkerArt
	
  # EXAMPLE #
    (RADAR) spawn CTI_CL_FNC_UpdateRadarMarkerArt
	  -> will track the radar range
*/

private ["_marker", "_side", "_vehicle","_rangeart"];

_vehicle = _this;

_rangeart = CTI_BASE_ARTRADAR_RANGES select ([CTI_P_SideJoined, CTI_UPGRADE_ARTR] call CTI_CO_FNC_GetUpgrade);
_marker_name=format ["RADAR_ART_%1",_this];
_marker=createMarkerLocal [_marker_name,getposATL _this];
_marker setMarkerShapeLocal "ELLIPSE";
_marker setMarkerBrushLocal "Border";
_marker setMarkerSizeLocal [_rangeart,_rangeart];
_marker setMarkerColorLocal "ColorOrange";
_marker setMarkerAlphaLocal 0.6;

while {alive _vehicle} do {
	_rangeart = CTI_BASE_ARTRADAR_RANGES select ([CTI_P_SideJoined, CTI_UPGRADE_ARTR] call CTI_CO_FNC_GetUpgrade);
	_marker setMarkerSizeLocal [_rangeart,_rangeart];	
	sleep 5;
};

deleteMarkerLocal _marker;
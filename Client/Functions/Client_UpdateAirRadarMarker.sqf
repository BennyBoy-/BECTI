/*
  # HEADER #
	Script: 		Client\Functions\Client_UpdateAirRadarMarker.sqf
	Alias:			CTI_CL_FNC_UpdateAirRadarMarker
	Description:	Update an Air unit marker according to available Air Radars
	Author: 		Benny
	Creation Date:	01-09-2016
	Revision Date:	01-09-2016
	
  # PARAMETERS #
    0	[Object]: The air vehicle
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	(VEHICLE) spawn CTI_CL_FNC_UpdateAirRadarMarker
	
  # EXAMPLE #
    (enemyHind) spawn CTI_CL_FNC_UpdateAirRadarMarker
	  -> will track the object called enemyHind
*/

private ["_marker", "_side", "_vehicle"];

_vehicle = _this;

_marker = createMarkerLocal [format ["cti_airradar_hostile_%1", CTI_P_MarkerIterator], [-60000, -60000, 0]];
CTI_P_MarkerIterator = CTI_P_MarkerIterator + 1;
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerColorLocal "ColorYellow";
_marker setMarkerSizeLocal [1.2, 1.2];

_hint = false;

while {alive _vehicle} do {
	_structures = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideStructures;
	_range = CTI_BASE_AIRRADAR_RANGES select ([CTI_P_SideJoined, CTI_UPGRADE_AIRR] call CTI_CO_FNC_GetUpgrade);
	_air_radar = [CTI_RADAR, _vehicle, _structures, _range] call CTI_CO_FNC_GetClosestStructure;

	if !(isNull _air_radar) then {
		if (((getPos _vehicle) select 2) > CTI_BASE_AIRRADAR_Z_OFFSET) then {
			_marker setMarkerPosLocal (getPos _vehicle);
			_marker setMarkerAlphaLocal 1;
			
			if !(_hint) then { 
				_hint = true;
				hint parseText format["<t size='1.3' color='#eded23'>Warning</t><br /><br />Hostile Air contact detected at grid <t color='#F5D363'>%1</t>.", mapGridPosition getPos _vehicle];
			};
		} else {
			_marker setMarkerAlphaLocal 0;
		};
	} else {
		_marker setMarkerAlphaLocal 0;
	};
	
	sleep 1;
};

deleteMarkerLocal _marker;
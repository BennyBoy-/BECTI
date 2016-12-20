/*
  # HEADER #
	Script: 		Common\Functions\Common_GetRespawnCamps.sqf
	Alias:			CTI_CO_FNC_GetRespawnCamps
	Description:	Get the available camps according to a position which allows a respawn
	Author: 		Benny
	Creation Date:	28-04-2016
	Revision Date:	28-04-2016
	
  # PARAMETERS #
    0	[Array]: the XYZ coordinates
    1	[Array]: the unit's side
    2	[Group]: the unit's group
	
  # RETURNED VALUE #
	[Array]: The living units
	
  # SYNTAX #
	[CENTER, SIDE, GROUP] call CTI_CO_FNC_GetRespawnCamps
	
  # EXAMPLE #
    _camps = [deathpos, sideplayer, group player] call CTI_CO_FNC_GetRespawnCamps
*/

private ["_camps", "_group", "_location", "_side", "_sideID"];

_location = _this select 0;
_sideID = _this select 1;
_group = _this select 2;

if (typeName _sideID == "SIDE") then { _sideID = (_sideID) call CTI_CO_FNC_GetSideID };
_side = (_sideID) call CTI_CO_FNC_GetSideFromID;

_camps = [];

//--- Determine the camp respawn mode
switch (missionNamespace getVariable "CTI_RESPAWN_CAMPS") do {
	case 1: { //--- Classic Mode, get the closest town
		_town = (_location) call CTI_CO_FNC_GetClosestTown;
		if !(isNull _town) then {
			if (_town distance _location <= CTI_RESPAWN_CAMPS_RANGE_CLASSIC) then { //--- Make sure that we're in range
				_list = [_town, _sideID] call CTI_CO_FNC_GetTownCampsOnSide;
				if (CTI_RESPAWN_CAMPS_SAFE > 0) then { //--- Safeguard? check for enemies around the camps
					{
						_cti_entities = _x nearEntities[["Man","Car","Motorcycle","Tank","Air","Ship"], CTI_RESPAWN_CAMPS_SAFE_RANGE];
						if ({_x countSide _cti_entities > 0} count ([west, east, resistance] - [_side]) < 1) then {_camps pushBack _x};
					} forEach _list;
				} else {
					_camps = _list;
				};
			};
		};
	};
	case 2: { //--- Enhanced Respawn, get the camps around the unit
		//--- Retrieve the nearby towns (Camps enhanced range * 4)
		_towns_near = [_location, CTI_Towns, CTI_RESPAWN_CAMPS_RANGE_ENHANCED*4] call CTI_CO_FNC_GetEntitiesInRange;
		
		//--- Check the friendly camps of each nearby towns
		{
			_list = [_town, _sideID] call CTI_CO_FNC_GetTownCampsOnSide;
			{
				if (_x distance _location <= CTI_RESPAWN_CAMPS_RANGE_ENHANCED) then {
					if (CTI_RESPAWN_CAMPS_SAFE > 0) then { //--- Safeguard? check for enemies around the camps
						_cti_entities = _x nearEntities[["Man","Car","Motorcycle","Tank","Air","Ship"], CTI_RESPAWN_CAMPS_SAFE_RANGE];
						if ({_x countSide _cti_entities > 0} count ([west, east, resistance] - [_side]) < 1) then {_camps pushBack _x};
					} else {
						_camps pushBack _x;
					};
				};
			} forEach _list;
		} forEach _towns_near;
	};
};

//--- Check the camp condition if needed, default is unlimited
if ((missionNamespace getVariable "CTI_RESPAWN_CAMPS_CONDITION") > 0) then {
	_list = [];
	{
		switch (missionNamespace getVariable "CTI_RESPAWN_CAMPS_CONDITION") do {
			case 1: { //--- Priced
				_town = _x getVariable "cti_camp_town";
				_coefficient = if (_town getVariable "cti_town_sideID" == _sideID) then {CTI_RESPAWN_CAMPS_CONDITION_PRICED_COEF_FRIENDLY} else {CTI_RESPAWN_CAMPS_CONDITION_PRICED_COEF_ENEMY};
				_price = round((_town getVariable "cti_town_sv") * _coefficient);
				
				_funds = (_group) Call CTI_CO_FNC_GetFunds;
				if (_funds >= _price) then {_list pushBack _x};
			};
			case 2: { //--- Limited
				_town = _x getVariable "cti_camp_town";
				if (isNil {_town getVariable "cti_camp_respawn_count"}) then {_town setVariable ["cti_camp_respawn_count", CTI_RESPAWN_CAMPS_CONDITION_LIMITED]}; 
				if ((_town getVariable "cti_camp_respawn_count") > 0) then {_list pushBack _x};
			};
			default {
				_list pushBack _x;
			};
		};
	} forEach _camps;
	
	_camps = _list;
};

_camps
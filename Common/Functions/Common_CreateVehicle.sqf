/*
  # HEADER #
	Script: 		Common\Functions\Common_CreateVehicle.sqf
	Alias:			CTI_CO_FNC_CreateVehicle
	Description:	Create an empty vehicle
					Note that making a vehicle public with the _net variable will make it
					undergo the function CTI_CO_FNC_InitializeNetVehicle
					A public vehicle is initialized for all (+JIP) but the server
	Author: 		Benny
	Creation Date:	16-09-2013
	Revision Date:	16-09-2013
	
  # PARAMETERS #
    0	[String]: The type of vehicle to create
    1	[Array/Object]: The 2D/3D position where the vehicle should be created at
    2	[Integer]: The Azimuth direction (0-360°) of the vehicle
    3	[Side/Integer]: The Side or Side ID of the vehicle
    4	{Optionnal} [Boolean]: Determine if the vehicle should be created locked or not
    5	{Optionnal} [Boolean]: Determine if the vehicle should be "public" or not
    6	{Optionnal} [Boolean]: Determine if the vehicle should be handled upon destruction or not (bounty...tk...)
    7	{Optionnal} [String]: Set a special spawn mode for the vehicle
	
  # RETURNED VALUE #
	[Object]: The created vehicle
	
  # SYNTAX #
	[CLASSNAME, POSITION, DIRECTION, SIDE] call CTI_CO_FNC_CreateVehicle
	[CLASSNAME, POSITION, DIRECTION, SIDE, LOCKED] call CTI_CO_FNC_CreateVehicle
	[CLASSNAME, POSITION, DIRECTION, SIDE, LOCKED, PUBLIC] call CTI_CO_FNC_CreateVehicle
	[CLASSNAME, POSITION, DIRECTION, SIDE, LOCKED, PUBLIC, HANDLED] call CTI_CO_FNC_CreateVehicle
	[CLASSNAME, POSITION, DIRECTION, SIDE, LOCKED, PUBLIC, HANDLED, SPECIAL] call CTI_CO_FNC_CreateVehicle
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_GetSideFromID
	Common Function: CTI_CO_FNC_GetSideID
	Common Function: CTI_CO_FNC_OnUnitGetOut
	Common Function: CTI_CO_FNC_OnUnitHit
	Common Function: CTI_CO_FNC_OnUnitKilled
	
  # EXAMPLE #
	_vehicle = ["B_Quadbike_01_F", getPos player, 0, CTI_P_SideJoined] call CTI_CO_FNC_CreateVehicle; 
	  -> Create a "B_Quadbike_01_F" at the player's position facing North on the player's initial side
	_vehicle = ["B_Quadbike_01_F", getPos player, 180, CTI_P_SideJoined, true, true] call CTI_CO_FNC_CreateVehicle; 
	  -> Create a locked and handled "B_Quadbike_01_F" at the player's position facing South on the player's initial side
*/

params ["_type", "_position", "_direction", "_sideID", ["_locked", false], ["_net", false], ["_handle", false], ["_special", "FORM"]];
private ["_side", "_vehicle", "_velocity"];

if (typeName _position == "OBJECT") then {_position = getPos _position};
if (typeName _sideID == "SIDE") then {_sideID = (_sideID) call CTI_CO_FNC_GetSideID};

_side = _sideID call CTI_CO_FNC_GetSideFromID;

_vehicle = createVehicle [_type, _position, [], 7, _special];
_velocity = velocity _vehicle;
_vehicle setDir _direction;
_vehicle setVectorUp surfaceNormal position _vehicle;

if (_special == "FLY") then {
	_vehicle setVelocity [50 * (sin _direction), 50 * (cos _direction), 0];
};

if (_locked) then {_vehicle lock 2};
if (_net) then {_vehicle setVariable ["cti_net", _sideID, true]};
if (_handle) then {
	_vehicle addEventHandler ["killed", format["[_this select 0, _this select 1, %1] spawn CTI_CO_FNC_OnUnitKilled", _sideID]]; //--- Called on destruction
	_vehicle addEventHandler ["hit", {_this spawn CTI_CO_FNC_OnUnitHit}]; //--- Register importants hits
	//--- Track who get in or out of the vehicle so that we may determine the death more easily
	_vehicle addEventHandler ["getIn", {_this spawn CTI_CO_FNC_OnUnitGetOut}]; 
	_vehicle addEventHandler ["getOut", {_this spawn CTI_CO_FNC_OnUnitGetOut}]; 
	_vehicle setVariable ["cti_occupant", _side];
};

//--- Tire protection (Client, HC, Server). TODO: Detect if the vehicle has wheels
if (CTI_VEHICLES_PROTECT_TIRES > 0 && _vehicle isKindOf "Car") then {
	_vehicle setVariable ["cti_wheels_protect", true, true];
	(_vehicle) remoteExec ["CTI_PVF_CO_AddVehicleHandleTiresDamages"];
};

//--- Air Radar tracking
if (_vehicle isKindOf "Air" && CTI_BASE_AIRRADAR_Z_OFFSET > 0) then {
	{(_vehicle) remoteExec ["CTI_PVF_CLT_OnAirUnitTracked", _x]} forEach CTI_PLAYABLE_SIDES - [_side];
};

//--- Artillery Radar tracking
if (getNumber(configFile >> "CfgVehicles" >> _type >> "artilleryScanner") > 0 && CTI_BASE_ARTRADAR_TRACK_FLIGHT_DELAY > -1) then {
	(_vehicle) remoteExec ["CTI_PVF_CLT_OnArtilleryPieceTracked", CTI_PV_CLIENTS];
};

//--- ZEUS Curator Editable
if !(isNil "ADMIN_ZEUS") then {
	if (CTI_IsServer) then {
		ADMIN_ZEUS addCuratorEditableObjects [[_vehicle], true];
	} else {
		[ADMIN_ZEUS, _vehicle] remoteExec ["CTI_PVF_SRV_RequestAddCuratorEditable", CTI_PV_SERVER];
	};
};

_vehicle
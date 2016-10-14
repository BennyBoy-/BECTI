private ["_vehicle","_id","_arg","_radio"];
_vehicle = _this select 0;
_caller = _this select 1;
_id = _this select 2;
_arg = _this select 3;
_vehicle removeaction _id;
_vehicle setVariable ["TOGGLE",_arg];
_radio =  "Land_HelipadEmpty_F" createVehicle [0,0,0]; //Land_HelipadEmpty_FLand_FMradio_F
	if(_arg == 1) then {
		hint "Radio On";
		sleep 1;
		_vehicle addaction ["Radio off","Client\Functions\Client_VehicleRadio.sqf",0,0,false,true];
		_radio attachTo [_vehicle, [0,1,1]];
		_radio say3D ["valkyries",100,1];
		_radio setDamage 0;
		sleep 240;//240fulllength
		detach _radio;
		_radio setDamage 1;
		deleteVehicle _radio;
	};
	if (_arg == 0) then {
		{
		  detach _x;
		  _x setDamage 1;
		  deleteVehicle _x;
		} forEach attachedObjects _vehicle;
		hint "Radio Off";
		sleep 1;
		_vehicle addAction ["Radio on","Client\Functions\Client_VehicleRadio.sqf",1,0,false,true];
	};
//cleanup
detach _radio;
_radio setDamage 1;
deleteVehicle _radio;
{
	detach _x;
	_x setDamage 1;
	deleteVehicle _x;
} forEach attachedObjects _vehicle;
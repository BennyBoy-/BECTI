private ["_vehicle","_id","_arg","_radio"];
_vehicle = _this select 0;
_caller = _this select 1;
_id = _this select 2;
_arg = _this select 3;
_vehicle removeAction _id;
_vehicle setVariable ["TOGGLE",_arg];
_radio =  "Land_HelipadEmpty_F" createVehicle position _vehicle; //Land_HelipadEmpty_FLand_FMradio_F
	if (_arg == 0) then {
		{
		if (_x isKindOf "Land_HelipadEmpty_F") then {
		  detach _x;
		  _x setDamage 1;
		  deleteVehicle _x;
		};
		} forEach attachedObjects _vehicle;
		//_radio setDamage 1;
		//deleteVehicle _radio;
		hint "Radio Off";
		sleep 1;
		_vehicle addAction ["Radio on","Client\Functions\Client_VehicleRadio.sqf",1,0,false,true,"","driver _target == player"];
	};
	if(_arg == 1) then {
		hint "Radio On";
		_action = _vehicle addaction ["Radio off","Client\Functions\Client_VehicleRadio.sqf",0,0,false,true,"","driver _target == player"];
		_radio attachTo [_vehicle, [0,-1,1]];
		sleep 1;
		_radio say3D ["valkyries",500,1];
		_radio setDamage 0;
		_track = time + 240;//240fulllength
		while {true} do {
			if(!alive _vehicle || time >= _track) exitWith {};
		};
		detach _radio;
		_radio setDamage 1;
		deleteVehicle _radio;
		_vehicle removeAction _action;
		if((damage _radio) == 1 && alive _vehicle) then {
		_vehicle addAction ["Radio on","Client\Functions\Client_VehicleRadio.sqf",1,0,false,true,"","driver _target == player"];
		};
	};

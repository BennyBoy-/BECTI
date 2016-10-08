private ["_xpos", "_ypos", "_vehicles", "_units", "_airs", "_objects", "_distance", "_damage","_wave_radius", "_speed", "_vel", "_x"];

_xpos = _this select 0;
_ypos = _this select 1;

_wave_radius = radiation_radius * 1.5;

_vehicles = nearestobjects [[_xpos, _ypos , 0], ["Car", "Motorcycle", "Tank", "Air", "Ship"], radiation_radius * 1.5];
_objects = nearestobjects [[_xpos, _ypos, 0], [], _wave_radius];

sleep 4;
//Core Damage Area Destroy all in this radius
{
	  if ( ! (_x iskindof "Land_nav_pier_m_2") ) then
	  {
		{_x setdammage 1} foreach (crew _x);
		_x setdammage 1;
	  };
} foreach ([_xpos, _ypos, 0] nearobjects ["All", 150]);
//Destroy Base Structures
{
	  if (_x iskindof "Land_Cargo_Tower_V3_F" || _x iskindof "Land_Cargo_House_V1_F" || _x iskindof "Land_Medevac_HQ_V1_F" || _x iskindof "Land_Research_HQ_F" || _x iskindof "Land_Cargo_HQ_V1_F" || _x iskindof "Land_Lighthouse_small_F" || _x iskindof "Land_Radar_Small_F" || _x iskindof "Land_Cargo_HQ_V2_F" || _x iskindof "Land_Cargo_HQ_V3_F" || _x iskindof "Land_TTowerBig_2_F" || _x iskindof "Land_Dome_Small_F" || _x iskindof "Land_Dome_Big_F" || _x iskindof "Land_Cargo_Patrol_V1_F" || _x iskindof "Land_Shed_Big_F" || _x iskindof "Land_Shed_Small_F" || _x iskindof "Land_Cargo_Tower_V1_F" || _x iskindof "Land_Mil_WallBig_4m_F" || _x iskindof "Land_sfp_mil_shed" || _x iskindof "Land_sfp_torebodahangar" || _x iskindof "Land_sfp_torebodahangar_alt2" || _x iskindof "Land_TTowerBig_1_F" || _x iskindof "Land_TTowerBig_2_F" || _x iskindof "GUE_WarfareBAntiAirRadar" || _x iskindof "Gue_WarfareBArtilleryRadar") then
	  {
		{_x setdammage 1} foreach (crew _x);
		_x setdammage 1;
	  };
} foreach ([_xpos, _ypos, 0] nearobjects ["All", 600]);
//Destroy all in wider radius ignore map structures
{
	if ( ! (_x isKindOf "House") ) then
    {
	  if ( _x iskindof "Static" || _x iskindof "Man" || _x iskindof "Car" || _x iskindof "Motorcycle" || _x iskindof "Tank" || _x iskindof "Ship" || _x iskindof "Air") then
	  {
		{_x setdammage 1} foreach (crew _x);
		_x setdammage 1;
	  };
	};
} foreach ([_xpos, _ypos, 0] nearobjects ["All", 800]);
//Blast wave
[_xpos, _ypos] execvm "Common\Functions\External\nuclear\script\damage2.sqf"; 
//Destroy air units in main radius
_airs = nearestobjects [[_xpos, _ypos , 0], ["Air"], radiation_radius];
{
  _distance = [_xpos, _ypos, 0] distance _x;
  _dir = asin (((getpos _x select 1) - _ypos) / _distance);
  if ( getpos _x select 0 < _xpos ) then {_dir = 180 - _dir};
  _vel = velocity _x;
  _damage = 1 - _distance / radiation_radius;
  _damage = _damage * _damage;
  _speed = 4 * (_damage + random (_damage / 4));
  _speed = _speed * main_nuclear_blow_speed;
  _x setvelocity [(_vel select 0) + (_speed * cos _dir),
                  (_vel select 1) + (_speed * sin _dir),
                  _speed / 3];
  _x setdammage ((getdammage _x) + _damage);
} foreach _airs;
//EMP effects
{[_x] execvm "Common\Functions\External\nuclear\script\electro_pulse.sqf"} foreach _vehicles;
//Destroy units in radius
{
if ( ! (_x isKindOf "House") ) then
    {
    if ( _x iskindof "Man" || _x iskindof "Car" || _x iskindof "Motorcycle" || _x iskindof "Tank" || _x iskindof "Ship" ) then
    {
      _distance = [_xpos, _ypos, 0] distance _x;
      _dir = asin (((getpos _x select 1) - _ypos) / _distance);
      if ( getpos _x select 0 < _xpos ) then {_dir = 180 - _dir};
      _vel = velocity _x;
      _damage = 1 - _distance / radiation_radius;
      _damage = _damage * _damage;
      _speed = _damage + random (_damage / 4);
      if ( _x iskindof "Man" ) then {_speed = _speed * 2} else {[_x, _speed * 4] execvm "Common\Functions\External\nuclear\script\rotate.sqf"};
      _speed = _speed * main_nuclear_blow_speed;
      _x setvelocity [(_vel select 0) + (_speed * cos _dir),
                      (_vel select 1) + (_speed * sin _dir),
                      _speed / 3];
      _x setdammage ((getdammage _x) + _damage);
    }; 
}; 
} foreach _objects; 
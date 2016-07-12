private ["_xpos", "_ypos", "_radius", "_units", "_distance", "_dir", "_x"];

_xpos = _this select 0;
_ypos = _this select 1;

_radius = radiation_radius * 2.3;
_units = [_xpos, _ypos, 0] nearobjects ["All", _radius];

{
  if ( _x iskindof "Man" || _x iskindof "Car" || _x iskindof "Motorcycle" || _x iskindof "Tank" || _x iskindof "Ship" || _x iskindof "Air" ) then
  {
    _distance = [_xpos, _ypos, 0] distance _x;
    _dir = asin (((getpos _x select 1) - _ypos) / _distance);
    if ( getpos _x select 0 < _xpos ) then {_dir = 180 - _dir};
    _x domove [_xpos + _radius * cos _dir, _ypos + _radius * sin _dir];
    _x setspeedmode "full";
    _x setbehaviour "aware";
  };
} foreach _units;
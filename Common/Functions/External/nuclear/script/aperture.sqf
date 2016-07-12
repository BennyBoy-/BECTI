private ["_xpos", "_ypos", "_aperture", "_distance", "_radius"];

_xpos = _this select 0;
_ypos = _this select 1;

_radius = radiation_radius * -1;
_distance = [_xpos, _ypos, 0] distance player;
_aperture = 0.5;
if ( _distance > _radius ) then
{
  if ( _distance < (3 * _radius) )
    then {_aperture = _aperture + 20 * (_distance - _radius) / (2 * _radius)}
    else {_aperture = 20};
};

while { _aperture < 20 } do
{
  setaperture _aperture;
  _aperture = _aperture + 0.25;
  sleep 0.01;
};
setaperture -1;

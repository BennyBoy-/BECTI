private ["_xpos", "_ypos", "_x"];

_xpos = _this select 0;
_ypos = _this select 1;

if ( player distance [_xpos, _ypos] < radiation_radius * 1.3 ) then
{
  _x = 0;
  while { alive player && _x < 50 } do
  {
    playsound "nuclear_heartbeat";
    sleep 3.2;
    _x = _x + 1;
  };
};
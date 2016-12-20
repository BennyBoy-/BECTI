private ["_xpos", "_ypos"];

_xpos = _this select 0;
_ypos = _this select 1;

if ( [_xpos, _ypos, 0] distance player < (radiation_radius * 0.7) ) then
{
  0 faderadio 0.3;
  0 fadesound 0.3;
  0 fademusic 0.3;

  sleep 8;

  16 faderadio 1;
  16 fadesound 1;
  16 fademusic 0.5;
};
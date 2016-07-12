private ["_object", "_id", "_text", "_m", "_s", "_k", "_red", "_green", "_r", "_g"];

DEC_TO_HEX = {
  private ["_hex", "_dec", "_digits", "_result"];
  _hex = ["0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f"];
  _dec = floor (_this select 0);
  _digits = if ( count _this > 1 ) then {_this select 1} else {1};
  _result = "";
  while { _dec > 0 } do
  {
    _result = format ["%1%2", _hex select (_dec % 16), _result];
    _dec = floor (_dec / 16);
    _digits = _digits - 1;
  };
  while { _digits > 0 } do
  {
    _result = format ["0%1", _result];
    _digits = _digits - 1;
  };
  _result
};

_object = _this select 0;
_id = _this select 2;
_object removeaction _id;

_red = 0;
_green = 255;
_k = 2 * (255 / exposure_time);

while { exposure_time >= 0 } do
{
  _m = floor (exposure_time / 60);
  _s = exposure_time % 60;
  if ( _m < 10 ) then {_m = format ["0%1", _m]};
  if ( _s < 10 ) then {_s = format ["0%1", _s]};
  _r = [_red, 2] call DEC_TO_HEX;
  _g = [_green, 2] call DEC_TO_HEX;
  _text = format ["%1:%2", _m, _s];
  _text = format ["<t color='#%1%2%3'>%4</t>", _r, _g, "00", _text];
  hint parsetext _text;
  sleep 1;
  if ( _red < 255 ) then
  {
    _red = _red + _k;
    if ( _red > 255 ) then {_red = 255};
  } else
  {
    _green = _green - _k;
    if ( _green < 0 ) then {_green = 0};
  };
  exposure_time = exposure_time - 1;
};

_object setdammage 1;
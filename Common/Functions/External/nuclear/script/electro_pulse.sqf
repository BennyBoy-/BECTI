private ["_object", "_start_time", "_total_time", "_fuel", "_sleep"];

_object = _this select 0;
_start_time = time;
_total_time = 192 + random 128;
enableCamShake true;
addCamShake [5, 20, 10];
_sleep = 0.5;
while {alive _object && time - _start_time < _total_time} do
{
  driver _object action ["lightoff", _object];
  _fuel = fuel _object;
  _object setfuel 0;
  sleep random 4;
  _object setfuel _fuel;
  sleep random _sleep;
  _sleep = _sleep + 0.5;
};
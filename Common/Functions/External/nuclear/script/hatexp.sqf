private ["_posx", "_posy", "_posz", "_array", "_x"];

_posx = _this select 0;
_posy = _this select 1;
_posz = _this select 2;

_array = [_posx,_posy,_posz] nearObjects ["All", 500];
{
  _x setdammage ((getdammage _x) + 0.02);
  {_x setdammage ((getdammage _x) + 0.01)} foreach (crew _x);
} forEach _array;
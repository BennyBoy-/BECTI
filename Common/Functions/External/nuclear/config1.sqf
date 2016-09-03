private ["_object", "_xpos", "_ypos", "_wave_radius"];

_object = _this select 0;
_xpos = getpos _object select 0;
_ypos = getpos _object select 1;


_wave_radius = radiation_radius * 0.8;
main_vehicles = nearestobjects [[_xpos, _ypos , 0], ["Car", "Motorcycle", "Tank", "Air", "Ship"], radiation_radius * 1.5];
main_objects = nearestobjects [[_xpos, _ypos, 0], [], _wave_radius];
main_airs = nearestobjects [[_xpos, _ypos , 0], ["Air"], radiation_radius];
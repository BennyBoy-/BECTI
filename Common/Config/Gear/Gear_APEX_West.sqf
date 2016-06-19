private ["_faction", "_i", "_p", "_side", "_u"];

_side = _this;
_faction = "West";

_i = [];
_u = [];
_p = [];

//************************APEX Stuff************************


_i pushBack "CUP_Vector21Nite";
_u pushBack 1;
_p pushBack 600;


[_faction, _i, _u, _p] call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_Config_Set.sqf"; 

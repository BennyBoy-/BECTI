private ["_faction", "_i", "_p", "_side", "_u"];

_side = _this;
_faction = "West";

_i = [];
_u = [];
_p = [];

//************************OFPS Stuff************************

//-- Magazines
_i pushBack "hlc_500rnd_762x51_Belt";
_u pushBack 3;
_p pushBack 50;

_i pushBack "hlc_500rnd_762x51_Cinematic";
_u pushBack 3;
_p pushBack 50;

//-- Noob Punisher
_i pushBack "HLC_wp_M134Painless";
_u pushBack 3;
_p pushBack 7000;

[_faction, _i, _u, _p] call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_Config_Set.sqf"; 

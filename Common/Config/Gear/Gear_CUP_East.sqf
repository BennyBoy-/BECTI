private ["_faction", "_i", "_p", "_side", "_u"];

_side = _this;
_faction = "East";

_i = [];
_u = [];
_p = [];

//************************C.U.P Stuff************************

//Shields

_i = _i + ["CUP_hgun_BallisticShield_Armed"]; 
_u = _u + [1];
_p = _p + [200];

//RIFLES
	
//AK Family

_i = _i + ["CUP_arifle_AK47"];  
_u = _u + [0];
_p = _p + [50];		

_i = _i + ["CUP_arifle_AK74"];  
_u = _u + [0];
_p = _p + [75];

_i = _i + ["CUP_arifle_AK74M"];
_u = _u + [0];
_p = _p + [75];

_i = _i + ["CUP_arifle_AK74_GL"];
_u = _u + [0];
_p = _p + [100];

_i = _i + ["CUP_arifle_AKS"];
_u = _u + [1];
_p = _p + [100];

_i = _i + ["CUP_arifle_AKS_Gold"];
_u = _u + [1];
_p = _p + [600];

_i = _i + ["CUP_arifle_AKS74"];
_u = _u + [1];
_p = _p + [100];

_i = _i + ["CUP_arifle_AKS74U"];
_u = _u + [1];
_p = _p + [100];

_i = _i + ["CUP_arifle_AK107"];
_u = _u + [1];
_p = _p + [150];

_i = _i + ["CUP_arifle_AK107_GL"];
_u = _u + [1];
_p = _p + [175];

_i = _i + ["CUP_arifle_AKM"];
_u = _u + [1];
_p = _p + [100];



[_faction, _i, _u, _p] call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_Config_Set.sqf"; 
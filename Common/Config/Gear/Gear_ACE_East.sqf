private ["_faction", "_i", "_p", "_side", "_u"];

_side = _this;
_faction = "East";

_i = [];
_u = [];
_p = [];

//************************ACE Stuff************************

//Items																									
_i = _i + ["ACE_EarPlugs"];																									
_u = _u + [0];																									
_p = _p + [100];																									
																																																
_i = _i + ["ACE_key_lockpick"];																									
_u = _u + [0];																									
_p = _p + [100];																									
																									
_i = _i + ["ACE_DefusalKit"];																									
_u = _u + [0];																									
_p = _p + [100];
																									
_i = _i + ["ACE_Altimeter"];																									
_u = _u + [0];																									
_p = _p + [100];
																									
_i = _i + ["ACE_UAVBattery"];																									
_u = _u + [0];																									
_p = _p + [100];
																									
_i = _i + ["ACE_wirecutter"];																									
_u = _u + [0];																									
_p = _p + [100];
																									
_i = _i + ["ACE_MapTools"];																									
_u = _u + [0];																									
_p = _p + [100];
																									
_i = _i + ["ACE_SpareBarrel"];																									
_u = _u + [0];																									
_p = _p + [100];
		
//Flashlights
_i = _i + ["ACE_Flashlight_MX991"];																									
_u = _u + [0];																									
_p = _p + [20];

_i = _i + ["ACE_Flashlight_KSF1"];																									
_u = _u + [0];																									
_p = _p + [20];

_i = _i + ["ACE_Flashlight_XL50"];																									
_u = _u + [0];																									
_p = _p + [20];
		
//Explosives																									
_i = _i + ["ACE_M26_Clacker"];																									
_u = _u + [2];																									
_p = _p + [100];																									
																									
_i = _i + ["ACE_DeadManSwitch"];																									
_u = _u + [2];																									
_p = _p + [10];																									
																									
_i = _i + ["ACE_Cellphone"];																									
_u = _u + [1];																									
_p = _p + [100];																									
																									
_i = _i + ["ACE_Clacker"];																									
_u = _u + [1];																									
_p = _p + [100];																									
																									
//Spotting Scope																									
_i = _i + ["ACE_SpottingScope"];																									
_u = _u + [1];																									
_p = _p + [100];																									
																									
_i = _i + ["ACE_SpottingScopeObject"];																								
_u = _u + [1];																									
_p = _p + [100];																									

//Optics																									
_i = _i + ["ACE_optic_Arco_2D"];																									
_u = _u + [0];																									
_p = _p + [100];																									
																									
_i = _i + ["ACE_optic_Arco_PIP"];																									
_u = _u + [0];																									
_p = _p + [100];	

_i = _i + ["ACE_optic_LRPS_2D"];																									
_u = _u + [0];																									
_p = _p + [100];	

_i = _i + ["ACE_optic_LRPS_PIP"];																									
_u = _u + [0];																									
_p = _p + [100];	

_i = _i + ["ACE_optic_SOS_2D"];																									
_u = _u + [0];																									
_p = _p + [100];	

_i = _i + ["ACE_optic_SOS_PIP"];																									
_u = _u + [0];																									
_p = _p + [100];	

_i = _i + ["ACE_optic_MRCO_2D"];																									
_u = _u + [0];																									
_p = _p + [100];	

_i = _i + ["ACE_optic_MRCO_PIP"];																									
_u = _u + [0];																									
_p = _p + [100];	

_i = _i + ["ACE_optic_Hamr_2D"];																									
_u = _u + [0];																									
_p = _p + [100];	

_i = _i + ["ACE_optic_Hamr_PIP"];																									
_u = _u + [0];																									
_p = _p + [100];

//Nightvision
_i = _i + ["ACE_NVG_Gen1"];																									
_u = _u + [0];																									
_p = _p + [100];

_i = _i + ["ACE_NVG_Gen2"];																									
_u = _u + [1];																									
_p = _p + [100];

_i = _i + ["ACE_NVG_Gen3"];																									
_u = _u + [2];																									
_p = _p + [100];

_i = _i + ["ACE_NVG_Gen4"];																									
_u = _u + [3];																									
_p = _p + [100];

_i = _i + ["ACE_NVG_Wide"];																									
_u = _u + [3];																									
_p = _p + [100];

//Rangecard
_i = _i + ["ACE_RangeCard"];																									
_u = _u + [0];																									
_p = _p + [100];

//Binocular
_i = _i + ["ACE_MX2A"];																									
_u = _u + [0];																									
_p = _p + [100];

_i = _i + ["ACE_Vector"];																									
_u = _u + [0];																									
_p = _p + [100];

_i = _i + ["ACE_Yardage450"];																									
_u = _u + [0];																									
_p = _p + [100];

_i = _i + ["ACE_HuntIR_monitor"];																									
_u = _u + [0];																									
_p = _p + [100];

//Medical

_i = _i + ["ACE_elasticBandage"];																									
_u = _u + [0];																									
_p = _p + [100];

_i = _i + ["ACE_packingBandage"];																									
_u = _u + [0];																									
_p = _p + [100];

_i = _i + ["ACE_fieldDressing"];																									
_u = _u + [0];																									
_p = _p + [100];

_i = _i + ["ACE_tourniquet"];																									
_u = _u + [0];																									
_p = _p + [100];

_i = _i + ["ACE_epinephrine"];																									
_u = _u + [0];																									
_p = _p + [100];

_i = _i + ["ACE_morphine"];																									
_u = _u + [0];																									
_p = _p + [100];

_i = _i + ["ACE_plasmaIV_500"];																									
_u = _u + [0];																									
_p = _p + [100];

_i = _i + ["ACE_plasmaIV_250"];																									
_u = _u + [0];																									
_p = _p + [100];

_i = _i + ["ACE_bloodIV"];																									
_u = _u + [0];																									
_p = _p + [100];

_i = _i + ["ACE_bloodIV_500"];																									
_u = _u + [0];																									
_p = _p + [100];

_i = _i + ["ACE_bloodIV_250"];																									
_u = _u + [0];																									
_p = _p + [100];

_i = _i + ["ACE_salineIV"];																									
_u = _u + [0];																									
_p = _p + [100];

_i = _i + ["ACE_salineIV_500"];																									
_u = _u + [0];																									
_p = _p + [100];

_i = _i + ["ACE_salineIV_250"];																									
_u = _u + [0];																									
_p = _p + [100];

_i = _i + ["ACE_quikclot"];																									
_u = _u + [0];																									
_p = _p + [100];

_i = _i + ["ACE_personalAidKit"];																									
_u = _u + [0];																									
_p = _p + [100];

_i = _i + ["ACE_surgicalKit"];																									
_u = _u + [0];																									
_p = _p + [100];

_i = _i + ["ACE_bodyBag"];																									
_u = _u + [0];																									
_p = _p + [100];

//Vehicle Key: East
_i = _i + ["ACE_key_east"];																									
_u = _u + [0];																									
_p = _p + [10];

//Sandbag
_i = _i + ["ACE_Sandbag_empty"];																									
_u = _u + [0];																									
_p = _p + [1];

[_faction, _i, _u, _p] call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_Config_Set.sqf"; 

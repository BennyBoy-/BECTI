if (CTI_isServer) then {

};
if (CTI_isCLient) then {
	CTI_NUKE_TIMER = compileFinal preprocessFileLineNumbers "Common\Functions\External\nuclear\functions\fn_bombTimer.sqf";
	
	CTI_NUKE_CONFIG = compileFinal preprocessFileLineNumbers "Common\Functions\External\nuclear\config.sqf";
	CTI_NUKE_CONFIG1 = compileFinal preprocessFileLineNumbers "Common\Functions\External\nuclear\config1.sqf";
	CTI_NUKE_DETONATION = compileFinal preprocessFileLineNumbers "Common\Functions\External\nuclear\detonation.sqf";
	CTI_NUKE_GEIGER = compileFinal preprocessFileLineNumbers "Common\Functions\External\nuclear\geiger.sqf";
	CTI_NUKE_NUCLEAR = compileFinal preprocessFileLineNumbers "Common\Functions\External\nuclear\nuclear.sqf";
	CTI_NUKE_RADIATION = compileFinal preprocessFileLineNumbers "Common\Functions\External\nuclear\radiation.sqf";

};

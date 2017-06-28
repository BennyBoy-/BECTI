/*
  # HEADER #
	Script: 		Server\Functions\Server_StartUpgrade.sqf
	Alias:			CTI_SE_FNC_StartUpgrade
	Description:	Start upgrading an element, The server-side can spawn it straigh away.
					Use the PVF "CTI_PVF_SRV_RequestUpgrade" for a client-request
	Author: 		Benny
	Creation Date:	23-09-2013
	Revision Date:	23-09-2013
	
  # PARAMETERS #
    0	[Side]: The side which requested the upgrade
    1	[Integer]: The upgrade element
    2	[Integer]: The upgrade current level
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[SIDE, UPGRADE, LEVEL] spawn CTI_SE_FNC_StartUpgrade
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_GetSideLogic
	Common Function: CTI_CO_FNC_GetSideUpgrades
	
  # EXAMPLE #
    [West, CTI_UPGRADE_BARRACKS, 0] spawn CTI_SE_FNC_StartUpgrade
	  -> Will bring the barracks on level 1 after the upgrade completion
*/

params ["_side", "_upgrade", "_level"];
private ["_logic", "_upgrade_time", "_upgrades"];

_side = _this select 0;
_upgrade = _this select 1;
_level = _this select 2;

_upgrade_time = ((missionNamespace getVariable Format["CTI_%1_UPGRADES_TIMES", _side]) select _upgrade) select _level;

if (CTI_Log_Level >= CTI_Log_Information) then {
	["INFORMATION", "FILE: Server\Functions\Server_StartUpgrade.sqf", format["The [%1] side [%2] upgrade is being researched to level [%3] and will last [%4] seconds", _side, (missionNamespace getVariable Format["CTI_%1_UPGRADES_LABELS", _side]) select _upgrade, _level+1, _upgrade_time]] call CTI_CO_FNC_Log;
};

sleep _upgrade_time;

_logic = (_side) call CTI_CO_FNC_GetSideLogic;
_upgrades = (_side) call CTI_CO_FNC_GetSideUpgrades;
_upgrades set [_upgrade, (_upgrades select _upgrade) + 1];

_logic setVariable ["cti_upgrades", _upgrades, true];
_logic setVariable ["cti_upgrade", -1, true];

if (CTI_Log_Level >= CTI_Log_Information) then {
	["INFORMATION", "FILE: Server\Functions\Server_StartUpgrade.sqf", format["The [%1] side [%2] upgrade is now complete at level [%3]", _side, (missionNamespace getVariable Format["CTI_%1_UPGRADES_LABELS", _side]) select _upgrade, _upgrades select _upgrade]] call CTI_CO_FNC_Log;
};

["upgrade-ended", [_upgrade, _level+1]] remoteExec ["CTI_PVF_CLT_OnMessageReceived", _side];
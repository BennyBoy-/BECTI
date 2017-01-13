/*
  # HEADER #
	Script: 		Client\Functions\Client_JoinRequestAnswer.sqf
	Description:	Determine whether the client can join a game in progress
					Note that this function is called by a PVF "CTI_PVF_CLT_JoinRequestAnswer"
					which is defined in:
					 - Client\Init\Init_Client.sqf
	Author: 		Benny
	Creation Date:	20-12-2017
	Revision Date:	20-12-2017
	
  # PARAMETERS #
    0	[Boolean]: This is the server answer about the JIP validity
    1	[Boolean]: Determine if the client was removing kebab in jail or not
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[JIP ANSWER, JAILED] execVM "Client\Functions\Client_JoinRequestAnswer.sqf"
	
  # EXAMPLE #
    [true, ""] execVM "Client\Functions\Client_JoinRequestAnswer.sqf"
	  -> The client can join, he wasn't jailed
	[true, "jailed"] execVM "Client\Functions\Client_JoinRequestAnswer.sqf"
	  -> The client can join, he was jailed
	[false, ""] spawn execVM "Client\Functions\Client_JoinRequestAnswer.sqf"
	  -> The client cannot join
*/

private ["_can_join", "_loadout", "_special"];

_can_join = _this select 0;
_special = _this select 1;
_loadout = _this select 2;

if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Client\Functions\Client_JoinRequestAnswer.sqf", format["The join request has been answered with the following settings: can join [%1], special [%2]", _can_join, _special]] call CTI_CO_FNC_Log};

switch (_special) do {
	case "jailed": {CTI_P_Jailed = true}; //--- The player left while removing kebab? remove more kebab!
	case "teamstack": {
		12453 cutText ["\n\nTEAMSTACK SYSTEM: Teams are not balanced, you will be sent back to the lobby...", "BLACK FADED", 50000];
		sleep 2;
	};
	default {
		if (count _loadout > 0) then {
			if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Client\Functions\Client_JoinRequestAnswer.sqf", "The previous loadout has been received and will be equipped"] call CTI_CO_FNC_Log};
			[player, _this] call CTI_CO_FNC_EquipUnit;
		} else {
			if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Client\Functions\Client_JoinRequestAnswer.sqf", "The default loadout has been equipped"] call CTI_CO_FNC_Log};
			[player, missionNamespace getVariable format ["CTI_AI_%1_DEFAULT_GEAR", CTI_P_SideJoined]] call CTI_CO_FNC_EquipUnit;
		};
	};
};

//--- Ultimately, check whether we allow the player to join or not
if (_can_join) then {
	CTI_P_CanJoin = true;
} else {
	failMission "END6"; //--- Teamswap
};
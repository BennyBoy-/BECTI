/*
  # HEADER #
	Script: 		Client\Functions\Client_JoinRequestAnswer.sqf
	Alias:			CTI_CL_FNC_JoinRequestAnswer
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
	[JIP ANSWER, JAILED] spawn CTI_CL_FNC_JoinRequestAnswer
	
  # EXAMPLE #
    [true, ""] spawn CTI_CL_FNC_JoinRequestAnswer
	  -> The client can join, he wasn't jailed
	[true, "jailed"] spawn CTI_CL_FNC_JoinRequestAnswer
	  -> The client can join, he was jailed
	[false, ""] spawn CTI_CL_FNC_JoinRequestAnswer
	  -> The client cannot join
*/

private ["_can_join", "_special"];

_can_join = _this select 0;
_special = _this select 1;

if (CTI_Log_Level >= CTI_Log_Information) then {["INFORMATION", "FILE: Client\Functions\Client_JoinRequestAnswer.sqf", format["The join request has been answered with the following settings: can join [%1], special [%2]", _can_join, _special]] call CTI_CO_FNC_Log};

switch (_special) do {
	case "jailed": {CTI_P_Jailed = true}; //--- The player left while removing kebab? remove more kebab!
	case "teamstack": {
		12453 cutText ["\n\nTEAMSTACK SYSTEM: Teams are not balanced, you will be sent back to the lobby...", "BLACK FADED", 50000];
		sleep 2;
	};
};

//--- Ultimately, check whether we allow the player to join or not
if (_can_join) then {
	CTI_P_CanJoin = true;
} else {
	failMission "END6"; //--- Teamswap
};
/*
  # HEADER #
	Script: 		Server\Functions\Server_NoobLoggerEnd.sqf
	Alias:			CTI_SE_FNC_NoobLoggerEnd
	Description:	Stop considering a player as a pro player!
	Author: 		Benny
	Creation Date:	20-09-2013
	Revision Date:	20-09-2013
	
  # PARAMETERS #
    0	[Object]: The old 1337 player
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	(PROPLAYER) call CTI_SE_FNC_NoobLogger
	
  # EXAMPLE #
    (player) call CTI_SE_FNC_NoobLogger
	  -> Not that pro anymore
*/

//--- Try to get the score of that marvelous players.
_uid = getPlayerUID _this;
_get = missionNamespace getVariable [format ["CTI_SERVER_CLIENT_ELITE_%1", _uid], [0, 0]];
_get set [1, 0];

missionNamespace setVariable [format ["CTI_SERVER_CLIENT_ELITE_%1", _uid], _get];
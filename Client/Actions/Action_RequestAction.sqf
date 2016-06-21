_args = _this select 3;
_request = _args select 0;
_position = _args select 1;

_commander = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideCommanderTeam;

CTI_P_TeamsRequests_Last = time;

if (isPlayer leader _commander) then {
	_seed = round(time + random 10000 - random 500 + diag_frameno);
	[group player, _request, _position, _seed, name player] remoteExec ["CTI_PVF_CLT_OnRequestReceived", leader _commander];
} else {
	//todo: AI Commmander ack/deny
};
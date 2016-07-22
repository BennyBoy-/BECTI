_a=0.3; //At _a=0.2, with 30 players, 6 AI allowed/player....At _a=0.3, with 30 players, 3 AI allowed/player.
_b=12;

while {! CTI_GameOver} do {
	_nbp={isPlayer _x} count playableUnits;
	_next=0 max ceil(_b-(_a*_nbp));
	if !(missionNamespace getVariable "CTI_PLAYERS_GROUPSIZE" == _next ) then {
		missionNamespace setVariable ["CTI_PLAYERS_GROUPSIZE",_next] ;
		//HUD_NOTIFICATIONS pushBack [format ["Group size is now : %1 ",_next],time+10,"ffffff"];
		//need to update to non HUD
	};
	sleep 60;
};
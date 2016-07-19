HUD_UpdateVehicle = compile preprocessfilelinenumbers "Client\Functions\Externals\Veh_Hud\HUD_UpdateVehicle.sqf";

waitUntil {!(isNull player)};
("CTI_HUD" call BIS_fnc_rscLayer) cutrsc["CTI_HUD_RSC","PLAIN",0,true];
waitUntil {!isNil {uiNamespace getVariable 'HUD'}};

0 spawn {
	while {!CTI_GameOver} do {
			disableSerialization;
			_hud=uiNamespace getVariable 'HUD';
			(_hud) call HUD_UpdateVehicle;
			sleep 2;
	};
};
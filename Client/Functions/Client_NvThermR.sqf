private ["_restrict","_gear","_func1","_u","_func2"];
_restrict=[];
if (CTI_SM_NONV == 1) then {
	//No NV
	_restrict=["NVGoggles","NVGogglesB_gry_F","optic_NVS","optic_Nightstalker","H_HelmetSpecO_ghex_F","CUP_optic_AN_PAS_13c1","CUP_optic_AN_PAS_13c2","CUP_optic_AN_PVS_10","CUP_optic_AN_PVS_4"];
};
if (CTI_SM_NONV == 2) then {
	//No Thermals
	_restrict=["NVGogglesB_gry_F","optic_Nightstalker","optic_tws","optic_tws_mg","H_HelmetSpecO_ghex_F","CUP_optic_AN_PAS_13c1","CUP_optic_AN_PAS_13c2"];
};
if (CTI_SM_NONV == 3) then {
	//No NV and No Thermals
	_restrict=["NVGoggles","NVGogglesB_gry_F","optic_NVS","optic_Nightstalker","optic_tws","optic_tws_mg","H_HelmetSpecO_ghex_F","CUP_optic_AN_PAS_13c1","CUP_optic_AN_PAS_13c2","CUP_optic_AN_PVS_10","CUP_optic_AN_PVS_4"];
};

if (CTI_isClient) then {
	waitUntil {!isnil "CTI_InitClient"};
	waitUntil {CTI_InitClient};
	if (side player == resistance) exitWith {false};
	_gear= missionNamespace getVariable "cti_gear_all";
	{
		_gear=_gear-[_x];
		missionNamespace setVariable [_x,nil];
	} forEach _restrict;
	missionNamespace setVariable ["cti_gear_all",_gear];
 	_func1={
 		_restrict = _this;
		while {!CTI_GameOver} do
		{
			{
				_i=_x;
				if ({_i == _x} count _restrict >0) then {
					player removePrimaryWeaponItem _x;
				};
			} forEach primaryWeaponItems player;
			{
				_u=_x;
				{
				 if (getText(configFile >> 'CfgWeapons' >> _x >> 'simulation') == 'NVGoggles') then {
				 	_u removeWeapon _x;
				 };
				}forEach assignedItems _u;
			} forEach units group player;
			sleep 1;
		};
	};
	(_restrict) spawn _func1;
};

if (CTI_IsServer) then {
	_func2={
		while {!CTI_GameOver} do {
			{
				_u=_x;
				if (local _u) then {

					{
					 if (getText(configFile >> 'CfgWeapons' >> _x >> 'simulation') == "NVGoggles") then {
							_u removeWeapon _x;
						};
					}forEach assignedItems _u;
				};
			} forEach allUnits;
			sleep 5;
		};
	};
	0 spawn _func2;
};
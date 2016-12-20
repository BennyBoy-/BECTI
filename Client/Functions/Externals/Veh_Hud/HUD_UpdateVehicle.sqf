#define HUD_IDC 1500000

private ["_hud","_veh","_text","_col2","_col3","_co","_d","_c","_g"];
_hud=_this;
disableSerialization;
_veh=(_hud displayCtrl(HUD_IDC+2));

if (vehicle	player == player  ) then{
	_veh ctrlShow	false;
} else {
	_veh ctrlShow	true;
	_text="<t align='right'><t size='1'><t color='#00ff00'>";
	_text=_text + getText(configFile >> "CfgVehicles" >> (typeOf (vehicle player)) >> "displayName");
	_text=_text+"</t></t><br /><t size='0.7'>";
	_text=_text+format	["<t color='#00ff00'><img image='A3\ui_f\data\IGUI\Cfg\Actions\heal_ca.paa'/>%1</t>", ceil( (1- getDammage	( vehicle player))*100)];
	_text=_text+"<br />";
	_d=driver	(vehicle	player);
	if (!isNull	_d && isPlayer	_d) then {_text=_text + 	format	["%1<img image='Rsc\Pictures\i_driver.paa'/><br />",name _d];};
	_c=commander (vehicle	player);
	if (!isNull	_c && isPlayer	_c) then {_text=_text + 	format	["%1<img image='Rsc\Pictures\i_commander.paa'/><br />",name _c];};
	_g=gunner (vehicle	player);
	if (!isNull	_g && isPlayer	_g) then {_text=_text + 	format	["%1<img image='Rsc\Pictures\i_gunner.paa'/><br />",name _g];};
	{
			if (isplayer _x && !(commander (vehicle	player) == _x || driver	(vehicle	player) ==_x || gunner (vehicle	player) ==_x )) then {
				_text=_text + 	format	["%1<img image='Rsc\Pictures\i_turrets.paa'/><br />",name _x];
			};
	} forEach crew (vehicle	player);
	_text=_text+"</t></t>";
	_veh ctrlSetStructuredText	parseText	 _text;
};
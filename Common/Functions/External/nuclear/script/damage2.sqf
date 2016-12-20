private ["_xpos", "_ypos", "_dis", "_damage", "_x"];

_xpos = _this select 0;
_ypos = _this select 1;

for [{_dis = 800}, {_dis <= radiation_radius}, {_dis = _dis + 100}] do
{
  [_xpos, _ypos, _dis] exec "Common\Functions\External\nuclear\script\wave.sqs";
  if ( _dis < 3000 ) then {[_xpos, _ypos, _dis] execvm "Common\Functions\External\nuclear\script\noise.sqf"};
  if ( damage_on ) then
  {
	  {
		if ( ! (_x isKindOf "House") ) then
		{
			if ( _x iskindof "Static" || _x iskindof "Man" || _x iskindof "Car" || _x iskindof "Motorcycle" || _x iskindof "Tank" || _x iskindof "Ship" || _x iskindof "Air") then
			{
			  if ( _x iskindof "Static" ) then {_damage = 0.15 + random 0.1} else
			  {
				if ( _x iskindof "Man" || _x iskindof "Air" ) then {_damage = 0.1 + random 0.06}
				else
				{
				  {_x setdammage ((getdammage _x) + 0.07)} foreach (crew _x);
				  _damage = 0.06 + random 0.04;
				};
			  };
			  _x setdammage ((getdammage _x) + _damage);
			};
		};
	  } foreach ([_xpos, _ypos, 0] nearobjects ["All", _dis]);
  };
};

if ( radiation_on ) then
{
	[_xpos, _ypos, time] execvm "Common\Functions\External\nuclear\script\geiger.sqf";
	[_xpos, _ypos, time] execvm "Common\Functions\External\nuclear\script\radiation.sqf";
};
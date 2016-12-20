//////////////////////////////////////////////////////////////
// MADE BY MOERDERHOSCHI
// EDITED VERSION OF THE ARMA2 ORIGINAL SCRIPT
// ARMED-ASSAULT.DE
// 06.11.2013
//////////////////////////////////////////////////////////////
private ["_xpos", "_ypos", "_x" , "_snow", "_parray"];

_xpos = _this select 0;
_ypos = _this select 1;

sleep 20;

if ( player distance [_xpos, _ypos] < radiation_radius * 1.3 ) then
{
  _x = 0;
  while { alive player && _x < 200 } do
  {
	//--- Ash
	[] spawn {
		_pos = position player;
		_parray = [
		/* 00 */		["A3\Data_F\ParticleEffects\Universal\Universal", 16, 12, 8, 1],//"A3\Data_F\cl_water",
		/* 01 */		"",
		/* 02 */		"Billboard",
		/* 03 */		1,
		/* 04 */		4,
		/* 05 */		[0,0,0],
		/* 06 */		[0,0,0],
		/* 07 */		1,
		/* 08 */		0.000001,
		/* 09 */		0,
		/* 10 */		1.4,
		/* 11 */		[0.05,0.05],
		/* 12 */		[[0.1,0.1,0.1,1]],
		/* 13 */		[0,1],
		/* 14 */		0.2,
		/* 15 */		1.2,
		/* 16 */		"",
		/* 17 */		"",
		/* 18 */		vehicle player
		];
		_snow = "#particlesource" createVehicleLocal _pos;  
		_snow setParticleParams _parray;
		_snow setParticleRandom [0, [10, 10, 7], [0, 0, 0], 0, 0.01, [0, 0, 0, 0.1], 0, 0];
		_snow setParticleCircle [0.0, [0, 0, 0]];
		_snow setDropInterval 0.01;
	};
    sleep 3.2;
    _x = _x + 1;
  };
};


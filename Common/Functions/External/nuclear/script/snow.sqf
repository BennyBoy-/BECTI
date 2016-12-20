private ["_xpos", "_ypos", "_parray", "_snow", "_x"];

_xpos = _this select 0;
_ypos = _this select 1;

if ( player distance [_xpos, _ypos] < radiation_radius * 1.3 ) then
{
  _x = 0;
  while { alive player && _x < 200 } do
  {

		_parray = [["A3\Data_F\ParticleEffects\Universal\Universal", 16, 12, 8, 1], "",
					"Billboard", 1, 4, [0,0,0], [0,0,0], 1, 0.000001, 0, 1.4,
				[0.05,0.05], [[0.1,0.1,0.1,1]], [0,1], 0.2, 1.2, "", "", vehicle player];
		_snow = "#particlesource" createVehicleLocal position player;
		_snow setParticleParams _parray;
		_snow setParticleRandom [0, [10, 10, 7], [0, 0, 0], 0, 0.01, [0, 0, 0, 0.1], 0, 0];
		_snow setParticleCircle [0.0, [0, 0, 0]];
		_snow setDropInterval 0.01;

    sleep 3.2;
    _x = _x + 1;
  };
};
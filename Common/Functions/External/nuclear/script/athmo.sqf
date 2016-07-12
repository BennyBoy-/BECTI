private ["_xpos", "_ypos", "_vx", "_vy", "_vz", "_coe", "_ran", "_pos", "_velocity", "_color", "_alpha", "_ps", "_delay", "_x"];
_xpos = _this select 0;
_ypos = _this select 1;


quake = {

		for "_i" from 0 to 140 do {
			_vx = vectorup _this select 0;
			_vy = vectorup _this select 1;
			_vz = vectorup _this select 2;
			_coe = 0.03 - (0.0001 * _i);
			_this setvectorup [
				_vx+(-_coe+random (2*_coe)),
				_vy+(-_coe+random (2*_coe)),
				_vz+(-_coe+random (2*_coe))
			];
			sleep (0.01 + random 0.01);
		};

};
player spawn quake;

if ( player distance [_xpos, _ypos] < radiation_radius * 1.5 ) then
{
  _x = 0;
  while { alive player && _x < 200 } do
  {
		setwind [0.201112,0.204166,true];
		_ran = ceil random 2;
		_pos = position player;

		//--- Dunst
		setwind [0.201112*2,0.204166*2,false];
		_velocity = [random 10,random 10,-1];
		_color = [1.0, 0.9, 0.8];
		_alpha = 0.02 + random 0.02;
		_ps = "#particlesource" createVehicle _pos;  
		_ps setParticleParams [["\a3\data_f\ParticleEffects\Universal\universal.p3d", 16, 12, 8], "", "Billboard", 1, 3, [0, 0, -6], _velocity, 1, 1.275, 1, 0, [9], [_color + [0], _color + [_alpha], _color + [0]], [1000], 1, 0, "", "", _pos];
		_ps setParticleRandom [3, [30, 30, 0], [0, 0, 0], 1, 0, [0, 0, 0, 0.01], 0, 0];
		_ps setParticleCircle [0.1, [0, 0, 0]];
		_ps setDropInterval 0.01;

		sleep (random 1);
		_delay = 1 + random 5;
		sleep _delay;
		deletevehicle _ps;
  
      sleep 3.2;
	_x = _x + 1;
  };
};
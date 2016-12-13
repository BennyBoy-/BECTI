// by ALIAS
// Roadflare DEMO
// Tutorial: https://www.youtube.com/user/aliascartoons

private ["_al_roadflare","_flare_azimut","_fum_flare"];

if (!hasInterface) exitWith {};

_al_roadflare = _this select 0;

_flare_azimut =  getDir _al_roadflare; 
//hint str _flare_azimut;

_fum_flare = "#particlesource" createVehicleLocal getPosATL _al_roadflare;
//_fum_flare attachto [_al_roadflare];
_fum_flare setParticleCircle [0, [0, 0, 0]];
_fum_flare setParticleRandom [0, [0, 0, 0], [0, 0, 0], 0, 0, [0, 0, 0, 0], 0, 0];
_fum_flare setParticleParams [["\A3\data_f\cl_basic", 1, 0, 1], "", "Billboard", 1, 2, [0, 0, 0], [rad _flare_azimut,2-(rad _flare_azimut), 0.5], 65, 10, 7.9, 0.2, [0.3, 1, 5], [[1, 1, 1, 0.05], [0.8, 0.8, 1, 0.005], [1, 1, 1, 0]], [0.08], 0.5, 0.3, "", "", _al_roadflare];
_fum_flare setDropInterval 0.07;

_al_spark = "#particlesource" createVehicleLocal getPosATL _al_roadflare;
_al_spark setParticleCircle [0, [0, 0, 0]];
_al_spark setParticleRandom [0.01, [0, 0, 0], [5, 5, 5], 0, 0.01, [0, 0, 0, 0.1], 5, 3];
_al_spark setParticleParams [["\A3\data_f\cl_basic", 1, 0, 1], "", "Billboard", 1, 0.1, [0, 0, 0], [0, 0, 0], 0, 10, 7.9, 0.075, [0.015, 0.015, 0.015], [[1, 0.8, 0.8, 1], [0.25, 0.25, 0.25, 1], [1, 0.8, 0.7, 0.5]], [0.08], 1, 0, "", "", _al_roadflare];
_al_spark setDropInterval 0.01;

while {alive _al_roadflare} do {
sleep 0.5
};
// fum putin
_fum_flare setParticleParams [["\A3\data_f\cl_basic", 1, 0, 1], "", "Billboard", 1, 2, [0, 0, 0], [(rad _flare_azimut)/10,2-(rad _flare_azimut)/10, 0.5], 65, 10, 7.9, 0.2, [0.3, 5, 5], [[1, 1, 1, 0.05], [0.8, 0.8, 1, 0], [1, 1, 1, 0]], [0.08], 0.5, 0.3, "", "", _al_roadflare];
_fum_flare setDropInterval 1;
_al_spark setParticleParams [["\A3\data_f\cl_exp", 1, 0, 1], "", "Billboard", 1, 0.05, [0, 0, 0], [0, 0, 0], 0, 10, 7.9, 0.075, [0.03, 0.03, 0.03], [[1, 0.8, 0.8, 1], [0.25, 0.25, 0.25, 1], [1, 0.8, 0.7, 0.5]], [0.08], 1, 0, "", "", _al_roadflare];
_al_spark setDropInterval 0.1;

sleep 3;
//sterge particule
deleteVehicle _fum_flare;
deleteVehicle _al_spark;
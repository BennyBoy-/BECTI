private ["_fog_forecast","_overcast_forecast","_nexttime","_nextfog","_nextover","_rain_setting","_overcast_setting","_fog_setting","_wind_setting","_waves_setting"];

_fog_forecast=-10000;
_overcast_forecast=-10000;

if (CTI_WEATHER_RAIN == -1) then { _rain_setting = random 1 };
if (CTI_WEATHER_RAIN >= 0) then { _rain_setting = CTI_WEATHER_RAIN / 100 };
if (CTI_WEATHER_OVERCAST ==-1) then { _overcast_setting = random 1 };
if (CTI_WEATHER_OVERCAST >= 0) then { _overcast_setting = CTI_WEATHER_OVERCAST / 100 };
if (CTI_WEATHER_FOG ==-1) then { _fog_setting = random 1 };
if (CTI_WEATHER_FOG >= 0) then { _fog_setting = CTI_WEATHER_FOG / 100 };
if (CTI_WEATHER_WIND ==-1) then { _wind_setting = random 10 };
if (CTI_WEATHER_WIND >= 0) then { _wind_setting = CTI_WEATHER_WIND / 10 };
if (CTI_WEATHER_WAVES ==-1) then { _waves_setting = random 1 };
if (CTI_WEATHER_WAVES >= 0) then { _waves_setting = CTI_WEATHER_WAVES / 100 };

if (CTI_WEATHER_SNOW > 0) then { 
	_rain_setting = 0;
	_overcast_setting = 100;
	_fog_setting = 80;
	_wind_setting = 0.8;
	_waves_setting = 90;
};
if (CTI_WEATHER_SAND > 0) then { 
	_rain_setting = 0;
	_overcast_setting = 0;
	_fog_setting = 0;
	_wind_setting = 0.8;
	_waves_setting = 90;
};

//Initial Weather Settings
_nexttime = 0;
_nexttime setRain _rain_setting;
_nexttime setOvercast _overcast_setting;
_nexttime setFog [_fog_setting, 0.01 + random (0.04), random(10)];
setWind [random [-10,0,10], random [-10,0,10], true];
_nexttime setWindStr _wind_setting;
//_nexttime setWindDir random 360;
_nexttime setWaves _waves_setting;
_fog_forecast = fogForecast;
_overcast_forecast = overcastForecast;

forceWeatherChange;

while {!CTI_GameOver} do {
	waitUntil {_overcast_forecast != overcastForecast || _fog_forecast != fogForecast};
	_nexttime=random(nextWeatherChange-100);
	_nexttime setRain _rain_setting;
	_nexttime setOvercast _overcast_setting;
	_nexttime setFog [_fog_setting, 0.01 + random (0.04), random(10)];
	_nexttime setWaves _waves_setting;
	_fog_forecast = fogForecast;
	_overcast_forecast = overcastForecast;
	while {true} do {
		//update wind every 30min
		sleep 1800;
		setWind [random [-10,0,10], random [-10,0,10], true];
		_nexttime setWindStr _wind_setting;
		//_nexttime setWindDir random 360;
	}
}

/* OLD SCRIPT FOR REF
#define MAXFOG 0.3
_nexttime=0;
_nextfog=random MAXFOG ;
_nexttime setFog [_nextfog,0.01 + random (0.04),random(10)];
_nextover=random 1;
_nexttime setRain random(_nextover)
_nexttime setOvercast _nextover;
_fog_forecast=fogForecast;
_overcast_forecast=overcastForecast;

forceWeatherChange;

while {!CTI_GameOver} do {
	waitUntil {_overcast_forecast != overcastForecast || _fog_forecast != fogForecast};
	_nexttime=random(nextWeatherChange-100);
	_nextfog=random MAXFOG ;
	_nexttime setFog [_nextfog,0.01 + random (0.04),random(10)];
	_nextover=random 1;
	if (CTI_WEATHER_ALLOWRAIN==0) then {_nexttime setRain 0} else {_nexttime setRain random(_nextover)};
	_nexttime setOvercast _nextover;
	_fog_forecast=fogForecast;
    _overcast_forecast=overcastForecast;
}*/
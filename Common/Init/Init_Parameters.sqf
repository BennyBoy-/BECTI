for '_i' from 0 to (count (missionConfigFile >> "Params"))-1 do {
	_paramName = (configName ((missionConfigFile >> "Params") select _i));
	_value = if (isMultiplayer) then {paramsArray select _i} else {getNumber (missionConfigFile >> "Params" >> _paramName >> "default")};
	
	missionNamespace setVariable [_paramName, _value];
	
	if (CTI_Log_Level >= CTI_Log_Information) then {
		["INFORMATION", "FILE: Common\Init\Init_Parameters.sqf", format["Defining parameter [%1] with value [%2]", _paramName, _value]] call CTI_CO_FNC_Log;
	};
};
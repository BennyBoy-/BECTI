/*
The MIT License (MIT)

Copyright (c) 2016 Seth Duda

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

if (!isServer) exitWith {};

AR_Advanced_Rappelling_Install = {

// Prevent advanced rappelling from installing twice
if(!isNil "AR_RAPPELLING_INIT") exitWith {};
AR_RAPPELLING_INIT = true;

diag_log "Advanced Rappelling Loading...";

AP_RAPPEL_POINTS = [];

AR_RAPPEL_POINT_CLASS_HEIGHT_OFFSET = [  
	["All", [-0.05, -0.05, -0.05, -0.05, -0.05, -0.05]]
];

AR_Rappel_All_Cargo = {
	params ["_vehicle",["_rappelHeight",25],["_positionASL",[]],["_forceEditorAssignedUnitsOut",true]];
	private ["_heliCargo"];
	_heliCargo = fullCrew [_vehicle, "cargo"];
	if(count _heliCargo == 0 || isPlayer (driver _vehicle)) exitWith {};
	if(local _vehicle) then {
		_this spawn {
			params ["_vehicle",["_rappelHeight",25],["_positionASL",[]],["_forceEditorAssignedUnitsOut",true]];
			_heliGroup = group driver _vehicle;
			_vehicle setVariable ["AR_Units_Rappelling",true];

			_heliGroupOriginalBehaviour = behaviour leader _heliGroup;
			_heliGroupOriginalCombatMode = combatMode leader _heliGroup;
			_heliGroupOriginalFormation = formation _heliGroup;

			if(count _positionASL == 0) then {
				_positionASL = AGLtoASL [(getPos _vehicle) select 0, (getPos _vehicle) select 1, 0];
			};
			_positionASL = _positionASL vectorAdd [0, 0, _rappelHeight];
			
			_gameLogicLeader = _heliGroup createUnit ["LOGIC", ASLToAGL _positionASL, [], 0, ""];
			_heliGroup selectLeader _gameLogicLeader;

			_heliGroup setBehaviour "Careless";
			_heliGroup setCombatMode "Blue";
			_heliGroup setFormation "File";
			
			// Wait for heli to slow down
			waitUntil { (vectorMagnitude (velocity _vehicle)) < 10 && _vehicle distance2d _gameLogicLeader < 50  };
			
			// Force heli to specific position
			[_vehicle, _positionASL] spawn {
				params ["_vehicle","_positionASL"];
				while { _vehicle getVariable ["AR_Units_Rappelling",true] && alive _vehicle } do {

					_velocityMagatude = 5;
					_distanceToPosition = ((getPosASL _vehicle) distance _positionASL);
					if( _distanceToPosition <= 10 ) then {
						_velocityMagatude = (_distanceToPosition / 10) * _velocityMagatude;
					};
					
					_currentVelocity = velocity _vehicle;
					_currentVelocity = _currentVelocity vectorAdd (( (getPosASL _vehicle) vectorFromTo _positionASL ) vectorMultiply _velocityMagatude);
					_currentVelocity = (vectorNormalized _currentVelocity) vectorMultiply ( (vectorMagnitude _currentVelocity) min _velocityMagatude );
					_vehicle setVelocity _currentVelocity;
					
					sleep 0.05;
				};
			};

			_rappelUnits = [];
			// Rappel all cargo
			while { count (fullCrew [_vehicle, "cargo"]) > 0 } do { 	
				_distanceToPosition = ((getPosASL _vehicle) distance _positionASL);
				if(_distanceToPosition < 3) then {
					{
						[_x select 0, _vehicle] call AR_Rappel_From_Heli_Action;
						_rappelUnits = _rappelUnits + [_x select 0]; 
						sleep 1;
					} forEach (fullCrew [_vehicle, "cargo"]);
				};
				sleep 1;
			};

			// Wait for all units to reach ground
			_unitsRappelling = true;
			while { _unitsRappelling } do { 
				_unitsRappelling = false;
				{
					if( _x getVariable ["AR_Is_Rappelling",false] ) then {
						_unitsRappelling = true;
					};
				} forEach _rappelUnits;
				sleep 3;
			};
			
			_vehicle setVariable ["AR_Units_Rappelling",false];

			deleteVehicle _gameLogicLeader;
			
			_heliGroup setBehaviour _heliGroupOriginalBehaviour;
			_heliGroup setCombatMode _heliGroupOriginalCombatMode;
			_heliGroup setFormation _heliGroupOriginalFormation;

		};
	} else {
		[_this,"AR_Rappel_All_Cargo",_vehicle] call AR_RemoteExec;
	};
};

AR_Play_Rappelling_Sounds_Global = {
	_this remoteExec ["AR_Play_Rappelling_Sounds", 0];
};

AR_Play_Rappelling_Sounds = {
	params ["_player","_rappelDevice","_rappelAncor"];
	private ["_lastDistanceFromAnchor","_distanceFromAnchor","_config","_configMission"];
	_config = getArray ( configFile / "CfgSounds" / "AR_Rappel_Start" / "sound" );
	_configMission = getArray ( missionConfigFile / "CfgSounds" / "AR_Rappel_Start" / "sound" );
	if(!hasInterface || ( count _config == 0 && count _configMission == 0) ) exitWith {};
	_lastDistanceFromAnchor = _rappelDevice distance _rappelAncor;
	if(player distance _player < 15) then {
		[_player, "AR_Rappel_Start"] call AR_Play_3D_Sound;
		[_rappelDevice, "AR_Rappel_Loop"] call AR_Play_3D_Sound;
	};
	// TODO: Add is rappelling variable, adjust how it checks for distance?
	while {_player getVariable ["AR_Is_Rappelling",false]} do {
		_distanceFromAnchor = _rappelDevice distance _rappelAncor;
		if(_distanceFromAnchor > _lastDistanceFromAnchor + 1 && player distance _player < 15) then {
			[_player, "AR_Rappel_Loop"] call AR_Play_3D_Sound;
			sleep 0.2;
			[_rappelDevice, "AR_Rappel_Loop"] call AR_Play_3D_Sound;
		};
		sleep 0.9;
		_lastDistanceFromAnchor = _distanceFromAnchor;
	};
	if(player distance _player < 15) then {
		[_player, "AR_Rappel_End"] call AR_Play_3D_Sound;
	};
};

AR_Play_3D_Sound = {
	params ["_soundSource","_className"];
	private ["_config","_configMission"];
	_config = getArray ( configFile / "CfgSounds" / _className / "sound" );
	if(count _config > 0) exitWith {
		_soundSource say3D  _className;
	};
	_configMission = getArray ( missionConfigFile / "CfgSounds" / _className / "sound" );
	if(count _configMission > 0) exitWith {
		_soundSource say3D  _className;
	};
};

AR_Get_Heli_Rappel_Points = {
	params ["_vehicle"];
	
	// Check for pre-defined rappel points
	
	private ["_preDefinedRappelPoints","_className","_rappelPoints","_preDefinedRappelPointsConverted"];
	_preDefinedRappelPoints = [];
	{
		_className = _x select 0;
		_rappelPoints = _x select 1;
		if( _vehicle isKindOf _className ) then {
			_preDefinedRappelPoints = _rappelPoints;
		};
	} forEach (AP_RAPPEL_POINTS + (missionNamespace getVariable ["AP_CUSTOM_RAPPEL_POINTS",[]]));
	if(count _preDefinedRappelPoints > 0) exitWith { 
		_preDefinedRappelPointsConverted = [];
		{
			if(typeName _x == "STRING") then {
				_modelPosition = _vehicle selectionPosition _x;
				if( [0,0,0] distance _modelPosition > 0 ) then {
					_preDefinedRappelPointsConverted pushBack _modelPosition;
				};
			} else {
				_preDefinedRappelPointsConverted pushBack _x;
			};
		} forEach _preDefinedRappelPoints;
		_preDefinedRappelPointsConverted;
	};
	
	// Calculate dynamic rappel points
	
	private ["_rappelPointsArray","_cornerPoints","_frontLeftPoint","_frontRightPoint","_rearLeftPoint","_rearRightPoint","_rearLeftPointFinal"];
	private ["_rearRightPointFinal","_frontLeftPointFinal","_frontRightPointFinal","_middleLeftPointFinal","_middleRightPointFinal","_vehicleUnitVectorUp"];
	private ["_rappelPoints","_modelPoint","_modelPointASL","_surfaceIntersectStartASL","_surfaceIntersectEndASL","_surfaces","_intersectionASL","_intersectionObject"];
	private ["_la","_lb","_n","_p0","_l","_d","_validRappelPoints"];
	
	_rappelPointsArray = [];
	_cornerPoints = [_vehicle] call AR_Get_Corner_Points;
	
	_frontLeftPoint = (((_cornerPoints select 2) vectorDiff (_cornerPoints select 3)) vectorMultiply 0.2) vectorAdd (_cornerPoints select 3);
	_frontRightPoint = (((_cornerPoints select 2) vectorDiff (_cornerPoints select 3)) vectorMultiply 0.8) vectorAdd (_cornerPoints select 3);
	_rearLeftPoint = (((_cornerPoints select 0) vectorDiff (_cornerPoints select 1)) vectorMultiply 0.2) vectorAdd (_cornerPoints select 1);
	_rearRightPoint = (((_cornerPoints select 0) vectorDiff (_cornerPoints select 1)) vectorMultiply 0.8) vectorAdd (_cornerPoints select 1);
	
	_rearLeftPointFinal = ((_frontLeftPoint vectorDiff _rearLeftPoint) vectorMultiply 0.2) vectorAdd _rearLeftPoint;
	_rearRightPointFinal = ((_frontRightPoint vectorDiff _rearRightPoint) vectorMultiply 0.2) vectorAdd _rearRightPoint;
	_frontLeftPointFinal = ((_rearLeftPoint vectorDiff _frontLeftPoint) vectorMultiply 0.2) vectorAdd _frontLeftPoint;
	_frontRightPointFinal = ((_rearRightPoint vectorDiff _frontRightPoint) vectorMultiply 0.2) vectorAdd _frontRightPoint;
	_middleLeftPointFinal = ((_frontLeftPointFinal vectorDiff _rearLeftPointFinal) vectorMultiply 0.5) vectorAdd _rearLeftPointFinal;
	_middleRightPointFinal = ((_frontRightPointFinal vectorDiff _rearRightPointFinal) vectorMultiply 0.5) vectorAdd _rearRightPointFinal;

	_vehicleUnitVectorUp = vectorNormalized (vectorUp _vehicle);
	
	_rappelPointHeightOffset = 0;
	{
		if(_vehicle isKindOf (_x select 0)) then {
			_rappelPointHeightOffset = (_x select 1);
		};
	} forEach AR_RAPPEL_POINT_CLASS_HEIGHT_OFFSET;
	
	_rappelPoints = [];
	{
		_modelPoint = _x;
		_modelPointASL = AGLToASL (_vehicle modelToWorldVisual _modelPoint);
		_surfaceIntersectStartASL = _modelPointASL vectorAdd ( _vehicleUnitVectorUp vectorMultiply -5 );
		_surfaceIntersectEndASL = _modelPointASL vectorAdd ( _vehicleUnitVectorUp vectorMultiply 5 );
		
		// Determine if the surface intersection line crosses below ground level
		// If if does, move surfaceIntersectStartASL above ground level (lineIntersectsSurfaces
		// doesn't work if starting below ground level for some reason
		// See: https://en.wikipedia.org/wiki/Line%E2%80%93plane_intersection
		
		_la = ASLToAGL _surfaceIntersectStartASL;
		_lb = ASLToAGL _surfaceIntersectEndASL;
		
		if(_la select 2 < 0 && _lb select 2 > 0) then {
			_n = [0,0,1];
			_p0 = [0,0,0.1];
			_l = (_la vectorFromTo _lb);
			if((_l vectorDotProduct _n) != 0) then {
				_d = ( ( _p0 vectorAdd ( _la vectorMultiply -1 ) ) vectorDotProduct _n ) / (_l vectorDotProduct _n);
				_surfaceIntersectStartASL = AGLToASL ((_l vectorMultiply _d) vectorAdd _la);
			};
		};
		
		_surfaces = lineIntersectsSurfaces [_surfaceIntersectStartASL, _surfaceIntersectEndASL, objNull, objNull, true, 100];
		_intersectionASL = [];
		{
			_intersectionObject = _x select 2;
			if(_intersectionObject == _vehicle) exitWith {
				_intersectionASL = _x select 0;
			};
		} forEach _surfaces;
		if(count _intersectionASL > 0) then {
			_intersectionASL = _intersectionASL vectorAdd (( _surfaceIntersectStartASL vectorFromTo _surfaceIntersectEndASL ) vectorMultiply (_rappelPointHeightOffset select (count _rappelPoints)));
			_rappelPoints pushBack (_vehicle worldToModelVisual (ASLToAGL _intersectionASL));
		} else {
			_rappelPoints pushBack [];
		};
	} forEach [_middleLeftPointFinal, _middleRightPointFinal, _frontLeftPointFinal, _frontRightPointFinal, _rearLeftPointFinal, _rearRightPointFinal];

	_validRappelPoints = [];
	{
		if(count _x > 0) then {
			_validRappelPoints pushBack _x;
		};
	} forEach _rappelPoints;
	
	_validRappelPoints;
};


AR_Rappel_From_Heli = {
	params ["_player","_heli"];
	if(isServer) then {
	
		// Find next available rappel anchor
		_rappelPoints = [_heli] call AR_Get_Heli_Rappel_Points;
		_rappelPointIndex = 0;
		{
			_rappellingPlayer = _heli getVariable ["AR_Rappelling_Player_" + str _rappelPointIndex,objNull];
			if(isNull _rappellingPlayer) exitWith {};
			_rappelPointIndex = _rappelPointIndex + 1;
		} forEach _rappelPoints;
		
		// All rappel anchors are taken by other players. Hint player to try again.
		if(count _rappelPoints == _rappelPointIndex) exitWith {
			if(isPlayer _player) then {
				[["All rappel anchors in use. Please try again.", false],"AR_Hint",_player] call AR_RemoteExec;
			};
		};
		
		_heli setVariable ["AR_Rappelling_Player_" + str _rappelPointIndex,_player];

		_player setVariable ["AR_Rappelling_Vehicle", _heli, true];

		// Start rappelling (client side)
		[_player,_heli,_rappelPoints select _rappelPointIndex] spawn AR_Client_Rappel_From_Heli;
		
		// Wait for player to finish rappeling before freeing up anchor
		[_player, _heli, _rappelPointIndex] spawn {
			params ["_player","_heli", "_rappelPointIndex"];
			while {true} do {
				if(!alive _player) exitWith {};
				if(isNull (_player getVariable ["AR_Rappelling_Vehicle", objNull])) exitWith {};
				sleep 2;
			};
			_heli setVariable ["AR_Rappelling_Player_" + str _rappelPointIndex, nil];
		};

	} else {
		[_this,"AR_Rappel_From_Heli",true] call AR_RemoteExecServer;
	};
};

AR_Client_Rappel_From_Heli = {
	params ["_player","_heli","_rappelPoint"];	
	if(local _player) then {
	
		_player setVariable ["AR_Is_Rappelling",true,true];
	
		if(!isPlayer _player) then { 
			unassignVehicle _player;
		};
		moveOut _player;
		waitUntil { vehicle _player == _player};
		_playerStartPosition = AGLtoASL (_heli modelToWorldVisual _rappelPoint);
		_playerStartPosition set [2,(_playerStartPosition select 2) - 1];
		_playerStartPosition set [1,(_playerStartPosition select 1) - ((((random 100)-50))/25)];
		_playerStartPosition set [0,(_playerStartPosition select 0) - ((((random 100)-50))/25)];
		_player setPosWorld _playerStartPosition;

		_anchor = "Land_Can_V2_F" createVehicle position _player;
		_anchor allowDamage false;
		hideObject _anchor;
		[[_anchor],"AR_Hide_Object_Global"] call AR_RemoteExecServer;
		_anchor attachTo [_heli,_rappelPoint];
		
		_rappelDevice = "B_static_AA_F" createVehicle position _player;
		_rappelDevice setPosWorld _playerStartPosition;
		_rappelDevice allowDamage false;
		hideObject _rappelDevice;
		[[_rappelDevice],"AR_Hide_Object_Global"] call AR_RemoteExecServer;
		
		[[_player,_rappelDevice,_anchor],"AR_Play_Rappelling_Sounds_Global"] call AR_RemoteExecServer;
		
		_rope2 = ropeCreate [_rappelDevice, [0.16,0,0], 60];
		_rope2 allowDamage false;
		_rope1 = ropeCreate [_rappelDevice, [0,0.15,0], _anchor, [0, 0, 0], 3];
		_rope1 allowDamage false;

		_player setVariable ["AR_Rappel_Rope_Top",_rope1];
		_player setVariable ["AR_Rappel_Rope_Bottom",_rope2];

		_player switchMove "HubSittingChairC_idle1";
		
		[[_player,true],"AR_Enable_Rappelling_Animation"] call AR_RemoteExecServer;
		
		_gravityAccelerationVec = [0,0,-9.8];
		_velocityVec = [0,0,0];
		_lastTime = diag_tickTime;
		_lastPosition = AGLtoASL (_rappelDevice modelToWorldVisual [0,0,0]);
		_dir = random 365;
		_dirSpinFactor = ((random 10) - 5) / 5;
		
		_decendRopeKeyDownHandler = -1;
		if(_player == player) then {			
			_decendRopeKeyDownHandler = (findDisplay 46) displayAddEventHandler ["KeyDown", {
				private ["_topRope","_bottomRope"];
				if(_this select 1 in (actionKeys "MoveBack")) then {
					_topRope = player getVariable ["AR_Rappel_Rope_Top",nil];
					if(!isNil "_topRope") then {
						ropeUnwind [ _topRope, 3, (ropeLength _topRope) + 0.5];
					};
					_bottomRope = player getVariable ["AR_Rappel_Rope_Bottom",nil];
					if(!isNil "_bottomRope") then {
						ropeUnwind [ _bottomRope, 3, (ropeLength _bottomRope) - 0.5];
					};
				};
			}];
		} else {
			_randomSpeedFactor = ((random 10) - 5) / 10;
			ropeUnwind [ _rope1, 3 + _randomSpeedFactor, ropeLength _rope2];
			ropeUnwind [ _rope2, 3 + _randomSpeedFactor, ropeLength _rope1];
		};
		
		while {true} do {
		
			_currentTime = diag_tickTime;
			_timeSinceLastUpdate = _currentTime - _lastTime;
			_lastTime = _currentTime;
			if(_timeSinceLastUpdate > 1) then {
				_timeSinceLastUpdate = 0;
			};

			_environmentWindVelocity = wind;
			_playerWindVelocity = _velocityVec vectorMultiply -1;
			_helicopterWindVelocity = (vectorUp _heli) vectorMultiply -30;
			_totalWindVelocity = _environmentWindVelocity vectorAdd _playerWindVelocity vectorAdd _helicopterWindVelocity;
			_totalWindForce = _totalWindVelocity vectorMultiply (9.8/53);

			_accelerationVec = _gravityAccelerationVec vectorAdd _totalWindForce;
			_velocityVec = _velocityVec vectorAdd ( _accelerationVec vectorMultiply _timeSinceLastUpdate );
			_newPosition = _lastPosition vectorAdd ( _velocityVec vectorMultiply _timeSinceLastUpdate );
			
			_heliPos = AGLtoASL (_heli modelToWorldVisual _rappelPoint);
			
			if(_newPosition distance _heliPos > ((ropeLength _rope1) + 1)) then {
				_newPosition = (_heliPos) vectorAdd (( vectorNormalized ( (_heliPos) vectorFromTo _newPosition )) vectorMultiply ((ropeLength _rope1) + 1));
				_surfaceVector = ( vectorNormalized ( _newPosition vectorFromTo (_heliPos) ));
				_velocityVec = _velocityVec vectorAdd (( _surfaceVector vectorMultiply (_velocityVec vectorDotProduct _surfaceVector)) vectorMultiply -1);
			};

			_rappelDevice setPosWorld (_newPosition vectorAdd (_velocityVec vectorMultiply 0.1) );
			_rappelDevice setVectorDir (vectorDir _player); 
			_player setPosWorld [_newPosition select 0, _newPosition select 1, (_newPosition select 2)-0.6];
			_player setVelocity [0,0,0];
			
			// Fix player direction
			_player setDir _dir;
			_dir = _dir + ((360/1000) * _dirSpinFactor);
			_lastPosition = _newPosition;
		
			if((getPos _player) select 2 < 1 || !alive _player || vehicle _player != _player || ropeLength _rope2 <= 1 || _player getVariable ["AR_Detach_Rope",false] ) exitWith {};

			sleep 0.01;
		};
				
		if(ropeLength _rope2 > 1 && alive _player && vehicle _player == _player) then {
		
			_playerStartASLIntersect = getPosASL _player;
			_playerEndASLIntersect = [_playerStartASLIntersect select 0, _playerStartASLIntersect select 1, (_playerStartASLIntersect select 2) - 5];
			_surfaces = lineIntersectsSurfaces [_playerStartASLIntersect, _playerEndASLIntersect, _player, objNull, true, 10];
			_intersectionASL = [];
			{
				scopeName "surfaceLoop";
				_intersectionObject = _x select 2;
				_objectFileName = str _intersectionObject;
				if((_objectFileName find " t_") == -1 && (_objectFileName find " b_") == -1) then {
					_intersectionASL = _x select 0;
					breakOut "surfaceLoop";
				};
			} forEach _surfaces;
			
			if(count _intersectionASL != 0) then {
				_player allowDamage false;
				_player setPosASL _intersectionASL;
			};		

			if(_player getVariable ["AR_Detach_Rope",false]) then {
				// Player detached from rope. Don't prevent damage 
				// if we didn't find a position on the ground
				if(count _intersectionASL == 0) then {
					_player allowDamage true;
				};	
			};
			
		};
		
		_player switchMove "";
		[[_player,false],"AR_Enable_Rappelling_Animation"] call AR_RemoteExecServer;

		ropeDestroy _rope1;
		ropeDestroy _rope2;		
		deleteVehicle _anchor;
		deleteVehicle _rappelDevice;
		
		_player setVariable ["AR_Is_Rappelling",nil,true];
		_player setVariable ["AR_Rappelling_Vehicle", nil, true];
		_player setVariable ["AR_Rappel_Rope_Top",nil];
		_player setVariable ["AR_Rappel_Rope_Bottom",nil];
		
		if(_decendRopeKeyDownHandler != -1) then {			
			(findDisplay 46) displayRemoveEventHandler ["KeyDown", _decendRopeKeyDownHandler];
		};
		
		sleep 2;
		
		_player allowDamage true;	

	} else {
		[_this,"AR_Client_Rappel_From_Heli",_player] call AR_RemoteExec;
	};
};

AR_Enable_Rappelling_Animation = {
	_this remoteExec ["AR_Client_Enable_Rappelling_Animation", 0];
};

AR_Client_Enable_Rappelling_Animation = {
	params ["_player",["_enable",true]];
	if(_enable) then {
		if(_player != player) then {
			_player switchMove "HubSittingChairC_idle1";	
			_player enableSimulation false;
		};
	} else {
		if(_player != player) then {
			_player switchMove "";	
			_player enableSimulation true;
		};
	};
};

AR_Rappel_Detach_Action = {
	params ["_player"];
	_player setVariable ["AR_Detach_Rope",true];
};

AR_Rappel_Detach_Action_Check = {
	params ["_player"];
	if!(_player getVariable ["AR_Is_Rappelling",false]) exitWith {false;};
	true;
};

AR_Rappel_From_Heli_Action = {
	params ["_player","_vehicle"];	
	if([_player, _vehicle] call AR_Rappel_From_Heli_Action_Check) then {
		[_player, _vehicle] call AR_Rappel_From_Heli;
	};
};

AR_Rappel_From_Heli_Action_Check = {
	params ["_player","_vehicle"];
	if!([_vehicle] call AR_Is_Supported_Vehicle) exitWith {false};
	if(((getPos _vehicle) select 2) < 5 ) exitWith {false};
	if(((getPos _vehicle) select 2) > 150 ) exitWith {false};
	if(driver _vehicle == _player) exitWith {false};
	if(speed _vehicle > 150) exitWith {false};
	true;
};

AR_Rappel_AI_Units_From_Heli_Action_Check = {
	params ["_player"];
	if(leader _player != _player) exitWith {false}; 
	_canRappelOne = false;
	{
		if(vehicle _x != _x && !isPlayer _x) then {
			if([_x, vehicle _x] call AR_Rappel_From_Heli_Action_Check) then {
				_canRappelOne = true;
			};
		};
	} forEach (units _player);
	_canRappelOne;
};

AR_Get_Corner_Points = {
	params ["_vehicle"];
	private ["_centerOfMass","_bbr","_p1","_p2","_rearCorner","_rearCorner2","_frontCorner","_frontCorner2"];
	private ["_maxWidth","_widthOffset","_maxLength","_lengthOffset","_widthFactor","_lengthFactor","_maxHeight","_heightOffset"];
	
	// Correct width and length factor for air
	_widthFactor = 0.5;
	_lengthFactor = 0.5;
	if(_vehicle isKindOf "Air") then {
		_widthFactor = 0.3;
	};
	if(_vehicle isKindOf "Helicopter") then {
		_widthFactor = 0.2;
		_lengthFactor = 0.45;
	};
	
	_centerOfMass = getCenterOfMass _vehicle;
	_bbr = boundingBoxReal _vehicle;
	_p1 = _bbr select 0;
	_p2 = _bbr select 1;
	_maxWidth = abs ((_p2 select 0) - (_p1 select 0));
	_widthOffset = ((_maxWidth / 2) - abs ( _centerOfMass select 0 )) * _widthFactor;
	_maxLength = abs ((_p2 select 1) - (_p1 select 1));
	_lengthOffset = ((_maxLength / 2) - abs (_centerOfMass select 1 )) * _lengthFactor;
	_maxHeight = abs ((_p2 select 2) - (_p1 select 2));
	_heightOffset = _maxHeight/6;
	
	_rearCorner = [(_centerOfMass select 0) + _widthOffset, (_centerOfMass select 1) - _lengthOffset, (_centerOfMass select 2)+_heightOffset];
	_rearCorner2 = [(_centerOfMass select 0) - _widthOffset, (_centerOfMass select 1) - _lengthOffset, (_centerOfMass select 2)+_heightOffset];
	_frontCorner = [(_centerOfMass select 0) + _widthOffset, (_centerOfMass select 1) + _lengthOffset, (_centerOfMass select 2)+_heightOffset];
	_frontCorner2 = [(_centerOfMass select 0) - _widthOffset, (_centerOfMass select 1) + _lengthOffset, (_centerOfMass select 2)+_heightOffset];
	
	[_rearCorner,_rearCorner2,_frontCorner,_frontCorner2];
};

AR_SUPPORTED_VEHICLES = [
	"Helicopter",
	"VTOL_Base_F"
];

AR_Is_Supported_Vehicle = {
	params ["_vehicle","_isSupported"];
	_isSupported = false;
	if(not isNull _vehicle) then {
		{
			if(_vehicle isKindOf _x) then {
				_isSupported = true;
			};
		} forEach (missionNamespace getVariable ["AR_SUPPORTED_VEHICLES_OVERRIDE",AR_SUPPORTED_VEHICLES]);
	};
	_isSupported;
};

AR_Hint = {
    params ["_msg",["_isSuccess",true]];
    if(!isNil "ExileClient_gui_notification_event_addNotification") then {
		if(_isSuccess) then {
			["Success", [_msg]] call ExileClient_gui_notification_event_addNotification; 
		} else {
			["Whoops", [_msg]] call ExileClient_gui_notification_event_addNotification; 
		};
    } else {
        hint _msg;
    };
};

AR_Hide_Object_Global = {
	params ["_obj"];
	if( _obj isKindOf "Land_Can_V2_F" || _obj isKindOf "B_static_AA_F" ) then {
		hideObjectGlobal _obj;
	};
};

AR_Add_Player_Actions = {
	params ["_player"];
	
	_player addAction ["Rappel Self", { 
		[player, vehicle player] call AR_Rappel_From_Heli_Action;
	}, nil, 0, false, true, "", "[player, vehicle player] call AR_Rappel_From_Heli_Action_Check"];
	
	_player addAction ["Rappel AI Units", { 
		{
			if(!isPlayer _x) then {
				sleep 0.2;
				[_x, vehicle _x] call AR_Rappel_From_Heli_Action;
			};
		} forEach (units player);
	}, nil, 0, false, true, "", "[player] call AR_Rappel_AI_Units_From_Heli_Action_Check"];
	
	_player addAction ["Detach Rappel Device", { 
		[player] call AR_Rappel_Detach_Action;
	}, nil, 0, false, true, "", "[player] call AR_Rappel_Detach_Action_Check"];
	
	_player addEventHandler ["Respawn", {
		player setVariable ["AR_Actions_Loaded",false];
	}];
	
};

if(!isDedicated) then {
	[] spawn {
		while {true} do {
			if(!isNull player && isPlayer player) then {
				if!(player getVariable ["AR_Actions_Loaded",false] ) then {
					[player] call AR_Add_Player_Actions;
					player setVariable ["AR_Actions_Loaded",true];
				};
			};
			sleep 5;
		};
	};
};

AR_RemoteExec = {
	params ["_params","_functionName","_target",["_isCall",false]];
	if(!isNil "ExileClient_system_network_send") then {
		["AdvancedRappellingRemoteExecClient",[_params,_functionName,_target,_isCall]] call ExileClient_system_network_send;
	} else {
		if(_isCall) then {
			_params remoteExecCall [_functionName, _target];
		} else {
			_params remoteExec [_functionName, _target];
		};
	};
};

AR_RemoteExecServer = {
	params ["_params","_functionName",["_isCall",false]];
	if(!isNil "ExileClient_system_network_send") then {
		["AdvancedRappellingRemoteExecServer",[_params,_functionName,_isCall]] call ExileClient_system_network_send;
	} else {
		if(_isCall) then {
			_params remoteExecCall [_functionName, 2];
		} else {
			_params remoteExec [_functionName, 2];
		};
	};
};

if(isServer) then {
	
	// Adds support for exile network calls (Only used when running exile) //
	
	AR_SUPPORTED_REMOTEEXECSERVER_FUNCTIONS = ["AR_Hide_Object_Global","AR_Enable_Rappelling_Animation","AR_Rappel_From_Heli","AR_Play_Rappelling_Sounds_Global"];

	ExileServer_AdvancedRappelling_network_AdvancedRappellingRemoteExecServer = {
		params ["_sessionId", "_messageParameters",["_isCall",false]];
		_messageParameters params ["_params","_functionName"];
		if(_functionName in AR_SUPPORTED_REMOTEEXECSERVER_FUNCTIONS) then {
			if(_isCall) then {
				_params call (missionNamespace getVariable [_functionName,{}]);
			} else {
				_params spawn (missionNamespace getVariable [_functionName,{}]);
			};
		};
	};
	
	AR_SUPPORTED_REMOTEEXECCLIENT_FUNCTIONS = ["AR_Client_Rappel_From_Heli","AR_Hint","AR_Rappel_All_Cargo"];
	
	ExileServer_AdvancedRappelling_network_AdvancedRappellingRemoteExecClient = {
		params ["_sessionId", "_messageParameters"];
		_messageParameters params ["_params","_functionName","_target",["_isCall",false]];
		if(_functionName in AR_SUPPORTED_REMOTEEXECCLIENT_FUNCTIONS) then {
			if(_isCall) then {
				_params remoteExecCall [_functionName, _target];
			} else {
				_params remoteExec [_functionName, _target];
			};
		};
	};
	
};

diag_log "Advanced Rappelling Loaded";

};

publicVariable "AR_Advanced_Rappelling_Install";

[] call AR_Advanced_Rappelling_Install;
// Install Advanced Rappelling on all clients (plus JIP) //
remoteExecCall ["AR_Advanced_Rappelling_Install", -2,true];

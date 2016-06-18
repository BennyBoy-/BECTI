// CSM here
/*
* The angle that looks down from the top of the triangle is fixed. 
* To adjust this angle you must change the -0.8 and anywhere tan(degrees)
* is referenced.
*
*/
CTI_UI_ConstructionKeyHandler_ConstructionCamera = {
	private ["_alt", "_control", "_key", "_shift"];
	
	_key = _this select 1;
	_shift = _this select 2;
	_control = _this select 3;
	_alt = _this select 4;
	
	_MAXDis = CTI_BASE_CONSTRUCTION_RANGE;
	_MAXHis = CTI_CONSTRUCTIONCAM_ZOOM_MAX;
	_maxDistance = (sqrt ((_MAXDis*_MAXDis) + (_MAXHis * _MAXHis))) + 1;
	
	_objRotation = CTI_ConstructionCam_Rotation;
	
	_speed = .75;
	_twopi = pi*2;
	_newPos = [0,0,0];
	_rotation = pi/24; // 15 deg of rotation 
	
	switch (true) do {
		case (_key in (actionKeys "TurnRight")): {
			_deg = deg CTI_ConstructionCam_Theta;
			_pos = getPos CTI_ConstructionCamera;

			_Z = _pos select 2;
			_A = _Z / (tan 82);
			_cos = cos _deg;
			_sin = sin _deg;
			_newPos set [0, (_pos select 0) + ((_A * _speed) * _cos)];
			_newPos set [1, (_pos select 1) + ((_A * _speed) * _sin)];
			_newPos set [2, (_pos select 2)];
			
			if !(((getPos CTI_ConstructionCam_HQ) distance _newPos) > (_maxDistance)) then {
				CTI_ConstructionCamera setPos _newPos;
			};
		};
		case (_key in (actionKeys "TurnLeft")): {
			_deg = deg CTI_ConstructionCam_Theta;
			_pos = getPos CTI_ConstructionCamera;
			
			_Z = _pos select 2;
			_A = _Z / (tan 82);
			_cos = cos _deg;
			_sin = sin _deg;
			_newPos set [0, (_pos select 0) - ((_A * _speed) * _cos)];
			_newPos set [1, (_pos select 1) - ((_A * _speed) * _sin)];
			_newPos set [2, (_pos select 2)];
			
			if !(((getPos CTI_ConstructionCam_HQ) distance _newPos) > (_maxDistance) ) then {
				CTI_ConstructionCamera setPos _newPos;
			};
		};
		case (_key in (actionKeys "MoveForward")): {
			_deg = deg (CTI_ConstructionCam_Theta + (pi/2));
			_pos = getPos CTI_ConstructionCamera;

			_Z = _pos select 2;
			_A = _Z / (tan 82);
			_cos = cos _deg;
			_sin = sin _deg;
			_newPos set [0, (_pos select 0) + ((_A * _speed) *  _cos)];
			_newPos set [1, (_pos select 1) + ((_A * _speed) * _sin)];
			_newPos set [2, (_pos select 2)];
			if !(((getPos CTI_ConstructionCam_HQ) distance _newPos) > (_maxDistance) ) then {
				CTI_ConstructionCamera setPos _newPos;
			};
		};
		case (_key in (actionKeys "MoveBack")): {
			_deg = deg (CTI_ConstructionCam_Theta - (pi/2));
			_pos = getPos CTI_ConstructionCamera;
			
			_Z = _pos select 2;
			_A = _Z / (tan 82);
			_cos = cos _deg;
			_sin = sin _deg;
			_newPos set [0, (_pos select 0) + ((_A * _speed) * _cos)];
			_newPos set [1, (_pos select 1) + ((_A * _speed) * _sin)];
			_newPos set [2, (_pos select 2)];
			if !(((getPos CTI_ConstructionCam_HQ) distance _newPos) > (_maxDistance) ) then {
				CTI_ConstructionCamera setPos _newPos;
			};
		};
		// Rotate camera Left case
		case (_key in (actionKeys "LeanLeft")) : {
		
			_pos = getPos CTI_ConstructionCamera;
			_dirVector = vectorDir CTI_ConstructionCamera;
			_downwardAngle = _dirVector select 2;
			_theta = CTI_ConstructionCam_Theta;
			_theta = _theta + _rotation;
			_tanZ = 0; // Downward angle of the camera... this is because of bistery
			_MAXHis = CTI_CONSTRUCTIONCAM_ZOOM_MAX;
			_BADZ = -0.4;
			_cameraZ = _pos select 2; // height above ground
			
			// Ensure theta stays between 2pi and 0
			if (_theta > _twopi) then { _theta = _theta - _twopi; };
			
			// Get distance from center of rotation
			_A = _cameraZ / (tan 82);
			
			// Set camera pos from center of rotation circle
			_deg = deg _theta;
			_cos = cos _deg;
			_sin = sin _deg;
			_newPos set [0, (_pos select 0) + (_A * _cos)];
			_newPos set [1, (_pos select 1) + (_A * _sin)];
			_newPos set [2, _cameraZ];
			
			// Camera angle will always need be computed and modified because bistery?
			//IF downward angle is greater then ~~|-0.4733| the angle will bug out on rotation
			_tanZ = (_cameraZ / _MAXHis) * -0.8;
			if (_tanZ < _BADZ) then {
				//_tempFz = (_angleAcceleration * (_tanZ - _BADZ)) * (_angleAcceleration * (_tanZ - _BADZ)); // No power function?!
				_tempFz = (_tanZ - _BADZ) - 0.01;
				_tanZ = _tanZ + _tempFz;
			};
			
			// Two different rotation styles, you are either within distance or not
			if !( ((getPos CTI_ConstructionCam_HQ) distance _newPos) > (_maxDistance) ) then {
				// Set view direction to view center of rotation circle
				_viewTheta = _deg + 90;
				_cosView = cos _viewTheta;
				_sinView = sin _viewTheta;
				
				CTI_ConstructionCamera setPos _newPos; // set camera over ground
				CTI_ConstructionCamera setVectorDirAndUp [[_cosView, _sinView, _tanZ],[0,0,1]]; // set camera 
			} else {
				// Rotate camera over its own position if against the maximum build area
				_viewTheta = _deg + 90;
				_cosView = cos _viewTheta;
				_sinView = sin _viewTheta;
				CTI_ConstructionCamera setVectorDirAndUp [[_cosView, _sinView, _tanZ],[0,0,1]];
			};
			CTI_ConstructionCam_Theta = _theta;
		};
		// Rotate camera
		case (_key in actionKeys "LeanRight") : {
			
			_pos = getPos CTI_ConstructionCamera;
			_theta = CTI_ConstructionCam_Theta;
			_theta = _theta - _rotation;
			_MAXHis = CTI_CONSTRUCTIONCAM_ZOOM_MAX;
			_tanZ = 0; // Downward angle of the camera... this is because of bistery
			_MAXHis = CTI_CONSTRUCTIONCAM_ZOOM_MAX;
			_BADZ = -0.4;
			_cameraZ = _pos select 2; // height above ground
			
			// Ensure theta stays between 2pi and 0
			if (_theta > _twopi) then { _theta = _theta - _twopi; };
			
			// Get distance from center of rotation
			_A = _cameraZ / (tan 82);
			
			// Set camera pos from center of circle
			_deg = deg _theta;
			_cos = cos _deg;
			_sin = sin _deg;
			_newPos set [0, (_pos select 0) - (_A * _cos)];
			_newPos set [1, (_pos select 1) - (_A * _sin)];
			_newPos set [2, _cameraZ];
			
			// Camera angle will always need be computed and modified because bistery?
			//IF downward angle is greater then ~~|-0.4733| the angle will bug out on rotation
			_tanZ = (_cameraZ / _MAXHis) * -0.8;
			if (_tanZ < _BADZ) then {
				//_tempFz = (_angleAcceleration * (_tanZ - _BADZ)) * (_angleAcceleration * (_tanZ - _BADZ)); // No power function?!
				_tempFz = (_tanZ - _BADZ) - 0.01;
				_tanZ = _tanZ + _tempFz;
			};
			
			// Two different rotation styles, you are either within distance or not
			if !(((getPos CTI_ConstructionCam_HQ) distance _newPos) > (_maxDistance) ) then {
				// Set view direction to view center of rotation circle
				_viewTheta = _deg + 90;
				_cosView = cos _viewTheta;
				_sinView = sin _viewTheta;
				CTI_ConstructionCamera setPos _newPos;				
				CTI_ConstructionCamera setVectorDirAndUp [[_cosView, _sinView, _tanZ],[0,0,1]];
				
			} else {
				// Rotate camera over its own position if against the maximum build area
				_viewTheta = _deg + 90;
				_cosView = cos _viewTheta;
				_sinView = sin _viewTheta;
				CTI_ConstructionCamera setVectorDirAndUp [[_cosView, _sinView, _tanZ],[0,0,1]];
			};
			CTI_ConstructionCam_Theta = _theta;
		};
		case (_key in actionKeys "nightVision") : {
			_mode = (uiNamespace getVariable "cti_dialog_ui_constructioncam_viewmode") + 1;
			if (_mode > 1) then { _mode = 0 };
			uiNamespace setVariable ["cti_dialog_ui_constructioncam_viewmode", _mode];
			switch (_mode) do { 
				case 1: {_mode = "NVG"; camUseNVG true}; 
				default {_mode = "Normal"; camUseNVG false};
			};
			((uiNamespace getVariable "cti_dialog_ui_constructioncam") displayCtrl 600013) ctrlSetText _mode;
		};
		case (_key in actionKeys "User1"): {
			_rotate = switch (true) do { case (_shift): {45}; case (_control): {1};	default {5} };
			_objRotation = _objRotation - _rotate;
			if (_objRotation < -180) then {_objRotation = _objRotation + 360;};
			// Move slider if keys moved slider.
			((uiNamespace getVariable "cti_dialog_ui_constructioncam") displayCtrl 600014) sliderSetPosition _objRotation;
			CTI_ConstructionCam_Rotation = _objRotation;
		};
		case (_key in actionKeys "User2"): {
			_rotate = switch (true) do { case (_shift): {45}; case (_control): {1};	default {5} };
			_objRotation = _objRotation + _rotate;
			if (_objRotation > 180) then {_objRotation = _objRotation - 360;};
			// Move slider if keys moved slider.
			((uiNamespace getVariable "cti_dialog_ui_constructioncam") displayCtrl 600014) sliderSetPosition _objRotation;
			CTI_ConstructionCam_Rotation = _objRotation;
		};
		case (_key in actionKeys "User3"): {
			// Move slider if keys moved slider.
			((uiNamespace getVariable "cti_dialog_ui_constructioncam") displayCtrl 600014) sliderSetPosition 0;
			CTI_ConstructionCam_Rotation = 0;
		};
	}; 
};

//--- Change the zoom level of the satelitte camera <-- Credit to this guy
CTI_UI_ConstructionKeyHandler_ConstructionCamera_MouseZChanged = {
	_change = _this select 1;
	_tanZ = 0;
	_MAXDis = CTI_BASE_CONSTRUCTION_RANGE;
	_MAXHis = CTI_CONSTRUCTIONCAM_ZOOM_MAX;
	_MINHis = CTI_CONSTRUCTIONCAM_ZOOM_MIN;
	_maxDistance = (sqrt ((_MAXDis*_MAXDis) + (_MAXHis * _MAXHis)));
	
	_pos = getPos CTI_ConstructionCamera;
	_level = _pos select 2;
	
	_change = if (_change > 0) then { _level - (_level * 0.2) } else { _level + (_level * 0.2) };
	// Check to ensure change is within set bounds
	if (_change > _MAXHis) then { _change = _MAXHis };
	if (_change < _MINHis) then { _change = _MINHis };


	_pos set [2, _change];
	// Check if within safe distance to not get stuck out of range and a change was made.
	if ((_change != _level) && (((getPos CTI_ConstructionCam_HQ) distance _pos) < (_maxDistance))) then {
		// Set xy and z
		CTI_ConstructionCamera setPos _pos;

		// Set the downward angle Z of the camera.
		_dirVector = vectorDir CTI_ConstructionCamera;
		_tanZ = ((_pos select 2) / _MAXHis) * -0.8;
		_dirVector set [2, _tanZ];
		CTI_ConstructionCamera setVectorDirAndUp [_dirVector, (vectorUp CTI_ConstructionCamera)];
	};
};

//--- The mouse is in a "down" state
CTI_UI_ConstructionKeyHandler_ConstructionCamera_MouseButtonDown = {
	_button = _this select 1;
	_coord_x = _this select 2;
	_coord_y = _this select 3;
	
	switch (_button) do {
		case 0: { //--- Left clicked
			CTI_VAR_StructurePlaced = CTI_P_PreBuilding_SafePlace;
		};
		case 1: { //--- Right clicked 
			CTI_ConstructionCam_BuildingID = CTI_ConstructionCam_BuildingID + 1;
		};
		
	};
};

//--- The mouse is in a "up" state
CTI_UI_ConstructionKeyHandler_ConstructionCamera_MouseButtonUp = {
	_button = _this select 1;
	
	if (_button == 0) then { //--- Left clicked
	};
	if (_button == 1) then { //--- Right clicked
	};
};

//--- The mouse is being moved
CTI_UI_ConstructionKeyHandler_ConstructionCamera_MouseMoving = {
	_screenToWorld = screenToWorld [_this select 1, _this select 2];
	if ((_screenToWorld distance (getPos CTI_ConstructionCam_HQ)) <= CTI_BASE_CONSTRUCTION_RANGE) then {
		CTI_ConstructionCam_MouseLoc set [0, _screenToWorld select 0];
		CTI_ConstructionCam_MouseLoc set [1, _screenToWorld select 1];
		CTI_ConstructionCam_MouseLoc set [2, getTerrainHeightASL _screenToWorld];
	};

};

// End csm
// 
// _camera_shot= [position_1_name, position_2_name, target_name, duration, zoom_level1, zoom_level_2, attached, x_rel_coord, y_rel_coord, z_rel_coord] execVM "camera_work.sqf";
/* 
example
_firsthot = [cam1, cam2, target1, 8, 1, 0.3, false,0,0,0] execVM "camera_work.sqf";
waitUntil {scriptDone _firsthot};

_secondshot = [cam3, cam3, target2, 5, 0.3, 0.3, false,0,0,0] execVM "camera_work.sqf";
waitUntil {scriptDone _secondshot};

_thirdshot = [cam4, cam4, target3, 5, 1, 1, true, 0,-6,3] execVM "camera_work.sqf";
waitUntil {scriptDone _thirdshot};
*/


_campos1= _this select 0;
_campos2= _this select 1;
_targetcam = _this select 2;
_camera_duration = _this select 3;
_zoom_level1 = _this select 4;
_zoom_level2 = _this select 5;
_cam_attached = _this select 6;
_x_coord = _this select 7;
_y_coord = _this select 8;
_z_coord = _this select 9;

// to do exception management
// if ((isNull _campos1)or(isNull _campos2)or(isNull _targetcam)) then exitWith {};
// to do camera effects, transition effect and post-processing ?


// ----------------------
_dist = 1000 + random 100;
_dir = random 360;
_campos1_random = [(getPos _campos1 select 0) + (sin _dir) * _dist, (getPos _campos1 select 1) + (cos _dir) * _dist, 1000];

if (_cam_attached) then {
	_camera = "camera" camCreate (getpos _campos1);
			showCinemaBorder true;
	_camera attachTo [_campos2, [_x_coord,_y_coord,_z_coord]];		
	_camera cameraEffect ["internal", "BACK"];
	_camera camCommand "inertia on";
	_camera camPrepareTarget _targetcam;
	_camera camPrepareFOV _zoom_level1;
	_camera camCommitPrepared _camera_duration;

	sleep _camera_duration;

	_camera cameraeffect ["terminate", "back"];
	camDestroy _camera;
} else {

// initial/start position where camera is created
_camera = "camera" camCreate (_campos1_random);
		showCinemaBorder true;
_camera cameraEffect ["internal", "BACK"];
_camera camCommand "inertia on";
_camera camPrepareTarget _targetcam;
_camera camPrepareFOV _zoom_level1;
_camera camCommitPrepared 0;

// poz 2 - where camera is moving next - target2
_camera camPreparePos (getpos _campos2);
_camera camPrepareTarget _targetcam;
_camera camPrepareFOV _zoom_level2;
_camera camCommitPrepared _camera_duration;

sleep _camera_duration;

_camera cameraeffect ["terminate", "back"];
camDestroy _camera;
};
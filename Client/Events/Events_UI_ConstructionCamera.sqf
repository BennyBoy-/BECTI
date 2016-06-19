// Construction Camera

private ["_action"];
_action = _this select 0;

switch (_action) do {
	case "onLoad": {
		execVM "Client\GUI\GUI_ConstructionCamera.sqf";
		if !(alive player) exitWith {closeDialog 0};
		
		CTI_ConstructionCam_BuildingID = -1;
		CTI_ConstructionCam_MouseLoc = [0,0,0];
		CTI_ConstructionCam_Theta = 0;
		CTI_ConstructionCam_Rotation = 0;
		CTI_P_WallsAutoAlign = true;
		CTI_ConstructionCam_DownwardAngle = -0.222222;
		
		CTI_ConstructionCam_HQ = (side player) call CTI_CO_FNC_GetSideHQ;
		
		if (isNil 'CTI_P_WallsAutoAlign') then { CTI_P_WallsAutoAlign = true };
		if (CTI_P_WallsAutoAlign) then { ctrlSetText [600005, "Auto-Align Walls: On"] } else { ctrlSetText [600005, "Auto-Align Walls: Off"] };
		_def_count=count (units ((CTI_P_SideLogic getVariable ["cti_defensive_team",grpNull])));
		if (CTI_P_DefensesAutoManning) then { ctrlSetText [600006, format ["Auto-Manning: On (%2/ %3)",ctrlText ((uiNamespace getVariable "cti_dialog_ui_constructioncam") displayCtrl 600006),_def_count,CTI_BASE_DEFENSES_AUTO_LIMIT ]] } else { ctrlSetText [600006,ctrlSetText [600006, format ["Auto-Manning: Off (%2/ %3)",ctrlText ((uiNamespace getVariable "cti_dialog_ui_constructioncam") displayCtrl 600006),_def_count,CTI_BASE_DEFENSES_AUTO_LIMIT ]] ] };
		if ((missionnamespace getVariable "CTI_BASEBUILDING") < 1) then {
			((uiNamespace getVariable "cti_dialog_ui_constructioncam") displayCtrl 100005) ctrlSetText format ["Add Worker ($%1)", CTI_BASE_WORKERS_PRICE];
			((uiNamespace getVariable "cti_dialog_ui_constructioncam") displayCtrl 100009) ctrlshow true;
			((uiNamespace getVariable "cti_dialog_ui_constructioncam") displayCtrl 100005) ctrlshow true;
		} else {
			((uiNamespace getVariable "cti_dialog_ui_constructioncam") displayCtrl 100009) ctrlshow false;
			((uiNamespace getVariable "cti_dialog_ui_constructioncam") displayCtrl 100005) ctrlshow false;

		};
		if (isNil {uiNamespace getVariable "cti_dialog_ui_constructioncam_showmap"}) then {uiNamespace setVariable ["cti_dialog_ui_constructioncam_showmap", true]};
		if (uiNamespace getVariable "cti_dialog_ui_constructioncam_showmap") then {
			((uiNamespace getVariable "cti_dialog_ui_constructioncam") displayCtrl 600018) ctrlSetText "Hide Map";
		} else {
			((uiNamespace getVariable "cti_dialog_ui_constructioncam") displayCtrl 600018) ctrlSetText "Show Map";
			{((uiNamespace getVariable "cti_dialog_ui_constructioncam") displayCtrl _x) ctrlShow false} forEach [600019, 600020];
		};
		
		//--- Structures
		{
			_var = missionNamespace getVariable _x;
			if (call (_var select 6)) then { //--- If the item's condition is met, we can append it to the listbox
				_row = ((uiNamespace getVariable "cti_dialog_ui_constructioncam") displayCtrl 600009) lnbAddRow [format ["S%1", _var select 2], (_var select 0) select 1];
				((uiNamespace getVariable "cti_dialog_ui_constructioncam") displayCtrl 600009) lnbSetData [[_row, 0], _x];
			};
		} forEach (missionNamespace getVariable format ["CTI_%1_STRUCTURES", CTI_P_SideJoined]);
		
		{
			_var = missionNamespace getVariable _x;

			_condition = {true};
			{if (_x select 0 == "Condition") exitWith {_condition = _x select 1}} forEach (_var select 5);

			if (call _condition) then {
				_row = ((uiNamespace getVariable "cti_dialog_ui_constructioncam") displayCtrl 600015) lnbAddRow [format ["$%1", _var select 2], _var select 0];
				((uiNamespace getVariable "cti_dialog_ui_constructioncam") displayCtrl 600015) lnbSetData [[_row, 0], _x];
			};
		} forEach (missionNamespace getVariable format ["CTI_%1_DEFENSES", CTI_P_SideJoined]);
		
		_pos = getPos CTI_ConstructionCam_HQ;
		_pos set [2, 15];
		showCinemaBorder false;
		CTI_ConstructionCamera = "camera" camCreate _pos;
		CTI_ConstructionCamera camSetFov 1.1;
		_deg = (deg CTI_ConstructionCam_Theta) + 90;
		//_deg =_deg;
		_cos = cos _deg;
		_sin = sin _deg;
		CTI_ConstructionCamera setVectorDirAndUp [[_cos,_sin,-0.222222],[0,0,1]];


		(uiNamespace getVariable "cti_dialog_ui_constructioncam") displayAddEventHandler ["KeyDown", "nullReturn = _this spawn CTI_UI_ConstructionKeyHandler_ConstructionCamera"];
		((uiNamespace getVariable "cti_dialog_ui_constructioncam") displayCtrl 600001) ctrlAddEventHandler ["MouseButtonDown", "nullReturn = _this call CTI_UI_ConstructionKeyHandler_ConstructionCamera_MouseButtonDown"];
		((uiNamespace getVariable "cti_dialog_ui_constructioncam") displayCtrl 600001) ctrlAddEventHandler ["MouseButtonUp", "nullReturn = _this call CTI_UI_ConstructionKeyHandler_ConstructionCamera_MouseButtonUp"];
		((uiNamespace getVariable "cti_dialog_ui_constructioncam") displayCtrl 600001) ctrlAddEventHandler ["MouseZChanged", "nullReturn = _this call CTI_UI_ConstructionKeyHandler_ConstructionCamera_MouseZChanged"];
		((uiNamespace getVariable "cti_dialog_ui_constructioncam") displayCtrl 600001) ctrlAddEventHandler ["MouseMoving", "nullReturn = _this call CTI_UI_ConstructionKeyHandler_ConstructionCamera_MouseMoving"]; 
		((uiNamespace getVariable "cti_dialog_ui_constructioncam") displayCtrl 600001) ctrlAddEventHandler ["MouseHolding", "nullReturn = _this call CTI_UI_ConstructionKeyHandler_ConstructionCamera_MouseMoving"];


		ctrlSetFocus ((uiNamespace getVariable "cti_dialog_ui_constructioncam") displayCtrl 600001);
		
		((uiNamespace getVariable "cti_dialog_ui_constructioncam") displayCtrl 600014) sliderSetRange [-180, 180];
		((uiNamespace getVariable "cti_dialog_ui_constructioncam") displayCtrl 600014) sliderSetPosition CTI_ConstructionCam_Rotation;
		
		if (isNil {uiNamespace getVariable "cti_dialog_ui_constructioncam_viewmode"}) then {uiNamespace setVariable ["cti_dialog_ui_constructioncam_viewmode", 0]};
		_mode = "Normal";
		switch (uiNamespace getVariable "cti_dialog_ui_constructioncam_viewmode") do { case 1: {_mode = "NVG"; camUseNVG true }; };
		((uiNamespace getVariable "cti_dialog_ui_constructioncam") displayCtrl 600013) ctrlSetText _mode;
		
		CTI_ConstructionCamera cameraEffect ["Internal", "back"];
		

		if (profileNamespace getVariable "CTI_PERSISTENT_HINTS") then 
		{ 
			player groupChat format ["Construction:"]; 
			player groupChat format ["W,A,S,D :Move Around,"]; 
			player groupChat format ["LeanLeft,LeanRight :Rotate Left / Right,"]; 
			player groupChat format ["Left Click :Build Selected Building,"]; 
			player groupChat format ["Right Click :Cancel Building Selection,"]; 
			player groupChat format ["Slider Bar to Rotate Buildings."]; 
		};
		execVM "Client\GUI\GUI_ConstructionCamera.sqf";
	};
	case "onUndoStructure": {
		if !(isNull CTI_P_LastStructurePreBuilt) then {
			deleteVehicle CTI_P_LastStructurePreBuilt;
		};
	};
	case "onUndoDefense": {
		if !(isNull CTI_P_LastDefenseBuilt) then {
			deleteVehicle CTI_P_LastDefenseBuilt;
		};
	};
	case "onAutoAlign": {
		// CTI_P_WallsAutoAlign = if (CTI_P_WallsAutoAlign) then {false} else {true};
		CTI_P_WallsAutoAlign = !CTI_P_WallsAutoAlign;
		if (CTI_P_WallsAutoAlign) then { ctrlSetText [600005, "Auto-Align Walls: On"] } else { ctrlSetText [600005, "Auto-Align Walls: Off"] };
	};
	case "onAutoManning": {
		CTI_P_DefensesAutoManning = !CTI_P_DefensesAutoManning;
		_def_count=count (units ((CTI_P_SideLogic getVariable ["cti_defensive_team",grpNull])));
		if (CTI_P_DefensesAutoManning) then { ctrlSetText [600006, format ["Auto-Manning: On (%2/ %3)",ctrlText ((uiNamespace getVariable "cti_dialog_ui_constructioncam") displayCtrl 600006),_def_count,CTI_BASE_DEFENSES_AUTO_LIMIT ]] } else { ctrlSetText [600006,ctrlSetText [600006, format ["Auto-Manning: Off (%2/ %3)",ctrlText ((uiNamespace getVariable "cti_dialog_ui_constructioncam") displayCtrl 600006),_def_count,CTI_BASE_DEFENSES_AUTO_LIMIT ]] ] };
	};
	case "onAddWorker": {
		//--- Check the worker limit
		_workers = CTI_P_SideLogic getVariable "cti_workers";

		_count = 0;
		{
			switch (typeName _x) do {
				case "STRING": { _count = _count + 1 };
				case "OBJECT": { if (alive _x) then { _count = _count + 1 } };
			};
		} forEach _workers;

		if (_count < CTI_BASE_WORKERS_LIMIT) then {
			_funds = call CTI_CL_FNC_GetPlayerFunds;
			if (_funds >= CTI_BASE_WORKERS_PRICE) then {
				-(CTI_BASE_WORKERS_PRICE) call CTI_CL_FNC_ChangePlayerFunds;
				//CTI_P_SideLogic setVariable ["cti_workers", _workers + [""], true];

				["SERVER", "Request_Worker", [CTI_P_SideJoined]] call CTI_CO_FNC_NetSend;
			} else {
				hint "not enough funds dude";
			};
		} else {
			hint "worker limit reached";
		};
	};
	case "onBuildDefense": {
		_selected = _this select 1;
		CTI_ConstructionCam_BuildingID = CTI_ConstructionCam_BuildingID + 1;
		

		if (typeName _selected == "SCALAR") then {
			_selected = lnbData[600015, [_selected, 0]];
		};
		_var = missionNamespace getVariable _selected;
		_funds = call CTI_CL_FNC_GetPlayerFunds;

		if (_funds >= (_var select 2)) then { //--- Check if we have enough funds to go in the construction mode.
			CTI_VAR_StructurePlaced = false;
			[_selected, CTI_P_SideJoined call CTI_CO_FNC_GetSideHQ, CTI_BASE_CONSTRUCTION_RANGE] spawn CTI_CL_FNC_ConstructionCam_PlacingDefense;
		} else {
			player groupChat format ["HQ: Insufficient Funds: %1", _funds];
		};
	};
	case "onBuildStructure": {
		_selected = _this select 1;
		
		if (_selected != -1) then {
			_selected = lnbData[600009, [_selected, 0]];
			
			_var = missionNamespace getVariable _selected;
			_supply = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideSupply;
			
			//--- Check if we're dealing with HQ mobilize or a normal structure
			
			if (_supply >= (_var select 2)) then { //--- Check if we have enough supply to go in the construction mode.
				
				
				if (((_var select 0) select 0) != CTI_HQ_MOBILIZE) then {
					CTI_VAR_StructurePlaced = false;
					[_selected, CTI_P_SideJoined call CTI_CO_FNC_GetSideHQ, CTI_BASE_CONSTRUCTION_RANGE] spawn CTI_CL_FNC_ConstructionCam_PlacingBuilding;
				} else {
					//--- HQ Mobilize
					if ((CTI_P_SideJoined) call CTI_CO_FNC_IsHQDeployed) then {
						_hq = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideHQ;
						["SERVER", "Request_HQToggle", [_selected, CTI_P_SideJoined, position _hq, direction _hq]] call CTI_CO_FNC_NetSend;
					};
				};
			} else {
				hint parseText "<t size='1.3' color='#2394ef'>Information</t><br /><br />You do not have enough supply to place that structure.";
			};
		};
	};
	case "onViewModeChanged": {
		_mode = (uiNamespace getVariable "cti_dialog_ui_constructioncam_viewmode") + 1;
		if (_mode > 1) then { _mode = 0 };
		uiNamespace setVariable ["cti_dialog_ui_constructioncam_viewmode", _mode];
		switch (_mode) do { 
			case 1: {_mode = "NVG"; camUseNVG true}; 
			default {_mode = "Normal"; camUseNVG false};
		};
		((uiNamespace getVariable "cti_dialog_ui_constructioncam") displayCtrl 600013) ctrlSetText _mode;
	};
	case "onCancelSelected" : {
		CTI_ConstructionCam_BuildingID = CTI_ConstructionCam_BuildingID + 1;
	};
	case "onViewSliderChanged": {
		_changeto = round(_this select 1);
		CTI_ConstructionCam_Rotation = _changeto;
	};
	case "onToggleMap": {
		_changeto = !(uiNamespace getVariable "cti_dialog_ui_constructioncam_showmap");
		uiNamespace setVariable ["cti_dialog_ui_constructioncam_showmap", _changeTo];
		
		if (_changeto) then {
			((uiNamespace getVariable "cti_dialog_ui_constructioncam") displayCtrl 600018) ctrlSetText "Hide Map";
			{((uiNamespace getVariable "cti_dialog_ui_constructioncam") displayCtrl _x) ctrlShow true} forEach [600019, 600020];
		} else {
			((uiNamespace getVariable "cti_dialog_ui_constructioncam") displayCtrl 600018) ctrlSetText "Show Map";
			{((uiNamespace getVariable "cti_dialog_ui_constructioncam") displayCtrl _x) ctrlShow false} forEach [600019, 600020];
		};
	};
	case "onUnload": {
		CTI_ConstructionCam_BuildingID = -1;
		CTI_ConstructionCamera cameraEffect["TERMINATE","BACK"];
		camDestroy CTI_ConstructionCamera;
		showCinemaBorder true;
	};
};
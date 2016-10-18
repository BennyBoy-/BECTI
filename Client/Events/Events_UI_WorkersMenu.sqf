private ["_action"];
_action = _this select 0;

switch (_action) do {
	case "onLoad": {
		_workers = CTI_P_SideLogic getVariable "cti_workers";
		uiNamespace setVariable ["cti_dialog_ui_workersmenu_workers", _workers];
		uiNamespace setVariable ["cti_dialog_ui_workersmenu_sellmode", 0];
		
		{
			if (typeName _x == "OBJECT") then {
				((uiNamespace getVariable "cti_dialog_ui_workersmenu") displayCtrl 260002) lnbAddRow [format["%1", mapGridPosition _x], format["Worker %1",_forEachIndex+1]];
				((uiNamespace getVariable "cti_dialog_ui_workersmenu") displayCtrl 260002) lnbSetValue [[_forEachIndex,0], _forEachIndex];
			};
		} forEach _workers;
	};
	case "onWorkersListLBSelChanged": {
		_selected = _this select 1;
		
		_selected = lnbValue [260002, [_selected, 0]];
		_worker = (uiNamespace getVariable "cti_dialog_ui_workersmenu_workers") select _selected;
		
		//--- Focus the minimap on the worker
		if (alive _worker) then {
			ctrlMapAnimClear ((uiNamespace getVariable "cti_dialog_ui_workersmenu") displayCtrl 260001);
			((uiNamespace getVariable "cti_dialog_ui_workersmenu") displayCtrl 260001) ctrlMapAnimAdd [.65, .2, getPos _worker];
			ctrlMapAnimCommit ((uiNamespace getVariable "cti_dialog_ui_workersmenu") displayCtrl 260001);
		};
	};
	case "onWorkerDisbandPressed": {
		_selected = _this select 1;
		
		if (_selected > -1) then { //--- Disband and delete the entry
			_selected = lnbValue [260002, [_selected, 0]];
			_worker = (uiNamespace getVariable "cti_dialog_ui_workersmenu_workers") select _selected;
			_worker setDammage 1;
			((uiNamespace getVariable "cti_dialog_ui_workersmenu") displayCtrl 260002) lnbDeleteRow _selected;
		};
	};
	case "onStructureSellPressed": {
		uiNamespace setVariable ["cti_dialog_ui_workersmenu_sellmode", 1];
	};
	case "onMapButtonDown": {
		_event = _this select 1;
		_button = _event select 1;
		_mx = _event select 2;
		_my = _event select 3;
		
		if (_button == 0 && (uiNamespace getVariable "cti_dialog_ui_workersmenu_sellmode") == 1) then {
			_structures = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideStructures;
			_mappos = ((uiNamespace getVariable "cti_dialog_ui_workersmenu") displayCtrl 260001) ctrlMapScreenToWorld [_mx, _my];
			_nearest = [_mappos, _structures] call CTI_CO_FNC_GetClosestEntity;
			
			//--- Add FOBs if available.
			_fobr = objNull;
			if (CTI_BASE_FOB_MAX > 0) then {
				_fob = [_mappos, (CTI_P_SideLogic getVariable ["cti_fobs", []])] call CTI_CO_FNC_GetClosestEntity;
				if (alive _fob && ((_fob distance _mappos) < (_nearest distance _mappos))) then {_fobr = _fob};
			};
			
			//--- Deal with a structure
			if (_nearest distance _mappos < 500 && isNull _fobr) then {
				if (isNil {_nearest getVariable "cti_sell"}) then {
					//--- Commander Refund
					if (!isNil {_nearest getVariable "cti_structure_type"} && isNil{_nearest getVariable "cti_sell"}) then {
						_nearest setVariable ["cti_sell", true, true];
						_var = missionNamespace getVariable format ["CTI_%1_%2", CTI_P_SideJoined, _nearest getVariable "cti_structure_type"];
						
						_label = ((_var select 0) select 1);
						_refund = round((_var select 2) * CTI_BASE_CONSTRUCTION_REFUNDS);
						_coords = mapGridPosition _nearest;
						[CTI_P_SideJoined, _refund] call CTI_CO_FNC_ChangeSideSupply;
						
						["structure-sold", [_label, _coords]] remoteExec ["CTI_PVF_CLT_OnMessageReceived", CTI_P_SideJoined];
						["structure-sold-refund", [_refund, _label]] call CTI_CL_FNC_DisplayMessage;
					};
					
					_nearest setDammage 1;
				};
			};
			
			//--- Deal with a FOB
			if !(isNull _fobr) then {
				CTI_P_SideLogic setVariable ["cti_fobs", (CTI_P_SideLogic getVariable "cti_fobs") - [_fobr, objNull], true];
				_coords = mapGridPosition _fobr;
				deleteVehicle _fobr;
				
				["fob-sold", _coords] remoteExec ["CTI_PVF_CLT_OnMessageReceived", CTI_P_SideJoined];
			};
			
			uiNamespace setVariable ["cti_dialog_ui_workersmenu_sellmode", 0];
		};
	};
};
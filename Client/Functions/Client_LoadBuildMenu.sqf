//--- Clear Existing Items
lnbClear 600009;

//--- Load Structures
{
	_var = missionNamespace getVariable _x;
	if (call (_var select 6)) then { //--- If the item's condition is met, we can append it to the listbox
		_row = ((uiNamespace getVariable "cti_dialog_ui_constructioncam") displayCtrl 600009) lnbAddRow [format ["S%1", _var select 2], (_var select 0) select 1];
		((uiNamespace getVariable "cti_dialog_ui_constructioncam") displayCtrl 600009) lnbSetData [[_row, 0], _x];
	};
} forEach (missionNamespace getVariable format ["CTI_%1_STRUCTURES", CTI_P_SideJoined]);

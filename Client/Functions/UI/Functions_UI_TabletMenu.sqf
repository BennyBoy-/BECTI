tablet_hotkeyDIKCodeNumberWin = 0xDB; //Left Windows

//// Key Handlers are added using CBA
["OFPS", "toggle_tablet", ["Toggle Tablet", "Open or Close Tablet"], "", "", [0xDB, [false, true, false]]] call cba_fnc_addKeybind;
_keybindtablet = ["OFPS", "toggle_tablet"] call cba_fnc_getKeybind;
if (!(isNil "_keybindtablet")) then {
	_actualkeytablet = ((_keybindtablet) select 5) select 0;
	tablet_hotkeyDIKCodeNumberWin = _actualkeytablet;
};
publicVariable	"tablet_hotkeyDIKCodeNumberWin";

cm_Tablet_FUNc = {
	_tabopen = if (!IsNull (FindDisplay 777777)) then {true} else {false};
	tabletopen = _tabopen;
	if (tabletopen) then {
		closeDialog 0;
	} else {
		createDialog "CTI_RscTabletDialog";	
	};
};
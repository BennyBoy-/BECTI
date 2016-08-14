waitUntil {vehicle player == player};
waituntil {!isnull (finddisplay 46)};
	
[] spawn {cmKeyPressWin = (findDisplay 46) displayAddEventHandler ["KeyDown","if ((_this select 1) == tablet_hotkeyDIKCodeNumberWin) then {[] call cm_Tablet_FUNc;};"];};
//tabletopen=true;

//KEYBINDS Refresh
_keybindear = ["OFPS", "toggle_earplugs"] call cba_fnc_getKeybind;
if (!(isNil "_keybindear")) then {
	_actualkeyear = ((_keybindear) select 5) select 0;
	cmEarplugs_hotkeyDIKCodeNumber = _actualkeyear;
};
_keybindtablet = ["OFPS", "toggle_tablet"] call cba_fnc_getKeybind;
if (!(isNil "_keybindtablet")) then {
	_actualkeytablet = ((_keybindtablet) select 5) select 0;
	tablet_hotkeyDIKCodeNumberWin = _actualkeytablet;
};
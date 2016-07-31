waitUntil {vehicle player == player};
waituntil {!isnull (finddisplay 46)};

tabletopen=true;	
[] spawn {cmKeyPressWin = (findDisplay 46) displayAddEventHandler ["KeyDown","if ((_this select 1) == tablet_hotkeyDIKCodeNumberWin) then {[] call cm_Tablet_FUNc;};"];};


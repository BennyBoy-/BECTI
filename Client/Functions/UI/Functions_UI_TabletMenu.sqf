tablet_hotkeyDIKCodeNumberWin = 0xDB; //Left Windows
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
cm_Tablet_FUNc = {
	if (tabletopen) then {
		closeDialog 0;
		tabletopen=false;
	} else {
		createDialog "CTI_RscTabletDialog";	
		tabletopen=true;
	};
};

tablet_hotkeyDIKCodeNumberWin = 0xDB; //Left Windows
publicVariable	"tablet_hotkeyDIKCodeNumberWin";

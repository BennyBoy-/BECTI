private ["_action"];
_action = _this select 0;

switch (_action) do {
	case "onLoad": {
		//--- Gear available?
		((uiNamespace getVariable "cti_dialog_ui_tabletmenu") displayCtrl 777101) ctrlEnable (if ((CTI_Base_GearInRange || CTI_Base_GearInRange_Mobile || CTI_Base_GearInRange_FOB || CTI_Base_GearInRange_Depot) && !CTI_P_PreBuilding) then {true} else {false});
		//--- Factory available?
		((uiNamespace getVariable "cti_dialog_ui_tabletmenu") displayCtrl 777102) ctrlEnable (if (!CTI_P_PreBuilding && (CTI_Base_BarracksInRange || CTI_Base_LightInRange || CTI_Base_HeavyInRange || CTI_Base_AirInRange || CTI_Base_AmmoInRange || CTI_Base_RepairInRange || CTI_Base_NavalInRange || CTI_Base_DepotInRange)) then {true} else {false});
		//--- Build available?
		((uiNamespace getVariable "cti_dialog_ui_tabletmenu") displayCtrl 777103) ctrlEnable (if ((call CTI_CL_FNC_IsPlayerCommander && CTI_Base_HQInRange) || CTI_Base_RepairInRange_Mobile) then {true} else {false});
		//--- Halo available?
		_upgrades = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideUpgrades;
		_enable = if (CTI_Base_AirInRange && _upgrades select CTI_UPGRADE_HALO > 0) then {true} else {false};
		((uiNamespace getVariable "cti_dialog_ui_optionsmenu") displayCtrl 777106) ctrlEnable _enable;
		
		execVM "Client\GUI\GUI_TabletMenu.sqf";
		CTI_P_LastRootMenu = "Tablet";
	};
	case "onEquipmentPressed": {
		closeDialog 0;
		createDialog "CTI_RscGearMenu";
	};
	case "onFactoryPressed": {
		closeDialog 0;
		createDialog "CTI_RscPurchaseMenu";
	};
	case "onBuildPressed": {
		closeDialog 0;
		execVM "Client\Actions\Action_TabletCoinBuild.sqf";
	};
	case "onCommandPressed": {
		closeDialog 0;
		createDialog "CTI_RscCommandMenu";
	};
	case "onOptionsPressed": {
		closeDialog 0;
		createDialog "CTI_RscOptionsMenu";
	};
	case "onHaloPressed": {
		closeDialog 0;
		//createDialog "CTI_RscHaloMenu";
	};
};
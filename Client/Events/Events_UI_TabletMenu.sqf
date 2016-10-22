private ["_action","_upgrades","_enable"];
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
		if (time - CTI_HALO_LASTTIME >= CTI_HALO_COOLDOWN) then {
			_upgrades = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideUpgrades;
			_upgrade_halo = _upgrades select CTI_UPGRADE_HALO;
			_enable = if ((CTI_Base_AirInRange && _upgrade_halo > 0) || (CTI_Base_DepotInRange && _upgrade_halo > 1)) then {true} else {false};
			((uiNamespace getVariable "cti_dialog_ui_tabletmenu") displayCtrl 777106) ctrlEnable _enable;
			((uiNamespace getVariable "cti_dialog_ui_tabletmenu") displayCtrl (777106)) ctrlSetTooltip "HALO Jump (1k)";
		}else{
			((uiNamespace getVariable "cti_dialog_ui_tabletmenu") displayCtrl 777106) ctrlEnable false;
			((uiNamespace getVariable "cti_dialog_ui_tabletmenu") displayCtrl (777106)) ctrlSetTooltip format ["HALO Jump (%1s)",floor((CTI_HALO_COOLDOWN-(time - CTI_HALO_LASTTIME)))];
		};
		
		//CommandingMenu
		if !(CTI_Base_ControlCenterInRange) then {
			{((uiNamespace getVariable "cti_dialog_ui_tabletmenu") displayCtrl _x) ctrlEnable false} forEach [780106,780102,780101,780108];
		};
		if !(call CTI_CL_FNC_IsPlayerCommander) then {
			{((uiNamespace getVariable "cti_dialog_ui_tabletmenu") displayCtrl _x) ctrlEnable false} forEach [780106,780102,780103,780107];
		};
		if ((missionNamespace getVariable "CTI_ARTILLERY_SETUP") < 0) then {((uiNamespace getVariable "cti_dialog_ui_tabletmenu") displayCtrl 780108) ctrlEnable false};
		
		execVM "Client\GUI\GUI_TabletMenu.sqf";
		
	};
	case "onServicePressed": {
		closeDialog 0;
		CTI_P_LastRootMenu = "CTI_RscTabletDialog";
		createDialog "CTI_RscServiceMenu";
	};
	case "onTransferPressed": {
		closeDialog 0;
		CTI_P_LastRootMenu = "CTI_RscTabletDialog";
		createDialog "CTI_RscTransferResourcesMenu";
	};
	case "onClosePressed": {
		closeDialog 0;
		CTI_P_LastRootMenu = "CTI_RscTabletDialog";
	};
	case "onHomePressed": {
		closeDialog 0;
		createDialog "CTI_RscTabletDialog";
		CTI_P_LastRootMenu = "CTI_RscTabletDialog";
	};
	case "onBackPressed": {
		closeDialog 0;
		createDialog CTI_P_LastRootMenu;
	};
	//HOMEPAGE ITEMS
	case "onEquipmentPressed": {
		closeDialog 0;
		CTI_P_LastRootMenu = "CTI_RscTabletDialog";
		createDialog "CTI_RscGearMenu";
	};
	case "onFactoryPressed": {
		closeDialog 0;
		CTI_P_LastRootMenu = "CTI_RscTabletDialog";
		createDialog "CTI_RscPurchaseMenu";
	};
	case "onBuildPressed": {
		closeDialog 0;
		CTI_P_LastRootMenu = "CTI_RscTabletDialog";
		execVM "Client\Actions\Action_TabletCoinBuild.sqf";
	};
	case "onCommandPressed": {
		closeDialog 0;
		CTI_P_LastRootMenu = "CTI_RscTabletDialog";
		createDialog "CTI_RscTabletCommandMenu";
	};
	case "onOptionsPressed": {
		closeDialog 0;
		CTI_P_LastRootMenu = "CTI_RscTabletDialog";
		createDialog "CTI_RscTabletDialogOptions";
	};
	case "onHaloPressed": {
		closeDialog 0;
		CTI_P_LastRootMenu = "CTI_RscTabletDialog";
		execVM "Client\Functions\Externals\ATM_airdrop\atm_airdrop.sqf";
	};
	//OPTIONS
	case "onVideoSettingsPressed": {
		closeDialog 0;
		CTI_P_LastRootMenu = "CTI_RscTabletOptions";
		//createDialog "CTI_RscVideoSettingsMenu"; OLD MENU
		[] call CHVD_fnc_openDialog;
	};
	case "onOnlineHelpPressed": {
		closeDialog 0;
		CTI_P_LastRootMenu = "CTI_RscTabletOptions";
		createDialog "CTI_RscOnlineHelpMenu";
	};
	case "onUnflipPressed": { //--- Unflip the nearest vehicle
		_vehicle = vehicle player;
		if (player != _vehicle) then {
			if (speed _vehicle < 5 && getPos _vehicle select 2 < 5) then {
				_vehicle setPos [getPos _vehicle select 0, getPos _vehicle select 1, 1];
				_vehicle setVelocity [0,0,1];
			};
		} else {
			{
				if (speed _x < 5 && getPos _x select 2 < 5) then {
					_x setPos [getPos _x select 0, getPos _x select 1, 1];
					_x setVelocity [0,0,1];
				};
			} forEach (player nearEntities[["Car","Motorcycle","Ship","Tank"],10]);
		};
	};
	case "onAIMicroPressed": {
		closeDialog 0;
		CTI_P_LastRootMenu = "CTI_RscTabletOptions";
		createDialog "CTI_RscAIMicromanagementMenu";
	};
	case "onUnitsCamPressed": {
		if (CTI_Base_ControlCenterInRange) then {
			closeDialog 0;
			CTI_P_LastRootMenu = "CTI_RscTabletOptions";
			createDialog "CTI_RscUnitsCamera";
		};
	};
	case "onSatCamPressed": {
		_upgrades = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideUpgrades;
		if (CTI_Base_ControlCenterInRange && _upgrades select CTI_UPGRADE_SATELLITE > 0) then {
			closeDialog 0;
			CTI_P_LastRootMenu = "CTI_RscTabletOptions";
			createDialog "CTI_RscSatelitteCamera";
		};
	};
	case "onCommanderVotePressed": {
		if (CTI_P_SideLogic getVariable ["cti_votetime", -1] < 0) then { //--- No vote's running
			//--- Request a new vote
			[CTI_P_SideJoined, name player] remoteExec ["CTI_PVF_SRV_RequestCommanderVote", CTI_PV_SERVER];
			
			//--- Don't lock this script
			0 spawn {
				(name player) remoteExec ["CTI_PVF_CLT_OnNewCommanderVote", CTI_P_SideJoined];
				
			
				waitUntil{CTI_P_SideLogic getVariable "cti_votetime" > -1 || !alive player || !dialog};
				
				if (alive player && dialog) then {
					closeDialog 0;
					CTI_P_LastRootMenu = "CTI_RscTabletOptions";
					hint parseText "<t size='1.3' color='#2394ef'>Information</t><br /><br />Commander vote will start in 15 seconds.";
					sleep 15;
					createDialog "CTI_RscVoteMenu";
				};
			};
		} else {
			closeDialog 0;
			CTI_P_LastRootMenu = "CTI_RscTabletOptions";
			createDialog "CTI_RscVoteMenu";
		};
	};
	case "onMusicPressed": { //--- Play some music
		player sidechat "lalalalaaaaaaaaaa lalalalaaaaaaaa laaaa";
	};
	//COMMANDING
	case "onMapPressed": {
		if (CTI_Base_ControlCenterInRange && call CTI_CL_FNC_IsPlayerCommander) then {
			closeDialog 0;
			CTI_P_LastRootMenu = "CTI_RscTabletCommandMenu";
			createDialog "CTI_RscMapCommandMenu";
		};
	};
	case "onTeamsPressed": {
		if (CTI_Base_ControlCenterInRange && call CTI_CL_FNC_IsPlayerCommander) then {
			closeDialog 0;
			CTI_P_LastRootMenu = "CTI_RscTabletCommandMenu";
			createDialog "CTI_RscTeamsMenu";
		};
	};
	case "onUpgradesPressed": {
		if (CTI_Base_ControlCenterInRange) then {
			closeDialog 0;
			CTI_P_LastRootMenu = "CTI_RscTabletCommandMenu";
			createDialog "CTI_RscUpgradeMenu";
		};
	};
	case "onWorkersPressed": {
		if (call CTI_CL_FNC_IsPlayerCommander) then {
			closeDialog 0;
			CTI_P_LastRootMenu = "CTI_RscTabletCommandMenu";
			createDialog "CTI_RscWorkersMenu";
		};
	};
	case "onRequestMenuPressed": {
		closeDialog 0;
		CTI_P_LastRootMenu = "CTI_RscTabletCommandMenu";
		createDialog "CTI_RscRequestMenu";
	};
	case "onArtilleryMenuPressed": {
		if ((missionNamespace getVariable "CTI_ARTILLERY_SETUP") > -1 && CTI_Base_ControlCenterInRange) then {
			closeDialog 0;
			CTI_P_LastRootMenu = "CTI_RscTabletCommandMenu";
			createDialog "CTI_RscArtilleryMenu";
		};
	};
};
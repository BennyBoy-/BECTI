/*
  # HEADER #
	Script: 		Client\Functions\Client_AddMissionActions.sqf
	Alias:			CTI_CL_FNC_AddMissionActions
	Description:	Add the contextual actions from the mission to the player
					Note that this file is called at player init and upon respawn
	Author: 		Benny
	Creation Date:	19-09-2013
	Revision Date:	19-09-2013
	
  # PARAMETERS #
    None
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	call CTI_CL_FNC_AddMissionActions
	
  # EXAMPLE #
    call CTI_CL_FNC_AddMissionActions
*/

//--- Commander related actions
if (call CTI_CL_FNC_IsPlayerCommander) then { 
	player addAction ["<t color='#a5c4ff'>MENU: Construction (HQ)</t>", "Client\Actions\Action_CoinBuild.sqf", "HQ", 93, false, true, "", "_target == player && CTI_Base_HQInRange"];
};

//--- Mixed actions
player addAction ["<t color='#a5c4ff'>MENU: Commanding</t>", "Client\Actions\Action_CommandMenu.sqf", "", 95, false, true, "", "!CTI_P_PreBuilding"];
player addAction ["<t color='#a5c4ff'>MENU: Factory</t>", "Client\Actions\Action_PurchaseMenu.sqf", "", 93, false, true, "", "_target == vehicle player && !CTI_P_PreBuilding && (CTI_Base_BarracksInRange || CTI_Base_LightInRange || CTI_Base_HeavyInRange || CTI_Base_AirInRange || CTI_Base_AmmoInRange || CTI_Base_RepairInRange || CTI_Base_NavalInRange)"];
player addAction ["<t color='#a5c4ff'>MENU: Equipment</t>", "Client\Actions\Action_GearMenu.sqf", "", 93, false, true, "", "(CTI_Base_GearInRange || CTI_Base_GearInRange_Mobile || CTI_Base_GearInRange_FOB) && !CTI_P_PreBuilding"];
player addAction ["<t color='#a5c4ff'>MENU: Options</t>", "Client\Actions\Action_OptionsMenu.sqf", "", 95, false, true, "", "!CTI_P_PreBuilding"];

//--- Skill actions
player addAction ["<t color='#c7a5ff'>SKILL: Lockpick</t>", "Client\Actions\Action_SkillLockpick.sqf", "", 80, false, true, "", "CTI_P_ActionLockPick && time > CTI_P_ActionLockPickNextUse"];
player addAction ["<t color='#c7a5ff'>SKILL: Repair</t>", "Client\Actions\Action_SkillRepair.sqf", "", 80, false, true, "", "CTI_P_ActionRepair && time > CTI_P_ActionRepairNextUse"];
//--- Respawn options.
respawn = 3;
respawnDelay = 3;
respawnDialog = false;

//--- Respawn Revive - Old settings
//respawnTemplates[] = {"Revive"};
//respawnOnStart = -1;
//-- Respawn Revive
ReviveMode = 1;                         //0: disabled, 1: enabled, 2: controlled by player attributes
ReviveUnconsciousStateMode = 1;         //0: basic, 1: advanced, 2: realistic
ReviveRequiredTrait = 0;                //0: none, 1: medic trait is required
ReviveRequiredItems = 0;                //0: none, 1: medkit, 2: medkit or first aid kit
ReviveRequiredItemsFakConsumed = 0;     //0: first aid kit is not consumed upon revive, 1: first aid kit is consumed
ReviveDelay = 6;                        //time needed to revive someone (in secs)
ReviveMedicSpeedMultiplier = 2;         //speed multiplier for revive performed by medic
ReviveForceRespawnDelay = 3;            //time needed to perform force respawn (in secs)
ReviveBleedOutDelay = 120;              //unconscious state duration (in secs)

//--- Require briefing.html to show up.
onLoadMission = "OFPS Benny Warfare";
onLoadMissionTime = false;
onLoadName = "OFPS Benny Warfare";

briefingName = "OFPS Benny Warfare";

//--- ArmA 3 Specifics
dev = "Benny";
author = "Benny";
// overviewPicture

//--- Properties.
class Header {
	gameType = CTI;
	minPlayers = 1;
	maxPlayers = 40;
};

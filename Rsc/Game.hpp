//--- Respawn options.
respawn = 3;
respawnDelay = 3;
respawnDialog = false;

//--- Respawn Revive - Doesn't work ATM, needs Benny's touch!
respawnTemplates[] = {"Revive"};
respawnOnStart = -1;
reviveDelay = 15;
reviveForceRespawnDelay = 3;
reviveBleedOutDelay = 450;

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
	maxPlayers = 32;
};

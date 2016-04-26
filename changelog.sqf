
player createDiarySubject ["TS", "TeamSpeak"];
player createDiaryRecord ["TS",["OFPS","arma.ofps.net"]];

player createDiarySubject ["Dev", "Mission Homepage"];
player createDiaryRecord ["Dev",["Licensing","The mission is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.<br/><br/>
- You are free to edit<br/>
- You are free to redistribute under the same licence<br/>
- You are free to use it on your own public server<br/>
- You NEED to keep the credits<br/>
- You CANNOT use the mission for Commercial Purposes<br/><br/>

Also, you cannot use the mission for monetization purposes.
"]];

 _enemy = switch (CTI_P_SideJoined) do
{
	case west: {east };
	case east: {west };
  default {east};
};

//ss83 Server Rules, comments, etc added here
_pos=[0,35000,0];
_offset=500;
_marker = createMarkerLocal ["cti_help_00", _pos];
_marker setMarkerTypeLocal "mil_objective";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorOrange";
_marker setMarkerAlphaLocal 1;
_marker setMarkerTextLocal "Strategic Mode Rules";
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_marker = createMarkerLocal ["cti_help_01", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorWhite";
_marker setMarkerAlphaLocal 0.7;
_marker setMarkerTextLocal "You can capture any town as your first town.";
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_marker = createMarkerLocal ["cti_help_02", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorWhite";
_marker setMarkerAlphaLocal 0.7;
_marker setMarkerTextLocal "A town can be captured only if active.";
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_marker = createMarkerLocal ["cti_help_03", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorWhite";
_marker setMarkerAlphaLocal 0.7;
_marker setMarkerTextLocal "Towns are activated automatically when a player is within a certain range of a town or when done by the commander.";
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_marker = createMarkerLocal ["cti_help_04", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorWhite";
_marker setMarkerAlphaLocal 0.7;
_marker setMarkerTextLocal "Towns are de-activated automatically when all enemy have been cleared out or when done by the commander.";
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_marker = createMarkerLocal ["cti_help_05", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorWhite";
_marker setMarkerAlphaLocal 0.7;
_marker setMarkerTextLocal "Only players can capture towns, your AI cannot do this.";
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_marker = createMarkerLocal ["cti_help_06", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorWhite";
_marker setMarkerAlphaLocal 0.7;
_marker setMarkerTextLocal format ["You can only have %1 town active at a time.",(missionNamespace getVariable "CTI_SM_MAX_ACTIVE")];
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_marker = createMarkerLocal ["cti_help_07", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorWhite";
_marker setMarkerAlphaLocal 0.7;
_marker setMarkerTextLocal "A town is available for capture when you own 1 connected to it.";
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_marker = createMarkerLocal ["cti_help_08", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorWhite";
_marker setMarkerAlphaLocal 0.7;
_marker setMarkerTextLocal  format ["No towns are available when have %1 towns active.",(missionNamespace getVariable "CTI_SM_MAX_ACTIVE")];
_pos=[(_pos select 0),(_pos select 1)-_offset,0];


_pos=[14000,14000,0];    //SS83 Added this to get people to zoom out and read the map
_offset=250;

_marker = createMarkerLocal ["cti_help_h1", _pos];
_marker setMarkerTypeLocal "hd_warning";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorRed";
_marker setMarkerAlphaLocal 0.9;
_marker setMarkerTextLocal "Zoom out for essential server/mission info.";
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_marker = createMarkerLocal ["cti_help_h2", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorWhite";
_marker setMarkerAlphaLocal 0.6;
_marker setMarkerTextLocal "Learn the mission: www.YouTube.com/SpanishSurfer";
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_marker = createMarkerLocal ["cti_help_h3", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorWhite";
_marker setMarkerAlphaLocal 0.6;
_marker setMarkerTextLocal "Get your mods: www.ofps.net";
_pos=[(_pos select 0),(_pos select 1)-_offset,0];




_pos=[1000,4500,0];
_offset=CTI_MARKERS_TOWN_AREA_RANGE*3;

_marker = createMarkerLocal ["cti_help_1", _pos];
_marker setMarkerShapeLocal "ELLIPSE";
_marker setMarkerBrushLocal "SolidBorder";
_marker setMarkerSizeLocal [CTI_MARKERS_TOWN_AREA_RANGE, CTI_MARKERS_TOWN_AREA_RANGE];
_marker setMarkerColorLocal "ColorGreen";
_marker setMarkerAlphaLocal 0.7;
_pos=[(_pos select 0),(_pos select 1),(_pos select 2)+_offset/3];

	_marker = createMarkerLocal ["cti_help_20", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorGreen";
_marker setMarkerAlphaLocal 0.7;
_marker setMarkerTextLocal "Resistance Town Activated by your side - AI Present ";
_pos=[(_pos select 0),(_pos select 1)-_offset,(_pos select 2)-_offset/3];

_marker = createMarkerLocal ["cti_help_3", _pos];
_marker setMarkerShapeLocal "ELLIPSE";
_marker setMarkerBrushLocal "SolidBorder";
_marker setMarkerSizeLocal [CTI_MARKERS_TOWN_AREA_RANGE, CTI_MARKERS_TOWN_AREA_RANGE];
_marker setMarkerColorLocal "ColorBlue";
_marker setMarkerAlphaLocal 0.7;
_pos=[(_pos select 0),(_pos select 1),(_pos select 2)+_offset/3];

_marker = createMarkerLocal ["cti_help_30", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorBlue";
_marker setMarkerAlphaLocal 0.7;
_marker setMarkerTextLocal "BLUFOR held town.";
_pos=[(_pos select 0),(_pos select 1)-_offset,(_pos select 2)-_offset/3];

_marker = createMarkerLocal ["cti_help_40", _pos];
_marker setMarkerShapeLocal "ELLIPSE";
_marker setMarkerBrushLocal "SolidBorder";
_marker setMarkerSizeLocal [CTI_MARKERS_TOWN_AREA_RANGE, CTI_MARKERS_TOWN_AREA_RANGE];
_marker setMarkerColorLocal "ColorRed";
_marker setMarkerAlphaLocal 0.7;
_pos=[(_pos select 0),(_pos select 1),(_pos select 2)+_offset/3];

_marker = createMarkerLocal ["cti_help_4", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorRed";
_marker setMarkerAlphaLocal 0.7;
_marker setMarkerTextLocal "OPFOR held town.";
_pos=[(_pos select 0),(_pos select 1)-_offset,(_pos select 2)-_offset/3];


_marker = createMarkerLocal ["cti_help_5", _pos];
_marker setMarkerShapeLocal "ELLIPSE";
_marker setMarkerBrushLocal "Border";
_marker setMarkerSizeLocal [CTI_MARKERS_TOWN_AREA_RANGE, CTI_MARKERS_TOWN_AREA_RANGE];
_marker setMarkerColorLocal  "ColorYellow";
_marker setMarkerAlphaLocal 0.7;
_pos=[(_pos select 0),(_pos select 1),(_pos select 2)+_offset/3];

_marker = createMarkerLocal ["cti_help_50", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal  "ColorYellow";
_marker setMarkerAlphaLocal 0.7;
_marker setMarkerTextLocal "HALO Jump zones, click within border to HALO jump (Upgrade & Air factory required).";
_pos=[(_pos select 0),(_pos select 1)-_offset,(_pos select 2)-_offset/3];

_marker = createMarkerLocal ["cti_help_6", _pos];
_marker setMarkerShapeLocal "ELLIPSE";
_marker setMarkerBrushLocal "SolidBorder";
_marker setMarkerSizeLocal [CTI_MARKERS_TOWN_AREA_RANGE, CTI_MARKERS_TOWN_AREA_RANGE];
_marker setMarkerColorLocal  "ColorBrown";
_marker setMarkerAlphaLocal 0.7;
_pos=[(_pos select 0),(_pos select 1),(_pos select 2)+_offset/3];

_marker = createMarkerLocal ["cti_help_60", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal  "ColorBrown";
_marker setMarkerAlphaLocal 0.7;
_marker setMarkerTextLocal "Your base areas.";
_pos=[(_pos select 0),(_pos select 1)-_offset,(_pos select 2)-_offset/3];



//SS83 Added below to put up server/TS information
_pos=[31500,30000,0];
_offset=500;

_marker = createMarkerLocal ["cti_serverinfo_1", _pos];
_marker setMarkerTypeLocal "mil_objective";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorRed";
_marker setMarkerAlphaLocal 1;
_marker setMarkerTextLocal "Server Information";
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_marker = createMarkerLocal ["cti_serverinfo_2", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorWhite";
_marker setMarkerAlphaLocal 0.8;
_marker setMarkerTextLocal format ["Name: BECTI Warfare - Seattle, WA www.OFPS.net"];
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_marker = createMarkerLocal ["cti_serverinfo_3", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorWhite";
_marker setMarkerAlphaLocal 0.8;
_marker setMarkerTextLocal format ["Misson Name: becti_zerty_OFPS"];
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_marker = createMarkerLocal ["cti_serverinfo_4", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorWhite";
_marker setMarkerAlphaLocal 0.8;
_marker setMarkerTextLocal format ["TeamSpeak Channel: arma.ofps.net "];
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_marker = createMarkerLocal ["cti_serverinfo_5", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorWhite";
_marker setMarkerAlphaLocal 0.8;
_marker setMarkerTextLocal format ["Website: www.ofps.net"];
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_marker = createMarkerLocal ["cti_serverinfo_6", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorWhite";
_marker setMarkerAlphaLocal 0.8;
_marker setMarkerTextLocal format ["Steam Group Info: Warfare-CTI-OFPS (automatic notifications)"];
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_marker = createMarkerLocal ["cti_serverinfo_7", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorWhite";
_marker setMarkerAlphaLocal 0.8;
_marker setMarkerTextLocal format ["Remote connect Info: arma.ofps.net:2320"];
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_marker = createMarkerLocal ["cti_serverinfo_8", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorWhite";
_marker setMarkerAlphaLocal 0.8;
_marker setMarkerTextLocal format ["Stats Available: www.gametracker.com"];
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_marker = createMarkerLocal ["cti_serverinfo_9", _pos];
_marker setMarkerTypeLocal "mil_box";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorWhite";
_marker setMarkerAlphaLocal 1;
_marker setMarkerTextLocal format ["Message SpanishSurfer on Steam to get added to the Group!"];
_pos=[(_pos select 0),(_pos select 1)-_offset,0];


//SS83 Added this for server rules
_pos=[31500,15000,0];
_offset=500;

_marker = createMarkerLocal ["cti_serverrules_1", _pos];
_marker setMarkerTypeLocal "mil_objective";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorYellow";
_marker setMarkerAlphaLocal 0.7;
_marker setMarkerTextLocal "Server Rules";
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_marker = createMarkerLocal ["cti_serverrules_2", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorWhite";
_marker setMarkerAlphaLocal 0.6;
_marker setMarkerTextLocal format ["1. No Team Killing (includes AI), eliminate AI via OPTIONS-AI Management"];
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_marker = createMarkerLocal ["cti_serverrules_3", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorWhite";
_marker setMarkerAlphaLocal 0.6;
_marker setMarkerTextLocal format ["2. No Friendly Asset Destruction (Vehicles, mortar tubes, defence structures, etc)"];
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_marker = createMarkerLocal ["cti_serverrules_4", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorWhite";
_marker setMarkerAlphaLocal 0.6;
_marker setMarkerTextLocal format ["3. No stealing of friendly MHQ, only for Commander use."];
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_marker = createMarkerLocal ["cti_serverrules_5", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorWhite";
_marker setMarkerAlphaLocal 0.6;
_marker setMarkerTextLocal format ["4. No spamming of chat (voice/text) of any channel. (Trolling = up to 3 day ban)"];
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_marker = createMarkerLocal ["cti_serverrules_6", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorWhite";
_marker setMarkerAlphaLocal 0.6;
_marker setMarkerTextLocal format ["5. DO NOT spamn the vote menu option!"];
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_marker = createMarkerLocal ["cti_serverrules_7", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorWhite";
_marker setMarkerAlphaLocal 0.6;
_marker setMarkerTextLocal format ["6. No arguing with admins. Go on the forums for that."];
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_marker = createMarkerLocal ["cti_serverrules_8", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorWhite";
_marker setMarkerAlphaLocal 0.6;
_marker setMarkerTextLocal format ["7. Do not steal vehicles. If you did not buy it, it's not yours."];
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_marker = createMarkerLocal ["cti_serverrules_9", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorWhite";
_marker setMarkerAlphaLocal 0.6;
_marker setMarkerTextLocal format ["8. No changing of default parameters, they are set that way for specific reasons."];
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_marker = createMarkerLocal ["cti_serverrules_10", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorWhite";
_marker setMarkerAlphaLocal 0.6;
_marker setMarkerTextLocal format ["9. Do not reveal friendly base location on map or in any other way (punishable by ban)."];
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_marker = createMarkerLocal ["cti_serverrules_11", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorWhite";
_marker setMarkerAlphaLocal 0.6;
_marker setMarkerTextLocal format ["10. Do not use exploits. (If you discover one on accident, report it. Caught using one = up to 30 day ban)"];
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_marker = createMarkerLocal ["cti_serverrules_12", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorWhite";
_marker setMarkerAlphaLocal 0.6;
_marker setMarkerTextLocal format ["11. Do not use hacks/scripts. Will result in a permanent ban."];
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_marker = createMarkerLocal ["cti_serverrules_13", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorWhite";
_marker setMarkerAlphaLocal 0.6;
_marker setMarkerTextLocal format ["12. Overall malicious behaviour (such as harassing other players) will not be tolerated."];
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_marker = createMarkerLocal ["cti_serverrules_14", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1.5,1.5];
_marker setMarkerColorLocal "ColorYellow";
_marker setMarkerAlphaLocal 0.6;
_marker setMarkerTextLocal format ["Valid reasons for Bans include but are not limited to: "];
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_marker = createMarkerLocal ["cti_serverrules_15", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorWhite";
_marker setMarkerAlphaLocal 0.6;
_marker setMarkerTextLocal format ["1. 'Trolling'/Disrespecting Admins = 1 Day Ban."];
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_marker = createMarkerLocal ["cti_serverrules_16", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorWhite";
_marker setMarkerAlphaLocal 0.6;
_marker setMarkerTextLocal format ["2. Intentional TK = up to 3 Day Ban (Quick disconnect after TK x2 BAN). "];
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_marker = createMarkerLocal ["cti_serverrules_17", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorWhite";
_marker setMarkerAlphaLocal 0.6;
_marker setMarkerTextLocal format ["3. Excessive TK/Team Treason = up to 7 Day Ban (Quick disconnect after TK x2 BAN)."];
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_marker = createMarkerLocal ["cti_serverrules_18", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorWhite";
_marker setMarkerAlphaLocal 0.6;
_marker setMarkerTextLocal format ["4. Cheating/Glitching the Game = 30 Day Ban (no less)"];
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_marker = createMarkerLocal ["cti_serverrules_18", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorWhite";
_marker setMarkerAlphaLocal 0.6;
_marker setMarkerTextLocal format ["5. Hacks/Malicious Script = Permanent Ban (no appealing)"];
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

//Live Added marker for Bridge

_pos=[13802.992,10349.967,0];    //SS83 Added this to get people to zoom out and read the map
_offset=150;

_marker = createMarkerLocal ["cti_map_markers", _pos];
_marker setMarkerTypeLocal "hd_warning";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorBlack";
_marker setMarkerAlphaLocal 0.9;
_marker setMarkerTextLocal format ["Bridge"];
_pos=[(_pos select 0),(_pos select 1)-_offset,0];
/*
_pos=[14944.827,2580.1428];    //Nimitz 1
_offset=150;

_marker = createMarkerLocal ["cti_map_markers_1", _pos];
_marker setMarkerTypeLocal "hd_pickup";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorBlack";
_marker setMarkerAlphaLocal 0.9;
_marker setMarkerTextLocal format ["Nimitz"];
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_pos=[15082.636,28064.184,0];    //Nimitz 2
_offset=150;

_marker = createMarkerLocal ["cti_map_markers_2", _pos];
_marker setMarkerTypeLocal "hd_pickup";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorBlack";
_marker setMarkerAlphaLocal 0.9;
_marker setMarkerTextLocal format ["Nimitz"];
_pos=[(_pos select 0),(_pos select 1)-_offset,0];
*/


/*
//SS83 The Team Drawing Board
_pos=[24000,13000,0];
_offset=500;

_marker = createMarkerLocal ["TDB_1", _pos];
_marker setMarkerTypeLocal "mil_marker";
_marker setMarkerSizeLocal [1.2,1.2];
_marker setMarkerColorLocal "ColorWhite";
_marker setMarkerAlphaLocal 1;
_marker setMarkerTextLocal format ["The Team Drawing Board"];
_pos=[(_pos select 0),(_pos select 1)-200,0];

_marker = createMarkerLocal ["TDB_2", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorGrey";
_marker setMarkerAlphaLocal 0.9;
_marker setMarkerTextLocal format ["Use this board to coordinate roles as a team (zoom in close to mark)."];
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_marker = createMarkerLocal ["TDB_3", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorOrange";
_marker setMarkerAlphaLocal 0.8;
_marker setMarkerTextLocal format ["Commander: "];
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_marker = createMarkerLocal ["TDB_4", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorGreen";
_marker setMarkerAlphaLocal 0.8;
_marker setMarkerTextLocal format ["Capturing Towns: "];
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_marker = createMarkerLocal ["TDB_5", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorYellow";
_marker setMarkerAlphaLocal 0.8;
_marker setMarkerTextLocal format ["Defending Towns: "];
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_marker = createMarkerLocal ["TDB_6", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorGreen";
_marker setMarkerAlphaLocal 0.8;
_marker setMarkerTextLocal format ["Logistics Support (Trans heli/Airlifting/Ammo Resupply): "];
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_marker = createMarkerLocal ["TDB_7", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorYellow";
_marker setMarkerAlphaLocal 0.8;
_marker setMarkerTextLocal format ["Close Air Support (specify Aircraft): "];
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_marker = createMarkerLocal ["TDB_8", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorGreen";
_marker setMarkerAlphaLocal 0.8;
_marker setMarkerTextLocal format ["Recon/Sniper/Saboteur: "];
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_marker = createMarkerLocal ["TDB_9", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorYellow";
_marker setMarkerAlphaLocal 0.8;
_marker setMarkerTextLocal format ["Artillery/Mortar Support: "];
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

_marker = createMarkerLocal ["TDB_10", _pos];
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerSizeLocal [1,1];
_marker setMarkerColorLocal "ColorGreen";
_marker setMarkerAlphaLocal 0.8;
_marker setMarkerTextLocal format ["Base Defence: "];
_pos=[(_pos select 0),(_pos select 1)-_offset,0];

*/
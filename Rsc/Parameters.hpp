class Params {
	class CTI_FACTION_WEST {
		title = "FACTION: West Forces";
		values[] = {0,1,2,3};
		texts[] = {"NATO Arid","NATO Tropic","NATO Winter","IF3 Germans"};
		default = 3;
	};
	class CTI_FACTION_EAST {
		title = "FACTION: East Forces";
		values[] = {0,1,2,3};
		texts[] = {"CSAT Arid","CSAT Tropic","CSAT Winter","IF3 SOV/USA"};
		default = 3;
	};
	class SEPARATOR0 {
		title = "========================== INCOME ============================";
		values[] = {1};
		texts[] = {""};
		default = 1;
	};
	class CTI_BASE_AREA_MAX {
		title = "BASE: Areas";
		values[] = {1,2,3,4,5};
		texts[] = {"1","2","3","4","5"};
		default = 1;
	};
	class CTI_BASE_HQ_REPAIR {
		title = "BASE: HQ Repairable";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 1;
	};
	class CTI_BASE_FOB_MAX {
		title = "BASE: FOB Limit";
		values[] = {0,1,2,3,4,5,6,7,8,9,10};
		texts[] = {"Disabled","1","2","3","4","5","6","7","8","9","10"};
		default = 4;
	};
	class CTI_BASE_STARTUP_PLACEMENT {
		title = "BASE: Startup Placement";
		values[] = {2000,3000,4000,5000,6000,7000,8000,9000,10000,12000,15000,20000};
		texts[] = {"2 KM","3 KM","4 KM","5 KM","6 KM","7 KM","8 KM","9 KM","10 KM","12 KM","15 KM","20 KM"};
		default = 15000;
	};
	class SEPARATOR1 {
		title = "========================== INCOME ============================";
		values[] = {1};
		texts[] = {""};
		default = 1;
	};
	class CTI_ECONOMY_INCOME_CYCLE {
		title = "INCOME: Delay";
		values[] = {30,35,40,45,50,55,60,65,70,75,80};
		texts[] = {"30 Seconds","35 Seconds","40 Seconds","45 Seconds","50 Seconds","55 Seconds","01:00 Minutes","01:05 Minutes","01:10 Minutes","01:15 Minutes"};
		default = 60;
	};
	class CTI_ECONOMY_STARTUP_FUNDS_EAST_COMMANDER {
		title = "INCOME: Starting Funds (East Commander)";
		values[] = {9000,15000,20000,25000,30000,35000,40000,45000,50000,60000,100000000};
		texts[] = {"$9000","$15000","$20000","$25000","$30000","$35000","$40000","$45000","$50000","$60000","$100000000"};
		default = 50000;
	};
	class CTI_ECONOMY_STARTUP_FUNDS_EAST {
		title = "INCOME: Starting Funds (East Players)";
		values[] = {900,1500,2400,3200,6000,8000,10000,12500,15000,20000,100000000};
		texts[] = {"$900","$1500","$2400","$3200","$6000","$8000","$10000","$12500","$15000","$20000","$100000000"};
		default = 10000;
	};
	class CTI_ECONOMY_STARTUP_FUNDS_WEST_COMMANDER {
		title = "INCOME: Starting Funds (West Commander)";
		values[] = {9000,15000,20000,25000,30000,35000,40000,45000,50000,60000,100000000};
		texts[] = {"$9000","$15000","$20000","$25000","$30000","$35000","$40000","$45000","$50000","$60000","$100000000"};
		default = 50000;
	};
	class CTI_ECONOMY_STARTUP_FUNDS_WEST {
		title = "INCOME: Starting Funds (West Players)";
		values[] = {900,1500,2400,3200,6000,8000,10000,12500,15000,20000,100000000};
		texts[] = {"$900","$1500","$2400","$3200","$6000","$8000","$10000","$12500","$15000","$20000","$100000000"};
		default = 10000;
	};
	class CTI_ECONOMY_TOWNS_OCCUPATION {
		title = "INCOME: Towns Occupation";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 1;
	};
	class CTI_ECONOMY_STARTUP_SUPPLY_EAST {
		title = "SUPPLY: Starting Supply (East Team)";
		values[] = {9000,15000,20000,25000,30000,35000,40000,45000,50000,60000,100000000};
		texts[] = {"$9000","$15000","$20000","$25000","$30000","$35000","$40000","$45000","$50000","$60000","$100000000"};
		default = 25000;
	};
	class CTI_ECONOMY_STARTUP_SUPPLY_WEST {
		title = "SUPPLY: Starting Supply (West Team)";
		values[] = {9000,15000,20000,25000,30000,35000,40000,45000,50000,60000,100000000};
		texts[] = {"$9000","$15000","$20000","$25000","$30000","$35000","$40000","$45000","$50000","$60000","$100000000"};
		default = 25000;
	};
	class SEPARATOR2 {
		title = "========================== TOWNS ============================";
		values[] = {1};
		texts[] = {""};
		default = 1;
	};
	class CTI_TOWNS_OCCUPATION {
		title = "TOWNS: Occupation";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 1;
	};
	class CTI_TOWNS_OCCUPATION_LEVEL_RESISTANCE {
		title = "TOWNS: Resistance Occupation Squad Count";
		values[] = {5,10,15,20,25,30,35,40};
		texts[] = {"Amateur","Novice","Average","Skilled","Professional","Specialist","Expert","Chuck Norris"};
		default = 20;
	};
	class CTI_TOWNS_OCCUPATION_LEVEL {
		title = "TOWNS: Side Occupation Squad Count";
		values[] = {5,10,15,20,25,30,35,40};
		texts[] = {"Amateur","Novice","Average","Skilled","Professional","Specialist","Expert","Chuck Norris"};
		default = 20;
	};
	class CTI_TOWNS_OCCUPATION_RESISTANCE {
		title = "TOWNS: Resistance Occupation Forces";
		values[] = {0,1,2,3,4,5,6,7,8,9};
		texts[] = {"Vanilla - AAF","Vanilla - FIA","CUP - ION PMC","CUP - NAPA Chernarus","CUP - Royal Army Corp Of Sahrani","CUP - Takistani Military","Mixed","Syndikat Paramilitary","AAF/Swedish Winter","IF3 Polish"};
		default = 9;
	};
	class CTI_TOWNS_OCCUPATION_WEST {
		title = "TOWNS: Blufor Occupation Forces";
		values[] = {0,1,2,3,4,5};
		texts[] = {"Vanilla","CUP - US Army","Mixed","Pacific Special Forces","Winter","IF3 Germany"};
		default = 5;
	};
	class CTI_TOWNS_OCCUPATION_EAST {
		title = "TOWNS: Opfor Occupation Forces";
		values[] = {0,1,2,3,4,5};
		texts[] = {"Vanilla","CUP - Russians","Mixed","Pacific Special Forces","Winter","IF3 SOV/USA"};
		default = 5;
	};
	class CTI_TOWNS_PEACE {
		title = "TOWNS: Peace";
		values[] = {0,60,120,180,300,600,1200};
		texts[] = {"Disabled","1 Minute","2 Minutes","3 Minutes","5 Minutes","10 Minutes","20 Minutes"};
		default = 1200;
	};
	class CTI_TOWNS_OCCUPATION_LIMIT_AI {
		title = "TOWNS: Occupation Soft max AI Limit";
		values[] = {50,100,150,200,250,300,350,400};
		texts[] = {"50","100","150","200","250","300","350","400"};
		default = 200;
	};
	class CTI_TOWNS_OCCUPATION_LIMIT_AI_QUEUE_RATIO {
		title = "TOWNS: Occupation Squad Queue Ratio";
		values[] = {0,10,20,30,40,50,60,70,80,90,100};
		texts[] = {"0","10","20","30","40","50","60","70","80","90","100"};
		default = 20;
	};
	class CTI_TOWNS_RESISTANCE_LIMIT_AI {
		title = "TOWNS: Resistance Soft max AI Limit";
		values[] = {50,100,150,200,250,300,350,400};
		texts[] = {"50","100","150","200","250","300","350","400"};
		default = 200;
	};
	class CTI_TOWNS_RESISTANCE_LIMIT_AI_QUEUE_RATIO {
		title = "TOWNS: Resistance Squad Queue Ratio";
		values[] = {0,10,20,30,40,50,60,70,80,90,100};
		texts[] = {"0","10","20","30","40","50","60","70","80","90","100"};
		default = 20;
	};
	class CTI_TOWNS_TERRITORIAL {
		title = "TOWNS: Territorial Mode";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 1;
	};
	class SEPARATOR3 {
		title = "========================== RESPAWN ============================";
		values[] = {1};
		texts[] = {""};
		default = 1;
	};
	class CTI_RESPAWN_AI {
		title = "RESPAWN: AI Members";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 0;
	};
	class CTI_RESPAWN_CAMPS {
		title = "RESPAWN: Camps";
		values[] = {0,1,2};
		texts[] = {"Disabled","Town Classic","Nearby Camps"};
		default = 2;
	};
	class CTI_RESPAWN_CAMPS_CONDITION {
		title = "RESPAWN: Camps Condition";
		values[] = {0,1,2};
		texts[] = {"No limits","Priced","Limited"};
		default = 1;
	};
	class CTI_RESPAWN_FOB_RANGE {
		title = "RESPAWN: FOB Range";
		values[] = {500,750,1000,1250,1500,1750,2000};
		texts[] = {"0.50 KM","0.75 KM","1 KM","1.25 KM","1.5 KM","1.75 KM","2 KM"};
		default = 1500;
	};
	class CTI_RESPAWN_MOBILE {
		title = "RESPAWN: Mobile";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 1;
	};
	class CTI_RESPAWN_TIMER {
		title = "RESPAWN: Delay";
		values[] = {15,20,25,30,35,40,45,50,55,60};
		texts[] = {"15 Seconds","20 Seconds","25 Seconds","30 Seconds","35 Seconds","40 Seconds","45 Seconds","50 Seconds","55 Seconds","60 Seconds"};
		default = 30;
	};
	class SEPARATOR4 {
		title = "============================ AI ==============================";
		values[] = {1};
		texts[] = {""};
		default = 1;
	};
	class CTI_AI_TEAMS_ENABLED {
		title = "AI: Controlled Teams";
		values[] = {0,1};
		texts[] = {"Disabled", "Enabled"};
		default = 0;
	};
	class CTI_PLAYERS_GROUPSIZE {
		title = "AI: Player Group Size";
		values[] = {0,1,2,3,4,5,8,10,12,14,16};
		texts[] = {"Rank Based","1","2","3","4","5","8","10","12","14","16"};
		default = 0;
	};
	class SEPARATOR5 {
		title = "=========================== UNITS ============================";
		values[] = {1};
		texts[] = {""};
		default = 1;
	};
	class CTI_VEHICLES_AIR_FFAR {
		title = "UNITS: Aircraft FFAR";
		values[] = {0,1,2};
		texts[] = {"Disabled","Enabled with Upgrade","Enabled"};
		default = 0;
	};
	class CTI_VEHICLES_AIR_DAR {
		title = "UNITS: Aircraft DAR";
		values[] = {0,1,2};
		texts[] = {"Disabled","Enabled with Upgrade","Enabled"};
		default = 0;
	};
	class CTI_VEHICLES_AIR_AA {
		title = "UNITS: Aircraft AA Missiles";
		values[] = {0,1,2};
		texts[] = {"Disabled","Enabled with Upgrade","Enabled"};
		default = 0;
	};
	class CTI_VEHICLES_AIR_AT {
		title = "UNITS: Aircraft AT Missiles";
		values[] = {0,1,2};
		texts[] = {"Disabled","Enabled with Upgrade","Enabled"};
		default = 0;
	};
	class CTI_VEHICLES_AIR_CM {
		title = "UNITS: Aircraft Countermeasures";
		values[] = {0,1,2};
		texts[] = {"Disabled","Enabled with Upgrade","Enabled"};
		default = 0;
	};
	class CTI_MARKERS_INFANTRY {
		title = "UNITS: Show Map Infantry";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 1;
	};
	class CTI_UNITS_FATIGUE {
		title = "UNITS: Fatigue";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 0;
	};
	class CTI_VEHICLES_EMPTY_TIMEOUT {
		title = "UNITS: Vehicles Reycling Delay";
		values[] = {60,120,180,240,300,600,1200,1800,2400,3000,3600};
		texts[] = {"1 Minute","2 Minutes","3 Minutes","4 Minutes","5 Minutes","10 Minutes","20 Minutes","30 Minutes","40 Minutes","50 Minutes","1 Hour"};
		default = 3600;
	};
	class CTI_ARTILLERY_SETUP {
		title = "ARTILLERY: Setup";
		values[] = {-2,-1,0,1,2,3};
		texts[] = {"Disabled","Ballistic Computer","Short","Medium","Long","Extreme"};
		default = -1;
	};
	class SEPARATOR6 {
		title = "========================== GAMEPLAY ===========================";
		values[] = {1};
		texts[] = {""};
		default = 1;
	};
	class CTI_GAMEPLAY_3P {
		title = "GAMEPLAY: 3P view";
		values[] = {-1,0,1,2};
		texts[] = {"All","No group view","Vehicle","None"};
		default = 1;
	};
	class CTI_WEAPON_SWAY {
		title = "GAMEPLAY: Weapon Sway Level";
		values[] = {0,25,50,75,100};
		texts[] = {"None","Little","Normal","Allot","Full"};
		default = 0;
	};
	class CTI_SM_NONV {
		title = "GAMEPLAY: Disable NVs, Thermal on Players";
		values[] = {0,1,2,3};
		texts[] = {"Default","Disable NV", "Disable Thermals","Disable NV/THERMALS"};
		default = 3;
	};
	class CTI_SM_NV_THER_VEH {
		title = "GAMEPLAY: Disable NVs, Thermal on Vehicles, Statics";
		values[] = {0,1,2,3};
		texts[] = {"Default","Disable NV", "Disable Thermals","Disable NV/THERMALS"};
		default = 3;
	};
	class SEPARATOR7 {
		title = "========================== TEAMPLAY ===========================";
		values[] = {1};
		texts[] = {""};
		default = 1;
	};
	class CTI_TEAMSWAP {
		title = "TEAM: Team swap protection";
		values[] = {0,1};
		texts[] = {"off","on"};
		default = 1;
	};
	class CTI_TEAMSTACK {
		title = "TEAM: Team Stack protection";
		values[] = {0,1,2,3,4,5};
		texts[] = {"Disabled","+1 Player","+2 Players","+3 Players","+4 Players","+5 Players"};
		default = 2;
	};
	class SEPARATOR8 {
		title = "======================== MAP SETTINGS =========================";
		values[] = {1};
		texts[] = {""};
		default = 1;
	};
	class CTI_GRAPHICS_TG_MAX {
		title = "VISUAL: Terrain Grid";
		values[] = {10,20,30,40,50};
		texts[] = {"Far","Medium","Short","Shorter","Free"};
		default = 10;
	};
	class CTI_GRAPHICS_VD_MAX {
		title = "VISUAL: View Distance";
		values[] = {1000,1500,2000,2500,3000,3500,4000};
		texts[] = {"1 KM","1.5 KM","2 KM","2.5 KM","3 KM","3.5 KM","4 KM"};
		default = 3500;
	};
	class CTI_WEATHER_INITIAL {
		title = "WEATHER: Inital Time";
		values[] = {-6,-5,-4,-3,-2,-1,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18};
		texts[] = {"12 AM","1 AM","2 AM","3 AM","4 AM","5 AM","6 AM","7 AM","8 AM","9 AM","10 AM","11 AM","12 PM","1 PM","2 PM","3 PM","4 PM","5 PM","6 PM","7 PM","8 PM","9 PM","10 PM","11 PM","Random"};
		default = 0;
	};
	class CTI_WEATHER_RAIN {
		title = "WEATHER: Rain (Rain Requires Overcast Greater High)";
		values[] = {-1,0,30,50,75,100};
		texts[] = {"Random","Clear","Light","Medium","High","Max"};
		default = 0;
	};
	class CTI_WEATHER_SNOW {
		title = "WEATHER: Snow Storms";
		values[] = {0,1,2,3,4};
		texts[] = {"Clear","Light","Medium","High","Max"};
		default = 0;
	};
	class CTI_WEATHER_SAND {
		title = "WEATHER: Sand Storms";
		values[] = {0,1,2,3,4};
		texts[] = {"Clear","Light","Medium","High","Max"};
		default = 0;
	};
	class CTI_WEATHER_OVERCAST {
		title = "WEATHER: Overcast";
		values[] = {-1,0,30,50,75,100};
		texts[] = {"Random","Clear","Light","Medium","High","Max"};
		default = -1;
	};
	class CTI_WEATHER_FOG {
		title = "WEATHER: Fog";
		values[] = {-1,0,30,50,75,100};
		texts[] = {"Random","Clear","Light","Medium","High","Max"};
		default = -1;
	};
	class CTI_WEATHER_WIND {
		title = "WEATHER: Wind";
		values[] = {-1,0,30,50,75,100};
		texts[] = {"Random","Clear","Light","Medium","High","Max"};
		default = -1;
	};
	class CTI_WEATHER_WAVES {
		title = "WEATHER: Waves";
		values[] = {-1,0,30,50,75,100};
		texts[] = {"Random","Clear","Light","Medium","High","Max"};
		default = -1;
	};
  	class CTI_WEATHER_FAST {
		title = "WEATHER: Day Duration";
		values[] = {1,2,3,4,5,6,7,8,9,10,11,12};
		texts[] = {"1 hour","2 hours","3 hours","4 hours","5 hours","6 hours","7 hours","8 hours","9 hours","10 hours","11 hours","12 hours"};
		default = 12;
	};
  	class CTI_WEATHER_FAST_NIGHT {
		title = "WEATHER: Night Duration";
		values[] = {1,2,3,4,5,6,7,8,9,10,11,12};
		texts[] = {"1 hour","2 hours","3 hours","4 hours","5 hours","6 hours","7 hours","8 hours","9 hours","10 hours","11 hours","12 hours"};
		default = 12;
	};
	class SEPARATOR9 {
		title = "=========================== ADDONS ============================";
		values[] = {1};
		texts[] = {""};
		default = 1;
	};
	class CTI_VANILLA_ADDON {
		title = "Vanilla Gear";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 0;
	};	
	class CTI_APEX_ADDON {
		title = "ADDON: APEX DLC Support";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 0;
	};
	class CTI_CUP_ADDON {
		title = "ADDON: CUP Support, Units, Vehicles, Weapons";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 0;
	};
	class CTI_CUP_CORE_ADDON {
		title = "ADDON: CUP CORE and CUP Terrains";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 0;
	};
	class CTI_OFPS_ADDON {
		title = "ADDON: OFPS MOD Pack Support";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 0;
	};
	class CTI_IF3_ADDON {
		title = "ADDON: OFPS MOD Pack Support";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 1;
	};
	class SEPARATOR10 {
		title = "========================= GAMEMODES ===========================";
		values[] = {1};
		texts[] = {""};
		default = 1;
	};
	class CTI_ZOMBIE_MODE {
		title = "GAMEMODE: Zombie Mode";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 0;
	};
	class CTI_GUERILLA_MODE {
		title = "GAMEMODE: Guerilla Mode (Low Tech)";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 0;
	};
	class SEPARATOR11 {
		title = "========================== DEV MODE ===========================";
		values[] = {1};
		texts[] = {""};
		default = 1;
	};
	class CTI_DEV_MODE {
		title = "DEV: Dev Mode";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 0;
	};
};

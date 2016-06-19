class Params {
	class CTI_AI_TEAMS_ENABLED {
		title = "AI: Teams";
		values[] = {0,1};
		texts[] = {"Disabled", "Enabled"};
		default = 0;
	};
	class CTI_ARTILLERY_SETUP {
		title = "ARTILLERY: Setup";
		values[] = {-2,-1,0,1,2,3};
		texts[] = {"Disabled","Ballistic Computer","Short","Medium","Long","Extreme"};
		default = 0;
	};
	class CTI_BASE_AREA_MAX {
		title = "BASE: Areas";
		values[] = {1,2,3,4,5};
		texts[] = {"1","2","3","4","5"};
		default = 2;
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
		default = 4000;
	};
	class CTI_ECONOMY_INCOME_CYCLE {
		title = "INCOME: Delay";
		values[] = {60,90,120,160,190};
		texts[] = {"01:00 Minute","01:30 Minutes","02:00 Minutes","02:30 Minutes","03:00 Minutes"};
		default = 60;
	};
	class CTI_ECONOMY_STARTUP_FUNDS_EAST_COMMANDER {
		title = "INCOME: Starting Funds (East Commander)";
		values[] = {9000,15000,20000,25000,30000,35000,40000,45000,50000,60000,100000000};
		texts[] = {"$9000","$15000","$20000","$25000","$30000","$35000","$40000","$45000","$50000","$60000","$100000000"};
		default = 50000;
	};
	class CTI_ECONOMY_STARTUP_SUPPLY_EAST {
		title = "SUPPLY: Starting Supply (East Team)";
		values[] = {9000,15000,20000,25000,30000,35000,40000,45000,50000,60000,100000000};
		texts[] = {"$9000","$15000","$20000","$25000","$30000","$35000","$40000","$45000","$50000","$60000","$100000000"};
		default = 20000;
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
	class CTI_ECONOMY_STARTUP_SUPPLY_WEST {
		title = "SUPPLY: Starting Supply (West Team)";
		values[] = {9000,15000,20000,25000,30000,35000,40000,45000,50000,60000,100000000};
		texts[] = {"$9000","$15000","$20000","$25000","$30000","$35000","$40000","$45000","$50000","$60000","$100000000"};
		default = 20000;
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
		default = 1;
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
		default = 15;
	};
	class CTI_TOWNS_OCCUPATION {
		title = "TOWNS: Occupation";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 1;
	};
	class CTI_TOWNS_OCCUPATION_LEVEL_RESISTANCE {
		title = "TOWNS: Resistance Occupation Level";
		values[] = {6,8,10,12,14};
		texts[] = {"Noob","Low","Medium","High","Insane"};
		default = 10;
	};
	class CTI_TOWNS_OCCUPATION_LEVEL {
		title = "TOWNS: Side Occupation Level";
		values[] = {6,8,10,12,14};
		texts[] = {"Noob","Low","Medium","High","Insane"};
		default = 8;
	};
	class CTI_TOWNS_OCCUPATION_RESISTANCE {
		title = "TOWNS: Resistance Occupation Forces";
		values[] = {0,1,2,3,4,5,6};
		texts[] = {"Vanilla - AAF","Vanilla - FIA","CUP - ION PMC","CUP - NAPA Chernarus","CUP - Royal Army Corp Of Sahrani","CUP - Takistani Locals","Mixed"};
		default = 6;
	};
	class CTI_TOWNS_OCCUPATION_WEST {
		title = "TOWNS: Blufor Occupation Forces";
		values[] = {0,1,2};
		texts[] = {"Vanilla","CUP - US Army","Mixed"};
		default = 2;
	};
	class CTI_TOWNS_OCCUPATION_EAST {
		title = "TOWNS: Opfor Occupation Forces";
		values[] = {0,1,2};
		texts[] = {"Vanilla","CUP - Russians","Mixed"};
		default = 2;
	};
	class CTI_TOWNS_PEACE {
		title = "TOWNS: Peace";
		values[] = {0,60,120,180,300,600};
		texts[] = {"Disabled","1 Minute","2 Minutes","3 Minutes","5 Minutes","10 Minutes"};
		default = 180;
	};
	class CTI_TOWNS_TERRITORIAL {
		title = "TOWNS: Territorial Mode";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
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
		default = 1;
	};
	class CTI_VEHICLES_AIR_AT {
		title = "UNITS: Aircraft AT Missiles";
		values[] = {0,1,2};
		texts[] = {"Disabled","Enabled with Upgrade","Enabled"};
		default = 1;
	};
	class CTI_VEHICLES_AIR_CM {
		title = "UNITS: Aircraft Countermeasures";
		values[] = {0,1,2};
		texts[] = {"Disabled","Enabled with Upgrade","Enabled"};
		default = 1;
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
		default = 600;
	};
	class CTI_GRAPHICS_TG_MAX {
		title = "VISUAL: Terrain Grid";
		values[] = {10,20,30,50};
		texts[] = {"Far","Medium","Short","Free"};
		default = 50;
	};
	class CTI_GRAPHICS_VD_MAX {
		title = "VISUAL: View Distance";
		values[] = {1000,1500,2000,2500,3000,3500,4000};
		texts[] = {"1 KM","1.5 KM","2 KM","2.5 KM","3 KM","3.5 KM","4 KM"};
		default = 2500;
	};
	class CTI_TEAMSWAP {
		title = "TEAM: Team swap protection";
		values[] = {0,1};
		texts[] = {"off","on"};
		default = 0;
	};
	class CTI_TEAMSTACK {
		title = "TEAM: Team Stack protection";
		values[] = {0,1};
		texts[] = {"off","on"};
		default = 0;
	};
	class CTI_WEATHER_INITIAL {
		title = "WEATHER: Inital Time";
		values[] = {0,1,2,3,10};
		texts[] = {"Morning","Noon","Evening","Midnight","Random"};
		default = 0;
	};
	class CTI_WEATHER_ALLOWRAIN {
		title = "WEATHER: Allow Rain";
		values[] = {0,1};
		texts[] = {"False","True"};
		default = 0;
	};
  	class CTI_WEATHER_FAST {
		title = "WEATHER: Day Duration";
		values[] = {1,2,3,4,5,6,7,8,9,10,11,12};
		texts[] = {"1 hour","2 hours","3 hours","4 hours","5 hours","6 hours","7 hours","8 hours","9 hours","10 hours","11 hours","12 hours"};
		default = 5;
	};
  	class CTI_WEATHER_FAST_NIGHT {
		title = "WEATHER: Night Duration";
		values[] = {1,2,3,4,5,6,7,8,9,10,11,12};
		texts[] = {"1 hour","2 hours","3 hours","4 hours","5 hours","6 hours","7 hours","8 hours","9 hours","10 hours","11 hours","12 hours"};
		default = 1;
	};
	class CTI_APEX_ADDON {
		title = "ADDON: APEX DLC Support";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 1;
	};
	class CTI_CUP_ADDON {
		title = "ADDON: CUP Support, Units, Vehicles, Weapons";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 1;
	};
	class CTI_OFPS_ADDON {
		title = "ADDON: OFPS MOD Pack Support";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 1;
	};		
	class CTI_DEV_MODE {
		title = "DEV: Dev Mode";
		values[] = {0,1};
		texts[] = {"Disabled","Enabled"};
		default = 0;
	};
};

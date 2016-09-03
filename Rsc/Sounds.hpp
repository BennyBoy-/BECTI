class CfgMusic
{
	tracks[]={"MKY_Blizzard","MKY_Snowfall"};

	class MKY_Blizzard
	{
		name = "";
		sound[] = {"Rsc\Sounds\m0nkey_blizzard.ogg", db+0, 1.0};
	};
	class MKY_Snowfall
	{
		name = "";
		sound[] = {"Rsc\Sounds\m0nkey_snowfall.ogg", db+0, 1.0};
	};
};
class CfgSounds {
	sounds[] = {prison,nuke,nuclear_boom,nuclear_heartbeat,nuclear_geiger,geiger_1,geiger_2,geiger_3,akbar,choppa,AR_Rappel_Loop,AR_Rappel_Start,AR_Rappel_End,AUR_Rappel_Loop,AUR_Rappel_Start,AUR_Rappel_End,Vent,Vent2,Para};
	class prison {
		name = "prison";
		sound[] = {"Rsc\Sounds\prison.ogg", 1, 1.0};
		titles[] = {};
	};
	class nuke
	{
		name = "nuke";
		sound[] = {"Common\Functions\External\nuclear\script\nuke.ogg", db+0, 1.0};
		titles[] = {};
	};
	class nuclear_boom
	{
		name = "nuclear_boom";
		sound[] = {"Common\Functions\External\nuclear\script\boom.ogg", db+0, 1.0};
		titles[] = {};
	};
	class nuclear_heartbeat
	{
		name = "nuclear_heartbeat";
		sound[] = {"Common\Functions\External\nuclear\script\heartbeat.ogg", db+0, 1.0};
		titles[] = {};
	};
	class nuclear_geiger
	{
		name = "nuclear_geiger";
		sound[] = {"Common\Functions\External\nuclear\script\geiger.ogg", db+0, 1.0};
		titles[] = {};
	};
	class geiger_1
	{
		name = "geiger_1";
		sound[] = {"Common\Functions\External\nuclear\script\geiger_1.ogg", db+0, 1.0};
		titles[] = {};
	};
	class geiger_2
	{
		name = "geiger_2";
		sound[] = {"Common\Functions\External\nuclear\script\geiger_2.ogg", db+0, 1.0};
		titles[] = {};
	};
	class geiger_3
	{
		name = "geiger_3";
		sound[] = {"Common\Functions\External\nuclear\script\geiger_3.ogg", db+0, 1.0};
		titles[] = {};
	};
  class akbar
  {
    name = "akbar";
    sound[] = {"Common\Functions\External\nuclear\script\akbar.ogg", db+1, 1.0};
	titles[] = {""};
  };
 class choppa {
		name = "choppa";
		sound[] = {"Rsc\Sounds\choppa.ogg", 1, 1.0};
		titles[] = {};
			
	};
	class AR_Rappel_Loop
	{
		name = "AR_Rappel_Loop";
		sound[] = {"Client\Functions\Externals\AdvancedSlingLoad\sounds\AR_Rappel_Loop.ogg",10,1};
		titles[] = {0,""};
	};
	class AR_Rappel_Start
	{
		name = "AR_Rappel_Start";
		sound[] = {"Client\Functions\Externals\AdvancedSlingLoad\sounds\AR_Rappel_Start.ogg",10,1};
		titles[] = {0,""};
	};
	class AR_Rappel_End
	{
		name = "AR_Rappel_End";
		sound[] = {"Client\Functions\Externals\AdvancedSlingLoad\sounds\AR_Rappel_End.ogg",10,1};
		titles[] = {0,""};
	};
	class AUR_Rappel_Loop
	{
		name = "AUR_Rappel_Loop";
		sound[] = {"Client\Functions\Externals\AdvancedUrbanRapel\sounds\AUR_Rappel_Loop.ogg",1.7782794,1};
		titles[] = {0,""};
	};
	class AUR_Rappel_Start
	{
		name = "AUR_Rappel_Start";
		sound[] = {"Client\Functions\Externals\AdvancedUrbanRapel\sounds\AUR_Rappel_Start.ogg",3.1622777,1};
		titles[] = {0,""};
	};
	class AUR_Rappel_End
	{
		name = "AUR_Rappel_End";
		sound[] = {"Client\Functions\Externals\AdvancedUrbanRapel\sounds\AUR_Rappel_End.ogg",3.1622777,1};
		titles[] = {0,""};
	};
	//HALO
	class Vent {name="Vent";sound[]={Client\Functions\Externals\ATM_airdrop\data\Vent.ogg,db-11,1.0};titles[] = {};};
	class Vent2 {name="Vent2";sound[]={Client\Functions\Externals\ATM_airdrop\data\Vent2.ogg,db-11,1.0};titles[] = {};};
	class Para {name="Para";sound[]={Client\Functions\Externals\ATM_airdrop\data\parachute.ogg,db-11,1.0};titles[] = {};};

};

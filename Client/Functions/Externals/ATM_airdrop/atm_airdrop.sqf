///////////////////////////////////////////////////////////
//                =ATM= Airdrop       	 				    //
//         		 =ATM=Pokertour        		       		    //
//				version : 6.5						        //
//				date : 28/12/2015						   //
//                   visit us : atmarma.fr                 //
/////////////////////////////////////////////////////////

private ["_funds","_position","_cut","_dialog","_s_alt","_s_alt_text","_sound","_sound2","_soundPath"];
	waitUntil { !isNull player };

_funds = (group player) call CTI_CO_FNC_GetFunds;
if (_funds < CTI_HALO_COST) exitWith {hintsilent "Not enough funds"; sleep 1 ; hintsilent ""};
	
	//[] execVM "ATM_airdrop\functions.sqf";
	call compile preprocessFileLineNumbers "Client\Functions\Externals\ATM_airdrop\functions.sqf";

	_position = GetPos player;
	_z = _position select 2;
	Altitude = CTI_HALO_ALTITUDE;

	hint Localize "STR_ATM_hinton";
	//HINT
	hint parseText "<t size='2' color='#2394ef'>HALO JUMP</t><br /><br />Select your destination ! <br /> <t color='#ccffaf'> You can only jump within owned towns or near FOBs (with upgrade).</t><br /> <t color='#0cff00'> $1000 per Jump.</t>";

	openMap true;

	//createDialog "ATM_AD_ALTITUDE_SELECT";
	disableSerialization;
	_dialog = findDisplay 2900;
	_s_alt = _dialog displayCtrl 2901;
	_s_alt_text = _dialog displayCtrl 2902;
	_s_alt_text ctrlSetText format["%1", Altitude];
	_s_alt sliderSetRange [500,20000];
	_s_alt slidersetSpeed [100,100,100];
	_s_alt sliderSetPosition Altitude;
	
Keys = 0;

IsCutRope = false;

_ctrl = _dialog displayCtrl 2903;
{
	_index = _ctrl lbAdd _x;
} forEach ["Fr Keyboard","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","US Keyboard","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"];
lbSetCurSel [2903, 0];

ATM_Jump_mapclick = false;
//onMapSingleClick "ATM_Jump_clickpos = _pos; ATM_Jump_mapclick = true; onMapSingleClick ''; true;";
//CLICK NEAR TOWNS
onMapSingleClick '
	ATM_Jump_clickpos = _pos; 
	_ct =[ATM_Jump_clickpos, CTI_P_SideJoined] call CTI_CO_FNC_GetClosestFriendlyTown; 
	_fobs = CTI_P_SideLogic getVariable ["cti_fobs", []];
	_fob = [ATM_Jump_clickpos, _fobs] call CTI_CO_FNC_GetClosestEntity;
	_upgrades = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideUpgrades;
	_upgrade_halo = _upgrades select CTI_UPGRADE_HALO;
	if (_upgrade_halo > 1) then {
		if ((ATM_Jump_clickpos distance  _ct < CTI_MARKERS_TOWN_AREA_RANGE) || (ATM_Jump_clickpos distance  _fob < CTI_MARKERS_TOWN_AREA_RANGE)) then { 
			ATM_Jump_mapclick = true; onMapSingleClick ""; true;
		};
	} else {
		if (ATM_Jump_clickpos distance  _ct < CTI_MARKERS_TOWN_AREA_RANGE) then { 
			ATM_Jump_mapclick = true; onMapSingleClick ""; true;
		};
	};
';
waitUntil {ATM_Jump_mapclick or !(visiblemap)};
if (!visibleMap) exitwith {
	systemChat "Halo jump canceled.";
	breakOut "main";
};
//TAKE FUNDS
[group player, - CTI_HALO_COST] call CTI_CO_FNC_ChangeFunds;
_pos = ATM_Jump_clickpos;
ATM_Jump_mapclick = if(true) then{
	call compile format ['
		mkr_halo = createmarker ["mkr_halo", ATM_Jump_Clickpos];
		"mkr_halo" setMarkerTypeLocal "hd_dot";
		"mkr_halo" setMarkerColorLocal "ColorGreen";
		"mkr_halo" setMarkerTextLocal "Jump";'];
};

_target = player;
RedOn = _target addAction["<t color='#B40404'>Chemlight Red On</t>", "Client\Functions\Externals\ATM_airdrop\atm_chem_on.sqf",["Chemlight_red"],6,false,false,"","_target == ( player)"];
BlueOn = _target addAction["<t color='#68ccf6'>Chemlight Blue On</t>", "Client\Functions\Externals\ATM_airdrop\atm_chem_on.sqf",["Chemlight_blue"],6,false,false,"","_target == ( player)"];
YellowOn = _target addAction["<t color='#fcf018'>Chemlight Yellow On</t>", "Client\Functions\Externals\ATM_airdrop\atm_chem_on.sqf",["Chemlight_yellow"],6,false,false,"","_target == ( player)"];
GreenOn = _target addAction["<t color='#30fd07'>Chemlight Green On</t>", "Client\Functions\Externals\ATM_airdrop\atm_chem_on.sqf",["Chemlight_green"],6,false,false,"","_target == ( player)"];
Iron = _target addAction["<t color='#FF00CC'>Strobe IR On</t>", "Client\Functions\Externals\ATM_airdrop\atm_chem_on.sqf",["NVG_TargetC"],6,false,false,"","_target == ( player)"];

_loadout=[_target] call Getloadout;

_posJump = getMarkerPos "mkr_halo";
_x = _posJump select 0;
_y = _posJump select 1;
_z = _posJump select 2;
_target setPos [_x,_y,_z+Altitude];

openMap false;
CTI_HALO_LASTTIME = time;
deleteMarker "mkr_halo";

0=[_target] call Frontpack;

removeBackpack _target;
sleep 0,5;
_target addBackpack "B_Parachute";
if ((getPos _target select 2) >= 8000) then{
	removeHeadgear _target;
	_target addHeadgear "H_CrewHelmetHeli_B";
	sleep 0.5;
};

hintsilent "";
hint Localize "STR_ATM_hintjump";
Cut_Rope = (FindDisplay 46) displayAddEventHandler ["keydown","_this call dokeyDown"];

_height = getPos _target select 2;

while {(getPos _target select 2) > 2} do {
	playSound "Vent";
	playSound "Vent2";
	sleep 5;
};

hint Localize "STR_ATM_hintload";
_target removeAction RedOn;
_target removeAction BlueOn;
_target removeAction YellowOn;
_target removeAction GreenOn;
_target removeaction Iron;
deletevehicle (_target getvariable "frontpack"); _target setvariable ["frontpack",nil,true];
deletevehicle (_target getvariable "lgtarray"); _target setvariable ["lgtarray",nil,true];
if (!IsCutRope) Then {
	(findDisplay 46) displayRemoveEventHandler ["KeyDown", Cut_Rope];
};

sleep 3;
hintsilent "";
sleep 1;

0=[_target,_loadout] call Setloadout;

if (true) exitWith {};
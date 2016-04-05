private ["_action"];
_action = _this select 0;

switch (_action) do {
	case "onLoad": {
		{((uiNamespace getVariable "cti_dialog_ui_onlinehelpmenu") displayCtrl 160001) lbAdd _x} forEach ["Introduction", "The Basics", "The Map", "Player", "Base Structures", "Special Vehicles", "Commander"];
		((uiNamespace getVariable "cti_dialog_ui_onlinehelpmenu") displayCtrl 160001) lbSetCurSel 0;
	};
	case "onHelpLBSelChanged": {
		_changeTo = _this select 1;
		
_helps = [
"<t size='1.4' color='#2394ef'>Introduction</t><br /><br />
<t><t color='#ffec1c'>CTI</t> (<t color='#ffec1c'>Conquer The Island</t>) is a gamemode where two sides, West and East fight for the control of an island.</t><br /><br />
Each side are led by a <t color='#e8bd12'>Commander</t> which may construct a base thanks to the <t color='#e8bd12'>MHQ</t>.<br /><br />
As soon as the base is available, you may decide to reinforce your team by purchasing additional units and vehicles.<br /><br />
Keep in mind that the <t color='#e8bd12'>Commander</t> may assign assign different tasks to your team.<br /><br />
The mission may be won by destroying the opposite side's base assets (<t color='#eaff96'>Barracks</t>, <t color='#eaff96'>Light Vehicle Factory</t>, <t color='#eaff96'>Heavy Vehicle Factory</t>, <t color='#eaff96'>Aircraft Factory</t> and the <t color='#eaff96'>MHQ</t>).<br /><br />
",
"<t size='1.4' color='#2394ef'>The Basics</t><br /><br />
Each side's teams are led by a <t color='#e8bd12'>Team Leader</t> which will respawn after it's death (you are a Team Leader). Your character's location can be seen on the map as it will always be tracked by a marker like those below.<br /><br />
<t align='center'><img image='\A3\ui_f\data\map\Markers\NATO\b_inf.paa' size='2'/> <img image='\A3\ui_f\data\map\Markers\NATO\o_inf.paa' size='2'/></t><br /><br />
Each player team has it's own <t color='#e8bd12'>Income</t>, the income can be viewed by accessing the <t color='#eaff96'>Options Menu</t>. The income can be increased by controlling <t color='#e8bd12'>Towns</t> and by earning non-combat points.<br /><br />
<t color='#e8bd12'>Towns</t> will generate a different income value depending on their size. The bigger the town the bigger the bounty (and the difficulty!). Note that an <t color='#e8bd12'>Occupied Towns</t> will generate more income.<br /><br />
<t color='#e8bd12'>Towns</t> are also defended by resistance at the start of the game so as you try to capture them, they will try to defend and recapture it!<br />
",
"<t size='1.4' color='#2394ef'>The Map</t><br /><br />
The <t color='#e8bd12'>Map</t> contains all of the information that you need. First of all, you need to be aware of the colors<br /><br />
- <t color='#e8bd12'>West</t> is identified by the <t color='#eaff96'>Green</t> color.<br />
- <t color='#e8bd12'>East</t> is identified by the <t color='#eaff96'>Red</t> color.<br />
- <t color='#e8bd12'>Resistance</t> (or unknowns) is identified by the <t color='#eaff96'>Blue</t> color.<br /><br />
The <t color='#e8bd12'>Towns</t> are identified by a Flag marker as follow (a circle may appear around it which signify that the town is occupied):<br /><br />
<t align='center'><img image='\A3\ui_f\data\map\Markers\Military\flag_ca.paa' size='2'/></t><br /><br />
While the <t color='#e8bd12'>MHQ</t> is identified by a specific marker labeled 'HQ' the <t color='#e8bd12'>Base Structures</t> are identified by an installation marker as follow:<br /><br />
<t align='center'><img image='\A3\ui_f\data\map\Markers\NATO\b_installation.paa' size='2'/> <img image='\A3\ui_f\data\map\Markers\NATO\o_installation.paa' size='2'/></t><br /><br />
Additionally, vehicles and infantry may appear with a different icon on the map depending on their nature (<t color='#eaff96'>Infantry</t>, <t color='#eaff96'>Mechanized</t>, <t color='#eaff96'>Armored</t>, <t color='#eaff96'>Air</t>...). Smaller yellow markers may appear on the map, to represent the subordinate infantry of your side (your own AI will appear orange along with their squad number).
",
"<t size='1.4' color='#2394ef'>Player</t><br /><br />
Aside from the Commander, there are multiple <t color='#e8bd12'>Teams</t> (labeled as <t color='#eaff96'>Alpha</t>, <t color='#eaff96'>Bravo</t>, <t color='#eaff96'>Charlie</t>...) which may be controlled by either the AI (if enabled) or a player. Without an order from the Commander, those units will run toward the closest hostile town.<br /><br />
A Team Leader receives a percentage of the total resource income earned. Assuming the value is set on <t color='#f455aa'>30 percent</t> for the <t color='#e8bd12'>Player Pool</t> and that there are <t color='#f455aa'>3 Team Leaders</t> on your side (excluding the Commander) then each of those units will receive <t color='#f455aa'>10 percent</t> of the pool resources (30 / 3).<br /><br />
Team Leaders may also earn resource from the <t color='#e8bd12'>Award Pool</t>. This pool awards the Team Leaders based on their combative and non combative score. Assuming that the Award Pool is set on <t color='#f455aa'>10 percent</t> and that there is <t color='#f455aa'>2 Team Leaders</t> with a score of <t color='#f455aa'>75</t> and <t color='#f455aa'>25</t> then the first one will receive <t color='#f455aa'>75 percent</t> of the pool resources.<br /><br />
The <t color='#e8bd12'>Player Pool</t> and the <t color='#e8bd12'>Award Pool</t> percentage may be viewed from the <t color='#eaff96'>Options Menu</t>. The <t color='#e8bd12'>Commander</t> may raise or lower them from within the <t color='#eaff96'>Transfer Resources Menu</t>.
",
"<t size='1.4' color='#2394ef'>Base Structures</t><br /><br />
The <t color='#e8bd12'>Base Structures</t> can be used for different purposes. As soon as the player is in range of a structure he may decide to purchase additional units or vehicles from them. You may choose to buy a vehicle manned or empty (you may also buy a vehicle without a driver, gunner, commander or turrets).<br /><br />
A <t color='#eaff96'>Control Center</t> will increase the purchase range of the different factories and add new commanding features to the Commander.<br /><br />
You may also choose to change or reload your gear at the nearest <t color='#eaff96'>Barracks</t>.
",
"<t size='1.4' color='#2394ef'>Special Vehicles</t><br /><br />
- Players may log on the <t color='#e8bd12'>MHQ</t> Satellite link to use the <t color='#eaff96'>Team Camera</t>. This mode allows you to overwatch the current Team Leaders or your side.<br /><br />
- <t color='#e8bd12'>Ammo Trucks</t> are used to resupply the ammunition of the nearby vehicles. They may also rearm nearby stationary weapons if needed.<br /><br />
- <t color='#e8bd12'>Repair Trucks</t> can be used to repair the nearby damaged <t color='#eaff96'>Vehicles</t> or <t color='#eaff96'>Base Structures</t>. Players may also construct <t color='#eaff96'>Defensive Structures</t> from them. A driver is needed to repair <t color='#eaff96'>Base Structures</t>.<br /><br />
- <t color='#e8bd12'>Salvagers</t> are used to salvage destroyed vehicles thus reclaiming a certain part of the original wreck's value. If a player is the driver during the salvaging of a wreck then he will receive <t color='#f455aa'>50 percent</t> of it's value and earn some points while the rest is divided among the side's teams. <t color='#e8bd12'>Independent AI Salvagers</t> may be purchased by the Commander from the <t color='#eaff96'>Repair Depot</t>.<br /><br />
",
"<t size='1.4' color='#2394ef'>Commander</t><br /><br />
The <t color='#e8bd12'>Commander</t> is reponsible for <t color='#eaff96'>Constructing Bases</t> and <t color='#eaff96'>Managing</t> the side's teams. He may also diminish or increase the <t color='#eaff96'>Player Pool</t> and the <t color='#eaff96'>Award Pool</t>.<br /><br />
The responsabilities that falls on the Commander are heavier than a regular player. It is recommended to practice this role in SinglePlayer if you're not used to it (your team may be very angry at you otherwise).<br /><br />
Your very first duty as Commander is to find a suitable <t color='#eaff96'>Base Location</t>, the perfect area should be flat, easily defensible and not too far away from the battlefield.<br /><br />
Your second duty as Commander is to <t color='#eaff96'>Construct the Base</t>. <t color='#eaff96'>Barracks</t> and <t color='#eaff96'>Control Center</t> are a good choice for a start. Once you've decided on the location, you can open the <t color='#eaff96'>Build Menu</t> and place the desired structures. Those structures will appear as 'ruins' at first as they must be built up. Don't forget to hire <t color='#eaff96'>Workers</t> to construct the structures (Keep in mind that you're on a low budget at first!).<br /><br />
From now on, the strategy is entirely up to you. You may create a <t color='#eaff96'>Light Vehicle Factory</t> for your side so that they may move faster to the battlefield or save up for a <t color='#eaff96'>Heavy Vehicle Factory</t> in order to perform an heavy attack. <t color='#eaff96'>Defenses</t> are very important in your base as enemy players may close in at any time!<br /><br />
Don't forget that a good Commander shall balance the needs of the base and the needs of his team.
"
];
		((uiNamespace getVariable "cti_dialog_ui_onlinehelpmenu") displayCtrl 160002) ctrlSetStructuredText parseText (_helps select _changeTo);
	};
};
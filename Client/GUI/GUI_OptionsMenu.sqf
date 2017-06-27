_last_funds = -1;
_last_townheld = -1;
_last_award_pool = -1;
_last_resources_pool = -1;
_last_income = -1;

_town_count = count CTI_Towns;
_last_infocheck = -100;

while { true } do {
	if (isNil {uiNamespace getVariable "cti_dialog_ui_optionsmenu"}) exitWith {}; //--- Menu is closed.
	
	if (time - _last_infocheck > 1) then {
		_uptime = call CTI_CL_FNC_GetMissionTime;
		((uiNamespace getVariable "cti_dialog_ui_optionsmenu") displayCtrl 130005) ctrlSetStructuredText (parseText format["Mission Time: <t color='#d4ceff'>%1 Day(s) %2:%3:%4</t>", _uptime select 0,_uptime select 1,_uptime select 2, _uptime select 3]);
		_last_infocheck = time;
		
		_funds = call CTI_CL_FNC_GetPlayerFunds;
		_held = (CTI_P_SideJoined) call CTI_CO_FNC_GetSideTownCount;
		_award_pool = CTI_P_SideLogic getVariable "cti_pool_award";
		_resources_pool = CTI_P_SideLogic getVariable "cti_pool_resources";
		_income = call CTI_CL_FNC_GetPlayerIncome;
		
		if !(_funds isEqualTo _last_funds) then {
			((uiNamespace getVariable "cti_dialog_ui_optionsmenu") displayCtrl 130001) ctrlSetStructuredText (parseText format["<t>Resources: <t color='%1'>$%2</t></t>", CTI_P_Coloration_Money, _funds]);
			_last_funds = _funds;
		};
		if (!(_resources_pool isEqualTo _last_resources_pool) || !(_award_pool isEqualTo _last_award_pool)) then {
			((uiNamespace getVariable "cti_dialog_ui_optionsmenu") displayCtrl 130002) ctrlSetStructuredText (parseText format["<t>Pools (Players/Award): %1%3 / %2%3</t>", round(_resources_pool*100), round(_award_pool*100), "%"]);
			_last_resources_pool = _resources_pool;
			_last_award_pool = _award_pool;
		};
		if !(_income isEqualTo _last_income) then {
			_side_income = ((CTI_P_SideJoined) call CTI_CO_FNC_GetTownsResources) * CTI_TOWNS_INCOME_RATIO;
			((uiNamespace getVariable "cti_dialog_ui_optionsmenu") displayCtrl 130003) ctrlSetStructuredText (parseText format["<t>Income (Me/Side): <t color='%1'>$%2</t>/<t color='%1'>$%3</t></t>", CTI_P_Coloration_Money, _income, round _side_income]);
			_last_income = _income;
		};
		if !(_held isEqualTo _last_townheld) then {
			((uiNamespace getVariable "cti_dialog_ui_optionsmenu") displayCtrl 130004) ctrlSetStructuredText (parseText format["<t>Towns Held: <t color='#66baff'>%1</t>/%2</t>", _held, _town_count]);
			_last_townheld = _held;
		};
	};
	
	sleep .1;
};
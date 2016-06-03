_vehicles = player nearEntities [["Car","Motorcycle","Tank","Ship","Air","StaticWeapon"],5];
if (count _vehicles < 1) exitWith {hint "There are no nearby vehicles to repair"};

_vehicle = [player, _vehicles] Call CTI_CO_FNC_GetClosestEntity;

_dammages = getDammage _vehicle;
if (_dammages <= 0.25) exitWith {hint "The vehicle cannot be repaired any further"};

CTI_P_ActionRepairNextUse = time + CTI_P_ActionRepairDelay;

_skip = false;
for "_i" from 0 to 4 do {
	sleep 0.5;
	player playMove "AinvPknlMstpSlayWrflDnon_medic";
	sleep 0.5;
	waitUntil {animationState player == "ainvpknlmstpslaywrfldnon_amovpknlmstpsraswrfldnon" || !alive player || vehicle player != player || !alive _vehicle || _vehicle distance player > 5};
	if (!alive player || vehicle player != player || !alive _vehicle || _vehicle distance player > 5) exitWith {_skip = true};
};

if !(_skip) then {
	_dammages = _dammages - 0.15;
	if (_dammages < 0) then {_dammages = 0};
	_vehicle setDammage _dammages;
};
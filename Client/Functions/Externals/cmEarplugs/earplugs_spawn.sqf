//////////////////////////////////////////////////////////////////////////
//START EARPLUGS CODE

waitUntil {vehicle player == player};
waituntil {!isnull (finddisplay 46)};

//////////////////////////////////////////////////////////////////////////
		_OPRbreathing = alive player;
		_OPRtrig=true;
		_OPRdude = player;

			while {_OPRtrig} do {

				sleep 0.001;

					if (_OPRbreathing) then {
						_OPRstartingpos = position player;
						sleep 0.001;
						_OPRposition = position _OPRdude;

						_OPRstationary = _OPRstartingpos select 0 == _OPRposition select 0 && _OPRstartingpos select 1 == _OPRposition select 1;

						if (_OPRstationary) then {} else {_OPRtrig=false;};
						
					};
			};

uisleep 1;

if (isNil {player getVariable "Has_EPEH_Loop"}) then {player setVariable["Has_EPEH_Loop", "NEVER"];};

//////////////////////////////////////////////////////////////////////////
5 fadeSound 1;
earplugsout=true;	
SuperFunEPEHVariable = false;
/////////////////////////////////////////////////////////////////////////
uisleep 1;
_hasEPEH = player getVariable "Has_EPEH_Loop";
uisleep 1;
if ((_hasEPEH == "NEVER")) then {[] spawn cm_EP_LOOP;};	

if (cmEarplugsKeyPressEnabled) then {
	[] spawn {cmKeyPress = (findDisplay 46) displayAddEventHandler ["KeyDown","if ((_this select 1) == cmEarplugs_hotkeyDIKCodeNumber) then {[] call cm_Earplugs_FUNc;};"];};
};

//cmEARPLUGS CODE END
//////////////////////////////////////////////////////////////////////////
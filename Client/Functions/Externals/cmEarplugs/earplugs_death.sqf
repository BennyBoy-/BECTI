//////////////////////////////////////////////////////////////////////////
//START EARPLUGS CODE

5 fadeSound 1;
earplugsout = true;
//removeAllActions inCaseofDeath;
//removeAllActions theOneTrueName;
//inCaseofDeath setVariable ["HasEarplugMenu","hasNoMenu"];
//theOneTrueName setVariable ["HasEarplugMenu","hasNoMenu"];
player setVariable ["Has_EPEH_Loop", "Yep"];
//systemChat "Diablo's minions grow stronger...";

(findDisplay 46) displayRemoveEventHandler ["KeyDown", cmKeyPress];

//cmEARPLUGS CODE END
//////////////////////////////////////////////////////////////////////////
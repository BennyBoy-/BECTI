_temp = player getvariable "drop";
_Last =  _temp select 0;
_spieler = _temp select 1;
_act = _temp select 2;

_spieler removeAction _act;
_spieler removeAction actionId;
_spieler removeMPEventHandler ["killed",0]; 
//hint format ["%1",_temp];

detach _Last;
_Last setpos [(getpos _Last) select 0 , (getpos _Last) select 1 , 0.01];
_spieler playmove "acinpknlmwlksraswrfldb";
_spieler switchMove "";

attached = false;

_block_key = player getvariable "drop";// get EVH name
(finddisplay 46) displayremoveeventhandler ["KeyDown",_block_key select 3]; // Remove EVH

 




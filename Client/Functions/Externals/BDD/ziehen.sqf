disableserialization; 
_Last = _this select 0;
_spieler = _this select 1;
_act = _this select 2;

_block_key = (findDisplay 46) displayAddEventHandler ["KeyDown","if ((_this select 1) == 45) then {true} else {false}"];// disable key X 

player setvariable ["drop",[_Last,_spieler,_act,_block_key],true];// add the EVH name so it can be removed later

_spieler removeAction _act;
_spieler playMove "acinpknlmstpsraswrfldnon";//Für die DragGrab-Animation
sleep 2;

//_Last attachTo [_spieler,[0,1.6,0.15]];
_Last attachTo [_spieler, [0,0.75,0.01],"lefthand"];
//_Last setdir 90;
         
attached = true;

actionId = _spieler addAction ["<t color=""#FFAD1F"" size='2' shadow='2'>" +"Drop", "Client\Functions\Externals\BDD\loslassen.sqf", [], 99, true, true, "", "(attached && (_target == _this))"];

_spieler setvariable ["getragenes",_Last];
 _spieler addMPEventHandler ["MPkilled", {detach ( _this select 0) getvariable "getragenes",attached=false}];  
 
 

 		
   
 
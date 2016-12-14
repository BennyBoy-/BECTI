/*
  # HEADER #
	Description:	Add Town Structures
	Author: 		Liveandletdie
*/

/* BRIDGE */

/*Vikos Outpost*/
_pos = [12854.365234,9790.572266,0.0631251];
_object = createVehicle ["Land_i_Barracks_V2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 325;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [12880.53125,9810.557617,0.086236];
_object = createVehicle ["Land_Cargo_Tower_V1_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 326;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [12877.564453,9827.969727,0.209559];
_object = createVehicle ["Land_Mil_WiredFence_Gate_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 58.9998;
_object setPosATL _pos;
_object enableSimulationGlobal false;


/*Ramp Vikos*/
_pos = [12884.527344,9831.919922,-5.46277];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;
[_object, 0, -2] call BIS_fnc_setPitchBank;

_pos = [12919.0839844,9851.542969,-3.06228];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;
[_object, 0, -2] call BIS_fnc_setPitchBank;

/*Start Bridge Vikos*/
_pos = [12953.0966797,9870.874023,7.80951];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [12987.558594,9890.446289,18.0167];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [13022.272461,9910.163086,32.2417];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [13057.0419922,9929.911133,44.937];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [13091.810547,9949.661133,58.7617];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [13126.592773,9969.421875,70.4785];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [13161.368164,9989.186523,78.1631];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [13196.146484,10008.941406,84.5412];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [13230.915039,10028.696289,94.3858];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [13265.693359,10048.453125,102.584];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [13300.470703,10068.209961,108.778];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [13335.239258,10087.959961,113.171];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [13370.0166016,10107.71582,112.79];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [13404.795898,10127.472656,110.814];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [13439.575195,10147.232422,114.581];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [13474.350586,10166.995117,115.127];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

/*Bridge Section Start*/
//_pos = [13509.126953,10186.750977,117.447];
//_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
//_object setDir 330.4;
//_object setPosATL _pos;
_object enableSimulationGlobal false;
_pos = [13493.644531,10177.865234,120.97];
_object = createVehicle ["BlockConcrete_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 60.2999;
_object setPosATL _pos;
_object enableSimulationGlobal false;
_pos = [13497.91211,10180.30371,121.335];
_object = createVehicle ["BlockConcrete_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 60.2999;
_object setPosATL _pos;
_object enableSimulationGlobal false;
_pos = [13502.17969,10182.74219,121.454];
_object = createVehicle ["BlockConcrete_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 60.2999;
_object setPosATL _pos;
_object enableSimulationGlobal false;
_pos = [13506.44727,10185.18066,121.514];
_object = createVehicle ["BlockConcrete_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 60.2999;
_object setPosATL _pos;
_object enableSimulationGlobal false;
_pos = [13510.71485,10187.61914,121.414];
_object = createVehicle ["BlockConcrete_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 60.2999;
_object setPosATL _pos;
_object enableSimulationGlobal false;
_pos = [13514.98242,10190.05761,121.674];
_object = createVehicle ["BlockConcrete_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 60.2999;
_object setPosATL _pos;
_object enableSimulationGlobal false;
_pos = [13519.25,10192.49609,121.664];
_object = createVehicle ["BlockConcrete_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 60.2999;
_object setPosATL _pos;
_object enableSimulationGlobal false;
_pos = [13523.51758,10194.93457,121.724];
_object = createVehicle ["BlockConcrete_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 60.2999;
_object setPosATL _pos;
_object enableSimulationGlobal false;
_pos = [13527.78516,10197.37304,121.984];
_object = createVehicle ["BlockConcrete_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 60.2999;
_object setPosATL _pos;
_object enableSimulationGlobal false;
/*Bridge Section End*/

_pos = [13543.900391,10206.506836,119.971];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [13578.673828,10226.262695,121.808];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [13613.447266,10246.0185547,124.228];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [13648.220703,10265.774414,123.819];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [13682.994141,10285.530273,124.475];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [13717.767578,10305.286133,126.8];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [13752.541016,10325.0419922,127.425];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [13787.314453,10344.797852,130.807];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [13822.0878906,10364.553711,128.622];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [13856.861328,10384.30957,128.99];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [13891.634766,10404.0654297,130.952];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [13926.408203,10423.821289,132.55];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [13961.181641,10443.577148,131.547];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [13995.955078,10463.333008,127.773];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [14030.728516,10483.0888672,122.674];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

/*Bridge Section Start*/
//_pos = [14065.501953,10502.844727,122.385];
//_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
//_object setDir 330.4;
//_object setPosATL _pos;
_object enableSimulationGlobal false;
_pos = [14050.0996094,10494.174805,5.54823];
_object = createVehicle ["BlockConcrete_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 60.2999;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [14054.367188,10496.613281,5.54823];
_object = createVehicle ["BlockConcrete_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 60.2999;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [14058.63477,10499.05176,5.54823];
_object = createVehicle ["BlockConcrete_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 60.2999;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [14062.90235,10501.49023,5.54823];
_object = createVehicle ["BlockConcrete_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 60.2999;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [14067.16992,10503.92871,5.54823];
_object = createVehicle ["BlockConcrete_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 60.2999;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [14071.4375,10506.36719,5.54823];
_object = createVehicle ["BlockConcrete_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 60.2999;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [14075.70508,10508.80566,5.54823];
_object = createVehicle ["BlockConcrete_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 60.2999;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [14079.97266,10511.24414,5.54823];
_object = createVehicle ["BlockConcrete_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 60.2999;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [14084.24024,10513.68261,5.54823];
_object = createVehicle ["BlockConcrete_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 60.2999;
_object setPosASL _pos;
_object enableSimulationGlobal false;
/*Bridge Section End*/

_pos = [14100.275391,10522.600586,119.52];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [14135.0488281,10542.356445,100.117];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [14169.822266,10562.112305,90.749];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [14204.595703,10581.868164,85.046];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [14239.369141,10601.624023,79.394];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [14274.142578,10621.379883,73.303];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [14308.916016,10641.135742,67.033];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [14343.689453,10660.891602,63.894];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [14378.462891,10680.647461,59.068];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [14413.236328,10700.40332,45.654];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [14448.00976563,10720.15918,41.427];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [14482.783203,10739.915039,30.491];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [14517.556641,10759.670898,23.806];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [14552.330078,10779.426758,16.755];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [14587.103516,10799.182617,8.33002];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [14621.876953,10818.938477,5.038];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [14656.650391,10838.694336,4.327];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;

/*Ramp Faronaki*/
_pos = [14689.830078,10857.553711,-4.58748];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 330.4;
_object setPosATL _pos;
_object enableSimulationGlobal false;
[_object, 0, 4] call BIS_fnc_setPitchBank;

_pos = [14709.195313,10868.397461,0.12802];
_object = createVehicle ["Land_GH_Platform_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 331;
_object setPosATL _pos;
_object enableSimulationGlobal false;
[_object, -0.1, 17.0794] call BIS_fnc_setPitchBank;

/*Outpost Faronaki*/
_pos = [14708.521484,10867.962891,0.793589];
_object = createVehicle ["Land_Mil_WiredFence_Gate_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 241;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [14728.318359,10858.640625,0.0723901];
_object = createVehicle ["Land_Cargo_Tower_V1_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 172;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [14755.374023,10861.150391,-0.112361];
_object = createVehicle ["Land_i_Barracks_V2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 352;
_object setPosATL _pos;
_object enableSimulationGlobal false;


/****CASTLE****/

_pos = [17620.611328,17296.880859,-0.480667];
_object = createVehicle ["Land_Castle_01_wall_03_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 310;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [17655.625,17274.517578,-1.29478];
_object = createVehicle ["Land_Castle_01_wall_04_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 50;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [17644.546875,17239.220703,-2.55485];
_object = createVehicle ["Land_Castle_01_wall_14_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [17638.0878906,17199.699219,-1.90575];
_object = createVehicle ["Land_Castle_01_wall_08_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 180;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [17586.460938,17192.046875,-1.45049];
_object = createVehicle ["Land_Castle_01_wall_03_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 129;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [17557.738281,17209.917969,-4.16091];
_object = createVehicle ["Land_Castle_01_wall_14_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 123;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [17537.449219,17211.537109,-4.8199];
_object = createVehicle ["Land_Castle_01_wall_03_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 209;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [17551.363281,17264.0839844,-2.03796];
_object = createVehicle ["Land_Castle_01_wall_14_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 205;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [17560.816406,17286.337891,-2.08663];
_object = createVehicle ["Land_Castle_01_wall_13_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 140;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [17572.523438,17280.873047,-5.75603];
_object = createVehicle ["Land_Castle_01_wall_03_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 270;
_object setPosATL _pos;
_object enableSimulationGlobal false;

/*inner*/

_pos = [17638.603516,17224.839844,-0.427528];
_object = createVehicle ["Land_Castle_01_church_a_ruin_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 181;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [17622,17222.509766,-0.0937119];
_object = createVehicle ["Land_Castle_01_tower_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 89.9999;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [17629.623047,17204.976563,-2.1951];
_object = createVehicle ["Land_Castle_01_house_ruin_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 79.9998;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [17600.648438,17220.294922,-0.164139];
_object = createVehicle ["Land_Castle_01_tower_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 220;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [17592.232422,17206.0566406,-0.185066];
_object = createVehicle ["Land_Castle_01_church_a_ruin_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 310;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [17544.246094,17228.740234,0.0982666];
_object = createVehicle ["Land_Castle_01_tower_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 210;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [17580.0390625,17261.886719,-0.192162];
_object = createVehicle ["Land_Castle_01_tower_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 210;
_object setPosATL _pos;
_object enableSimulationGlobal false;

_pos = [17635.664063,17286.296875,0.0465775];
_object = createVehicle ["Land_Castle_01_tower_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 309;
_object setPosATL _pos;
_object enableSimulationGlobal false;

/*ramp*/

_pos = [17621.193359,17287.373047,1.01382];
_object = createVehicle ["Land_Castle_01_step_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 39.9999;
_object setPosATL _pos;
_object enableSimulationGlobal false;
[_object, 30, 2.95756e-006] call BIS_fnc_setPitchBank;

_pos = [17585.275391,17201.0839844,0.25631];
_object = createVehicle ["Land_Castle_01_step_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 40;
_object setPosATL _pos;
_object enableSimulationGlobal false;
[_object, -10, -1.30042e-006] call BIS_fnc_setPitchBank;



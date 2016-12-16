/*
  # HEADER #
	Description:	Add Town Structures
	Author: 		Liveandletdie
*/

/***** NAVAL TOWNS ****/
/*****Sub Pen START****/
_pos = [15513.748047,14334.724609,1.86786];
_object = createVehicle ["Land_Pier_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 230;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [15540.549805,14302.779297,1.86829];
_object = createVehicle ["Land_Pier_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 230;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [15486.944336,14366.669922,1.86804];
_object = createVehicle ["Land_Pier_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 230;
_object setPosASL _pos;
_object enableSimulationGlobal false;

/*Inner Piers*/
_pos = [15507.802734,14302.40332,-1.82665];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 320;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [15450.349609,14308.649414,-1.82946];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 320;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [15480.993164,14334.358398,-1.8298];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 320;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [15477.161133,14276.691406,-1.82858];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 320;
_object setPosASL _pos;
_object enableSimulationGlobal false;

/*Right Corner*/
_pos = [15563.944336,14282.341797,5.60322];
_object = createVehicle ["Land_Pier_Box_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 230;
_object setPosASL _pos;
_object enableSimulationGlobal false;

/*s ramp*/
_pos = [15548.560547,14274.834961,4.04233];
_object = createVehicle ["Land_RampConcrete_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 230;
_object setPosASL _pos;
_object enableSimulationGlobal false;
/*w ramp*/
_pos = [15550.243164,14292.12793,4.04233];
_object = createVehicle ["Land_RampConcrete_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 320;
_object setPosASL _pos;
_object enableSimulationGlobal false;
/*tower*/
_pos = [15568.427734,14280.511719,5.17694];
_object = createVehicle ["Land_Cargo_Tower_V2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 320;
_object setPosASL _pos;
_object enableSimulationGlobal false;

/*Right Wing*/
_pos = [15543.34668,14259.178711,1.86722];
_object = createVehicle ["Land_Pier_wall_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 140;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [15511.40625,14232.375,1.86722];
_object = createVehicle ["Land_Pier_wall_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 140;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [15479.464844,14205.574219,1.86722];
_object = createVehicle ["Land_Pier_wall_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 140;
_object setPosASL _pos;
_object enableSimulationGlobal false;

/*Left Corner*/
_pos = [15470.995117,14393.111328,5.60322];
_object = createVehicle ["Land_Pier_Box_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 230;
_object setPosASL _pos;
_object enableSimulationGlobal false;
/*s ramp*/
_pos = [15460.516602,14379.488281,4.04233];
_object = createVehicle ["Land_RampConcrete_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 230;
_object setPosASL _pos;
_object enableSimulationGlobal false;
/*e ramp*/
_pos = [15477.874023,14377.793945,4.04233];
_object = createVehicle ["Land_RampConcrete_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 140;
_object setPosASL _pos;
_object enableSimulationGlobal false;
/*tower*/
_pos = [15470.59082,14397.399414,5.1702];
_object = createVehicle ["Land_Cargo_Tower_V2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 320;
_object setPosASL _pos;
_object enableSimulationGlobal false;

/*Left Wing*/
_pos = [15443.956055,14376.380859,1.86722];
_object = createVehicle ["Land_Pier_wall_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 320;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [15412.0136719,14349.578125,1.86722];
_object = createVehicle ["Land_Pier_wall_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 320;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [15380.0683594,14322.775391,1.86722];
_object = createVehicle ["Land_Pier_wall_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 320;
_object setPosASL _pos;
_object enableSimulationGlobal false;

/*Building Platform*/
/*r base*/
_pos = [15553.918945,14334.00683594,1.86829];
_object = createVehicle ["Land_Pier_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 320;
_object setPosASL _pos;
_object enableSimulationGlobal false;
/*l base*/
_pos = [15519.999023,14374.154297,1.87053];
_object = createVehicle ["Land_Pier_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 140;
_object setPosASL _pos;
_object enableSimulationGlobal false;

_pos = [15528.711914,14347.0410156,1.87053];
_object = createVehicle ["Land_Pier_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 50;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [15537.00683594,14354,1.87053];
_object = createVehicle ["Land_Pier_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 50;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [15545.201172,14361.117188,1.87053];
_object = createVehicle ["Land_Pier_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 230;
_object setPosASL _pos;
_object enableSimulationGlobal false;

/*Building*/
_pos = [15533.967773,14353.30957,3.9271];
_object = createVehicle ["Land_WIP_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 230;
_object setPosASL _pos;
_object enableSimulationGlobal false;


/*Subs*/
_pos = [15463.763672,14293.610352,-8.63648];
_object = createVehicle ["Submarine_01_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 230;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [15435.326172,14326.404297,-8.73097];
_object = createVehicle ["Submarine_01_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 230;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [15490.396484,14259.592773,-8.66482];
_object = createVehicle ["Submarine_01_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 230;
_object setPosASL _pos;
_object enableSimulationGlobal false;
/*Ramps*/
_pos = [15508.0859375,14330.46582,-1.71058];
_object = createVehicle ["Land_Pier_addon", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 230;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [15535.875977,14297.339844,-1.70597];
_object = createVehicle ["Land_Pier_addon", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 230;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [15479.269531,14364.806641,-1.70719];
_object = createVehicle ["Land_Pier_addon", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 230;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [15367.175781,14303.766602,-1.71352];
_object = createVehicle ["Land_Pier_addon", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 230;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [15457.663086,14195.762695,-1.23789];
_object = createVehicle ["Land_Pier_addon", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 230;
_object setPosASL _pos;
_object enableSimulationGlobal false;

_pos = [15553.891602,14305.0175781,-1.73329];
_object = createVehicle ["Land_Pier_addon", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 50;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [15491.708008,14379.123047,-1.70228];
_object = createVehicle ["Land_Pier_addon", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 50;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [15554.0908203,14368.609375,-1.71752];
_object = createVehicle ["Land_Pier_addon", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 50;
_object setPosASL _pos;
_object enableSimulationGlobal false;

/*towers*/

_pos = [15460.328125,14201.646484,4.17695];
_object = createVehicle ["Land_Cargo_Patrol_V1_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 50;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [15372.263672,14305.964844,4.17695];
_object = createVehicle ["Land_Cargo_Patrol_V1_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 50;
_object setPosASL _pos;
_object enableSimulationGlobal false;

/*lights*/

_pos = [15455.675781,14202.916992,3.93376];
_object = createVehicle ["Land_LampAirport_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 50;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [15373.485352,14300.722656,4.00701];
_object = createVehicle ["Land_LampAirport_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 50;
_object setPosASL _pos;
_object enableSimulationGlobal false;

_pos = [15469.796875,14381.133789,5.40701];
_object = createVehicle ["Land_LampAirport_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 140;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [15552.00683594,14283.305664,5.39344];
_object = createVehicle ["Land_LampAirport_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 320;
_object setPosASL _pos;
_object enableSimulationGlobal false;

_pos = [15534.229492,14325.512695,3.89944];
_object = createVehicle ["Land_LampAirport_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 230;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [15508.327148,14356.480469,3.89941];
_object = createVehicle ["Land_LampAirport_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 230;
_object setPosASL _pos;
_object enableSimulationGlobal false;




/*****Fuel Depot -  START****/
_pos = [19495.642578,22730.830078,2.33294];
_object = createVehicle ["Land_Pier_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [19495.457031,22756.480469,2.33294];
_object = createVehicle ["Land_Pier_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 180;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [19495.638672,22716.0351563,2.33294];
_object = createVehicle ["Land_Pier_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosASL _pos;
_object enableSimulationGlobal false;

_pos = [19495.642578,22745.623047,2.33294];
_object = createVehicle ["Land_Pier_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [19453.757813,22756.480469,2.33294];
_object = createVehicle ["Land_Pier_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 180;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [19453.943359,22745.623047,2.33294];
_object = createVehicle ["Land_Pier_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [19412.242188,22745.625,2.33294];
_object = createVehicle ["Land_Pier_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [19412.0566406,22756.480469,2.33294];
_object = createVehicle ["Land_Pier_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 180;
_object setPosASL _pos;
_object enableSimulationGlobal false;
/*piers*/
_pos = [19470.708984,22716.150391,-1.36203];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 89.9999;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [19433.00195313,22716.15625,-1.36203];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 89.9999;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [19395.300781,22716.15625,-1.36427];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 89.9999;
_object setPosASL _pos;
_object enableSimulationGlobal false;

/*tanks*/
_pos = [19462.244141,22751.904297,4.45149];
_object = createVehicle ["Land_dp_bigTank_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [19442.457031,22752.0683594,4.45149];
_object = createVehicle ["Land_dp_bigTank_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [19423.291016,22752.189453,4.45149];
_object = createVehicle ["Land_dp_bigTank_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [19403.917969,22752.166016,4.45149];
_object = createVehicle ["Land_dp_bigTank_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosASL _pos;
_object enableSimulationGlobal false;
/*parts*/
_pos = [19493.806641,22740.298828,4.55137];
_object = createVehicle ["Land_dp_mainFactory_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 270;
_object setPosASL _pos;
_object enableSimulationGlobal false;

_pos = [19461.933594,22701.136719,4.23524];
_object = createVehicle ["Land_Crane_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 180;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [19496.722656,22712.650391,4.65046];
_object = createVehicle ["Land_ReservoirTower_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosASL _pos;
_object enableSimulationGlobal false;

/*ramps*/
_pos = [19452.482422,22733.964844,-1.24582];
_object = createVehicle ["Land_Pier_addon", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 180;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [19414.792969,22734.00976563,-1.25312];
_object = createVehicle ["Land_Pier_addon", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 180;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [19478.414063,22768.142578,-1.26882];
_object = createVehicle ["Land_Pier_addon", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosASL _pos;
_object enableSimulationGlobal false;
/*lights*/

_pos = [19392.59375,22737.335938,4.49977];
_object = createVehicle ["Land_LampAirport_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 89.9997;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [19438.00585938,22737.0449219,4.49977];
_object = createVehicle ["Land_LampAirport_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 89.9999;
_object setPosASL _pos;
_object enableSimulationGlobal false;



/*****Communications Platform START****/
/*base*/
_pos = [15175.347656,8372.241211,-1.5];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [15167.488281,8370.854492,-1.5];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [15159.617188,8369.466797,-1.5];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [15151.745117,8368.0791016,-1.5];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [15143.871094,8366.689453,-1.5];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80;
_object setPosASL _pos;
_object enableSimulationGlobal false;
/*row2*/
_pos = [15136.924805,8406.0820313,-1.5];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [15144.801758,8407.46875,-1.5];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [15152.670898,8408.859375,-1.5];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [15160.542969,8410.245117,-1.50];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [15168.405273,8411.633789,-1.5];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80;
_object setPosASL _pos;
_object enableSimulationGlobal false;

/*Buildings*/

_pos = [15160.837891,8378.329102,4.44186];
_object = createVehicle ["Land_MilOffices_V1_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 260;
_object setPosASL _pos;
_object enableSimulationGlobal false;

_pos = [15162.00488281,8355.078125,4.77269];
_object = createVehicle ["Land_TTowerBig_2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80;
_object setPosASL _pos;
_object enableSimulationGlobal false;

_pos = [15146.923828,8394.700195,4.79189];
_object = createVehicle ["Land_Communication_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80;
_object setPosASL _pos;
_object enableSimulationGlobal false;

_pos = [15162.776367,8397.472656,4.79189];
_object = createVehicle ["Land_Communication_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80;
_object setPosASL _pos;
_object enableSimulationGlobal false;

_pos = [15150.619141,8420.390625,4.91059];
_object = createVehicle ["Land_Research_HQ_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 260;
_object setPosASL _pos;
_object enableSimulationGlobal false;

/*stairs*/
_pos = [15129.169922,8417.464844,-1.37942];
_object = createVehicle ["Land_Pier_addon", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 260;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [15140.50293,8353.402344,-1.37786];
_object = createVehicle ["Land_Pier_addon", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 260;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [15183.0498047,8361.0634766,-1.3821];
_object = createVehicle ["Land_Pier_addon", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [15171.769531,8425.0859375,-1.38137];
_object = createVehicle ["Land_Pier_addon", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80;
_object setPosASL _pos;
_object enableSimulationGlobal false;
/*lights*/

_pos = [15131.189453,8424.420898,4.33478];
_object = createVehicle ["Land_LampAirport_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [15167.423828,8430.870117,4.36338];
_object = createVehicle ["Land_LampAirport_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 260;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [15181.0800781,8354.232422,4.38356];
_object = createVehicle ["Land_LampAirport_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 260;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [15144.663086,8347.632813,4.35497];
_object = createVehicle ["Land_LampAirport_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80;
_object setPosASL _pos;
_object enableSimulationGlobal false;



/*****Research Platform START****/
/*base*/
_pos = [24790.550781,13792.730469,2.33294];
_object = createVehicle ["Land_Pier_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 270;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [24790.550781,13834.429688,2.33294];
_object = createVehicle ["Land_Pier_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 270;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [24790.550781,13876.126953,2.33294];
_object = createVehicle ["Land_Pier_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 270;
_object setPosASL _pos;
_object enableSimulationGlobal false;

_pos = [24779.693359,13792.545898,2.33294];
_object = createVehicle ["Land_Pier_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 90;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [24779.693359,13834.246094,2.33294];
_object = createVehicle ["Land_Pier_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 90;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [24779.693359,13875.941406,2.33294];
_object = createVehicle ["Land_Pier_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 90;
_object setPosASL _pos;
_object enableSimulationGlobal false;

_pos = [24764.892578,13792.545898,2.33294];
_object = createVehicle ["Land_Pier_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 90;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [24764.894531,13834.246094,2.33294];
_object = createVehicle ["Land_Pier_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 90;
_object setPosASL _pos;
_object enableSimulationGlobal false;

_pos = [24750.09375,13792.545898,2.33294];
_object = createVehicle ["Land_Pier_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 90;
_object setPosASL _pos;
_object enableSimulationGlobal false;
/*piers*/
_pos = [24735.621094,13817.475586,-1.36249];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [24750.427734,13859.18457,-1.36323];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosASL _pos;
_object enableSimulationGlobal false;

/*buildings*/
_pos = [24781.871094,13796.157227,4.57514];
_object = createVehicle ["Land_Hospital_main_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [24753.837891,13786.125,4.57507];
_object = createVehicle ["Land_Hospital_side2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [24786.568359,13828.757813,4.57598];
_object = createVehicle ["Land_Hospital_side1_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosASL _pos;
_object enableSimulationGlobal false;

_pos = [24762.890625,13850.173828,4.83891];
_object = createVehicle ["Land_Airport_Tower_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 90;
_object setPosASL _pos;
_object enableSimulationGlobal false;

_pos = [24785.0957031,13892.362305,4.75069];
_object = createVehicle ["Land_spp_Tower_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 180;
_object setPosASL _pos;
_object enableSimulationGlobal false;

_pos = [24785.0722656,13865.110352,4.60996];
_object = createVehicle ["Land_MilOffices_V1_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 89.9999;
_object setPosASL _pos;
_object enableSimulationGlobal false;

_pos = [24741.976563,13810.727539,4.60463];
_object = createVehicle ["Land_wpp_Turbine_V2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 50;
_object setPosASL _pos;
_object enableSimulationGlobal false;

_pos = [24771.611328,13895.624023,4.62049];
_object = createVehicle ["Land_Communication_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosASL _pos;
_object enableSimulationGlobal false;

/*stairs*/
_pos = [24753.279297,13837.447266,-1.25713];
_object = createVehicle ["Land_Pier_addon", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 270;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [24768.0585938,13879.757813,-1.25617];
_object = createVehicle ["Land_Pier_addon", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 270;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [24738.441406,13800.366211,-1.258];
_object = createVehicle ["Land_Pier_addon", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 270;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [24802.152344,13839.770508,-1.25223];
_object = createVehicle ["Land_Pier_addon", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 89.9999;
_object setPosASL _pos;
_object enableSimulationGlobal false;
/*lights*/

_pos = [24756.205078,13813.205078,4.49496];
_object = createVehicle ["Land_LampAirport_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [24770.974609,13863.583008,4.48142];
_object = createVehicle ["Land_LampAirport_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 180;
_object setPosASL _pos;
_object enableSimulationGlobal false;



/*****Radar Platform START****/
/*base*/
_pos = [12119.288086,24984.974609,2.33294];
_object = createVehicle ["Land_Pier_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [12160.990234,24984.978516,2.33294];
_object = createVehicle ["Land_Pier_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosASL _pos;
_object enableSimulationGlobal false;

_pos = [12160.804688,24995.835938,2.33294];
_object = createVehicle ["Land_Pier_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 180;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [12119.103516,24995.832031,2.33294];
_object = createVehicle ["Land_Pier_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 180;
_object setPosASL _pos;
_object enableSimulationGlobal false;

_pos = [12160.803711,25010.634766,2.35102];
_object = createVehicle ["Land_Pier_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 180;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [12119.103516,25010.632813,2.35102];
_object = createVehicle ["Land_Pier_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 180;
_object setPosASL _pos;
_object enableSimulationGlobal false;
/*center*/
_pos = [12171.988281,24997.269531,9.81065];
_object = createVehicle ["Land_Pier_Box_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [12108.0996094,24997.271484,9.81065];
_object = createVehicle ["Land_Pier_Box_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosASL _pos;
_object enableSimulationGlobal false;
/*objects*/
_pos = [12140.625,25004.150391,6.8722];
_object = createVehicle ["Land_Radar_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 89.9999;
_object setPosASL _pos;
_object enableSimulationGlobal false;

_pos = [12108.44043,24997.5625,9.97854];
_object = createVehicle ["Land_Radar_Small_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [12172.564453,24998.0253906,9.91702];
_object = createVehicle ["Land_Radar_Small_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosASL _pos;
_object enableSimulationGlobal false;

_pos = [12101.964844,25016.203125,4.81677];
_object = createVehicle ["Land_TTowerBig_2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [12177.93457,25016.130859,4.77704];
_object = createVehicle ["Land_TTowerBig_2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosASL _pos;
_object enableSimulationGlobal false;

_pos = [12152.31543,24982.791016,5.00241];
_object = createVehicle ["Land_Airport_Tower_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [12129.776367,24982.814453,5.00241];
_object = createVehicle ["Land_Airport_Tower_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosASL _pos;
_object enableSimulationGlobal false;

/*stairs*/
_pos = [12162.710938,25022.302734,-1.25766];
_object = createVehicle ["Land_Pier_addon", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [12124.50293,25022.279297,-1.24009];
_object = createVehicle ["Land_Pier_addon", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [12105.978516,24973.322266,-1.2648];
_object = createVehicle ["Land_Pier_addon", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 180;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [12173.983398,24973.314453,-1.26509];
_object = createVehicle ["Land_Pier_addon", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 180;
_object setPosASL _pos;
_object enableSimulationGlobal false;
/*lights*/

_pos = [12161.266602,24987.335938,4.45895];
_object = createVehicle ["Land_LampAirport_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 270;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [12118.797852,24987.291016,4.47596];
_object = createVehicle ["Land_LampAirport_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 90;
_object setPosASL _pos;
_object enableSimulationGlobal false;


/*****Oil Rig START****/ 
_pos = [6675.347656,9572.241211,3.44];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [6667.488281,9570.854492,3.44];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [6659.617188,9569.466797,3.44];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [6651.745117,9568.0791016,3.44];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [6643.871094,9566.689453,3.44];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80;
_object setPosASL _pos;
_object enableSimulationGlobal false;
/*s ladders*/
_pos = [6637.539063,9575.371094,5.3453];
_object = createVehicle ["Land_GH_Stairs_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 170;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [6638.856445,9567.939453,4.39956];
_object = createVehicle ["Land_GH_Platform_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 350;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [6635.95459,9570.77832,-1.39291];
_object = createVehicle ["Land_Pier_addon", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 260;
_object setPosASL _pos;
_object enableSimulationGlobal false;
/*n ladders*/
_pos = [6681.595703,9564.15625,5.36053];
_object = createVehicle ["Land_GH_Stairs_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 350;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [6680.277344,9571.646484,4.44238];
_object = createVehicle ["Land_GH_Platform_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 350;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [6683.187012,9568.820313,-1.3357];
_object = createVehicle ["Land_Pier_addon", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80;
_object setPosASL _pos;
_object enableSimulationGlobal false;
/*helipad*/
_pos = [6656.725098,9585.829102,3.44];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 79.9999;
_object setPosASL _pos;
_object enableSimulationGlobal false;


/*structures*/
_pos = [6659.48584,9569.488281,10.3394];
_object = createVehicle ["Land_TTowerBig_1_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 350;
_object setPosASL _pos;
_object enableSimulationGlobal false;
/*s shacks*/

_pos = [6642.771973,9566.394531,10.1075];
_object = createVehicle ["Land_Cargo_House_V3_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 260;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [6644.448242,9556.861328,10.1075];
_object = createVehicle ["Land_Cargo_House_V3_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 260;
_object setPosASL _pos;
_object enableSimulationGlobal false;

_pos = [6647.726074,9541.879883,8.94954];
_object = createVehicle ["Land_Crane_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 79.9999;
_object setPosASL _pos;
_object enableSimulationGlobal false;

/*n shacks*/

_pos = [6676.242188,9572.973633,10.1075];
_object = createVehicle ["Land_Cargo_House_V3_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [6674.600586,9582.543945,10.1075];
_object = createVehicle ["Land_Cargo_House_V3_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80;
_object setPosASL _pos;
_object enableSimulationGlobal false;

_pos = [6671.462402,9597.143555,8.94954];
_object = createVehicle ["Land_Crane_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 260;
_object setPosASL _pos;
_object enableSimulationGlobal false;
/*Piping*/

_pos = [6671.126465,9553.321289,9.33352];
_object = createVehicle ["Land_IndPipe2_big_18ladder_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [6657.495117,9550.917969,9.3404];
_object = createVehicle ["Land_IndPipe2_big_9_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 260;
_object setPosASL _pos;
_object enableSimulationGlobal false;

_pos = [6670.393555,9552.983398,9.70763];
_object = createVehicle ["Land_spp_Transformer_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [6662.500977,9551.602539,9.70763];
_object = createVehicle ["Land_spp_Transformer_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80;
_object setPosASL _pos;
_object enableSimulationGlobal false;


_pos = [6640.147461,9583.384766,9.2437];
_object = createVehicle ["Land_ReservoirTank_V1_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 40;
_object setPosASL _pos;
_object enableSimulationGlobal false;
/*lights*/

_pos = [6679.128906,9565.649414,9.30803];
_object = createVehicle ["Land_LampAirport_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 260;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [6640.0561523,9573.780273,9.34695];
_object = createVehicle ["Land_LampAirport_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80;
_object setPosASL _pos;
_object enableSimulationGlobal false;




/*****Wind Farm START****/
/*base*/
_pos = [2275.347656,15772.241211,-1.5];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [2267.488281,15770.854492,-1.5];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [2259.617188,15769.466797,-1.5];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [2251.745117,15768.0791016,-1.5];
_object = createVehicle ["Land_nav_pier_m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80;
_object setPosASL _pos;
_object enableSimulationGlobal false;
/*stairs*/
_pos = [2278.695801,15785.795898,-1.38115];
_object = createVehicle ["Land_Pier_addon", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [2283.00439453,15761.291016,-1.38018];
_object = createVehicle ["Land_Pier_addon", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [2248.387939,15754.642578,-1.37541];
_object = createVehicle ["Land_Pier_addon", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 260;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [2244.0524902,15779.209961,-1.37521];
_object = createVehicle ["Land_Pier_addon", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 260;
_object setPosASL _pos;
_object enableSimulationGlobal false;
/*tower*/
_pos = [2263.620605,15769.0996094,4.23343];
_object = createVehicle ["Land_Cargo_Tower_V2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 350;
_object setPosASL _pos;
_object enableSimulationGlobal false;
/*Decor*/
_pos = [2249.51416,15767.28418,4.81983];
_object = createVehicle ["Land_spp_Transformer_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 170;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [2277.668701,15772.629883,4.87862];
_object = createVehicle ["Land_spp_Transformer_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 350;
_object setPosASL _pos;
_object enableSimulationGlobal false;
/*Lights*/
_pos = [2281.401611,15753.910156,4.39832];
_object = createVehicle ["Land_LampAirport_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 260;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [2253.165527,15748.893555,4.34147];
_object = createVehicle ["Land_LampAirport_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [2274.00732422,15791.657227,4.34659];
_object = createVehicle ["Land_LampAirport_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 260;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [2245.684814,15786.618164,4.36783];
_object = createVehicle ["Land_LampAirport_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80;
_object setPosASL _pos;
_object enableSimulationGlobal false;

/*Farm Turbines*/
_object enableSimulationGlobal false;
_pos = [2235.691895,15679.263672,-0.767654];
_object = createVehicle ["Land_wpp_Turbine_V2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [2143.763428,15744.0751953,-0.776703];
_object = createVehicle ["Land_wpp_Turbine_V2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [2271.75293,15857.882813,-0.82485];
_object = createVehicle ["Land_wpp_Turbine_V2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [2150.967285,15852.881836,-0.865791];
_object = createVehicle ["Land_wpp_Turbine_V2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [2321.282715,15712.648438,-0.999062];
_object = createVehicle ["Land_wpp_Turbine_V2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosASL _pos;
_object enableSimulationGlobal false;
_pos = [2228.194336,15921.925781,173.321];
_object = createVehicle ["Land_wpp_Turbine_V2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosATL _pos;
_object enableSimulationGlobal false;
_pos = [2330.208984,15927.539063,170.931];
_object = createVehicle ["Land_wpp_Turbine_V2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosATL _pos;
_object enableSimulationGlobal false;
_pos = [2415.810303,15848.370117,164.721];
_object = createVehicle ["Land_wpp_Turbine_V2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosATL _pos;
_object enableSimulationGlobal false;
_pos = [2432.259033,15714.773438,164.864];
_object = createVehicle ["Land_wpp_Turbine_V2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosATL _pos;
_object enableSimulationGlobal false;
_pos = [2390.419922,15628.695313,171.33];
_object = createVehicle ["Land_wpp_Turbine_V2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosATL _pos;
_object enableSimulationGlobal false;
_pos = [2306.594971,15596.353516,172.867];
_object = createVehicle ["Land_wpp_Turbine_V2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosATL _pos;
_object enableSimulationGlobal false;
_pos = [2209.865234,15565.0800781,176.367];
_object = createVehicle ["Land_wpp_Turbine_V2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosATL _pos;
_object enableSimulationGlobal false;
_pos = [2107.19165,15603.224609,172.446];
_object = createVehicle ["Land_wpp_Turbine_V2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosATL _pos;
_object enableSimulationGlobal false;
_pos = [2038.964966,15698.697266,173.655];
_object = createVehicle ["Land_wpp_Turbine_V2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosATL _pos;
_object enableSimulationGlobal false;
_pos = [2044.338135,15817.634766,177.705];
_object = createVehicle ["Land_wpp_Turbine_V2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosATL _pos;
_object enableSimulationGlobal false;
_pos = [2077.331543,15924.133789,182.891];
_object = createVehicle ["Land_wpp_Turbine_V2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosATL _pos;
_object enableSimulationGlobal false;
_pos = [2144.808105,16019.181641,184.277];
_object = createVehicle ["Land_wpp_Turbine_V2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosATL _pos;
_object enableSimulationGlobal false;



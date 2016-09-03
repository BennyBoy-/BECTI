class CfgFunctions
{
	class ZAM
	{
		class showNames
		{
			file = "Client\Functions\Externals\zam_shownames";
			class showNames_init{description = "Initializes the mod."; postInit = 1;};
			class showNames_press{description = "To be executed on key press to start onEachFrame function.";};
			class showNames_release{description = "To be executed on key release to cease the execution of onEachFrame function.";};
			class showNames_onEachFrame{description = "Fired on each frame to show names as 3D text above players.";};
			class showNames_filterArrayByEquality{description = "To filter an array by evaluating each element against provided code and removing any that return true.";};
			class showNames_filterArrayByCode{description = "To filter an array by removing undesirable elements from it using an equality check.";};
			class showNames_getRankIcon{description = "Returns a rank icon from a rank string.";};
			class showNames_getFogViewDistance{description = "Returns the view distance with improved fog given elevation.";};
			class showNames_addDiscoverable{description = "Adds object to list of discoverable objects. It also makes it already known and gives the specified custom name if also desired.";};
			class showNames_pressLoop{description = "Continually gather variables to feed into global variable used by zam_showNames_fnc_onEachFrame in order to offload processing.";};
			class showNames_tfar_eh{description = "Monitors the local player's TFAR plugin and variable(s) to determine when and how loud the local player speaks.";};
			class showNames_acre_eh{description = "Monitors the local player's ACRE plugin and variable(s) to determine when and how loud the local player speaks.";};
			class showNames_vol{description = "Predicts the true volume that the given listener hears the given speaker, considering the distance and the type of speaking.";};
			class showNames_vol_tfar{description = "Gets volume ratio for TFAR.";};
			class showNames_vol_acre{description = "Gets volume ratio for ACRE.";};
			class showNames_getZoom{description = "Returns the zoom level of the player.";};
		};
	};
};
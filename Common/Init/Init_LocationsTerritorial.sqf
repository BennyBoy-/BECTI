//--- Town Neighbors System

switch (toLower(worldName)) do {
	case "stratis": {
		//--- LIST NEED TO BE POPULATED
		TheSpartan setVariable ["cti_town_neighbors", [AgiosCephas]];
		AgiosCephas setVariable ["cti_town_neighbors", [TheSpartan, AgiosLoannis]];
		AgiosLoannis setVariable ["cti_town_neighbors", [AgiosCephas, CampMaxwell]];
		CampMaxwell setVariable ["cti_town_neighbors", [Girna, AgiosLoannis, AirStationMike]];
		Girna setVariable ["cti_town_neighbors", [CampMaxwell]];
		AirStationMike setVariable ["cti_town_neighbors", [CampMaxwell, CampTempest, OldOutpost]];
		CampTempest setVariable ["cti_town_neighbors", [AirStationMike]];
		OldOutpost setVariable ["cti_town_neighbors", [AirStationMike, TransmissionTowerBrit, OldRuins]];
		TransmissionTowerBrit setVariable ["cti_town_neighbors", [AgiaMarina, OldOutpost]];
		AgiaMarina setVariable ["cti_town_neighbors", [StratisAirbase, TransmissionTowerBrit, CampRogain]];
		StratisAirbase setVariable ["cti_town_neighbors", [AgiaMarina]];
		KillFarm setVariable ["cti_town_neighbors", [CampRogain]];
		CampRogain setVariable ["cti_town_neighbors", [KillFarm, AgiaMarina, LZBaldy]];
		LZBaldy setVariable ["cti_town_neighbors", [CampRogain, OldRuins]];
		OldRuins setVariable ["cti_town_neighbors", [LZBaldy, OldOutpost, KaminoFiringRange]];
		KaminoFiringRange setVariable ["cti_town_neighbors", [OldRuins]];
	};
};
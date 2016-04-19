//--- Town Neighbors System

switch (toLower(worldName)) do {
	case "altis": {
		Selakano setVariable ["cti_town_neighbors", [Feres, Com Platform]];
		Pyrgos setVariable ["cti_town_neighbors", [Sub Pen, Faronaki, Ekali, Dorida]];
		Dorida setVariable ["cti_town_neighbors", [Chalkeia, Pyrgos, Charkia]];
		Charkia setVariable ["cti_town_neighbors", [Rodopoli, Dorida, Anthrakia]];
		Kalochori setVariable ["cti_town_neighbors", [Paros, Limni]];
		Rodopoli setVariable ["cti_town_neighbors", [Kalithea, Paros, Charkia]];
		Paros setVariable ["cti_town_neighbors", [Rodopoli, Loannina, Military Outpost, Limni, Kalochori ]];
		Molos setVariable ["cti_town_neighbors", [Sofia, Research Platform, Molos Airfield]];
		Anthrakia setVariable ["cti_town_neighbors", [Telos, Charkia, Sub Pen]];
		Telos setVariable ["cti_town_neighbors", [Military, Kalithea, Anthrakia]];
		Athira setVariable ["cti_town_neighbors", [Military, Ifestiona, Frini]];
		Koroni setVariable ["cti_town_neighbors", [Galati, Ifestiona, Lakka]];
		Galati setVariable ["cti_town_neighbors", [Koroni, Syrta, North Airfield]];
		Oreokastro setVariable ["cti_town_neighbors", [North Airfield, Agios Konstantinos, The Dump]];
		Syrta setVariable ["cti_town_neighbors", [Kore, Agios Dionysios, Galati, The Dump]];
		Agios Dionysios setVariable ["cti_town_neighbors", [Lakka, Zaros, Kore, Syrta]];
		Lakka setVariable ["cti_town_neighbors", [Neochori, AirBase, Koroni, Agios Dionysios]];
		Neochori setVariable ["cti_town_neighbors", [AirBase, Lakka, Military, Sub Pen, AAC Airfield ]];
		Zaros setVariable ["cti_town_neighbors", [Agios Dionysios, AAC Airfield, Vikos, Panochori]];
		Kavala setVariable ["cti_town_neighbors", [Panochori, Wind Farm, Stadium]];
		Airbase setVariable ["cti_town_neighbors", [Neochori, Lakka, Military, Sub Pen]];
		Military setVariable ["cti_town_neighbors", [Athira, Telos, Airbase]];
		Chalkeia setVariable ["cti_town_neighbors", [Dorida, Panagia, Limni]];
		Ifestiona setVariable ["cti_town_neighbors", [Koroni, Athira, Frini]];
		Negades setVariable ["cti_town_neighbors", [Agios Konstantinos, Kore, Stadium]];
		Sofia setVariable ["cti_town_neighbors", [Molos, Nidasos, Loannina]];
		Panagia setVariable ["cti_town_neighbors", [Chalkeia, Feres, Ekali]];
		Kore setVariable ["cti_town_neighbors", [Syrta, Agios Dionysios, Negades]];
		Sand Airfield setVariable ["cti_town_neighbors", [Loannina ]];
		Makrynisi setVariable ["cti_town_neighbors", [Faronaki, Neochori, AAC Airfield]];
		Faronaki setVariable ["cti_town_neighbors", [Ekali, Vikos, Makrynisi, Pyrgos]];
		Kalithea setVariable ["cti_town_neighbors", [Rodopoli, Telos]];
		Vikos setVariable ["cti_town_neighbors", [Zaros, Faronaki, Com Platform, Oil Rig]];
		Ekali setVariable ["cti_town_neighbors", [Panagia, Faronaki, Com Platform, Pyrgos]];
		Frini setVariable ["cti_town_neighbors", [Ifestiona, Nychi, Athira, Radar Platform]];
		Nychi setVariable ["cti_town_neighbors", [Theater Ruins, Fuel Depot, Frini]];
		Theater Ruins setVariable ["cti_town_neighbors", [Fuel Depot, Military Outpost, Nychi]];
		Military Outpost setVariable ["cti_town_neighbors", [Theater Ruins, Paros, Hotel Complex]];
		North Airfield setVariable ["cti_town_neighbors", [Galati, Oreokastro, Radar Platform]];
		Loannina setVariable ["cti_town_neighbors", [Sand Airfield, Sofia, Hotel Complex, Paros]];
		AAC Airfield setVariable ["cti_town_neighbors", [Zaros, Neochori, Makrynisi]];
		Molos Airfield setVariable ["cti_town_neighbors", [Fuel Depot, Molos]];
		Panochori setVariable ["cti_town_neighbors", [Kavala, Stadium, Zaros, Oil Rig]];
		Hotel Complex setVariable ["cti_town_neighbors", [Military, Loannina, Nidasos]];
		Stadium setVariable ["cti_town_neighbors", [Negades, Kavala, Panochori]];
		Limni setVariable ["cti_town_neighbors", [Paros, Chalkeia, Research Platform]];
		Agios Konstantinos setVariable ["cti_town_neighbors", [The Dump, Negades, Oreokastro, Wind Farm]];
		Feres setVariable ["cti_town_neighbors", [Panagia, Selakano, Research Platform]];
		The dump setVariable ["cti_town_neighbors", [Oreokastro, Syrta, Agios Konstantinos]];
		Nidasos setVariable ["cti_town_neighbors", [Hotel Complex, Sofia]];
		Sub Pen setVariable ["cti_town_neighbors", [Neochori, Airbase, Anthrakia, Pyrgos]];
		Com Platform setVariable ["cti_town_neighbors", [Ekali, Vikos, Selakano]];
		Research Platform setVariable ["cti_town_neighbors", [Feres, Limni, Molos]];
		Fuel Depot setVariable ["cti_town_neighbors", [Radar Platform, Nychi, Theater Ruins, North Airfield]];
		Oil Rig setVariable ["cti_town_neighbors", [Vikos, Panochori]];
		Radar Platform setVariable ["cti_town_neighbors", [North Airfield, Frini, Fuel Depot]];
		Wind Farm setVariable ["cti_town_neighbors", [Agios Konstantinos, Kavala]];
	};
};

switch (toLower(worldName)) do {
	case "stratis": {
		Live Add Stratis Please
		};
};

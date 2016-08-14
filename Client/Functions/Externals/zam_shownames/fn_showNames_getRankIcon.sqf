/*
	Author(s):
		Phoenix of Zulu-Alpha
		Thanks to Mattar_Tharkari for the image paths

	Purpose:
		Returns a rank icon from a rank string.
		This does not fetch the icon paths from the config in order to maximize performance

	Params
		0: String representation of a valid Arma rank

	Return
		Nothing
*/

private "_rank";

_rank = _this select 0;

call {
	if (_rank == "PRIVATE") exitWith {"\A3\Ui_f\data\GUI\Cfg\Ranks\private_gs.paa"};
	if (_rank == "CORPORAL") exitWith {"\A3\Ui_f\data\GUI\Cfg\Ranks\corporal_gs.paa"};
	if (_rank == "SERGEANT") exitWith {"\A3\Ui_f\data\GUI\Cfg\Ranks\sergeant_gs.paa"};
	if (_rank == "LIEUTENANT") exitWith {"\A3\Ui_f\data\GUI\Cfg\Ranks\lieutenant_gs.paa"};
	if (_rank == "CAPTAIN") exitWith {"\A3\Ui_f\data\GUI\Cfg\Ranks\captain_gs.paa"};
	if (_rank == "MAJOR") exitWith {"\A3\Ui_f\data\GUI\Cfg\Ranks\major_gs.paa"};
	if (_rank == "COLONEL") exitWith {"\A3\Ui_f\data\GUI\Cfg\Ranks\colonel_gs.paa"};
	if (_rank == "GENERAL") exitWith {"\A3\Ui_f\data\GUI\Cfg\Ranks\general_gs.paa"};
	""
}
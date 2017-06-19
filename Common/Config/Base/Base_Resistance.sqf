_side = _this;

//--- Defenses
_headers = [];
_classes = [];
_prices = [];
_placements = [];
_categories = [];
_coinmenus = [];
_coinblacklist = [];

_headers pushBack 		"MG Defense";
_classes pushBack 		"I_HMG_01_high_F";
_prices pushBack 		200;
_placements pushBack 	[180, 5];
_categories pushBack 	"Defense";
_coinmenus pushBack 	["HQ", "RepairTruck"];
_coinblacklist pushBack [];

_headers pushBack 		"GL Defense";
_classes pushBack 		"I_GMG_01_high_F";
_prices pushBack 		300;
_placements pushBack 	[180, 5];
_categories pushBack 	"Defense";
_coinmenus pushBack 	["HQ", "RepairTruck"];
_coinblacklist pushBack [];

_headers pushBack 		"AT Defense";
_classes pushBack 		"I_static_AT_F";
_prices pushBack 		8000;
_placements pushBack 	[180, 5];
_categories pushBack 	"Defense";
_coinmenus pushBack 	["HQ", "RepairTruck"];
_coinblacklist pushBack [];

_headers pushBack 		"AA Defense";
_classes pushBack 		"I_static_AA_F";
_prices pushBack 		3000;
_placements pushBack 	[180, 5];
_categories pushBack 	"Defense";
_coinmenus pushBack 	["HQ", "RepairTruck"];
_coinblacklist pushBack [];

_headers pushBack 		"Mortar";
_classes pushBack 		"I_Mortar_01_F";
_prices pushBack 		10000;
_placements pushBack 	[180, 5];
_categories pushBack 	"Defense";
_coinmenus pushBack 	["HQ", "RepairTruck"];
_coinblacklist pushBack [];

[_side, _headers, _classes, _prices, _placements, _categories, _coinmenus, _coinblacklist] call compile preprocessFileLineNumbers "Common\Config\Base\Set_Defenses.sqf";
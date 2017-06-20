/*
  # HEADER #
	Script: 		Common\Functions\Common_ArrayToLower.sqf
	Alias:			CTI_CO_FNC_ArrayToLower
	Description:	Convert all string elements in an array to lowercase
	Author: 		Benny
	Creation Date:	16-09-2013
	Revision Date:	16-09-2013
	
  # PARAMETERS #
    0	[Array]: A generic strings array
	
  # RETURNED VALUE #
	[Array]: The converted array
	
  # SYNTAX #
	(ARRAY) call CTI_CO_FNC_ArrayToLower
	
  # EXAMPLE #
	_myArray = ["benny","Benny","BENNY"];
	(_myArray) call CTI_CO_FNC_ArrayToLower; -> ["benny","benny","benny"]
*/

private ["_index", "_tolower"];

_tolower = [];

{_tolower pushBack (toLower _x)} forEach +_this;

_tolower
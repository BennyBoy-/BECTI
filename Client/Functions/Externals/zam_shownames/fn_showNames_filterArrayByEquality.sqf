/*
	By Phoenix of Zulu-Alpha

	Purpose
		To filter an array by removing undesirable elements from it using an equality check.
		This returns a new array (no mutation).

	Params
		0: Origional Array
		1: Array of objects (that if equal to) will be removed. All data types are supported.

	Return

*/

private ["_array_old", "_filter", "_array_new"];

_array_old = _this select 0;
_filter = _this select 1;

_array_new = [];

{
	private ["_element_org", "_pass"];
	_element_org = _x;
	_pass = true;

	{
		if ((typeName _element_org == typeName _x) && {_element_org == _x}) exitWith {
			_pass = false;
		}
	} count _filter;

	if (_pass) then {
		_array_new set [count _array_new, _element_org]
	};
} count _array_old;

_array_new
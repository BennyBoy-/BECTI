/*
	By Phoenix of Zulu-Alpha


	Purpose
		To filter an array by evaluating each element against provided code and removing any that return true.
		This returns a new array (no mutation).

	Params
		0: Origional Array
		1: Code block that returns BOOL (use _this to refer to element to be tested).

	Return
		New, filtered array
*/

private ["_array_old", "_filter", "_array_new"];

_array_old = _this select 0;
_filter = _this select 1;

_array_new = [];

{
	if !(_x call _filter) then {
		_array_new set [count _array_new, _x]
	};
} count _array_old;

_array_new
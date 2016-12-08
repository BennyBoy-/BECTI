/*
  # HEADER #
	Description:	Adjust skill for players vehicle crew

  # PARAMETERS #
    0	[Object]: Unit
	
  # RETURNED VALUE #
	None
	
*/

private ["_unit"];

_unit = _this;

_unit setSkill ["spotDistance", 1];	// Affects the AI ability to spot targets within it's visual or audible range and accuracy of the information - higher value=better
_unit setSkill ["spotTime", 1];	// Affects how quick the AI react to death, damage or observing an enemy - higher value=better
_unit setSkill ["commanding", 1];	// Affects how quickly recognized targets are shared with the group (Higher value = faster reporting)

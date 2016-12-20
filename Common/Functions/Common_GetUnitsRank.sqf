/*
  # HEADER #
	Script: 		Common\Functions\Common_GetUnitsRank.sqf
	Alias:			CTI_CO_FNC_GetUnitsRank
	Description:	Retrieve the rank of a given unit
					Note that this function only work in MP (Lan/Dedi)
	Author: 		Benny
	Creation Date:	18-09-2013
	Revision Date:	18-09-2013
	
  # PARAMETERS #
    0	[Array]: The units
	
  # RETURNED VALUE #
	[Integer]: The sum of units' Rank
	
  # SYNTAX #
	(SIDE) call CTI_CO_FNC_GetUnitsRank
	
  # EXAMPLE #
    _score = (player) call CTI_CO_FNC_GetUnitsRank
	  -> Return the units Rank (or 0 in SP)
*/

private ["_logic", "_rank", "_score"];

_rank = rank _this;

_score = [_this] call CTI_CO_FNC_GetUnitsScore;
switch (true) do {
	case (_score < 150) : { 
		_this setRank "PRIVATE";
	};
	case (_score >= 150 && _score < 300) : { 
		_this setRank "CORPORAL";
	};
	case (_score >= 300 && _score < 450) : { 
		_this setRank "SERGEANT";
	};
	case (_score >= 450 && _score < 600) : { 
		_this setRank "LIEUTENANT";
	};
	case (_score >= 600 && _score < 750) : { 
		_this setRank "CAPTAIN";
	};
	case (_score >= 750 && _score < 900) : { 
		_this setRank "MAJOR";
	};
	case (_score >= 900) : { 
		_this setRank "COLONEL";
	};
};

_rank
/*
 Author: rÃ¼be

 Description:
 Generate random positions around a center position within 
 the given limitations (distance, sector and findSafePos).

 The function does not guarantee to return the desired 
 amount of positions and may return an empty array anyway!

   - Beware: You could get positions on islands though... :/

  Parameter(s):
   _this: parameters (array of array [key (string), value (any)])

          - required:

            - "position" (position)

            - "number" (int)
              - number of positions to be returned, though it's 
                not guaranteed that this many will be returned.

          - optional:

            - "range" (array of [minDistance (scalar), maxDistance (scalar)])
              - default: [0, 250]

            - "sector" (array of [minAngle (scalar), maxAngle (scalar)])
              - default: [0, 360]

            - "objDistance" (scalar)
              - minimal distance to other/nearest objects
              - default = 1

            - "posDistance" (scalar)
              - minimal distance between returned positions
              - default = "objDistance" * 2

            - "roadDistance" (scalar)
              - 0: doesn't matter/no check
              - n > 0: minimal distance to any roads 
              - default: 0

            - "locationDistance" (scalar)
              - 0: doesn't matter/no check
              - n > 0: minimal distance to nearest location
              - default: 0

            - "locations" (array of strings)
              - define what is considered a location
              - affects "locationDistance"
              - default: ["NameCityCapital", "NameCity", "NameVillage"]

            - "maxGradient"   (scalar from 0.0 to 1.0)
              - default = 1.0;

            - "gradientRadius" (scalar in m)
              - default = "objDistance"

            - "waterMode" (int from 0 to 2)
               - 0: cannot be in water
               - 1: can either be in water or not
               - 2: must be in water
               - default: 0

            - "onShore" (int from 0 to 1)
               - 0: does not have to be at a shore
               - 1: must be at a shore
               - default: 0


 Example:
     _positions = [
        ["position", _campCenterPosition],
        ["number", 7],
        ["range", [0, 120]],
        ["sector", [0, 360]],
        ["objDistance", (_tentLength * 0.5)],
        ["maxGradient", 0.3]
     ] call RUBE_randomCirclePositions; 

 Returns:
  array-of-positions OR empty-array

*/

private ["_thePositions", "_pos", "_numPos", "_distMin", "_distMax", "_dirMin", "_dirMax", "_objDistance", "_posDistance", "_maxGradient", "_gradientRadius", "_waterMode", "_onShore", "_roadDistance", "_locationDistance", "_entities", "_i", "_maxIter", "_accepted", "_diceDir", "_diceDist", "_dicePos"];

_thePositions = [];

// catch arguments
_pos = [0,0,0];
_numPos = 1;
_distMin = 0;
_distMax = 250;
_dirMin = 0;
_dirMax = 360;
_objDistance = 1;
_posDistance = false;
_maxGradient = 1.0;
_gradientRadius = false;
_waterMode = 0;
_onShore = false;
_roadDistance = 0;
_locationDistance = 0;
_locationDefinition = [
  "NameCityCapital",
  "NameCity",
  "NameVillage"
];

// read parameters
{
  switch (_x select 0) do
  {
     case "position": { _pos = _x select 1; };
     case "number": { _numPos = _x select 1; };
     case "range": { 
        _distMin = (_x select 1) select 0; 
        _distMax = (_x select 1) select 1; 
     };
     case "sector": { 
        _dirMin = (_x select 1) select 0; 
        _dirMax = (_x select 1) select 1; 
     };
     case "objDistance": { _objDistance = _x select 1; };
     case "posDistance": { _posDistance = _x select 1; };
     case "maxGradient": { _maxGradient = _x select 1; };
     case "gradientRadius": { _gradientRadius = _x select 1; };
     case "waterMode": { _waterMode = _x select 1; };
     case "onShore": { 
        if ((typeName (_x select 1)) == "BOOL") then
        {
           _onShore = _x select 1; 
        } else {
           if ((_x select 1) == 1) then
           {
              _onShore = true;
           }; 
        };
     };
     case "roadDistance": { _roadDistance = _x select 1; }; 
     case "locationDistance": { _locationDistance = _x select 1; };
     case "locations": { _locationDefinition = _x select 1; };
  };
} forEach _this;

// set adaptive auto default values
if ((typeName _posDistance) == "BOOL") then
{
  _posDistance = _objDistance * 2;
};

if ((typeName _gradientRadius) == "BOOL") then
{
  _gradientRadius = _objDistance;
};




// we may need more iterations if we need a minimum distance between the positions
_i = 0;
_maxIter = 1000;
if (_posDistance > 0) then
{
  // roughly approximated..
  _maxIter = _maxIter + (_posDistance * _numPos);
};

// search n positions
while {(count _thePositions) < _numPos} do
{
  _diceDir = _dirMin + (random (_dirMax - _dirMin));
  _diceDist = _distMin + (random (_distMax - _distMin));
  _dicePos = [_pos, _diceDist, _diceDir] call BIS_fnc_relPos;

  // check if the position is safe
  if ((count (_dicePos isFlatEmpty[_objDistance, 0, _maxGradient, _gradientRadius, _waterMode, _onShore, objNull])) > 0) then
  {
     // check if dicePos is not to near to an already accepted position
     _accepted = true;
     if (_posDistance > 0) then
     {
        {
           if ((_dicePos distance _x) < _posDistance) then
           {
              _accepted = false;
           };
        } forEach _thePositions;
     };

     if (_roadDistance > 0) then
     {
        _entities = _dicePos nearRoads _roadDistance;
        if ((count _entities) > 0) then
        {
           _accepted = false;
        };
     };

     if (_locationDistance > 0) then
     {
        _entities = nearestLocations [_dicePos, _locationDefinition, _locationDistance];
        if ((count _entities) > 0) then
        {
           _accepted = false;
        };
     };      


     // all sub-tests passed?
     if (_accepted) then
     {
        _thePositions = _thePositions + [_dicePos];
     };
  };

  // we do not wanna search forever...
  if (_i > _maxIter) exitWith {};
  _i = _i + 1;
}; 


// return
_thePositions
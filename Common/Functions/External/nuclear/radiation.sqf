private ["_position", "_radius", "_rad1", "_rad2", "_rad3", "_damage", "_dmg"];

_position = _this select 0;
_radius = _this select 1;
_rad1 = _radius;
_rad2 = _radius / 2;
_rad3 = _radius / 4;

while { true } do
{
  {
    if ( (_x iskindof "Man") || count (crew _x) > 0 ) then
    {
      _distance = _position distance _x;
      if ( _distance > _rad3 ) then
      {
        if ( _distance > _rad2 )
          then {_damage = 0.0005}
          else {_damage = 0.001};
      } else {_damage = 0.002};
      if ( _x iskindof "Man" ) then
      {
        _damage = _damage + random _damage;
        _x setdammage ((getdammage _x) + _damage);
      } else
      {
        _damage = _damage / 2;
        {
          _dmg = _damage + random _damage;
          _x setdammage ((getdammage _x) + _dmg);
        } foreach (crew _x);
      };
    };
  } foreach (_position nearobjects ["All", _radius]);
  sleep (1 + random 1);
};
private ["_object", "_rotate", "_dir", "_up"];

_object = _this select 0;
_rotate = _this select 1;
  
_dir = vectordir _object;
_up = vectorup _object;
_object setvectordirandup [[(_dir select 0) + (random _rotate) - _rotate,
                            (_dir select 1) + (random _rotate) - _rotate,
		            (_dir select 2) + (random _rotate) - _rotate],
		           [(_up  select 0) + (random _rotate) - _rotate,
		            (_up  select 1) + (random _rotate) - _rotate,
		            (_up  select 2) + (random _rotate) - _rotate]];
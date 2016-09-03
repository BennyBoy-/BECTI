/*
	Author(s):
		Phoenix of Zulu-Alpha
		Thanks to KillZoneKid for the solution and code

	Purpose:
		Returns the zoom level of the player, With 1 being no zoom and for eg 20 being high zoom through optics).
		Code taken from : http://killzonekid.com/arma-scripting-tutorials-get-zoom/

	Params
		Nothing

	Return
		NUMBER - Zoom multiplier
*/

( [0.5,0.5] distance worldToScreen positionCameraToWorld [0,1.05,1] ) * ( getResolution select 5 )
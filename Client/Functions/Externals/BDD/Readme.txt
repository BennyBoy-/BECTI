BD&D v0.3 - 20.05.14
Autor: Ben@Arms

=============
==   German   ==
=============
Nutzung:


f�ge dies in die Init.sqf deiner Mission ein.






0 = execVM "BDD\Greifer.sqf";	



Nun kopiere den Ordner BDD in deinen Missionsordner.
Ziehbar sind die g�ngigen F�sser, Wassertanks und Munitionskisten.

Changelog:
-Taste "x" w�hrend des Ziehens blockiert, damit nicht vom Ziehen in eine Trageanimation gewechselt wird.
-Script abge�ndert, so dass man diverse Gegenst�nde vom Ziehen ausschlie�en kann:
Folgendes in die Init-Zeile des Objektes, welches nicht ziehbar ist einf�gen:
this setvariable ["nodrag",false,true];  

=============
==   English   ==
=============
Usage:

Put this into your init.sqf file in the mission folder:


attached = false;




0 = execVM "BDD\Greifer.sqf";	


Then copy the folder "BDD" into your missions folder.

Changelog:
-During the drag-action the button "x" gets disabled that the carrying animation gets blocked. This was a weird error, that F2k Sel discovered.
-To exclude an object from dragging, put the following into the objects init-line:
this setvariable ["nodrag",false,true];  


######################
Credits and thanks:
Forums Bistudio
An old post from A-Suicidal
Vienna from Hx3
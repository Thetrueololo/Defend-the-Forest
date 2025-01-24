randomize()
var _erste_welle = 0 //Ob der erste Gegner schon erschienen ist
if global.gegnerspawn <= 0 //Wenn der Timer der Gegner abgelaufen ist
{
	if _erste_welle = 0 //Positioniert Säge wenn der Timer zum ersten mal ablauft
	{
		y = 705
		_erste_welle = 1
	}
	//Zuerst schaut man, welche Gegner in dem Level erscheinen können
	if cup >= 2.5 gegnerstaerke = 1 //Wenn cup 2.5 oder mehr sind können Mützen-Gegner erscheinen.
	if cup >= 3.5 //Wenn cup 3.5 oder mehr sind...
	{
		if helmerlaubt == true gegnerstaerke = 2 //...und wenn Helm Gegner erlaubt sind können sie erscheinen.
	}
	if cup >= 6 //Wenn cup 6 oder mehr sind...
	{
		if saegeerlaubt == true gegnerstaerke = 3 //...und wenn Kettensägengegner erlaubt sind können sie erscheinen.
	}
	//Hier fangt der Gegner-platzier-algorythmus an
	randomize() //Generiere zufällige Zahl
	gegnerwahl = irandom_range(0,gegnerstaerke) //Generiert Zahl von 0-3: 0 = normaler Gegner, 1 = Hut-Gegner, 2 = Sägen-Gegner, 3 = Helm-Gegner
	if gegnerwahl ==  0 //Wenn normaler Gegner ausgewählt wird
	{
		instance_create_layer(1280, 160, "Instances", oGegnerNormal) //Platziert normaler Gegner
		cap = cap - 1 //Reduziert calculation Points
	}
	if gegnerwahl == 1 //Wenn Hut-Gegner ausgewählt wird
	{
		if cap >= 2
		{
			instance_create_layer(1280, 160, "Instances", oGegnerHut) //Platziert Hut-Gegner
			cap = cap - 2
		}
	}
	if gegnerwahl == 2 //Wenn Helm-Gegner ausgewählt wird
	{
		if cap >= 3
		{
			instance_create_layer(1280, 160, "Instances", oGegnerHelm) //Platziert Helm-Gegner
			cap = cap - 3
		}
	}
	if gegnerwahl == 3 //Wenn Kettensägengegner ausgewählt wird
	{
		if cap >= 5
		{
			instance_create_layer(1280, 160, "Instances", oGegnerKettensaege) //Platziert Kettensägengegner
			cap = cap - 5
		}
	}
	if cap < 1
	{
		global.gegnerspawn = 600 //Setzt Timer zurück wenn keine Punkte übrig sind
		cup = cup + levelparam //Schwierigkeit für nächste Welle wird erhöht
		cap = cup //cap wird an die neuen cup angepasst
		welle = welle + 1
	}
}
if _erste_welle = 1 x = 700 + (welle * (388 / wellenanzahl)) //Säge ist weiter rechts je weiter man im Level ist.
if welle >= wellenanzahl //Das folgende passiert wenn die letzte Welle gespawnt wurde
{
		speed = 2 //Säge und vorderer Stamm bewegen sich nach unten
		direction = 270
		oLevelStammVorne.speed = 3
		oLevelStammVorne.direction = 270
		global.gegnerspawn = 9000000000000000000000000 //Verhindert das erscheinen neuer Gegner
		if instance_exists(oGegner) = false //Geht zur Levelauswahl wenn alle Gegner tot sind.
		{
			if room = rTutorial //Schaltet Level 1 frei
			{
				if global.levelprog < 1 global.levelprog = 1
			}
			if room = rLvEins //Schaltet Level 2 frei
			{
				if global.levelprog < 2 global.levelprog = 2
			}
			if room = rLvZwei //Schaltet Level 3 frei
			{
				if global.levelprog < 3 global.levelprog = 3
			}
			if room = rLvDrei //Schaltet den Endlos-Modus frei
			{
				if global.levelprog < 4 global.levelprog = 4
			}
			LevelReset() //Setzt alle globalen Variablen zurück
			room_goto(rLevelSelect) 
		}
}
if room = rEndless x = 10000 //Macht Säge unsichtbar im Endlos-Modus
if welle >= 5 levelparam = levelparamzwei
global.gegnerspawn = global.gegnerspawn - 1 //Zählt den Timer herunter
depth = -2 //Macht dass die Säge immer zwischen den Teilen des Baumstammes ist.

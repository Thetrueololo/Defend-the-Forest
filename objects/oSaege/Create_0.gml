//Schaut in welchem Level der Spieler ist
if room == rTutorial
{
	welle = 0 //Diese Variable haltet fest auf welcher Welle der Spieler gerade ist
	levelparam = 0.25 + (0.1 * global.smurfcount)//Definiert wie schnell Gegner stärker werden
	levelparamzwei = 0.25 + (0.1 * global.smurfcount)//Levelparam wird zu dieser Zahl später im Level
	cap = 1 //Cap = Calculation points, wird für Berechnungen benutzt
	cup = 1 //Cup = Current points, definiert wie viele cap man hat
	wellenanzahl = 6 //Wie viele Wellen von Gegner spawnen
	saegeerlaubt = false //Ob Kettensägengegner in dem Level vorkommen
	helmerlaubt = false //Ob Helmgegner in dem Level vorkommen
	gegnerwahl = 0 //Welcher Gegner platziert wird
	gegnerstaerke = 0 //Welche Gegner ausgewählt werden dürfen
	x = 700 //Nur im Tutorial: Sprint sofort in die richtige Position
	y = 705
}
if room == rLvEins
{
	welle = 0 //Diese Variable haltet fest auf welcher Welle der Spieler gerade ist
	levelparam = 0.2 + (0.1 * global.smurfcount)//Definiert wie schnell Gegner stärker werden
	levelparamzwei = 0.4 + (0.1 * global.smurfcount)//Levelparam wird zu dieser Zahl später im Level
	cap = 1 + (0.4 * global.smurfcount) //Cap = Calculation points, wird für Berechnungen benutzt
	cup = 1 + (0.4 * global.smurfcount) //Cup = Current points, definiert wie viele cap man hat
	wellenanzahl = 13 //Wie viele Wellen von Gegner spawnen
	saegeerlaubt = false //Ob Kettensägengegner in dem Level vorkommen
	helmerlaubt = false //Ob Helmgegner in dem Level vorkommen
	gegnerwahl = 0 //Welcher Gegner platziert wird
	gegnerstaerke = 0 //Welche Gegner ausgewählt werden dürfen
}
if room == rLvZwei
{
	welle = 0 //Diese Variable haltet fest auf welcher Welle der Spieler gerade ist
	levelparam = 0.2 + (0.15 * global.smurfcount)//Definiert wie schnell Gegner stärker werden
	levelparamzwei = 0.48 + (0.15 * global.smurfcount)//Levelparam wird zu dieser Zahl später im Level
	cap = 1 + (0.35 * global.smurfcount) //Cap = Calculation points, wird für Berechnungen benutzt
	cup = 1 + (0.35 * global.smurfcount) //Cup = Current points, definiert wie viele cap man hat
	wellenanzahl = 16 //Wie viele Wellen von Gegner spawnen
	saegeerlaubt = false //Ob Kettensägengegner in dem Level vorkommen
	helmerlaubt = true //Ob Helmgegner in dem Level vorkommen
	gegnerwahl = 0 //Welcher Gegner platziert wird
	gegnerstaerke = 0 //Welche Gegner ausgewählt werden dürfen
}
if room == rLvDrei
{
	welle = 0 //Diese Variable haltet fest auf welcher Welle der Spieler gerade ist
	levelparam = 0.25 + (0.15 * global.smurfcount)//Definiert wie schnell Gegner stärker werden
	levelparamzwei = 0.55 + (0.15 * global.smurfcount)//Levelparam wird zu dieser Zahl später im Level
	cap = 1 + (0.35 * global.smurfcount) //Cap = Calculation points, wird für Berechnungen benutzt
	cup = 1 + (0.35 * global.smurfcount) //Cup = Current points, definiert wie viele cap man hat
	wellenanzahl = 20 //Wie viele Wellen von Gegner spawnen
	saegeerlaubt = true //Ob Kettensägengegner in dem Level vorkommen
	helmerlaubt = true //Ob Helmgegner in dem Level vorkommen
	gegnerwahl = 0 //Welcher Gegner platziert wird
	gegnerstaerke = 0 //Welche Gegner ausgewählt werden dürfen
}
if room == rEndless
{
	welle = 0 //Diese Variable haltet fest auf welcher Welle der Spieler gerade ist
	levelparam = 0.25 + (0.7 * global.smurfcount) //Definiert wie schnell Gegner stärker werden
	levelparamzwei = 0.5 + (0.7 * global.smurfcount) //Levelparam wird zu dieser Zahl später im Level
	cap = 1 + (0.35 * global.smurfcount) //Cap = Calculation points, wird für Berechnungen benutzt
	cup = 1 + (0.35 * global.smurfcount) //Cup = Current points, definiert wie viele cap man hat
	wellenanzahl = 1000000000000000 //Wie viele Wellen von Gegner spawnen
	saegeerlaubt = true //Ob Kettensägengegner in dem Level vorkommen
	helmerlaubt = true //Ob Helmgegner in dem Level vorkommen
	gegnerwahl = 0 //Welcher Gegner platziert wird
	gegnerstaerke = 0 //Welche Gegner ausgewählt werden dürfen
	global.gegnerspawn = 1000 //Wie lange es für die erste Welle dauert zu erscheinen. Dier vordefiniert da es im Endlos-Modus kein Schild am Anfang hat.
}
global.previouslevel = room

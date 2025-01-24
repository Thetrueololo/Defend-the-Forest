if schildtext = 1 //Schildtext 1 bedeutet dass man mit einem click den Text voranschreiten kann. o heisst dass dies nicht geht.
{
	audio_play_sound(aSchild,1,false,1,0,.9)
	global.tutorialfortschritt = global.tutorialfortschritt + 1 //Zeigt bei click nächste Nachricht wenn erlaubt
}
if global.tutorialfortschritt = 7 || global.tutorialfortschritt = 9 || global.tutorialfortschritt = 11 //Wenn man einen Fehler macht und weiter clickt
{
	if instance_exists(oTier) = true oTier.hp = 0 //Entfernt alle Tiere falls vorhanden
	global.apples = 5 //Gibt wieder Äpfel
	global.tutorialfortschritt = 5 //Geht zurück und platziert noch mal einen Gegner
}
if global.tutorialfortschritt = 4
{
	global.apples = 5 //Gibt 3 Äpfel
}
if global.tutorialfortschritt = 5
{
	schildtext = 0
	spawntutorial(391) //Spawnt Gegner wenn man durch genug Text geht
}
if global.tutorialfortschritt = 13 //Platziert alle Apfel-Elemente um sie zu erklären
{
	instance_create_layer(15,455,"Foreground_UI",oApfelbaum)
	instance_create_layer(265,558.5436,"Foreground_UI",oApfelmeter)
	instance_create_layer(594,651,"Foreground_UI",oApfelcounter)
}
if global.tutorialfortschritt = 15
{
	global.apfelmax = 3 //Erlaubt dem Apfel-Meter dem Spieler einen Apfel zu geben während dem Dialog
	originalllamax = oLlama.x //Speichere die Position und HP des Llamas
	originalllamay = oLlama.y 
	originalllamahp = oLlama.hp
	originalllama = instance_nearest(originalllamax,originalllamay,oLlama) //Speichert die instance des llamas
}
if global.tutorialfortschritt = 19 || global.tutorialfortschritt = 21 //Wenn man einen Fehler macht und weiter clickt
{
	instance_destroy(originalllama) //Zerstört das Llama, welches zuerst platziert wurde (Samit kein Feld dort entsteht da es nacher ersetzt wird)
	if instance_exists(oTier) = true oTier.hp = 0 //Entfernt alle Tiere falls vorhanden
	instance_create_layer(originalllamax,originalllamay,"Tiere",oLlama) //Platziert ein Llama wo vorher eins war
	instance_nearest(originalllamax,originalllamay,oLlama).hp = originalllamahp //Setzt die hp des neuen Llama zu denen des Alten
	global.apples = 3 //Gibt wieder Äpfel
	if instance_exists(oApfelmeter) oApfelmeter.image_index = 0 //Setzt den Apfel-Meter zurück
	global.tutorialfortschritt = 17 //Geht zurück und platziert noch mal einen Gegner
}
if global.tutorialfortschritt = 17
{
	global.apfelmax = 150
	schildtext = 0
	spawntutorial(305) //Spawnt noch mal Gegner wenn man durch genug Text geht
}
if global.tutorialfortschritt = 23
{
	instance_create_layer(896,704,"Foreground_UI",oLevelStammVorne) //Die drei Bestandteile des Level-Fortschritt-Indikators werden platziert.
	instance_create_layer(x,y,"Foreground_UI",oSaege)
	instance_create_layer(896,704,"Foreground_UI",oLevelStammHinten)
}
if global.tutorialfortschritt = 25
{
	schildtext = 0
	global.gegnerspawn = 1
	global.tutorialfortschritt = 26
}
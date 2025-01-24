global.tutorialfortschritt = global.tutorialfortschritt + 1 //Zeigt bei click nächste Nachricht wenn erlaubt
audio_play_sound(aSchild,1,false,1,0,.9)
if global.tutorialfortschritt >= 4
{
	global.gegnerspawn = 1000 //Erlaubt das spawnen der ersten Gegner.
	global.apples = 3
	global.apfelmax = 150
	instance_destroy() //Entfernt das Schild
}
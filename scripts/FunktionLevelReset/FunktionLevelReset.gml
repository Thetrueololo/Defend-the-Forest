
function LevelReset() //Definiert Funktion die alle Variablen zurücksetzt nach einem Level
{
	global.apples = 3 //Anzahl Äpfel
	global.selected = 0 // 0 = nichts, 1 = llama, 2 = stinktier, 3 = Baumstamm
	global.gegnerspawn = 999999999999999 //Timer wann neue Gegner spawnen. Sehr hoch damit die Gegner erst Spawnen wenn man durch den Text des Schildes geclickt hat.
	global.tutorialfortschritt = 2 // Wie weit man im Tutorial ist
	global.apfelmax = 150 //Maximale Anzahl an Äpfel (v.a. wichtig im Tutorial)
	instance_activate_all()
	global.pausiert = false
	audio_stop_all()
}
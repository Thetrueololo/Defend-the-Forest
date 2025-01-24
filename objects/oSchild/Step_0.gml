image_index = global.tutorialfortschritt //Passt den gezeigten Text an den Status des Tutorials an
if global.tutorialfortschritt = 15 //Beim Teil wo der Apfel-Meter erklärt wird darf man erst weiter gehen wenn man einen dritten Apfel erhalten hat.
{
	if global.apples = 3 schildtext = 1
	else schildtext = 0
}
if schildtext = 1 global.selected = 0 //Nichts kann ausgewählt werden
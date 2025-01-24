//Wenn man genug geld hat wird das Llama ausgewählt
if position_meeting(mouse_x,mouse_y, oLlamachoice)
{
	if room != rTutorial || global.tutorialfortschritt = 5 || global.tutorialfortschritt = 17 || global.tutorialfortschritt = 26 //Man kann im Tutorial-Raum nur an bestimmten Punkten ein Llama platzieren.
	{
		if global.apples >= 3 global.selected = 1
	}
}
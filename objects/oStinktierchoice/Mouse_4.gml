//Wenn man genug geld hat wird das Stinktier ausgewählt
if position_meeting(mouse_x,mouse_y, oStinktierchoice)
{
	if global.apples >= 4
	{
		global.selected = 2
	}
}
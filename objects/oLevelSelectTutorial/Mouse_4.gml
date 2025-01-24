if position_meeting(mouse_x, mouse_y, oLevelSelectTutorial)
{
	global.tutorialfortschritt = 2
	global.apples = 0
	global.apfelmax = 0
	audio_play_sound(aLevelStart,1,false)
	room_goto(rTutorial)
}
// Geht zum tutorial-Level wenn man die linke Maustaste drückt und der Cursor über dem Knopf ist.
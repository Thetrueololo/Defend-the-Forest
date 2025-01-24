if position_meeting(mouse_x, mouse_y, oLevelSelectLv1)
{
	if global.levelprog >= 1
	{
		audio_play_sound(aLevelStart,1,false)
		room_goto(rLvEins)
	}
}
// Geht zu Level 1 wenn man die linke Maustaste drückt und der Cursor über dem Knopf ist.
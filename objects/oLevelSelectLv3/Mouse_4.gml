if position_meeting(mouse_x, mouse_y, oLevelSelectLv3)
{
	if global.levelprog >= 3
	{
		audio_play_sound(aLevelStart,1,false)
		room_goto(rLvDrei)
	}
}
// Geht zu Level 3 wenn man die linke Maustaste drückt und der Cursor über dem Knopf ist.
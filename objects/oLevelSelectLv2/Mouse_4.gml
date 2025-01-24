if position_meeting(mouse_x, mouse_y, oLevelSelectLv2)
{
	if global.levelprog >= 2
	{
		audio_play_sound(aLevelStart,1,false)
		room_goto(rLvZwei)
	}
}
// Geht zu Level 2 wenn man die linke Maustaste drückt und der Cursor über dem Knopf ist.
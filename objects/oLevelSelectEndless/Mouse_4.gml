if position_meeting(mouse_x, mouse_y, oLevelSelectEndless)
{
	if global.levelprog >= 4
	{
		audio_play_sound(aLevelStart,1,false)
		room_goto(rEndless)
	}
}
// Geht zum Endlos-level wenn man die linke Maustaste drückt und der Cursor über dem Knopf ist.
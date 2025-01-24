if position_meeting(mouse_x, mouse_y, oSmurfButton)
{
	if global.levelprog >= 4
	{
		audio_play_sound(aLevelStart,1,false)
		global.levelprog = 0
		global.smurfcount = global.smurfcount + 1
		room_goto(rLevelSelect)
	}
}
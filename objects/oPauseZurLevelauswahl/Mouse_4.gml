if position_meeting(mouse_x, mouse_y, oPauseZurLevelauswahl)
{
	LevelReset()
	audio_play_sound(aMenuZurueck,1,false)
	room_goto(rLevelSelect)
}
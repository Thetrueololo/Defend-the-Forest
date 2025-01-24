if position_meeting(mouse_x, mouse_y, oPurchaseFive)
{
	{
		audio_play_sound(aLevelStart,1,false)
		global.money = global.money + 5
	}
}
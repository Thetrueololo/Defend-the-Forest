if position_meeting(mouse_x, mouse_y, oBirchPurchase)
{
	if state = 0
	if global.money >= 10
	{
		audio_play_sound(aLevelStart,1,false)
		global.money = global.money -10
		global.baumskin = 1
		global.baumpurchased = 1
		sprite_index = sBirchEq
		state = 1
		skip = 1
	}
	if state = 1
	{
		if skip = 0
		{
			audio_play_sound(aLevelStart,1,false)
			sprite_index = sBirchNot
			global.baumskin = 0
			state = 2
			skip = 1
		}
	}
	if state = 2
	{
		if skip = 0
		{
			audio_play_sound(aLevelStart,1,false)
			sprite_index = sBirchEq
			global.baumskin = 1
			state = 1
		}
	}
	skip = 0
}
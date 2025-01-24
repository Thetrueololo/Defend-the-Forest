if position_meeting(mouse_x, mouse_y, oRBGPurchase)
{
	if state = 0
	if global.money >= 15
	{
		audio_play_sound(aLevelStart,1,false)
		global.money = global.money -15
		global.stinkskin = 1
		global.stinkpurchased = 1
		sprite_index = sRGBEq
		state = 1
		skip = 1
	}
	if state = 1
	{
		if skip = 0
		{
			audio_play_sound(aLevelStart,1,false)
			sprite_index = sRGBNot
			global.stinkskin = 0
			state = 2
			skip = 1
		}
	}
	if state = 2
	{
		if skip = 0
		{
			audio_play_sound(aLevelStart,1,false)
			sprite_index = sRGBEq
			global.stinkskin = 1
			state = 1
		}
	}
	skip = 0
}
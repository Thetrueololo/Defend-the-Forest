if position_meeting(mouse_x, mouse_y, oMiloPurchase)
{
	if state = 0
	if global.money >= 20
	{
		audio_play_sound(aLevelStart,1,false)
		global.money = global.money -20
		global.llamaskin = 1
		global.milopurchased = 1
		sprite_index = sMiloEq
		state = 1
		skip = 1
	}
	if state = 1
	{
		if skip = 0
		{
			audio_play_sound(aLevelStart,1,false)
			sprite_index = sMiloNot
			global.llamaskin = 0
			state = 2
			skip = 1
		}
	}
	if state = 2
	{
		if skip = 0
		{
			audio_play_sound(aLevelStart,1,false)
			sprite_index = sMiloEq
			global.llamaskin = 1
			state = 1
		}
	}
	skip = 0
}
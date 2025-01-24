if position_meeting(mouse_x, mouse_y, oPauseWeiter)
{
	instance_activate_all()
	instance_destroy(oPauseZurLevelauswahl)
	global.pausiert = false
	oPause.sprite_index = sUnsichtbar
	audio_play_sound(aMenuKnopf,1,false)
	instance_destroy()
}
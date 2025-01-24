if global.pausiert = false //Wenn man esc drückt und das Spiel noch nicht pausiert ist
{
	global.pausiert = true
	instance_deactivate_all(true) //Pausiert das Spiel
	audio_play_sound(aPause,1,false)
	sprite_index = sPauseBildschirm //Ändert Aussehen zum Pausenmenu
	instance_create_layer(630,450,"Foreground_UI",oPauseWeiter) //Platziert die zwei Knöpfe
	instance_create_layer(690,640,"Foreground_UI",oPauseZurLevelauswahl)
	instance_activate_object(oPauseZurLevelauswahl) //Die Teile des Pausenmenu werden ausgeschlossen
	instance_activate_object(oPauseWeiter)
	audio_stop_sound(aKettensaegePassiv)
}
else
{
	instance_activate_all()
	instance_destroy(oPauseZurLevelauswahl)
	instance_destroy(oPauseWeiter)
	global.pausiert = false
	audio_play_sound(aMenuKnopf,1,false)
	sprite_index = sUnsichtbar
}
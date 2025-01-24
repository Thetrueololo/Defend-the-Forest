depth = -1 //Macht dass es immer im Hintergrund ist
if instance_exists(oGegnerKettensaege) = true //Schaut, ob ein Kettensägegegner auf dem Feld ist
{

	if sfxspielt = false
	{
		audio_play_sound(aKettensaegePassiv,1,1) //Spielt den Sound der Säge ab falls noch kein Sound spielt
		sfxspielt = true
	}
}
else
{
	audio_stop_sound(aKettensaegePassiv) //Kettensägensound hört auf wenn keine Kettensäägegener mehr auf dem Feld sind
}
if audio_is_playing(aKettensaegePassiv) = false sfxspielt = false
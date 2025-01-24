if position_meeting(mouse_x, mouse_y, oZurueckKnopf)
{
	audio_play_sound(aMenuZurueck,1,false)
	room_goto(rLevelSelect)
}
// Geht zur Level-Auswahl wenn man die linke Maustaste drückt und der Cursor über dem Knopf ist.
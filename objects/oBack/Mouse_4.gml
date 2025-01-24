if position_meeting(mouse_x, mouse_y, oBack)
{
	audio_play_sound(aMenuZurueck,1,false)
	room_goto(rTitleScreen)
}
// Geht zur Level-Auswahl wenn man die linke Maustaste drückt und der Cursor über dem Knopf ist.
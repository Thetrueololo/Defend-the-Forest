if position_meeting(mouse_x, mouse_y, oToShop)
{
	audio_play_sound(aMenuKnopf,1,false)
	room_goto(rShop)
}
// Geht zur Level-Auswahl wenn man die linke Maustaste drückt und der Cursor über dem Knopf ist.
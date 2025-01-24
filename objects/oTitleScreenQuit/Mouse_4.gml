if position_meeting(mouse_x, mouse_y, oTitleScreenQuit)
{
	audio_play_sound(aMenuZurueck,1,false)
	game_end()
}
// Schliesst das Spiel wenn man die linke Maustaste drückt und der Cursor über dem Knopf ist.
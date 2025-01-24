if position_meeting(mouse_x, mouse_y, oNochMalKnopf)
{
	audio_play_sound(aMenuKnopf,1,false)
	room_goto(global.previouslevel)
}
// Geht wieder ins vorherige Level wenn man auf diesen Knopf drückt
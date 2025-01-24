if collision_rectangle(x-18, y-12, x+13, y+3,oGegner,false,false) //Schaut ob ein Gegner in der Nähe ist
{
	with instance_nearest(x,y,oGegner)
	{
		self.hp = self.hp - 1 //Macht 1 Schaden
	}
	if hsfx = 1 audio_play_sound(aTreffer1,1,false) //Spielt Sound-Effekt ab
	else audio_play_sound(aTreffer2,1,false)
	instance_destroy() //Zerstört sich selbst nach Kollision
}
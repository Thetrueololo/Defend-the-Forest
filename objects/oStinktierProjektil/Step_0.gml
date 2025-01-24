if collision_rectangle(x-18, y-12, x+13, y+3,oGegner,false,false) //Schaut ob ein Gegner in der Nähe ist
{
	with instance_nearest(x,y,oGegner)
	{
		self.hp = self.hp - 0.75 //Macht 0.75 Schaden
		self.stink = true //Verstinkt bzw. Verlangsamt den Gegner
		self.stinktimer = 350 //Setzt den Stinktimer des Gegners zurück
	}
	if hsfx = 1 audio_play_sound(aTreffer1,1,false,1,0,.7) //Spielt Sound-Effekt ab
	else audio_play_sound(aTreffer2,1,false,1,0,.7)
	instance_destroy() //Zerstört sich selbst nach Kollision
}
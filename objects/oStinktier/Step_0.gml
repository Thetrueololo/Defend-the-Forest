if hp > 0 //wenn es noch lebt
{
	if (collision_line(x,y,room_width,y,oGegner,false,false) != noone) //schaut ob ein Gegner rechts ist
	{
		atcd = atcd - 1
		if atcd <= 0 //wenn es bereit ist zu schiessen
		{
			instance_create_layer(x,y-4,"Instances",oStinktierProjektil) //Kreiert das Projektil
			randomize()
			spsfx = irandom_range(1,4)
			if spsfx = 1
				audio_play_sound(aSpuck1,1,false,1,0,random_range(0.75,0.9))
			if spsfx = 2
				audio_play_sound(aSpuck1,1,false,1,0,random_range(0.75,0.9))
			if spsfx = 3
				audio_play_sound(aSpuck1,1,false,1,0,random_range(0.75,0.9))
			if spsfx = 4
				audio_play_sound(aSpuck1,1,false,1,0,random_range(0.75,0.9))
			atcd = irandom_range(90, 110) //Setzt den cooldown zurück nach dem Angriff
		}
	}
	else atcd = irandom_range(90, 110) //Setzt den cooldown zurück falls kein Gegner rechts ist.
}
else
{
	instance_create_layer(x,y,"Instances",oFeld)
	instance_destroy() //zerstört Stinktier wenn es keine Lebenspunkte mehr hat
}
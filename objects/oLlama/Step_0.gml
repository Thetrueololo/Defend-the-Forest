if hp > 0 //Folgendes Passiert, wenn es noch lebt
{
	if (collision_line(x,y,room_width,y,oGegner,false,false) != noone) //Schaut, ob ein Gegner rechts ist
	{
		atcd = atcd - 1
		if atcd <= 0 //wenn es bereit ist zu schiessen
		{
			instance_create_layer(x+15,y-4,"Instances",oLlamaProjektil) //Kreiert das Projektil
			randomize()
			spsfx = irandom_range(1,4)
			if spsfx = 1
				audio_play_sound(aSpuck1,1,false,1,0,random_range(1.05,0.95))
			if spsfx = 2
				audio_play_sound(aSpuck2,1,false,1,0,random_range(1.05,0.95))
			if spsfx = 3
				audio_play_sound(aSpuck3,1,false,1,0,random_range(1.05,0.95))
			if spsfx = 4
				audio_play_sound(aSpuck4,1,false,1,0,random_range(1.05,0.95))
			atcd = irandom_range(72, 88) //Setzt den cooldown zurück nach dem Angriff
		}
	}
	else atcd = irandom_range(72, 88) //Setzt den cooldown zurück falls kein Gegner rechts ist.
}
else
{
	instance_create_layer(x,y,"Instances",oFeld)
	instance_destroy() //Zerstört Llama wenn es keine Lebenspunkte mehr hat
}
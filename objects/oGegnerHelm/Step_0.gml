if hp >= 1 //Alles passiert nur wenn der Gegner noch HP übrig hat
{
	if collision_rectangle(x-20, y-28, x+21, y+21,oTier,false,false) //Schaut ob ein Tier in der Nähe ist
	{
		speed = 0
		if hp >= 15 sprite_index = sGegnerHelmAngriff //Helm bei 2/3+ HP
		else
		{
			if hp >= 8 sprite_index = sGegnerHelmKaputtAngriff //Kaputter Helm bei 1/3+ HP
			else sprite_index = sGegnerAngriff //Kein helm bei -1/3 HP
		}
		with instance_nearest(x,y,oTier)
		{
			self.hp = self.hp - other.atk
		}
		//Der nächste Code dient für das Abspielen der Attacke-Sound-Effekte
		if image_index < 1 attacksfx = true
		if image_index > 2
		{
			if attacksfx = true
			{
				randomize()
				pitch = random_range(0.6,1.4)
				audio_play_sound(aAxt,1,0,1,0,pitch)
				attacksfx = false
			}
		}
	}
	else
	{
		if hp >= 15 sprite_index = sGegnerHelmLauf //Helm bei 2/3+ HP
		else
		{
			if hp >= 8 sprite_index = sGegnerHelmKaputtLauf //Kaputter Helm bei 1/3+ HP
			else sprite_index = sGegnerLauf //Kein helm bei -1/3 HP
		}
		if stink = true //Schaut ob der Gegner von einem Stinktier getroffen wurde
		{
			speed = 0.3 //Halbe Geschwindigkeit wenn Gegner Stinkt
		}
		else speed = .6 //Normale Geschwindigkeit
	}
}
else instance_destroy()

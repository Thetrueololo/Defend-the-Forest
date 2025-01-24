if hp >= 1 //Alles passiert nur wenn der Gegner noch HP übrig hat
{
	if collision_rectangle(x-20, y-28, x+21, y+21,oTier,false,false) //Schaut ob ein Tier in der Nähe ist
	{
		speed = 0 //Hört auf zu laufen
		sprite_index = sGegnerAngriff //Setzt Sprite zu Angriff
		with instance_nearest(x,y,oTier)
		{
			self.hp = self.hp - other.atk //Zieht dem Tier HP ab
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
		sprite_index = sGegnerLauf //Setzt Sprite zu Laufen
		if stink = true //Schaut ob der Gegner von einem Stinktier getroffen wurde
		{
			speed = 0.3 //Halbe Geschwindigkeit wenn Gegner Stinkt
		}
		else speed = .6 //Normale Geschwindigkeit
	}
	if stink = true //Schaut (wieder) ob der Gegner von einem Stinktier getroffen wurde 
	{
		stinktimer = stinktimer - 1 //Stink-Timer zählt runter
		if stinktimer <= 0 stink = false //Gegner stinkt nicht mehr wenn der Stink-Timer 0 ist
	}
}
else instance_destroy()
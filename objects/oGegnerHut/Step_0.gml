if hp >= 1 //Alles passiert nur wenn der Gegner noch HP übrig hat
{
	if collision_rectangle(x-20, y-28, x+21, y+21,oTier,false,false) //Schaut ob ein Tier in der Nähe ist
	{
		speed = 0
		if hp >= 8 sprite_index = sGegnerHutAngriff //Hut nur bei mehr als häfte der HP behalten
		else sprite_index = sGegnerAngriff
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
		if hp >= 8 sprite_index = sGegnerHutLauf //Hut nur bei mehr als häfte der HP behalten
		else sprite_index = sGegnerLauf
		if stink = true //Schaut ob der Gegner von einem Stinktier getroffen wurde
		{
			speed = 0.3 //Halbe Geschwindigkeit wenn Gegner Stinkt
		}
		else speed = .6 //Normale Geschwindigkeit
	}
	if stink = true //Schaut (wieder) ob der Gegner von einem Stinktier getroffen wurde 
	{
		stinktimer = stinktimer - 1 //Stink-Timer zählt runter
	}
}
else instance_destroy()

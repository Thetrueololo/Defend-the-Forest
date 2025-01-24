if hp >= 1 //Alles passiert nur wenn der Gegner noch HP übrig hat
{
	if collision_rectangle(x-20, y-28, x+21, y+21,oTier,false,false) //Schaut ob ein Tier in der Nähe ist
	{
		speed = 0
		sprite_index = sGegnerKettensaegeAngriff
		with instance_nearest(x,y,oTier)
		{
			self.hp = self.hp - other.atk
		}
	}
	else
	{
		sprite_index = sGegnerKettensaegeLauf
		if stink = true //Schaut ob der Gegner von einem Stinktier getroffen wurde
		{
			speed = 0.75 //Halbe Geschwindigkeit wenn Gegner Stinkt
		}
		else speed = 1.5 //Normale Geschwindigkeit
	}
}
else
{
	instance_destroy()
}
if hp >= 1 //Alles passiert nur wenn der Gegner noch HP übrig hat
{
	if collision_rectangle(x-20, y-28, x+21, y+21,oTier,false,false) //Schaut ob ein Tier in der Nähe ist
	{
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
		speed = 0 //Hört auf zu laufen
		sprite_index = sGegnerAngriff //Setzt Sprite zu Angriff
		with instance_nearest(x,y,oTier)
		{
			self.hp = self.hp - other.atk //Zieht dem Tier HP ab
			if self.hp <= 0
			{
				if global.tutorialfortschritt = 5 global.tutorialfortschritt = 8 //Nachricht dass Tier zu weit rechts platziert wurde
				else global.tutorialfortschritt = 20
				oSchild.schildtext = 1
				instance_destroy(other)
			}
		}
	}
	else
	{
		sprite_index = sGegnerLauf //Setzt Sprite zu Laufen
		speed = 0.6
	}
	if x <= 280 //Schaut ob der Gegner links angekommen ist
	{
		if global.tutorialfortschritt = 5 
		{
			if collision_rectangle(0,0,1400,345,oTier,false,false) || collision_rectangle(0,440,1400,740,oTier,false,false) != noone //Schaut ob ein Tier in einer falschen Zeile platziert wurde
			{
				global.tutorialfortschritt = 6 //Nachricht dass Tier in falscher Zeile platziert wurde
				oSchild.schildtext = 1
				instance_destroy()
			}
			else
			{
				global.tutorialfortschritt = 10
				oSchild.schildtext = 1
				instance_destroy()
			}
		}
		if global.tutorialfortschritt = 17
		{
			global.tutorialfortschritt = 18
			oSchild.schildtext = 1
			instance_destroy()
		}
	}
}
else 
{
	if global.tutorialfortschritt = 5 global.tutorialfortschritt = 12 else global.tutorialfortschritt = 22 //Gratuliert dem Spieler und schreitet das Tutorial voran
	oSchild.schildtext = 1
	instance_destroy()
}
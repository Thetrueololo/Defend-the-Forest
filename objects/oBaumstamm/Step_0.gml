if hp <= 667
{
	if hp <=333 sprite_index = sBaumstammSchwach //Setzt Sprite zu BaumstammSchwach wenn HP 1/3 oder kleiner ist
	else sprite_index = sBaumstammMittel //Setzt Sprite zu BaumstammMittel wenn HP zwischen 1/3 & 2/3 ist
	if global.baumskin = 1
	{
		if hp <=333 sprite_index = sAltHolzstammSchwach
		else sprite_index = sAltHolzstammMittel
	}
}
if hp <= 0 //Wenn der Baumstamm keine HP mehr hat
{
	instance_create_layer(x,y,"Instances",oFeld)
	instance_destroy() //zerstört Baumstamm wenn es keine Lebenspunkte mehr hat
}
show_debug_message("hp")
show_debug_message(hp)
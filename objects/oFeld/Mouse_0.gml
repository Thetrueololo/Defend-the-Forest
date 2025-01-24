//Platziere Llama wenn man es ausgewählt hat und auf das Feld clickt
if besetzt = 0 //Schaut ob ein Tier auf dem Feld ist
{
	if place_meeting(mouse_x,mouse_y,oFeld) //Schaut ob Maus auf dem Feld ist
	{
		if global.selected = 1 //Wenn Llama ausgewählt ist
		{
			global.selected = 0 //Nichts mehr ausgewählt
			instance_create_layer(x,y,"Instances",oLlama) //Platziert Llama
			global.apples = global.apples - 3 //Zieht Äpfel ab
			besetzt = 1 //Sagt dass das Feld jetzt besetzt ist
		}
		if global.selected = 2 //Wenn Stinktier ausgewählt ist
		{
			global.selected = 0 //Nichts mehr ausgewählt
			instance_create_layer(x,y,"Instances",oStinktier) //Platziert Llama
			global.apples = global.apples - 4 //Zieht Äpfel ab
			besetzt = 1 //Sagt dass das Feld jetzt besetzt ist
		}
		if global.selected = 3 //Wenn Baumstamm ausgewählt ist
		{
			global.selected = 0 //Nichts mehr ausgewählt
			instance_create_layer(x,y,"Instances",oBaumstamm) //Platziert Llama
			global.apples = global.apples - 2 //Zieht Äpfel ab
			besetzt = 1 //Sagt dass das Feld jetzt besetzt ist
		}
	}
}
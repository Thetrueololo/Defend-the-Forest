if global.selected = 3
{
	sprite_index = sBaumstammchoiceselected //Selected Sprite wenn selected
}
else
{
	if global.apples >= 2 sprite_index = sBaumstammchoice //Normal Sprite wenn nicht selected aber genug Äpfel
	else sprite_index = sBaumstammchoicepoor //Rote Zahl wenn nicht genug Äpfel
}
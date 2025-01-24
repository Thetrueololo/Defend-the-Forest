if global.selected = 2
{
	sprite_index = sStinktierchoiceselected //Selected Sprite wenn selected
}
else
{
	if global.apples >= 4 sprite_index = sStinktierchoice //Normal Sprite wenn nicht selected aber genug Äpfel
	else sprite_index = sStinktierchoicepoor //Rote Zahl wenn nicht genug Äpfel
}
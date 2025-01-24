if global.selected = 1
{
	sprite_index = sLlamachoiceselected //Selected Sprite wenn selected
}
else
{
	if global.apples >= 3 sprite_index = sLlamachoice //Normal Sprite wenn nicht selected aber genug Äpfel
	else sprite_index = sLlamachoicepoor //Rote Zahl wenn nicht genug Äpfel
}
if mouse_check_button_pressed(mb_right) = true global.selected = 0 //Entfernt jetztige Auswahl
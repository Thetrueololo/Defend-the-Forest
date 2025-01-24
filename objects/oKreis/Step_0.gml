if global.tutorialfortschritt = 4 //Platziert Kreis im Tutorial
{
	x = 72
	y = 92
}
if global.tutorialfortschritt = 5 x = -300 // Entfernt Kreis
if global.tutorialfortschritt = 14 //Platziert Kreis erneut wenn Äpfel erklärt werden
{
	x = 630.75
	y = 712.25
	image_xscale = 1.939655
	image_yscale = 1.5625
}
if global.tutorialfortschritt = 16 //Bewegt Kreis erneut zum llama-Feld im Tutorial
{
	x = 89
	y = 131.5
	image_xscale = 0.8965517
	image_yscale = 0.6805556
}
if global.tutorialfortschritt = 17 x = -300 //Entdernt Kreis erneut
depth = -5 //Erscheint vor vielen anderen Objekten
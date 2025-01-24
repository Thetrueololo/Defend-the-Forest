//Haltet den Meter an wenn die maximale Anzahl Äpfel erreicht wurde
if global.apples >= global.apfelmax
{
	image_speed = 0
	image_index = 0
}
else if global.tutorialfortschritt = 18 || global.tutorialfortschritt = 19 || global.tutorialfortschritt = 20 || global.tutorialfortschritt = 22 || global.tutorialfortschritt = 23 || global.tutorialfortschritt = 24
	{
		image_speed = 0 //Haltet den Meter in einem bestimmten Punkt im Tutorial an
	}
	else
	{
		image_speed = 1 + (global.smurfcount * 0.16)
	}
// Countdown für den Meter
if image_index >= 11
{
	global.apples = global.apples + 1
	image_index = 0
}

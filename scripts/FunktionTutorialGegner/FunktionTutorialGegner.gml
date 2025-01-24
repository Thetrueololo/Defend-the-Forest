
function spawntutorial(hoehe) //Definiere Funktion um Gegner zu spawnen
{
	if instance_exists(oGegnerTutorial) = false //Passiert nur wenn kein Tutorial-Gegner bereits existiert
	{
		instance_create_layer(1280,hoehe,"Instances",oGegnerTutorial) //Spawnt Tutorial-Gegner bei gegebener Höhe
	}
}
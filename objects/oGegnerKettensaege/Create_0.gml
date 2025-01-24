//Definiere wichtige Variablen
speed = 1
direction = 180 //Lauft nach links
stink = false //Ob der gegner von einem Stinktier getroffen wurde
stinktimer = 250 //Wie lange der Stinktier-Effekt anhält
atk = 2.5 //Wie viel Schaden der gegner macht
hp = 10 //Lebenspunkte des Gegners
randomize()
y = 220 + (irandom(4) * 85) //Plaziert den Gegner
x = x + irandom_range(-30,80) //Plaziert den Gegner
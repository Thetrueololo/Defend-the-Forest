//Definiere wichtige Variablen
speed = 0.6
direction = 180 //Lauft nach links
stink = false //Ob der gegner von einem Stinktier getroffen wurde
stinktimer = 250 //Wie lange der Stinktier-Effekt anhält
atk = 1 //Wie viel Schaden der gegner macht
hp = 21 //Lebenspunkte des Gegners
randomize()
y = 220 + (irandom(4) * 85) //Plaziert den Gegner
x = x + irandom_range(-30,80) //Plaziert den Gegner
attacksfx = true //Diese Variable hält fest, ob der Attacken-Sound-Effekt schon abgespielt worden ist.
pitch = 1 //Diese Variable definiert die Tonhöhe des Sound-Effekts
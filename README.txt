---------------------------------------------------------
WatchDog fonctionnant sous Windows pour Opensimulator
---------------------------------------------------------
Principe:
- si une fenetre de crash apparait portant le nom "Opensim" fermeture de la fenetre
- toute les 15 seconde on parcour les infos du ini et il relance les simulateurs renseignés dans le ini
- touche "echap" permet l'arret du programme

Programme developpe sous Auto-it:
- code source au format au3
- executable pre-compilé
- bat exemple fourni
- exemple de log 

Fichier de Parametres au format ini:
- temp_verif = "15000"  en millisecond
- chemin = "C:\OpenSimulator\francogrid-opensim\bin\osmw.bat"   chemin du bat executant le simulateur

Vous pouvez créer autant de simulateur que desirez 
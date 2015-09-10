---------------------------------------------------------
WatchDog fonctionnant sous Windows pour Opensimulator
---------------------------------------------------------
Principe:
- si une fenêtre de crash apparaît portant le nom "Opensim" fermeture de la fenêtre 
- toutes les 15 secondes on parcours les infos de l'ini et il relance les simulateurs renseignés dans le ini
- touche "echap" permet l'arrêt du programme

Programme developpe sous Auto-it:
- code source au format au3
- éxecutable pre-compilé
- bat exemple fourni
- exemple de log 

Fichier de Paramètres au format ini:
- temp_verif = "15000"  en millisecond
- chemin = "C:\OpenSimulator\francogrid-opensim\bin\osmw.bat"   chemin du bat exécutant le simulateur

Vous pouvez créer autant de simulateur que désirez 
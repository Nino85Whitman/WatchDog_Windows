---------------------------------------------------------
WatchDog fonctionnant sous Windows pour Opensimulator
---------------------------------------------------------
Principe:
- si une fen�tre de crash appara�t portant le nom "Opensim" fermeture de la fen�tre 
- toutes les 15 secondes on parcours les infos de l'ini et il relance les simulateurs renseign�s dans le ini
- touche "echap" permet l'arr�t du programme

Programme developpe sous Auto-it:
- code source au format au3
- �xecutable pre-compil�
- bat exemple fourni
- exemple de log 

Fichier de Param�tres au format ini:
- temp_verif = "15000"  en millisecond
- chemin = "C:\OpenSimulator\francogrid-opensim\bin\osmw.bat"   chemin du bat ex�cutant le simulateur

Vous pouvez cr�er autant de simulateur que d�sirez 
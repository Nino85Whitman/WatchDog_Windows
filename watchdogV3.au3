
#include <File.au3>

Local $iDelete = FileDelete ("watchdog.log")
Local $hFile = FileOpen("watchdog.log", 1)
_FileWriteLog($hFile, "--------------- Lancement du WatchDog ---------------")

Local $url_contrat_ini = "watchdog_param.ini"
Local $sChemin
Local $timeCheck = Int(IniRead($url_contrat_ini, "Parametre_WatchDog", "temp_verif", "Default Value"))
Local $listeSection = IniReadSectionNames($url_contrat_ini)

HotKeySet("{ESC}", "Terminate")

_FileWriteLog($hFile,"Nombre de section: " & $listeSection[0]-1)
;*****************************************************************

While 1
   $listeSection = IniReadSectionNames($url_contrat_ini)
   If Not @error Then
	 For $i = 1 To $listeSection[0]
		If $listeSection[$i] <> "Parametre_WatchDog" Then
			$sChemin = IniRead($url_contrat_ini, $listeSection[$i], "chemin", "Default Value")
			If WinExists ( "C:\Windows\system32\cmd.exe - " & $sChemin ) Then
			Else
			   _FileWriteLog($hFile, " --> RELANCE <-- # Simulateur: " & $listeSection[$i] & " Chemin: " & $sChemin )
			   Run(@ComSpec & " /c start " & $sChemin)
			EndIf
		 EndIf
	 Next
   EndIf

	; Si fenetre erreur Windows Contenant OpenSim, fermeture Automatique
	if WinKill("OpenSim")=1 Then
	   msgbox(4096,"","Fermeture fenetre crash Simulateur",10)
	EndIf
	Sleep ($timeCheck)
WEnd

;*****************************************************************
Func Terminate()
   _FileWriteLog($hFile, "----------------- Arret du WatchDog -----------------")
   FileClose($hFile) ; Close the filehandle to release the file.
   Exit
EndFunc


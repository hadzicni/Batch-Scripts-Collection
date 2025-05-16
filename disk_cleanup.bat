@echo off
echo Temporäre Dateien und Papierkorb werden gelöscht...
del /q /s "%temp%\*.*"
del /f /s /q C:\$Recycle.bin\*
cleanmgr /sagerun:1
echo Bereinigung abgeschlossen.
pause

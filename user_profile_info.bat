@echo off
set /p "username=Geben Sie den Benutzernamen ein: "
set "outputFile=C:\temp\user_profile_info.txt"

echo Profilinformationen für %username% > "%outputFile%"
echo ================================= >> "%outputFile%"
echo. >> "%outputFile%"

net user %username% /domain >> "%outputFile%"
echo Profilinformationen wurden in %outputFile% gespeichert.
pause

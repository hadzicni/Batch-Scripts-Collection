@echo off
set "outputFile=C:\temp\system_info.txt"

echo Systeminformationen > "%outputFile%"
echo =================== >> "%outputFile%"
echo. >> "%outputFile%"

echo IP-Adresse: >> "%outputFile%"
ipconfig | findstr /i "IPv4" >> "%outputFile%"
echo. >> "%outputFile%"

echo Betriebssystemversion: >> "%outputFile%"
ver >> "%outputFile%"
echo. >> "%outputFile%"

echo Festplattenkapazität: >> "%outputFile%"
wmic logicaldisk get size,freespace,caption >> "%outputFile%"

echo Systeminformationen wurden in %outputFile% gespeichert.
pause

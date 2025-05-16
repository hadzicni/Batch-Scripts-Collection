@echo off
set "outputFile=C:\temp\network_diagnostics.txt"

echo Netzwerkdiagnose > "%outputFile%"
echo ================= >> "%outputFile%"

echo IP-Konfiguration: >> "%outputFile%"
ipconfig /all >> "%outputFile%"
echo. >> "%outputFile%"

echo DNS-Konfiguration: >> "%outputFile%"
nslookup google.com >> "%outputFile%"
echo. >> "%outputFile%"

echo Ping-Test: >> "%outputFile%"
ping 8.8.8.8 -n 4 >> "%outputFile%"
echo. >> "%outputFile%"

echo Traceroute: >> "%outputFile%"
tracert 8.8.8.8 >> "%outputFile%"
echo Netzwerkdiagnose abgeschlossen. Ergebnisse sind in %outputFile%.
pause

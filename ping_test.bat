@echo off
set "outputFile=C:\temp\ping_report.txt"

echo Netzwerk-Ping-Test > "%outputFile%"
echo ================== >> "%outputFile%"
echo. >> "%outputFile%"

for %%i in (8.8.8.8 1.1.1.1 www.google.com www.openai.com) do (
    echo Teste %%i... >> "%outputFile%"
    ping -n 1 %%i | findstr "Antwort von Zeitüberschreitung" >> "%outputFile%"
    echo. >> "%outputFile%"
)

echo Der Netzwerk-Ping-Test wurde in %outputFile% gespeichert.
pause

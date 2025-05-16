@echo off
set "outputFile=C:\temp\host_ip_list.txt"

echo Host-IPs > "%outputFile%"
echo ========= >> "%outputFile%"
for %%h in (www.google.com www.openai.com www.microsoft.com) do (
    echo %%h >> "%outputFile%"
    ping -n 1 %%h | findstr /i "Antwort von" >> "%outputFile%"
    echo. >> "%outputFile%"
)
echo Host-IP-Liste in %outputFile% gespeichert.
pause

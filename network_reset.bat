@echo off
echo Netzwerkadapter wird zurückgesetzt...
ipconfig /release
ipconfig /renew
ipconfig /flushdns
netsh int ip reset
netsh winsock reset
echo Netzwerkadapter wurde erfolgreich zurückgesetzt.
pause

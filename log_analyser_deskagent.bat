@echo off
set "logDir=\\ictbelplawp01\d$\DeskAgent_Logs"
set "outputFile=C:\temp\LogOutput.txt"

echo Fehler-Log-Analyse
echo ===================
echo

pushd "%logDir%"

for %%f in (*.log) do (
    echo Durchsuche %%f nach Errors...
    echo ==== %%f ====
    findstr /i "error" "%%f"
    echo
)

popd

pause

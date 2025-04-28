rem install_dev_ide

REM ENSURE ADMIN MODE
echo cheking for admin rights
net session >nul 2>&1
rem if we are not admin then relaunch the installer as admin
if %errorlevel% neq 0 (
    echo I am not admin... requesting rights...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)


rem VS CODE 
rem 100mb
%userprofile%\AppData\Local\Microsoft\WindowsApps\winget install --id Microsoft.VisualStudioCode --silent --accept-package-agreements --accept-source-agreements  --scope machine


rem CODIUM
rem 97mb 
%userprofile%\AppData\Local\Microsoft\WindowsApps\winget install --id VSCodium.VSCodium -e --silent --accept-package-agreements --accept-source-agreements --scope machine
rem programming tools


rem SILVERSEARCHER ultra fast code search tool
rem from https://github.com/ggreer/the_silver_searcher
%userprofile%\AppData\Local\Microsoft\WindowsApps\winget install "The Silver Searcher"  --silent --accept-package-agreements --accept-source-agreements



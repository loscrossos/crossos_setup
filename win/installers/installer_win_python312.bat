rem v1.0
REM  space needed for this installation is about 250mb on a freshly installed machine. if you already have some packages it might be less

REM ENSURE ADMIN MODE
echo cheking for admin rights
net session >nul 2>&1
rem if we are not admin then relaunch the installer as admin
if %errorlevel% neq 0 (
    echo I am not admin... requesting rights...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)


REM  25mb downlaod
%userprofile%\AppData\Local\Microsoft\WindowsApps\winget install --id=Python.Python.3.12 -e  --silent --accept-package-agreements --accept-source-agreements --scope machine

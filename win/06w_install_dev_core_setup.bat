rem v1.0
REM  space needed for this installation is about 19GB on a feshly installed machine. if you already have some packages it might be less

REM ENSURE ADMIN MODE
echo cheking for admin rights
net session >nul 2>&1
rem if we are not admin then relaunch the installer as admin
if %errorlevel% neq 0 (
    echo I am not admin... requesting rights...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)




REM ENABLE DEVELOPER MODE
rem enable developer mode. This is used by python pip cache and virtual environments.
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Appx /f /t REG_DWORD /v "AllowDevelopmentWithoutDevLicense" /d 1

REM  ENABLE FILESYSTEM LONG PATHs. this is needed for python virtual environments.
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\FileSystem /f /t REG_DWORD /v "LongPathsEnabled" /d 1

REM show file extensions
REM  only current user
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t REG_DWORD /d 0 /f



REM enable "run as other user" entry
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "ShowRunasDifferentuserinStart" /t REG_DWORD /d 1 /f
REM enable "run as other user" in context menu
reg add "HKEY_CLASSES_ROOT\*\shell\runasuser" /v "Extended" /t REG_SZ /d "" /f
reg add "HKEY_CLASSES_ROOT\*\shell\runasuser" /v "SuppressionPolicy" /t REG_DWORD /d 0x00000040 /f


REM  EXTEND SLEEP SETTINGS
rem change time to sleep to 8 hours aka 8 times 60 so we can let the computer run over night if needed
powercfg /change standby-timeout-ac 480
REM powercfg /change standby-timeout-dc 60
rem change screen sleep time
powercfg /change monitor-timeout-ac 60
REM  powercfg /change monitor-timeout-dc 30


REM MSVC BUILD TOOLS 2022
REM 2.8GB
%userprofile%\AppData\Local\Microsoft\WindowsApps\winget install --id=Microsoft.VisualStudio.2022.BuildTools --force --override "--wait --passive --add Microsoft.VisualStudio.Component.VC.Tools.x86.x64 --add Microsoft.VisualStudio.Component.Windows11SDK.26100 --add  Microsoft.VisualStudio.Component.VC.CMake.Project"  -e  --silent --accept-package-agreements --accept-source-agreements


REM INSTALL GPU DRIVER AND CUDA TOOLKIT - 13.64GB
REM  windows defaults to 560.94, current nvidia latest is 572.60, installed with CUDA is: 571.96
%userprofile%\AppData\Local\Microsoft\WindowsApps\winget install --id=Nvidia.CUDA -e --silent --accept-package-agreements --accept-source-agreements


REM INSTALL PYTHON
REM  26mb
%userprofile%\AppData\Local\Microsoft\WindowsApps\winget install --id=Python.Python.3.8  -e  --silent --accept-package-agreements --accept-source-agreements --scope machine
REM  28mb
%userprofile%\AppData\Local\Microsoft\WindowsApps\winget install --id=Python.Python.3.9  -e  --silent --accept-package-agreements --accept-source-agreements --scope machine
REM  28mb
%userprofile%\AppData\Local\Microsoft\WindowsApps\winget install --id=Python.Python.3.10 -e  --silent --accept-package-agreements --accept-source-agreements --scope machine
REM  27mb
%userprofile%\AppData\Local\Microsoft\WindowsApps\winget install --id=Python.Python.3.11 -e  --silent --accept-package-agreements --accept-source-agreements --scope machine
REM  25mb
%userprofile%\AppData\Local\Microsoft\WindowsApps\winget install --id=Python.Python.3.12 -e  --silent --accept-package-agreements --accept-source-agreements --scope machine
REM 26mb
%userprofile%\AppData\Local\Microsoft\WindowsApps\winget install --id=Python.Python.3.13 -e  --silent --accept-package-agreements --accept-source-agreements --scope machine
rem install global shortcut for python3 as expected by some scripts across OSes
mklink c:\windows\python3.exe c:\windows\py.exe

REM WGET
%userprofile%\AppData\Local\Microsoft\WindowsApps\winget install --id=JernejSimoncic.Wget -e  --silent --accept-package-agreements --accept-source-agreements --scope machine
rem this line fixes a bug in winget installer. google winget cli issue 4172
icacls "C:\Program Files\WinGet\Packages\*" /grant "BUILTIN\Users:(RX)"

rem CURL comes pre-installed in w11

REM GIT
rem 66mb
%userprofile%\AppData\Local\Microsoft\WindowsApps\winget install --id Git.Git -e --silent --accept-package-agreements --accept-source-agreements --scope machine
rem fix git not making bash available
mklink "c:\Program Files\Git\cmd\bash.exe" "c:\Program Files\Git\bin\bash.exe"
mklink "c:\Program Files\Git\cmd\sh.exe" "c:\Program Files\Git\bin\sh.exe"
rem GIT compatibility
rem this command enables git to work in win-linux dual boot. Else it would think files are completely changed when one OS changes the line feeds that the other needs.
rem files checked out are not converted to windows format. files checked in are converted to linux format. Repo is kept in linux format
git config --system core.autocrlf input

rem GIT LFS initialize
git lfs install


REM GITHUB CLI 13mb
%userprofile%\AppData\Local\Microsoft\WindowsApps\winget install --id GitHub.cli -e --silent --accept-package-agreements --accept-source-agreements --scope machine


REM FFMPEG 169mb
rem https://github.com/microsoft/winget-pkgs/issues/120360
%userprofile%\AppData\Local\Microsoft\WindowsApps\winget install --id=Gyan.FFmpeg.Shared --silent --accept-package-agreements --accept-source-agreements --scope machine
rem this line fixes a bug in winget installer. google winget cli issue 4172
icacls "C:\Program Files\WinGet\Packages\*" /grant "BUILTIN\Users:(RX)"


rem ESPEAKNG
rem requires UAC
%userprofile%\AppData\Local\Microsoft\WindowsApps\winget install --id=eSpeak-NG.eSpeak-NG  -e --silent --accept-package-agreements --accept-source-agreements 

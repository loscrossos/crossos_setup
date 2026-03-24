

REM GIT
rem 66mb
%userprofile%\AppData\Local\Microsoft\WindowsApps\winget install --id Git.Git -e --silent --accept-package-agreements --accept-source-agreements --scope machine --source winget
rem support for large files in AI repos
%userprofile%\AppData\Local\Microsoft\WindowsApps\winget install --id HuggingFace.Git-Xet -e --silent --accept-package-agreements --accept-source-agreements --scope machine --source winget
rem fix git not making bash available
mklink "c:\Program Files\Git\cmd\bash.exe" "c:\Program Files\Git\bin\bash.exe"
mklink "c:\Program Files\Git\cmd\sh.exe" "c:\Program Files\Git\bin\sh.exe"
rem GIT compatibility
rem this command enables git to work in win-linux dual boot. Else it would think files are completely changed when one OS changes the line feeds that the other needs.
rem files checked out are not converted to windows format. files checked in are converted to linux format. Repo is kept in linux format
git config --system core.autocrlf input
rem this command enables long paths for git. else git refuses to work on paths longer than 260c on windows
git config --system core.longpaths true
rem GIT LFS initialize
git lfs install

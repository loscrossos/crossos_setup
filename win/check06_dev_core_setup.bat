@echo off
setlocal enabledelayedexpansion
chcp 65001 >nul 2>&1
:: Define checks
set count=17

 
set "name[0]=Critical:MSVC      "
set "type[0]=file"
set "item[0]=C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Auxiliary\Build\vcvars64.bat"



set "name[1]=Critical:Nvidia-smi"
set "type[1]=exec"
set "item[1]=nvidia-smi --version"


set "name[2]=Critical:Nvcc-CTK  "
set "type[2]=exec"
set "item[2]=nvcc --version"

set "name[3]=Critical:python3.8 "
set "type[3]=exec"
set "item[3]=py -3.8 --version"


set "name[4]=Critical:python3.9 "
set "type[4]=exec"
set "item[4]=py -3.9 --version"


set "name[5]=Critical:python3.10"
set "type[5]=exec"
set "item[5]=py -3.10 --version"


set "name[6]=Critical:python3.11"
set "type[6]=exec"
set "item[6]=py -3.11 --version"


set "name[7]=Critical:python3.12"
set "type[7]=exec"
set "item[7]=py -3.12 --version"


set "name[8]=Critical:python3.13"
set "type[8]=exec"
set "item[8]=py -3.13 --version"


set "name[9]=Critical:wget-cli  "
set "type[9]=exec"
set "item[9]=wget --version"


set "name[10]=Critical:git       "
set "type[10]=exec"
set "item[10]=git --version"


set "name[11]=Optional:gh-cli    "
set "type[11]=exec"
set "item[11]=gh --version"


set "name[12]=Optional:ffmpeg    "
set "type[12]=exec"
set "item[12]=ffmpeg --version"



set "name[13]=Optional:espeak-ng "
set "type[13]=exec"
set "item[13]=espeak-ng --version"



set "name[14]=Adviced: VS-Code   "
set "type[14]=exec"
set "item[14]=code --version"




set "name[15]=Adviced: VS-Codium "
set "type[15]=exec"
set "item[15]=codium --version"




set "name[16]=Adviced: AGsearch  "
set "type[16]=exec"
set "item[16]=ag --version"




set success=0
set fail=0

echo Running checks...
echo -------------------

set i=0
:loop
if %i% geq %count% goto endloop

set "curname=!name[%i%]!"
set "curtype=!type[%i%]!"
set "curitem=!item[%i%]!"

set /p=Check !curtype! '!curname!'...... <nul

if /i "!curtype!"=="exec" (
    call :check_exec "!curitem!"
    if !errorlevel! equ 0 (set /a success+=1) else (set /a fail+=1)
) else if /i "!curtype!"=="file" (
    call :check_file "!curitem!"
    if !errorlevel! equ 0 (set /a success+=1) else (set /a fail+=1)
) else (
    echo [?] (Invalid check type)
    set /a fail+=1
)

set /a i+=1
goto loop

:endloop
rem echo Summary:
rem echo   [OK] Successful: %success%
rem echo   [X] Failed:     %fail%
endlocal
exit /b

:: ---- FUNCTIONS ----

:check_exec
setlocal
set "cmdline=%~1"
cmd /c "!cmdline!" >nul 2>&1
if errorlevel 1 (
    echo ❌ Failed
    endlocal & exit /b 1
) else (
    echo ✅ Success
    endlocal & exit /b 0
)

:check_file
setlocal
set "filepath=%~1"
if exist "!filepath!" (
    echo ✅ Exists
    endlocal & exit /b 0
) else (
    echo ❌ Missing
    endlocal & exit /b 1
)
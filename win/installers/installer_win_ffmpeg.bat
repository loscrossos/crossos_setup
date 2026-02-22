@echo off

rem https://github.com/microsoft/winget-pkgs/issues/120360

echo "installing Ffmpeg"
%userprofile%\AppData\Local\Microsoft\WindowsApps\winget install --id=Gyan.FFmpeg.Shared --silent --accept-package-agreements --accept-source-agreements --scope machine --source winget

echo "Ffmpeg: fixing potential access bug"
rem this line fixes a bug in winget installer. google winget cli issue 4172
icacls "C:\Program Files\WinGet\Packages\*" /grant "BUILTIN\Users:(RX)"

echo "Ffmpeg: fixing pottential dll missing bug"
setlocal enabledelayedexpansion

:: Set the WinGet Links directory
set "LINKS_DIR=C:\Program Files\WinGet\Links"
set "FFMPEG_LINK=%LINKS_DIR%\ffmpeg.exe"

:: Check if ffmpeg symlink exists
if not exist "%FFMPEG_LINK%" (
    echo FFmpeg symlink not found at %FFMPEG_LINK%
    exit /b 1
)

:: Get the target path using dir command
for /f "tokens=2 delims=[]" %%a in ('dir "%FFMPEG_LINK%" ^| find "SYMLINK"') do (
    set "FFMPEG_TARGET=%%a"
)

:: Extract the directory path
for %%a in ("%FFMPEG_TARGET%") do set "FFMPEG_BIN_DIR=%%~dpa"

:: Remove trailing backslash
if "!FFMPEG_BIN_DIR:~-1!"=="\" set "FFMPEG_BIN_DIR=!FFMPEG_BIN_DIR:~0,-1!"

echo Found FFmpeg installation at: !FFMPEG_BIN_DIR!

:: Create symlinks for all DLL files in the bin directory
if exist "!FFMPEG_BIN_DIR!" (
    pushd "!FFMPEG_BIN_DIR!"
    
    for %%f in (*.dll) do (
        set "DLL_NAME=%%f"
        set "DLL_TARGET=!FFMPEG_BIN_DIR!\!DLL_NAME!"
        set "DLL_LINK=%LINKS_DIR%\!DLL_NAME!"
        
        :: Check if symlink already exists
        if not exist "!DLL_LINK!" (
            echo Creating symlink for !DLL_NAME!...
            mklink "!DLL_LINK!" "!DLL_TARGET!" >nul
            if !errorlevel! equ 0 (
                echo   Created: !DLL_LINK!
            ) else (
                echo   Failed: !DLL_NAME! - Run as Administrator?
            )
        ) else (
            echo Symlink already exists: !DLL_NAME!
        )
    )
    
    popd
) else (
    echo Bin directory not found: !FFMPEG_BIN_DIR!
    exit /b 1
)

echo Done.
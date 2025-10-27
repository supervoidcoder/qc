@echo off
SET "INSTALL_DIR=%LocalAppData%\Programs\qc"

echo Installing qc to %INSTALL_DIR%...

:: yeah i guess just add bat support too if peopel are using old windows
:: i mean it's understandable if you don't have powershell for some reason
:: such as still using windows 7 iirc that doesn't have ps
:: um i'm getting sidetracked why am i puttng so many comments in a bat file lol

mkdir "%INSTALL_DIR%" >nul 2>&1
mkdir "%INSTALL_DIR%\bin" >nul 2>&1
xcopy "%~dp0qc.exe" "%INSTALL_DIR%\bin\" /Y >nul
if not exist "%INSTALL_DIR%\bin\qc.exe" (
    echo Installation failed: Could not copy file.
    pause
    exit /b
)
echo Adding "%INSTALL_DIR%\bin" to user PATH...
setx PATH "%PATH%;%INSTALL_DIR%\bin"

echo QC Quick Command tool has been installed and added to your user PATH.
echo Please restart your terminal or open a new one to use it.

pause
exit /b

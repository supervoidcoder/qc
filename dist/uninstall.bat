@echo off
SET "TOOL_DIR=%USERPROFILE%\.qc"


setlocal enabledelayedexpansion
set "NEW_PATH="
for %%P in ("%PATH:;=";"%") do (
    if /i "%%~P" neq "%TOOL_DIR%\bin" (
        set "NEW_PATH=!NEW_PATH!;%%~P"
    )
)
setx PATH "!NEW_PATH:~1!" >nul

:: Delete files
if exist "%TOOL_DIR%" (
    rmdir /s /q "%TOOL_DIR%"
)

echo QC Quick Command tool uninstalled.
echo Restart your terminal to apply PATH changes.

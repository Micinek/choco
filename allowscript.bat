@echo off
:: Check if running as administrator
net session >nul 2>&1
if %errorlevel% == 0 (
    goto :runPS
) else (
    echo This script needs to be run as an administrator.
    echo Please relaunch it with administrator privileges.
    pause
    exit /b
)

:runPS
:: Run PowerShell command as administrator
powershell -Command "Start-Process powershell -ArgumentList '-Command Set-ExecutionPolicy Unrestricted' -Verb RunAs"
pause

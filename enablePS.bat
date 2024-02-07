@echo off
:: Enable PowerShell script execution
powershell -Command "Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser"
echo PowerShell script execution enabled.
pause

@echo off
:: Installing Git via winget
winget install --id Git.Git -e --source winget

@echo off

:: Define the URL of the repository
set repository_url=https://github.com/Micinek/choco.git

:: Define the destination directory for the repository
set destination_dir=C:\choco

:: Create the destination directory if it doesn't exist
if not exist "%destination_dir%" mkdir "%destination_dir%"

:: Navigate to the destination directory
cd /d "%destination_dir%"

:: Clone the repository from the URL
git clone "%repository_url%"

echo Repository downloaded to: %destination_dir%


@echo off

:: Open PowerShell as administrator
echo Opening PowerShell as administrator...
powershell -Command "Start-Process powershell -Verb RunAs"

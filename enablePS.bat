@echo off
:: Enable PowerShell script execution bypassing the execution policy
powershell -Command "Set-ExecutionPolicy Bypass -Scope Process -Force"
echo PowerShell script execution enabled.
pause

@echo off
:: Installwing Git.Git
winget install --id Git.Git -e --source winget
pause

@echo off

:: Open PowerShell as administrator
echo Opening PowerShell as administrator...
powershell -Command "Start-Process powershell -Verb RunAs"

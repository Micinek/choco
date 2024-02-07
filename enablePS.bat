@echo off
:: Enable PowerShell script execution
powershell -Command "Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser"
echo PowerShell script execution enabled.
pause

@echo off

:: Open PowerShell as administrator
echo Opening PowerShell as administrator...
powershell -Command "Start-Process powershell -Verb RunAs"

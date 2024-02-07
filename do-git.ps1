# Check if the script is running as administrator
if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    # Relaunch the script as administrator
    Start-Process powershell.exe "-File '$PSCommandPath'" -Verb RunAs
    Exit
  }
  
  # Your script code goes here
  Write-Host "This script is running as administrator."
  
  # Ensure we can run everything
  Set-ExecutionPolicy Bypass -Scope Process -Force;

@echo off

:: Define the URL of the repository
set repository_url=https://github.com/Micinek/choco.git

:: Define the destination directory for the repository
set destination_dir=C:\

:: Create the destination directory if it doesn't exist
if not exist "%destination_dir%" mkdir "%destination_dir%"

:: Navigate to the destination directory
cd /d "%destination_dir%"

:: Clone the repository from the URL
git clone "%repository_url%"

echo Repository downloaded to: %destination_dir%

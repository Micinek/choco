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

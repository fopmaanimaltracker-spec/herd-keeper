@echo off
setlocal
cd /d "%~dp0"
title Build HerdKeeper for Windows

echo ========================================
echo        HERDKEEPER WINDOWS BUILDER
echo ========================================
echo.

where node >nul 2>nul
if errorlevel 1 (
  echo Node.js is not installed on this computer.
  echo.
  echo Please install the LTS version from:
  echo https://nodejs.org/
  echo Choose the Windows Installer (.msi), install it,
  echo then restart this file.
  echo.
  pause
  start "" "https://nodejs.org/"
  exit /b 1
)

where npm >nul 2>nul
if errorlevel 1 (
  echo npm was not found. Reinstall Node.js LTS and try again.
  pause
  exit /b 1
)

echo Step 1 of 2: Downloading the app build tools...
call npm install
if errorlevel 1 (
  echo.
  echo Could not install build tools. Check your internet connection and try again.
  pause
  exit /b 1
)

echo.
echo Step 2 of 2: Creating the Windows installer and portable app...
call npm run dist:win
if errorlevel 1 (
  echo.
  echo The build did not finish. Copy the error above if you need help.
  pause
  exit /b 1
)

echo.
echo SUCCESS! Your HerdKeeper files are in the RELEASE folder.
echo Look for HerdKeeper Setup 1.0.0.exe to install it.
echo The portable version can run without installing.
echo.
if exist "%~dp0release" start "" "%~dp0release"
pause

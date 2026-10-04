@echo off
title Push SnapInsta to GitHub
echo ========================================================
echo   SnapInsta - GitHub Repository Uploader (DA 96 Backlink)
echo ========================================================
echo.
echo 1. Pehle browser me jao: https://github.com/new
echo 2. Repository Name likho: snapinsta-android-app
echo 3. Public select karo aur "Create repository" button dabao.
echo 4. Us repository ka URL copy karo (e.g. https://github.com/yourusername/snapinsta-android-app.git)
echo.
echo ========================================================
set /p REPO_URL="Apna GitHub Repo URL yahan paste karo aur ENTER dabao: "

if "%REPO_URL%"=="" (
    echo [ERROR] Koi URL enter nahi kiya gya. Window band ho rahi hai...
    pause
    exit /b
)

echo.
echo [1/3] Git remote set ker rahe han...
git remote remove origin 2>nul
git remote add origin %REPO_URL%

echo [2/3] Main branch set ker rahe han...
git branch -M main

echo [3/3] GitHub per push ker rahe han...
git push -u origin main

echo.
echo ========================================================
echo   Mubarak ho! Repository push ho gai hy.
echo   Ab GitHub repository ke 'About' section me ja ker:
echo   Website URL: https://thesnapinsta.com set ker do!
echo ========================================================
pause

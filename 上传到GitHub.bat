@echo off
chcp 65001 >nul
title Push game site to GitHub
cd /d "D:\UserData\Desktop\Ant\gh"

echo.
echo ==========================================================
echo    PUSH GAME SITE TO GITHUB
echo ==========================================================
echo.
echo   Repo   : https://github.com/Ant529/blog
echo   Size   : 114 MB  (upload may take a few minutes)
echo   Live at: https://ant529.github.io/blog/
echo.
echo   If a browser window pops up, sign in and authorize.
echo   If it asks you to choose a credential helper, pick
echo   "Browser" / "browser" and authorize.
echo.
echo ----------------------------------------------------------
echo.

git push origin main
set ERR=%ERRORLEVEL%

echo.
echo ----------------------------------------------------------
if "%ERR%"=="0" (
  echo   [OK] Push finished.
  echo   Open https://ant529.github.io/blog/ in 1-2 minutes.
) else (
  echo   [FAIL] Push failed, code %ERR%
  echo   Copy the red text above and send it to me.
)
echo ----------------------------------------------------------
echo.
pause

@echo off

REM Get the current timestamp
for /f "delims=" %%a in ('powershell -Command "Get-Date -Format 'yyyy-MM-dd HH:mm:ss'"') do set timestamp=%%a

REM Perform the Git commands
git add .
git commit -m "%timestamp%"
git push origin master

echo Git operations completed.
pause
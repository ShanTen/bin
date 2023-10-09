@echo off
@REM check if %1 is empty, if yes put 3000 as default
set /a "port=%1"
if "%port%"=="" set port=3000
"C:\Program Files\Mozilla Firefox\firefox.exe" http://localhost:%port%
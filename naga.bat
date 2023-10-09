@echo off
set spotmemloc=C:\jojo\pShell\ShanPSUtils\spotmem.txt
FOR /F %%i IN ('type %spotmemloc%') DO set loc=%%i
FOR /F "usebackq tokens=1,2* delims=," %%G IN (%spotmemloc%) DO set loc=%%G
rem echo "%loc%"
rem ECHO %%G
cd /d "%loc%"
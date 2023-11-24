@echo off 

set sargs=%1
set sargs=%sargs:"=% 
set sargs=%sargs: =%

rem echo DEBUG: "%sargs%"

if "%sargs%"=="-h" goto help
if "%sargs%"=="--help" goto help
if "%sargs%"=="/help" goto help

curl -d "%*" http://ntfy.sh/%JOJO_NTFY_ID%
goto :eof

:help
echo "Description: ntfy is a simple command line tool to send push notifications to your phone"
echo "USAGE: timeout 5 & ntfy <message>"
goto :eof
@echo off
set port=%1

netstat -aon | findstr %1
echo taskkill /f /pid [pid]
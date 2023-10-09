@echo off 
if /i %1x==-px goto :withprofile

:withoutprofile
"C:\Program Files\Mozilla Firefox\firefox.exe" -p default-release "file://%~f1"
goto :EOF

:withprofile
"C:\Program Files\Mozilla Firefox\firefox.exe" -p %2 "file://%~f3"
goto :EOF
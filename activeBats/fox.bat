@echo off
if /i %1x==ytx goto :nanana
if /i %2x==ytx goto :nanana
"C:\Program Files\Mozilla Firefox\firefox.exe" %* 
goto :EOF

:nanana
echo nanana, jojo, use tube instead
goto :EOF

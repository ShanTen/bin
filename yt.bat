@echo off

echo no

@REM For /F "UseBackQ Delims==" %%A In ("C:\jojo\jojoBin\ytLogs.txt") Do Set "lastline=%%A"

@REM echo last opened youtube at %lastline%

@REM set /p choice=Are you sure you want to continue? (y/n): 

@REM if %choice% ==y (
@REM     "C:\Program Files\Mozilla Firefox\firefox.exe" -p yt "https://www.youtube.com/results?search_query=%1+%2+%3+%4+%5"
@REM     echo %date%  %time% >> C:\jojo\jojoBin\ytLogs.txt
@REM     )
@REM if %choice% ==yes (
@REM 	"C:\Program Files\Mozilla Firefox\firefox.exe" -p yt "https://www.youtube.com/results?search_query=%1+%2+%3+%4+%5"
@REM     echo %date%  %time% >> C:\jojo\jojoBin\ytLogs.txt
@REM     )


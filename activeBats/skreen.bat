rem Description: Get the screen size in columns and lines
@echo off
setlocal enabledelayedexpansion
:: Run the "mode con" command and capture its output
for /f "tokens=2,3" %%A in ('mode con ^| findstr /C:"Columns" /C:"Lines"') do (
    set cols=%%A
    set lines=%%B
)
echo cols: %cols%
endlocal
echo lines: %lines%

@echo off
rem Usage: stouch my new file .bat creates the file my_new_file.bat
@REM for /L %%i in (1,1,%argCount%) do echo %%i- "!argVec[%%i]!" rem for looping through args
setlocal enabledelayedexpansion

rem if %%~x:~0,1%=="." (

set argCount=0
for %%x in (%*) do (
    set /A argCount+=1
    set "argVec[!argCount!]=%%~x"
    set temp=%%~x
    set startingChar=!temp:~0,1! 
    echo !startingChar!

    if "!startingChar!"=="." (
        echo got extention !temp!
    )

    if !argCount! EQU 1 (
        set filename=!temp!
    )
    if !argCount! GTR 1 (
        set filename=!filename!_!temp!
    )
)

goto :touch_file

:bad_extension
echo Bad extension: "%fileext%"
echo ensure extension is .bat, .txt, .py, etc.
goto :eof

:touch_file
"C:\Program Files\Git\usr\bin\touch.exe" %filename%
goto :eof

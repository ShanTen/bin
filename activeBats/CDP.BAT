@echo off
rem I want to use cdp.bat to copy current dir to clip

rem --------------------------------------
rem v1 - 5/9/2023
rem | clip
rem cd | clip 
rem -------------------------------------

rem v2 - 24/11/2023 -- withfile support.
IF [%1]==[] goto withoutfile

:withfile 
set srasfile=%1
set srasfile=%srasfile:"=%
rem echo DEBUG: "%cd%\%srasfile%" 
set "variable=%cd%\%srasfile%"
rem echo DEBUG: "%variable%"
set "variable=%variable:\=/%"
rem echo DEBUG: "%variable%"
echo %variable% | clip
goto :eof

:withoutfile
set "variable=%cd%"
set "variable=%variable:\=/%"
echo %variable% | clip
goto :eof
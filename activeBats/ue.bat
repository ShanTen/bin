@echo off
if %1x==/?x goto help
if %1x==x goto help
set editfile=%~n1
set percentOne=%1
rem we remove the file extension even if user typed one; the tilde construct works only in WinNT, etc; 

rem set rpath=c:\ras\bin\ By Jojo on 04:14 PM 17-09-2022
set rpath=C:\jojo\jojoBin\activeBats\
set pathCandidate=

set editor=notepad

if not exist %editor% set editor=notepad
goto shoot_foot_check

:shoot_foot_check
if /i %editfile%x==%0x goto NaNaNa
if /i %editfile%x==UEx goto NaNaNa
if /i %editfile%x==hostsx goto hostsNaNaNa
goto LookInBin

:NaNaNa
rem because of the way cmd processes batch files line by line, we could cause unexpected behaviour if we changed 
rem the batch file even another instance was running.
rem however to allow potential genuine edits, we do such an action asyncrounously, and quit immeidately.
rem this way user is not denied the opportunity of using %0 on %0, same time, cmd file is also safe.
echo You are using %0 to edit %editfile% ! Shooting your foot ? 
pause
start %editor% %rpath%%editfile%.cmd
goto done

:hostsNaNaNa
echo You are attempting to use %0 to edit %editfile% ! Not permitted ...
goto :done

:LookInBin
rem look if explicit file matches ###1
if exist %rpath%%percentOne% echo DBG:RPATHRAQ&start %editor% %rpath%%percentOne% & goto :closeUpTasks

rem step1: BAT ###2
set extn=.bat
if exist %rpath%%editfile%%extn% echo DBG:RPATHBAT&start %editor% %rpath%%editfile%%extn% & goto :closeUpTasks

rem step2: CMD ###3
set extn=.cmd
if exist %rpath%%editfile%%extn% echo DBG:RPATHCMD&start %editor% %rpath%%editfile%%extn% & goto :closeUpTasks

rem step3: VBS ###4
set extn=.vbs
if exist %rpath%%editfile%%extn% echoecho DBG:RPATH&start %editor% %rpath%%editfile%%extn% & goto :closeUpTasks

rem step4: look for multiple matches
rem search for multiple paths, recurse to zero levels, get count
wildcount %percentone% %rpath% 0
set fileC=%errorlevel%
rem echo DBG: call filecount %rpath%%editfile%.bat %rpath%%editfile%.cmd %rpath%%editfile%.vbs
rem call filecount %rpath%%editfile%.bat %rpath%%editfile%.cmd %rpath%%editfile%.vbs
rem echo DBG:Finished count of .cmd/bat/vbs in %rpath%%editfile% answer = [%errorlevel%]
if /I %fileC% GEQ 1 goto editAny
if %fileC%x==0x echo No file by name %editfile%.cmd or %editfile%.vbs orR %editfile%.bat found in [%rpath%]
rem even at this stage, we have other candidates ! what if there were non-executables but with same name in %rpath% ? we show them now.
if exist %rpath%%editfile%.* echo ..but the following was found in [%rpath%]
if exist %rpath%%editfile%.* dir %rpath%%editfile%.* /b

rem also show possible commands defined under doskey
doskey /m | ggrep -i ^^%editfile%

SETLOCAL ENABLEDELAYEDEXPANSION
rem if a valid file exists in local folder, open it, after prompting.
set localF=
set yakky=..but 
for %%x in (%editfile%.cmd, %editfile%.bat, %editfile%.vbs) do if exist .\%%x echo !yakky! %%~fx exists& set localF=%%~nxx & set yakky=..also 
if !localF!x==x goto LookInPath
rem choice /m "Do you want to edit %localF% found in the local folder ?"
rem if %errorlevel%==1 %editor% %localF%
rem new policy, open local file automatically without prompting user
echo DBG:LOCAL
%editor% %localF%
ENDLOCAL
goto done

rem if we arrived here, there are absolutely no files in bin or in local folder; time now to check in the env-path.
:LookInPath
set rPath=
set pathCandidate=
echo Looking now in path for [%editfile%]...
for %%I in (%editfile%.cmd, %editfile%.bat, %editfile%.vbs) do if not "%%~$PATH:Ix"=="x" set pathCandidate=%%~$PATH:I&set altrPath=%%~dp$PATH:I
if "%pathCandidate%"=="" echo ..also none found in PATH&goto done
rem if not %pathCandidate%x==x echo DBG:Found at %pathCandidate%
goto editAny

:editAny
rem we arrive here ONLY if no files were found in BIN, but files were found via PATH
rem echo DBG:About to count valid %editfile%.cmd/vbs/bat  found in %rpath%
rem sanity
echo [%editFile%.*] was found elsEwhere in the path [%pathCandidate%]
if "%pathCandidate%"=="" echo Internal error, a file matching [%editfile%.*] was found in path, but some error occured&goto :EOF

wildcount %percentone% %altrpath% 0
set fileC=%errorlevel%
rem call filecount %rpath%%editfile%.bat %rpath%%editfile%.cmd %rpath%%editfile%.vbs
rem echo DBG:Finished count of .cmd/bat/vbs in %rpath%%editfile% answer = [%errorlevel%]
if %fileC%x==0x echo %editfile%.cmd or %editfile%.vbs orR %editfile%.bat not found in [%altrpath%]& goto :EOF
if /I %fileC% GTR 1 goto WarnMultiples
rem if we arrived here, we know for sure a single one and only one valid matching file exists here
set singleFile=
for /f "delims=" %%x in ('dir "%altrpath%%editfile%.bat" "%altrpath%%editfile%.cmd" "%altrpath%%editfile%.vbs" /b') do set singleFile=%%x
rem echo DBG: About to %editor% %rpath%%singleFile% .and. goto done_checkSpecialCases
if "%singlefile%"=="" echo No matching files& goto :EOF
rem if we did not arrive via bin-route, we ask user before opening file, to prevent a wrong assumption of the file location
choice /m "Do you want to edit [%singleFile%] found in [%altrpath%] ?"
if %errorlevel%==1 echo DBG:RPATHASKED&start %editor% "%altrpath%%singleFile%"
goto done_checkSpecialCases

:warnMultiples
echo Multiple files matching %editfile%.* are found in Path; you should consider renaming one or more to avoid conflict.
for %%x in (%rpath%%editfile%.*) do if exist %%x echo %%x
for %%x in (%altrpath%%editfile%.*) do if exist %%x echo %%x
goto done

:closeUpTasks
:done_checkSpecialCases
rem if user updated the power file using %0, we make sure we also make a copy to winnt or %WINDIR% folder!
rem echo DBG:if /i %editfile%x==powerx goto powerupdate
if /i %editfile%x==powerx goto powerupdate
goto done

:powerupdate
echo after you finish updating the shortcuts and save the file, please remember to run 
echo POWER

REM Below is Updated by JOJO for personal batch use
echo doskey /m ^> C:\jojo\jojoBin\activeBats\shandoskey.mtemp


REM echo doskey /m ^> c:\ras\bin\doskey.mtemp By Jojo 04:18 PM 17-09-2022
REM IT IS NOT REQUIRED ANYMORE TO COPY POWER.CMD to windows folder. this logic is not needed anymore.
REM echo DBG: Arrived in power update check: about to elevate -wait copy %rpath%power.* %windir%
REM echo about to [elevate -wait cmd /c copy %rpath%power.* %windir% >nul]
REM pause
REM elevate -wait cmd /c copy %rpath%power.* %windir% >nul
rem copy %rpath%%singleFile% %windir% >nul
REM echo P*O*W*E*R update !
REM call %windir%\power.cmd
rem a *nix user would cringe at the scope of the batch above !! changes done in a sub script dont apply to the current shell in nix
rem the above line can never be the light po wer, because the macros are not yet put live
rem the line below regenerates the macros batchload file.
REM doskey /m > c:\ras\bin\doskey.mtemp
goto done

:help
echo This is %0 - batch file to edit batch, command files
echo Usage: %0 commandname
goto done

:done

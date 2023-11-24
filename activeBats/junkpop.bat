@echo off
rem Purpose: Populate a test folder with junk data
rem Author:  Shantanu Ramanujapuram
rem Date:   2023-10-14

rem Usage: junkpop.bat <folder> [options]
rem default: junkpop.bat .\some_folder - populates the folder with small snippets from each type
rem options:
rem   -n <number>  Number of files to create    
rem   -t <type>    Type of files to create (default: txt, other-options: img, json, csv, mixed, custom)
rem   -e <ext>     Extension of files to copy over

set file_types=txt img code mix
@REM IMPORTANT: remember to set a custom folder for your batch files and add it to your environment variables called "ACTIVE_BATS"
set junk_files_dir="%ACTIVE_BATS%/populate_files" 

:populate_mix
    echo "Populating text files"
    copy %junk_files_dir%/txt/
    goto :EOF

set target_dir=%1
set options=%2

if "%target_dir%"=="" (
    echo "Please specify a target directory"
    exit /b 1
)

if not exist %target_dir% (
    echo "Target directory does not exist"
    exit /b 1
)
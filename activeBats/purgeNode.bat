@echo off
echo Script to purge node_modules 
echo The following script will purge all node_modules folders in the current directory and all subdirectories.
echo.
rem store count of node_modules folders in variable nodeModulesCount
for /f %%a in ('fd node_modules ^| wc -l') do set nodeModulesCount=%%a
echo Found %nodeModulesCount% node_modules folders.
echo.

rem if no node_modules folders found, exit
if %nodeModulesCount%==0 (
    echo No node_modules folders found.
    goto :eof
)

rem prompt user to confirm
echo The following node_modules folders will be purged:
fd node_modules
echo.
set /p areYouSure=Are you sure you want to purge all node_modules? (y/n)
if not %areYouSure%==y goto :eof

if exist %jojo_bin_home%/TEMP__NODE__PURGER__LOCATIONS.txt del %jojo_bin_home%/TEMP__NODE__PURGER__LOCATIONS.txt

set tmpFile=%jojo_bin_home%/TEMP__NODE__PURGER__LOCATIONS.txt

touch %tmpFile%
fd node_modules > %tmpFile%
for /f "tokens=*" %%a in (%tmpFile%) do (
    echo Purging %%a
    rmdir /s /q %%a
)

"C:\Program Files\Git\usr\bin\rm.exe" %tmpFile%
echo Done.
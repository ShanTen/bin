@echo off
rem Shan10 2020 Dec 21 temp storage for random thoughts with a flag even
pushd c:\jojo\jojoBin\tmpStr

if /i "%1"=="/c" (
    touch %2%.tmp
    echo %date%> %2%.tmp
    notepad %2%.tmp
    popd
    goto :EOF
)

if /i "%1"=="/h" (
    echo Shan10 2020 Dec 21 temp storage for random thoughts with a flag even
    echo.
    echo use tmp /h to get too know how to access the temp files
    echo tmpstr [label name] to save a tmp file with a date and label
    echo tmpstr /c [label name] for custom file name with date injected
    echo.
)

touch %date%_%1.tmp
notepad %date%_%1.tmp
popd
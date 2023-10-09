@echo off
set logloc=C:\jojo\tracking\logs
pushd %logloc%

if not exist %date%.txt (
    "C:\Program Files\Git\usr\bin\touch.exe" %date%.txt
    echo %date% %time% - %* >> %date%.txt
    popd
    goto :eof
) else (

    if "%1"=="/d" (
        "C:\jojo\cliApps\bat\bat-v0.17.1-x86_64-pc-windows-msvc\bat.exe" --paging=never %date%.txt
        goto :showtodayslog
    )

    if "%1"=="/logs" (
        goto :show_all_logs
    )

    if "%1"=="/h" (
        goto :showHelp
    )

    if "%1"=="/e" (
        start "" "C:\Program Files (x86)\Notepad++\notepad++.exe" %date%.txt
    ) else (
        echo %date% %time% - %* >> %date%.txt
    )
    popd
    goto :eof
)

:showHelp
echo logger script written by shan10 April 2023
echo logs are stored at %logloc%
echo Commands: 
echo /d -- Shows "today's" logs	
echo /logs -- Shows list of all logs 
echo /e -- Opens up log file in editor (npp) 
echo /h -- Therla machan 
popd
goto :eof  

:showtodayslog
popd
goto :eof

:show_all_logs
lsd
goto :eof
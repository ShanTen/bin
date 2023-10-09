@echo off
pushd c:\jojo\jojoBin\tmpStr

if /i "%1"=="/s" (
    for /r %%i in (*%2*) do (
    Rem echos files name (~n)
    echo %%~ni    
    type %%i

    REM  NewLine
    echo.
    )
    popd
    goto :EOF
)

if /i "%1"=="/a" (
    for /r %%i in (*) do (
    Rem echos files name (~n)
    echo %%~ni    
    type %%i

    REM  NewLine
    echo.
    )
    popd
    goto :EOF
)

if /i "%1"=="" (
    for /r %%i in (*%date%*) do (
    Rem echos files name (~n)
    echo %%~ni    
    type %%i

    REM  NewLine
    echo. 
    )
    popd
    goto :EOF
)

Rem functions in bat

:help
    echo By Shan10 2020 Dec 21
    echo. 
    echo all logs on default are save in dd-mm-yyy_label.tmp format
    echo use tmp /s for specific tag searching of tmp logs
    echo use tmp /a for getting all tmp logs
    echo use tmp for getting today's logs
EXIT /B 0

if /i "%1"=="/h" (
    call :help
)

if /i "%1"=="help" (
    call :help
)

if /i "%1"=="--help" (
    call :help
)

if /i "%1"=="/help" (
    call :help
)

popd
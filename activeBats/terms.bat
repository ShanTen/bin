@echo off
if %1x==/?x echo TERM, echoes args
echo dollarStar[%*]
echo dollarStar[%*] > %temp%\some.txt
time/t >> %temp%\some.txt
date/t >> %temp%\some.txt
:Again
echo [%0] [%1] [%2] [%3] [%4] [%5] [%6] [%7] [%8] [%9]
shift
if not %99==9 goto Again

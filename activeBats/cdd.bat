@echo off
rem CD and change drive
set cdloc=%1%
set __drive=%cdloc:~0,1%
%__drive%: & cd %cdloc%
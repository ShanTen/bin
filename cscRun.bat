@echo off
cd %~dp1
set exeName=%~dpn1.exe
if exist %exeName% echo output EXE [%exeName%] already exists, trying to clear it out
erase %exeName%
if exist %exeName% echo output EXE [%exeName%] still exists, unable to clear it out.
C:\WINDOWS\Microsoft.NET\Framework\v4.0.30319\csc.exe %*
if not exist %exeName% echo ERROR: Could not create/compile EXE
echo About to run [%exeName%]
%exeName%

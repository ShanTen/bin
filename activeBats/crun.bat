@echo off
set current_dir=%cd%
C:\ProgramData\chocolatey\lib\mingw\tools\install\mingw64\bin\gcc.exe %1 -o output.exe && output.exe
@echo off
rem download an image using curl
rem usage: imgdl.bat <url> 
"C:\Program Files\Git\mingw64\bin\curl.exe" -k -OJ %1 
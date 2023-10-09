@echo off
set lsdconfigfileloc="C:\jojo\cliApps\lsd\lsd-0.19.0-i686-pc-windows-msvc\config\config.yaml"
set lsdexecloc=C:\jojo\cliApps\lsd\lsd-0.19.0-i686-pc-windows-msvc
rem %lsdexecloc%\lsd.exe --config-file %lsdconfigfileloc% %*
%lsdexecloc%\lsd.exe %*
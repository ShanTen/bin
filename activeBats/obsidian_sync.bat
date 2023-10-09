@echo off 
rem call as cmd /k obsidian_sync.bat in profile 
pushd C:\jojo\cliApps\syncthing-windows-amd64-v1.24.0
syncthing.exe -no-browser -no-restart -logflags=0
popd
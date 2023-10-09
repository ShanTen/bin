@echo off
pushd C:\jojo\cliApps\vce

erase kelp.exe
erase config.json

popd
pushd C:\Users\jojoh\Downloads
move 

move kelp.exe C:\jojo\cliApps\vce
move config.json C:\jojo\cliApps\vce

echo %date% >> C:\jojo\cliApps\vce\kelp_update.txt

echo "moved kelp"

popd
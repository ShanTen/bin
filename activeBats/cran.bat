set zorb="c:/jojo/jojoBin/activeBats/zorbas.txt"
set tdir=%1
echo Running CRAN from %~dp1
cat %zorb% | sed s/{target}/%tdir%/g > zorbas.bat
npx create-expo-app %1
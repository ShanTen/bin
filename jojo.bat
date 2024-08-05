@echo off
cls
if not %1x==x set jojoLoaded=False
if /i %1X==/listX goto :showList
if /i %1X==/helpX goto :showHelp
if /i %1X==/helpX goto :showHelp
if /i %1X==/?X goto :showHelp

rem ffmpeg -i input.mp4 -ss 00:07:19.500 -t 00:00:00.700 -c:v copy -c:a copy output.mp4 trim videos


rem frames from video To extract all frames from between 1 and 5 seconds, and also between 11 and 15 seconds:
rem ffmpeg -i in.mp4 -vf select='between(t,1,5)+between(t,11,15)' -vsync 0 out%d.png

rem 12:31 PM 11-02-2023 -- QWuick dfujcking hack
rem doskey codium = "C:\Users\jojoh\AppData\Local\Programs\VSCodium\VSCodium.exe $*" 06:43 PM 01-03-2023 [hack failed :( ] 

rem implemented:
rem doskey duck="C:\Program Files\Mozilla Firefox\firefox.exe" "https://duckduckgo.com/?q=$*&ia=web" 
rem doskey goog="C:\Program Files\Mozilla Firefox\firefox.exe" "www.google.co.uk/search?q=$*%1+%2+%3+%4+%5+%6+%7+%8+%9"
rem doskey bing="C:\Program Files\Mozilla Firefox\firefox.exe" "www.bing.com/search?q=$*%1+%2+%3+%4+%5+%6+%7+%8+%9"
rem doskey npad="C:\Windows\System32\notepad.exe" $*
rem doskey word=start winword	
rem  doskey curl = "C:\Users\jojoh\Downloads\curl-7.74.0_2-win64-mingw\bin\curl.exe" $*
rem doskey npp="C:\Program Files (x86)\Notepad++\notepad++.exe" $*
rem doskey fox="C:\Program Files\Mozilla Firefox\firefox.exe" $* 
rem doskey python = "C:\Users\jojoh\Anaconda3\python.exe" $*
rem doskey findPi = ping jojopi -4
rem doskey ebat = "C:\Program Files (x86)\Notepad++\notepad++.exe" c:\jojo\jojobin\jojo.bat
REM another reasy to remember shortcut for ebat is es (edit shortcuts)
rem doskey etod = "C:\Program Files (x86)\Notepad++\notepad++.exe" C:\jojo\junk\toDo.txt
rem doskey kanni = python C:\jojo\python\play\mockText.py $*%1
rem doskey pnet = "C:\Program Files\Paint.NET\PaintDotNet.exe" $*
rem doskey log = "C:\Program Files (x86)\Notepad++\notepad++.exe" %date%.txt
rem doskey epic = C:\jojo\cliApps\bat\bat-v0.17.1-x86_64-pc-windows-msvc\bat.exe --paging=never $*
rem doskey lsd = C:\jojo\cliApps\lsd\lsd-0.19.0-i686-pc-windows-msvc\lsd.exe $*
rem doskey cle = C:\Users\jojoh\.cargo\bin\kelp.exe $*
rem doskey ytdl = c:\jojo\cliApps\ytdl\youtube-dl.exe $*
rem doskey dlp = c:\jojo\cliApps\ytdlp\yt-dlp.exe $*
rem doskey play = cmdmp3win $*
rem doskey draw = C:\jojo\cliApps\draw\apic.exe $*
rem doskey vlc = "C:\Program Files\VideoLAN\VLC\vlc.exe" $*
rem doskey nails = type c:\jojo\jojoBin\nails.txt
rem doskey dirnonPy = dir /b $b grep -v ".py"
rem doskey dirnontxt = dir /b $b grep -v ".txt" $*
rem doskey dirnonmp3 = dir /b $b grep -v ".mp3" $*
rem doskey snek=python "c:\jojo\python\play\snek.py" 

rem locators -> seperate implementation:

doskey nomen =cdd C:\jojo\python\projects\nomenclatureMachineTest\singleChain\onGit
doskey home =cdd C:\jojo
doskey cord =cdd  C:\jojo\python\projects\coordinatenm
doskey pics =cd "C:\Users\jojoh\OneDrive\Pictures\Saved Pictures"
doskey drop =cdd C:\Users\jojoh\Dropbox\hInterns\
doskey desk =cdd C:\Users\jojoh\OneDrive\Desktop\
doskey bin =cdd c:\jojo\jojoBin\
doskey acad =cdd c:\shan10
doskey foxdl =cdd C:\Users\jojoh\AppData\Local\Temp
doskey dl =cdd C:\Users\jojoh\Downloads
doskey cdJirle =cdd %Appdata%\RealVNC\ViewerStore
doskey notes =cdd C:\Users\jojoh\OneDrive\Desktop\TempNotes
doskey wtemp =cdd C:\\Users\\jojoh\\AppData\\Local\\Temp
doskey phplog =type C:\xampp\php\logs\php_error_log

doskey eposh ="C:\Program Files (x86)\Notepad++\notepad++.exe" "C:\Program Files (x86)\clink\oh-my-posh.lua"
doskey posh-theme=cd /d "C:\jojo\cliApps\posh_themes"
doskey edit-history=cdd C:\Users\jojoh\AppData\Local\clink
doskey bsjs=cdd C:\jojo\nodeCode\play\basic 
doskey basic=cdd C:\jojo\nodeCode\play\basic 
rem doskey reg = cd 

doskey netflex=C:\Users\jojoh\OneDrive\Documents\.\netflexpostlist.xlsx 
doskey netflexpics=cd "C:\Users\jojoh\OneDrive\Documents\netflexpics"

rem not implementing right now:
doskey flip = "C:\Program Files\Mozilla Firefox\firefox.exe" -p flip "https://app.fliplearn.com/home/wrv1_home/"
doskey w3s="C:\Program Files\Mozilla Firefox\firefox.exe" "https://www.w3schools.com/"
doskey stack="C:\Program Files\Mozilla Firefox\firefox.exe" "https://stackoverflow.com/search?q=$*"
doskey wweb="C:\Program Files\Mozilla Firefox\firefox.exe" "https://web.whatsapp.com/" 
doskey noderef = "C:\Program Files\Mozilla Firefox\firefox.exe" "https://nodeschool.io/"
doskey 25 = type "c:\jojo\jojoBin\25.txt"
doskey e25 = "C:\Program Files (x86)\Notepad++\notepad++.exe" "c:\jojo\jojoBin\25.txt"
doskey what = 25.bat $*
doskey mp42gif = echo ffmpeg -ss [skip some secs and start from here] -t [time it takes] -i [input].mp4 -filter_complex "[0:v] split [a][b];[a] palettegen [p];[b][p] paletteuse" [output].gif
doskey webm2mp4 = echo ffmpeg -i input.webm -c copy output.mp4 
doskey econfig = echo 1s, 2s, 2p, 3s, 3p, 4s, 3d, 4p, 5s, 4d, 5p, 6s, 4f, 5d, 6p, 7s, 5f, 6d, 7p
doskey chemconst = echo a,h, c, rhw, rhe, mp, mn, me, sc = const_init() 
doskey class = "C:\Program Files\Mozilla Firefox\firefox.exe" -p class "https://classroom.google.com/h"
doskey eskool = "C:\Program Files (x86)\Notepad++\notepad++.exe" C:\jojo\python\projects\skoolCalls\skoolScriptMain.py
doskey tb11 = python C:\jojo\python\projects\skoolCalls\tbScriptMain.py $*%1 
doskey apu = C:\jojo\jojoBin\apuBat.bat 
doskey drive = "C:\Program Files\Mozilla Firefox\firefox.exe" -p class "https://drive.google.com/drive/"
doskey trimAud = echo ffmpeg -ss [Seek From Front Time] -i input.mp3 -t [Seek From Back Time] output.mp3
doskey lapmodel = wmic csproduct get name
doskey laptop_model = wmic csproduct get name
doskey bkfna9 = echo 6402 8257
doskey whatdl = cdd "C:/Users/jojoh/AppData/Local/Microsoft/Windows/INetCache"
doskey mddate = c:/jojo/jojoBin/mdate.bat
doskey batref = "C:\Program Files\Mozilla Firefox\firefox.exe" https://ss64.com/nt/
doskey sem = epic "C:\Users\jojoh\OneDrive\Desktop\SEM_Holidays_PERSONAL.txt"
doskey freddy = C:\jojo\rasBin\frhed.exe $*
doskey fclip = C:\Users\jojoh\scoop\shims\file2clip.exe $*
doskey track="C:\Program Files\Mozilla Firefox\firefox.exe" -p trello "https://docs.google.com/spreadsheets/d/1-53c7uSumkRQEOYOw8LScx8vM5VzbB7vT9OOBzmL5q4/edit#gid=0"
doskey lstree=lsd --tree $*
doskey gurl = "C:\Program Files\Git\mingw64\bin\curl.exe" --ssl-no-revoke $*
doskey jelly=fox raspberrypi.local:8096/ 
doskey trans=fox -p bin2 raspberrypi.local:9091/ 
doskey sqrt=python "C:\jojo\python\play\root_decomp.py" $*
doskey pie=c:\jojo\cliApps\WinDirStatPortable\WinDirStatPortable.exe $*
doskey tsplit=foxfile C:\Users\jojoh\Downloads\jojosWeek_v101.pdf 
doskey ltspice-dl=cd /d C:\Users\jojoh\AppData\Local\LTspice\lib
doskey lts=cd /d C:\Users\jojoh\AppData\Local\LTspice\lib
doskey multicursor=echo ctrl+alt
doskey startsql=sudo net start MySQL83 
doskey stopsql=sudo net stop MySQL83 



echo Days Weeks Months Counter
echo Shan10's shortcuts are active
type "C:\jojo\jojoBin\banner.txt"

rem STM32 Dev Shortcuts
doskey stmdocs=cdd C:\jojo\learnSTM32CourseMaterial\MasteringMCU
doskey stmws=cdd D:\CubeIDE\iiot_project

rem activate
rem echo Conda Env Set
goto :EOF
:showHelp
echo npp ebat fox duck goog bing w3s stack npad word wweb snek noderef spot python home findPi cdJirle fixPiIp 
echo.
echo /reload /list /help
:showList
echo.
goto :EOF
doskey /m
goto :EOF
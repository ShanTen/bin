@echo off
pushd c:\jojo\nodeCode\projects\microblogging\WriteBlogHere\
touch "%*.md"
set fname="%*.md"
echo type blogpost here ... > %fname%
notepads %fname%
popd
pushd c:\jojo\nodeCode\projects\microblogging\metaScripts\ 
C:\Users\jojoh\Anaconda3\python.exe conv2html.py
popd 
cd c:\jojo\nodeCode\projects\microblogging\
echo Run batch File to Confirm Post 
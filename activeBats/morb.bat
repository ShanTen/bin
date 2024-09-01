@echo off
pushd D:\shan10\myCode\python\logger-new\WriteBlogHere\
touch "%*.md"
set fname="%*.md"
echo type blogpost here ... > %fname%
notepads %fname%
popd
pushd D:\shan10\myCode\python\logger-new\metaScripts\ 
C:\Users\jojoh\.pyenv\pyenv-win\versions\3.11.0\python.exe conv2html.py
popd 
cdd D:\shan10\myCode\python\logger-new\
echo Run batch File to Confirm Post 
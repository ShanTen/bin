@echo off
npx create-react-native-app %1
cd %1
rem delete all git files
del /s /q .git
erase .gitignore
erase .gitattributes
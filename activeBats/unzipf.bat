@echo off

SET "filename=%~1"
SET dirName=%filename:~0,-4%

7z x -o"%dirName%" "%filename%"
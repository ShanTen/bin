@echo off
for /f %%x in ('NOW "yyyy/MMM/dd@HH:mm:ss"') do set dtsParsableX=%%x
set dtForGetDate=%dtsParsableX:@= %

set dpPlace=%userprofile%\Dropbox\hinterns\dayPlan
if not exist %dpPlace% md %dpPlace%
set tempPlace=%temp%\dailyplan_%computername%_%username%.json

REM echo exportTimeStamp,%dtForGetDate%
REM we add an extra record at top  to indicate timestamp (it is not form the SQLITE db, we add it manually)
REM we also write output as a JSON string for easy parsing later on, SQLITE supports this with flag -json (in interactive mode, you can also use .mode JSON)
REM you need SQLITE > 3.33(date 14 Aug 2020) for the json feature 
REM the sqlite file is found in a URL file placed within storage/default;the url is escaped for some chars and plus+ is used as escaped char
D:\Android\sdk\platform-tools\sqlite3.exe -json  C:\Users\jojoh\AppData\Roaming\Mozilla\Firefox\Profiles\cth8skjj.dayPlanner\storage\default\file++++C++jojo+HTML+dayplanner+dailyplanner.html\ls\data.sqlite "select 'exportTimeStamp' as key, '%dtForGetDate%' as value UNION SELECT key, replace(value,char(10),'|') from data" > %tempPlace%

copy %tempPlace% %dpPlace%

echo Ta-DA! day planner is published - %dtForGetDate%


REM char(10) works but not char(13) 
REM "select 'key',REPLACE('value', 0x0A,'\n') from data;"
REM "select * from data"


	

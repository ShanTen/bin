@echo off
set ffdLoc=c:\jojo\nodeCode\projects\animatedGetReq\
echo curl localhost:3030 | clip
wt -w 0 nt --tabColor "#1e90ff" -d %ffdLoc% --title dance-server -k node index.js -c false -i 40
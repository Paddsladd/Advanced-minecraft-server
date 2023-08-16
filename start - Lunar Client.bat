@echo off
title Minecraft Server
echo  ________________________________________________________________
echo /Advanced minecraft server startup for Windows 10/11 by Paddsladd\
echo \________________________________________________________________/
timeout /t 2 /nobreak >nul
cls
:Start
color 0a
echo  ____________________________
echo /Type stop to stop the server\
echo \____________________________/
echo Server is starting...
start "%localappdata%\Programs\lunarclient\Lunar Client.exe" "%localappdata%\Programs\lunarclient\Lunar Client.exe"
java -Xmx1024M -Xms1024M -jar server.jar nogui
:a
color 07
cls
echo [1] Close Terminal
echo [2] Restart Server
echo [3] Open log file
set /p ans="Enter a number:"
if %ans%==1 (
start notepad.exe "%userprofile%\Documents\Minecraft server (Java)\logs\latest.log"
exit
)
if %ans%==2 (
cls
goto Start
)
if %ans%==3 (
start notepad.exe "%userprofile%\Documents\Minecraft server (Java)\logs\latest.log"
goto a
)
cls
color 04
echo "%ans%" is not a valid number!
timeout /t 2 /nobreak >nul
goto a

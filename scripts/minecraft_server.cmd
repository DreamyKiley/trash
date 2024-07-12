@echo off
title Pewhop-1.20.4-478
color 0A
prompt [server]:
cls

:start
echo loading server...
java -Xms10G -Xmx10G -jar paper-1.20.4-478.jar --nogui
cls

:choice
echo set /P a=do you want to restart[Y/N]?
echo if /I "%a%" EQU "Y" goto :restart
echo if /I "%a%" EQU "N" goto :stop
echo goto :choice


:restart
cls
echo server will restart
TIMEOUT /T 5
cls
goto :start

:stop

cls
echo closing server
TIMEOUT /T 5
exit

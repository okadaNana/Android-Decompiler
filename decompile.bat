@echo off

set apkFile=%1
set jarFile=%apkFile%.jar

cd /d %apkFile%\..

java -jar "_tools\apktool\apktool.jar" d -d -f "%apkFile%"
call _tools\dex2jar\dex2jar-2.0\d2j-dex2jar -f "%apkFile%" -o "%jarFile%"
java -jar "_tools\jd-gui\jd-gui-1.4.0.jar" "%jarFile%"
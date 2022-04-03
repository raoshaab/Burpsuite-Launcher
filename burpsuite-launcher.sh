#!/bin/bash


RED="\e[31m"
GREEN="\e[32m"

pw=$(pwd) 
loader=$(ls|grep -v old|grep -i loader)
burp=$(ls|grep -i pro)



dir="java  -Dfile.encoding=utf-8 -javaagent:$pw/$loader -noverify -jar $pw/$burp" 


echo '[Desktop Entry]
Name=Burpsuite
Encoding=UTF-8
Exec=sh -c "'"$dir"'" %u
Icon=burp
StartupNotify=false
Terminal=false
Type=Application
Categories=03-webapp-analysis;03-06-web-application-proxies;
X-Kali-Package=burpsuite
StartupWMClass=burp-StartBurp' > ~/.local/share/applications/kali-burpsuite.desktop

echo -e "Launcher is set \nJust rock !! ~~~~~~~~~" 


echo -e "${RED}         +-----------+------------------+-----------------------+
         | You     | are    | Ready   |   For     |    Lauch    |
         ${GREEN}+-----------+------------------+-----------------------+
         | Laucher is set ,  Now  just search  in   your  Menu  |
         +-----------+------------------+-----------------------+"

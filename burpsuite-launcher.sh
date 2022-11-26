#!/bin/bash

banner='BurpSuite Launcher '


RED="\e[31m"
GREEN="\e[32m"

pw=$(pwd) 
loader=$(ls|grep -v old|grep -i loader)
burp=$(ls|grep -i pro)



dir="java  -Dfile.encoding=utf-8 -javaagent:$pw/$loader -noverify -jar $pw/$burp"
 
loc='~/.local/share/applications/'
ls $loc >/dev/null 2>&1 

if [[ $? == 0 ]]
then
cat > ~/.local/share/applications/kali-burpsuite.desktop << EOF 
[Desktop Entry]
Name=Burpsuite
Encoding=UTF-8
Exec=sh -c "$dir" %u
Icon=burp
StartupNotify=false
Terminal=false
Type=Application
Categories=03-webapp-analysis;03-06-web-application-proxies;
X-Kali-Package=burpsuite
StartupWMClass=burp-StartBurp
EOFn
else
    echo -e "${RED}
    echo "Can not Create Launcher in this system"&& exit
fi

echo -e "${RED}         +-----------+------------------+-----------------------+
         | You     | are    | Ready   |   For     |    Lauch    |
         ${GREEN}+-----------+------------------+-----------------------+
         | Laucher is set ,  Now  just search  in   your  Menu  |
         +-----------+------------------+-----------------------+"

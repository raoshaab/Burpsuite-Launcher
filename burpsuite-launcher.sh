#!/bin/bash

function ban(){
banner='

   ___                            _ _           __                  _               
  / __\_   _ _ __ _ __  ___ _   _(_) |_ ___    / /  __ _ _   _  ___| |__   ___ _ __ 
 /__\// | | |  __|  _ \/ __| | | | | __/ _ \  / /  / _` | | | |/ __|  _ \ / _ \  __|
/ \/  \ |_| | |  | |_) \__ \ |_| | | ||  __/ / /__| (_| | |_| | (__| | | |  __/ |   
\_____/\__,_|_|  | .__/|___/\__,_|_|\__\___| \____/\__,_|\__,_|\___|_| |_|\___|_|   
                 |_|                                                                

'
while IFS= read -r -n 1 -d '' c; do   printf '\e[38;5;%dm%s\e[0m'  "$((RANDOM%255+1))" "$c"; done <<<$banner
}
function ban2(){
echo -e '

            \e[90m$&&$&&&&&&&&&&&&&&\e[91m((((((/////\e[49m*/////         
            \e[90m&&&&&&&&&&&&&&&&&\e[91m(((//////\e[49m* ///////  
            \e[90m&&&&&&&&&&&&&&&&&\e[91m(((/////\e[49m* *///////  
            \e[90m&&&&&&&&&&&&&&&&&\e[91m(((////\e[49m*  ////////  
            \e[90m&&&&&&&&&&&&&&&&&\e[91m(((/*\e[49m   \e[49m *(///////
            \e[90m&&&&&&&&&&&&&&&&&\e[91m((*\e[49m       \e[49m*///////  
            \e[90m&&&&&&&&&&&&&&&&&\e[91m(((/////,\e[49m \e[49m*///////  
            \e[90m&&&&&&&&&&&&&&&&&\e[91m(((/////*...\e[49m   \e[49m(//  
            \e[90m&&&&&&&&&&&&&&&&&\e[91m(((///////.\e[49m  \e[49m(////  
            \e[90m&&&&&&&&&&&&&&&&&\e[91m(((/////,\e[49m  \e[49m*//////  
            \e[90m&&&&&&&&&&&&&&&&&\e[91m(((/////, \e[49m*///////  
            \e[90m@&&&&&&&&&&&&&&&&\e[91m(((//////\e[49m*////////
                    
'
}


ban
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
EOF
else
    echo "Can not Create Launcher in this system"&& exit
fi
clear && ban2
echo -e "${RED}         +-----------+------------------+-----------------------+
         | You     | are    | Ready   |   For     |    Lauch    |
         ${GREEN}+-----------+------------------+-----------------------+
         | Laucher is set ,  Now  just search  in   your  Menu  |
         +-----------+------------------+-----------------------+"

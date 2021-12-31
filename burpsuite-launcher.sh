#!/bin/bash
if [ whoami != root ] 
then 
echo "-----------Run with Root----------------------"	 
else  
pw=$(pwd) 
loader=$(ls|grep loader)
burp=$(ls|grep pro)
echo "java --illegal-access=permit -Dfile.encoding=utf-8 -javaagent:$pw/$loader -noverify -jar $pw/$burp" > /usr/bin/burp
echo '[Desktop Entry]
Name=Burpsuite
Encoding=UTF-8
Exec="/usr/bin/burp" %u
Icon=burp
StartupNotify=false
Terminal=false
Type=Application
Categories=03-webapp-analysis;03-06-web-application-proxies;
X-Kali-Package=burpsuite
StartupWMClass=burp-StartBurp' > ~/.local/share/applications/kali-burpsuite.desktop
fi

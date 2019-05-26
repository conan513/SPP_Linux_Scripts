#!/bin/bash
file="./teamspeak3-server_linux_amd64/ts3server_minimal_runscript.sh"
if [ ! -f "$file" ]
then
    echo "Teamspeak server not found, installing..."
    echo
    wget -N https://files.teamspeak-services.com/releases/server/3.7.1/teamspeak3-server_linux_amd64-3.7.1.tar.bz2
    tar -jxvf ./teamspeak3-server_linux_amd64-3.7.1.tar.bz2
fi
 
cd ./teamspeak3-server_linux_amd64
./ts3server_minimal_runscript.sh license_accepted=1

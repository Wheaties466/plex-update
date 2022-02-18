#!/bin/bash

PLEX_URL='https://plex.tv/downloads/latest/5?channel=16&build=linux-x86_64&distro=debian&X-Plex-Token='
#NAME=$(curl $PLEX_URL -v 2>&1 | grep -i location | tail -n 1 | cut -d" " -f3)

NAME=${NAME%$'\r'}

curl -L -O "$NAME"

FILE=$(echo $NAME | cut -d'/' -f 7)
echo $FILE
echo "Installing the new plex version in 10 seconds. CTRL + C to stop"
sleep 10
dpkg -i $FILE

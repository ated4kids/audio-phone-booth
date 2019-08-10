#!/bin/bash
sleep 10
amixer set PCM 100%

# If networking is detected, the IP address is spelled
WLAN_IP=`ifconfig wlan0 | grep 'inet ' | awk '{ print $2 }'`
if [[ -n "$WLAN_IP" ]]; then
    espeak "My IP address is $WLAN_IP" -s 100 --stdout | aplay
fi

# start python program
cd /home/pi/audio-phone-booth/src
python3 -u audio-phone-booth.py

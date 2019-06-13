#!/bin/sh
sleep 10
amixer set PCM 100%
cd /home/pi/audio-phone-booth/src
python3 -u audio-phone-booth.py

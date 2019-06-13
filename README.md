# audio-phone-booth

Installazione
- installare pacchetti aggiuntivi
sudo apt-get install usbmount

- mettere la chiavetta USB in auto mount al boot
editare il file /lib/systemd/system/systemd-udevd.service e cambiare "MountFlags=slave" in "MountFlags=shared"
ln -s /media/usb0 /home/pi/audio
reboot

- clonare il progetto
git clone https://github.com/ated4kids/audio-phone-booth.git
chmod +x audio-phone-booth/launcher.sh

- avviare in automatico lo script al boot
aggiungere in cron al reboot l'esecuzione dello script
crontab -e
@reboot /home/pi/audio-phone-booth/launcher.sh > /home/pi/script.log 2>&1 &


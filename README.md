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
editare /etc/rc.local ed aggiungere come penultima riga (prima di exit 0) "/home/pi/audio-phone-booth/launcher.sh &"
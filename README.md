# Audio Cabina

## Hardware necessario
Ovviamente serve il telefono di Swisscom, ma oltre a quello servono i seguenti componenti, qui si fa riferimento a Distrelec come fornitore.

* [Raspberry PI 3 Model B](https://www.distrelec.ch/en/raspberry-pi-model-1gb-ram-raspberry-pi-raspberry-pi/p/30085264)
* [Jumper Wires, Male to Female](https://www.distrelec.ch/en/jumper-wire-male-to-female-pack-of-10-pieces-150-mm-multicoloured-rnd-components-rnd-255-00013/p/30115111)
* [Jumper Wires, Female to Female](https://www.distrelec.ch/en/jumper-wire-female-to-female-pack-of-10-pieces-150-mm-black-rnd-components-rnd-255-00010/p/30115108)
* [Mono Jack Connector 3.5mm](https://www.distrelec.ch/en/mono-jack-connector-black-mm-male-rnd-connect-rnd-205-00618/p/30090513)
* [Modular Jack](https://www.distrelec.ch/en/modular-jack-bel-stewart-ss-6444-nf/p/14269430)

In più servono:
* alimentatore Micro-USB da 3A o un power bank USB
* una MicroSD per il sistema operativo
* chiavetta USB per i file audio

## Installazione
Partire con una installazione base di Raspbian, anche la versione solo testo, al primo boot è più facile connetterla ad un monitor e tastiera.

* installare pacchetti aggiuntivi
```
sudo apt-get install usbmount
```

* mettere la chiavetta USB in auto mount al boot
editare il file */lib/systemd/system/systemd-udevd.service* e cambiare "MountFlags=slave" in "MountFlags=shared"
```
ln -s /media/usb0 /home/pi/audio
reboot
```

* clonare il progetto
```
git clone https://github.com/ated4kids/audio-phone-booth.git
chmod +x audio-phone-booth/launcher.sh
```

* avviare in automatico lo script al boot
aggiungere in cron al reboot l'esecuzione dello script
```
crontab -e
@reboot /home/pi/audio-phone-booth/launcher.sh > /home/pi/script.log 2>&1 &
```


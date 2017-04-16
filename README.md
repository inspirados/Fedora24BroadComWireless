# Fedora24BroadComWireless
Install Wireless Drivers for Fedora 24 on Broadcom

Instructions:

```
// dependencias 
sudo dnf install http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm


sudo dnf -y install kmod-wl

sudo dnf -y update && sudo dnf -y install kernel-modules

```




```
git clone https://github.com/robincoello/Fedora24BroadComWireless.git
cd Fedora24BroadComWireless
chmod +x fedora24_broadcom_wl_install.sh
sudo ./fedora24_broadcom_wl_install.sh
```


Tested Devices:

Tested on Dell Latitude E 6xxx series Laptops equipped with Broadcom BCM43228 802.11a/b/g/n

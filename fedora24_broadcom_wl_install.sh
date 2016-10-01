#! /bin/bash
wget http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install rpmfusion-nonfree-release-24.noarch.rpm -y
dnf clean all -y
dnf install akmod-wl -y 
dnf install kernel-devel -y
akmods --force
modprobe wl
iwconfig
systemctl restart NetworkManager

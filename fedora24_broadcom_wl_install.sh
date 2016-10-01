#! /bin/bash

#Set Version for Fedora
FedoraVers=$(rpm -E %fedora)

#Download and install RPM fusion repo
wget http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$FedoraVers.noarch.rpm
dnf install rpmfusion-nonfree-release-$FedoraVers.noarch.rpm -y

#Clean yum metadata install adkmod-wl and kernel-devel
dnf clean all -y
dnf install akmod-wl -y 
dnf install kernel-devel -y

#Force Broadcom driver and modprobing kernel
akmods --force
modprobe wl

#runs iwconfig (wireless equivalent of ifconfig) and restarts NetworkManager
iwconfig
systemctl restart NetworkManager

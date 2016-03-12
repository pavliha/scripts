#!/bin/bash
sudo cp /etc/apt/sources.list /etc/apt/sources.list.backup
#Adding ppa
sudo add-apt-repository ppa:webupd8team/java -y #Java 8
#PlayonLinux
wget -q "http://deb.playonlinux.com/public.gpg" -O- | sudo apt-key add -
sudo wget http://deb.playonlinux.com/playonlinux_precise.list -O /etc/apt/sources.list.d/playonlinux.list
sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable -y #Torrent Client
sudo add-apt-repository ppa:git-core/ppa -y
sudo add-apt-repository ppa:xorg-edgers/ppa -y
sudo apt-add-repository ppa:versable/elementary-update -y
sudo add-apt-repository ppa:vikoadi/ppa -y
sudo add-apt-repository ppa:yunnxx/gnome3 -y
sudo add-apt-repository ppa:nilarimogard/webupd8 -y
sudo add-apt-repository ppa:no1wantdthisname/ppa -y
sudo add-apt-repository ppa:no1wantdthisname/openjdk-fontfix -y
sudo add-apt-repository ppa:kupfer-team/ppa -y

sudo apt-get update && sudo apt-get dist-upgrade

#Setup keyboard layout
gsettings set org.pantheon.desktop.gala.keybindings switch-input-source "['<Ctrl>Shift_L', '<Ctrl>Shift_R','<Shift>Control_L', '<Shift>Control_R']"

#Install Google Chrome
#wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
#sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
#sudo apt-get update
#sudo apt-get install google-chrome-stable

#Clean-up System
sudo apt-get purge midori-granite -y
sudo apt-get purge noise  -y
sudo apt-get purge scratch-text-editor  -y
sudo apt-get purge bluez  -y
sudo apt-get purge modemmanager -y
sudo apt-get autoremove -y
sudo apt-get autoclean -y

#Install gedit (Text Editor)
sudo apt-get install gedit gedit-plugins -y

#Open-jdk fontfix
sudo apt-get install fontconfig-infinality
sudo apt-get install openjdk-8-jdk

#Install PlayonLinux
sudo apt-get install playonlinux -y

#Install torrent client qbittorrent
sudo apt-get install qbittorrent -y

#Install the latest git Version
sudo apt-get install git -y

#Install teamviwer
cd ~/Install/Internet/
sudo dpkg -i teamviewer.deb
sudo apt-get -f install
cd


#Install VirtualBox
cd ~/Install/Virtualisation/
sudo dpkg -i virtualbox-5.0_5.0.14-105127-Ubuntu-trusty_amd64.deb
sudo apt-get -f install
cd

#Install Vagrant
cd ~/Install/Development/
sudo dpkg -i vagrant_1.8.1_x86_64.deb
sudo apt-get -f install
cd

#App launcher
sudo apt-get install kupfer -y

#Install Guake Terminal
sudo apt-get install guake -y


#For fresh Nvidia Drivers

#For Nvidia Cards
sudo apt-get install nvidia-304 -y

#Install Ubuntu Restricted Extras
sudo apt-get install ubuntu-restricted-extras -y

#Install Elementary OS extras
sudo apt-get install elementary-desktop elementary-tweaks -y
sudo apt-get install elementary-dark-theme elementary-plastico-theme elementary-whit-e-theme elementary-harvey-theme -y
sudo apt-get install elementary-elfaenza-icons elementary-nitrux-icons -y
sudo apt-get install elementary-plank-themes -y
sudo apt-get install wingpanel-slim indicator-synapse -y

#Install kde-connect
sudo apt-get install indicator-kdeconnect kdeconnect -y

#Indicator USB
sudo apt-get install indicator-usb -y

#Install File Compression Libs
sudo apt-get install unace unrar zip unzip xz-utils p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller -y

#Remove some Switchboard Plug's
sudo rm -rf /usr/lib/plugs/GnomeCC/gnomecc-bluetooth.plug
sudo rm -rf /usr/lib/plugs/GnomeCC/gnomecc-wacom.plug




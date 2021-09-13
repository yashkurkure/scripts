#!/bin/bash

#update and upgrade
echo "Running update & upgrade..."
sudo apt-get update
sudo apt-get upgrade

#install gnome tweaks
echo "Installing gnome-tweak center..."
sudo apt install gnome-tweaks

#setting minimize and maximize buttons
echo "Loading gnome preferences..."
echo "Setting window bar button layout..."
gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close'
echo 'Disabling location services...'
gsettings set org.gnome.system.location enabled false
echo '(POP COSMIC) Enabling show-aaplications and show-workspaces button...'
gsettings set org.gnome.shell.extensions.pop-cosmic show-applications-button true
gsettings set org.gnome.shell.extensions.pop-cosmic show-workspaces-button true

#installing ubuntu-restricted-extras
echo "Installing ubuntu-restricted-extras"
sudo apt install ubuntu-restricted-extras

#setting new wallpaper
cp 159160.png ~/Pictures/Wallpapers/
gsettings set org.gnome.desktop.background picture-uri 'file:///home/yash/Pictures/Wallpapers/159160.png'

#install spotify
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client


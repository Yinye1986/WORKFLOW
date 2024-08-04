#!/bin/bash

HOMEDIR="/home/chris"
ROOTHOMEDIR="/root"

ln -sf /home/chris/WORKFLOW/homeDir/.dwm /home/chris/
ln -sf /home/chris/WORKFLOW/homeDir/.bash_profile /home/chris/
ln -sf /home/chris/WORKFLOW/homeDir/.bashrc /home/chris/
ln -sf /home/chris/WORKFLOW/homeDir/.Xresources /home/chris/
ln -sf /home/chris/WORKFLOW/homeDir/.xinitrc /home/chris/
ln -sf /home/chris/WORKFLOW/homeDir/.Xmodmap /home/chris/
ln -sf /home/chris/WORKFLOW/homeDir/.gitconfig /home/chris/

mkdir /home/chris/.config

# for users

ln -sf /home/chris/WORKFLOW/homeDir/dotConfig/fish /home/chris/.config/fish
ln -sf /home/chris/WORKFLOW/homeDir/dotConfig/alacritty /home/chris/.config/alacritty
ln -sf /home/chris/WORKFLOW/homeDir/dotConfig/yazi /home/chris/.config/yazi
ln -sf /home/chris/WORKFLOW/homeDir/dotConfig/nvim /home/chris/.config/nvim
ln -sf /home/chris/WORKFLOW/homeDir/dotConfig/fcitx /home/chris/.config/fcitx
ln -sf /home/chris/WORKFLOW/homeDir/dotConfig/clash /home/chris/.config/clash
ln -sf /home/chris/WORKFLOW/homeDir/dotConfig/chromium /home/chris/.config/chromium

# ln -sf $HOMEDIR/WORKFLOW/.mozilla/FireChris.default-release $HOMEDIR/.mozilla/

# for admin

# mkdir $ROOTHOMEDIR/.config

# ln -sf $ROOTHOMEDIR/WORKFLOW/homeDir/dotConfig/yazi $ROOTHOMEDIR/.config/yazi
# ln -sf $ROOTHOMEDIR/WORKFLOW/homedir/dotconfig/nvim $ROOTHOMEDIR/.config/nvim
